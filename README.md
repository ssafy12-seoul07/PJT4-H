# PJT4-H
은서 유영 희주
## 프로젝트 구조
```
SSAFIT_Project/
│
├── src/main/java
│   └── com/ssafy/ssafit
│       ├── controller
│       │   ├── MainController.java       // 메인 페이지 및 운동 영상 정보 출력 담당
│       │   └── ReviewController.java     // 리뷰 관리 (목록, 등록, 수정, 삭제)
│       │   └── UserController.java       // 회원가입, 로그인 관리
│       ├── model
│       │   ├── dto
│       │   │   ├── Video.java            // 운동 영상 정보 DTO
│       │   │   └── Review.java           // 리뷰 정보 DTO
│       │   │   └── User.java             // 사용자 정보 DTO
│       │   ├── repository
│       │   │   ├── VideoRepository.java  // 영상 정보 관리용 DAO 인터페이스
│       │   │   ├── ReviewRepository.java // 리뷰 관리용 DAO 인터페이스
│       │   │   ├── UserRepository.java   // 사용자 정보 관리용 DAO 인터페이스
│       │   └── service
│       │       ├── VideoService.java     // 영상 정보 서비스 인터페이스
│       │       ├── ReviewService.java    // 리뷰 관리 서비스 인터페이스
│       │       └── UserService.java      // 사용자 관리 서비스 인터페이스
│       └── service/impl
│           ├── VideoServiceImpl.java     // 영상 정보 서비스 구현체
│           ├── ReviewServiceImpl.java    // 리뷰 관리 서비스 구현체
│           └── UserServiceImpl.java      // 사용자 관리 서비스 구현체
│
├── src/main/webapp
│   ├── WEB-INF
│   │   ├── views
│   │   │   ├── video
│   │   │   │   ├── videoList.jsp         // 영상 목록 화면
│   │   │   ├── review
│   │   │   │   ├── reviewList.jsp        // 영상 재생 + 리뷰 목록 화면
│   │   │   │   ├── reviewWrite.jsp       // 리뷰 작성 화면
│   │   │   │   ├── reviewUpdate.jsp      // 리뷰 관리 화면
│   │   │   ├── user
│   │   │       ├── login.jsp             // 로그인 화면
│   │   │       └── signup.jsp            // 회원가입 화면
│   └── resources
│       ├── css
│       │   └── style.css                 // 스타일 시트
│       └── js
│           └── script.js                 // 자바스크립트 파일
│
│
└── index.jsp                                // Maven 설정 파일
```