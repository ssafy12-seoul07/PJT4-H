package com.ssafy.ssafit.model.repository;

import java.util.ArrayList;
import java.util.List;
import com.ssafy.ssafit.model.dto.User;

public class UserRepositoryImpl implements UserRepository{

    // 사용자 데이터를 저장할 리스트
    private List<User> users = new ArrayList<>();
    
    private int userSeqCnt = 4; // 사용자 번호 자동 증가
    
    // 생성자에서 기본 유저 추가
    private UserRepositoryImpl() {
        users.add(new User(1, "ssafy1@gmail.com", "password", "은서", "YES"));
        users.add(new User(2, "ssafy2@ssafy.com", "password", "유영", "SU0"));
        users.add(new User(3, "ssafy3@naver.com", "password", "희주", "KPT"));
    }
    
    // Singleton 인스턴스
    private static UserRepository repo = new UserRepositoryImpl();
    
    public static UserRepository getInstance() {
        return repo;
    }

    // userId로 사용자를 검색하는 메서드
    @Override
    public User findByUserId(String userId) {
        for (User user : users) {
            if (user.getUserId().equals(userId)) {
                return user;
            }
        }
        return null; 
    }

    // 새로운 사용자를 저장하는 메서드
    @Override
    public void saveUser(User user) {
        user.setUserSeq(userSeqCnt++);
        users.add(user);
    }

}
