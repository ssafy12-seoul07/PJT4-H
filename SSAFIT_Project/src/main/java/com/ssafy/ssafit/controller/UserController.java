package com.ssafy.ssafit.controller;

import java.io.IOException;

import com.ssafy.ssafit.model.repository.UserRepository;
import com.ssafy.ssafit.model.repository.UserRepositoryImpl;
import com.ssafy.ssafit.model.service.UserService;
import com.ssafy.ssafit.model.service.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user")
public class UserController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private static UserService service = UserServiceImpl.getInstance();
	private static UserRepository repo = UserRepositoryImpl.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		switch(action) {
		case "loginForm":
			doLoginForm(req, resp);
			break;
		case "signupForm":
			doSignupForm(req, resp);
			break;
		case "login":
			doLogin(req, resp);
			break;
		case "success":
			successPage(req, resp);
			break;
		case "signRegist":
			doSignRegist(req, resp);
			break;
		default:
			System.out.println("재확인 필요");
			break;
		}
	}

	private void doSignRegist(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		
	}

	private void successPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/success.jsp").forward(req, resp);
	}

	private void doLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("password");
		
		if (service.login(id, pw) == null) {
			resp.sendRedirect("user?action=loginForm");
			return;
		}
		
		resp.sendRedirect("user?action=success");

	}

	private void doSignupForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/signup.jsp").forward(req, resp);
		
	}

	private void doLoginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/login.jsp").forward(req, resp);
		
	}

}
