package com.ssafy.ssafit.controller;

import java.io.IOException;

import com.ssafy.ssafit.model.dto.Review;
import com.ssafy.ssafit.model.service.ReviewService;
import com.ssafy.ssafit.service.impl.ReviewServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/review")
public class ReviewController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	//ReviewServiceImpl에서의 의존성 주입
	private ReviewService service = ReviewServiceImpl.getInstance();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		switch(action) {
		case "writeform":
			doReviewForm(request, response);
			break;
		case "write":
			doWrite(request, response);
			break;
		case "update":
			doReviewUpdate(request, response);
			break;
		case "list":
			doList(request, response);
			break;
		case "view"://임시인덱스를 위한 케이스! 합칠 때 없애기
			doView(request, response);
			break;
			
		}
	}
	
	private void doWrite(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		//객체를 만들겠다.
		Review review = new Review(title, writer, content);
		
		service.writeReview(review);
		
		//1. 등록한 게시글을 보러가는법
		
		//2. 게시글 전체목록으로 가는법 (V)
		response.sendRedirect("review?action=list");
	}

	//임시인덱스를 위한 메서드
	private void doView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/review/reviewList.jsp").forward(request, response);
	}
	
	//리뷰 리스트를 보여주는 메서드
	private void doList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("list", service.getList());
		request.getRequestDispatcher("/WEB-INF/views/review/reviewList.jsp").forward(request, response);
		
	}
	//리뷰를 수정하는 페이지로 보내는 메서드
	private void doReviewUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//리다이렉트 -> 서블릿 재호출
		Review review = service.getReview(Integer.parseInt(request.getParameter("id")));
		review.setTitle(request.getParameter("title"));
		review.setContent(request.getParameter("content"));
		
		service.modifyReview(review);
		
		response.sendRedirect("board?action=list");
		
		
	}
	//리뷰를 작성하는 페이지로 보내는 메서드
	private void doReviewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/review/reviewWrite.jsp").forward(request, response);
		
		
	}
	
	
	
}
