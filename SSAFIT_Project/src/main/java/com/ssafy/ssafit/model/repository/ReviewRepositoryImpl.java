package com.ssafy.ssafit.model.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ssafy.ssafit.model.dto.Review;

// 패키지 이동해야 함!!!
public class ReviewRepositoryImpl implements ReviewRepository{
	
	private static ReviewRepository repo = new ReviewRepositoryImpl();
	//게시글 번호와 객체를 담을 해시맵
	private Map<Integer, Review> reviews = new HashMap<>();
	
	
	//생성자, 기본값 1개 미리 생성
	private ReviewRepositoryImpl() {
		reviews.put(1, new Review("제목1", "작성자1", "내용1"));
	}
	
	//싱글턴 객체
	public static ReviewRepository getInstance() {
		return repo;
	}
	
	@Override
	//ReviewServiceImpl의 getList()에서 사용됨
	public List<Review> selectAll() {
		List<Review> tmp = new ArrayList<>();
		for(int key : reviews.keySet()) {
			tmp.add(reviews.get(key));
		}
		return tmp;
	}

	@Override
	public Review selectOne(int id) {
		return reviews.get(id);
	}

	@Override
	public void insertReview(Review review) {
		reviews.put(review.getId(), review);
	}

	@Override
	public void updateReview(Review review) {
		reviews.put(review.getId(), review);
	}

	@Override
	public void deleteReview(int id) {
		reviews.remove(id);
	}

	@Override
	public void updateViewCnt(int id) {
		Review r = reviews.get(id);
		r.setViewCnt(r.getViewCnt()+1);
		
	}

}
