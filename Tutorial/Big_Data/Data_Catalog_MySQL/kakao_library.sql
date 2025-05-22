-- 데이터베이스 생성
CREATE DATABASE kakao_library;

-- 해당 데이터베이스 선택
USE kakao_library;

-- 도서 정보 테이블 생성
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    publication_date DATE,
    isbn VARCHAR(20),
    available BOOLEAN DEFAULT TRUE
);

-- 회원 정보 테이블 생성
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255),
    member_since DATE
);
