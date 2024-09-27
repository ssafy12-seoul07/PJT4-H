package com.ssafy.ssafit.model.service;

import com.ssafy.ssafit.model.dto.User;
import com.ssafy.ssafit.model.repository.UserRepository;
import com.ssafy.ssafit.model.repository.UserRepositoryImpl;

public class UserServiceImpl implements UserService {
	
	private UserRepository repo = UserRepositoryImpl.getInstance(); // Singleton 인스턴스 가져오기
    
    private static UserService service;

    private UserServiceImpl() {}

    public static UserService getInstance() {
        if (service == null) {
            service = new UserServiceImpl();
        }
        return service;
    }

    @Override
    public User login(String userid, String password) {
        User user = repo.findByUserId(userid);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    @Override
    public boolean signup(User user) {
        if (repo.findByUserId(user.getUserId()) != null) {
            return false;  // 이미 존재하는 사용자
        }
        repo.saveUser(user);
        return true;
    }

}

