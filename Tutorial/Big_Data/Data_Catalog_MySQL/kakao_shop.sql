-- 데이터베이스 생성
CREATE DATABASE kakao_shop;

  -- 해당 데이터베이스 선택
  USE kakao_shop;

  -- 상품 정보 테이블 생성
  CREATE TABLE products (
      product_id INT AUTO_INCREMENT PRIMARY KEY,
      product_name VARCHAR(255) NOT NULL,
      description TEXT,
      price DECIMAL(10, 2) NOT NULL,
      stock_quantity INT NOT NULL,
      category VARCHAR(50),
      seller VARCHAR(100)
  );

  -- 주문 정보 테이블 생성
  CREATE TABLE orders (
      order_id INT AUTO_INCREMENT PRIMARY KEY,
      customer_name VARCHAR(100) NOT NULL,
      product_id INT,
      quantity INT NOT NULL,
      order_date DATE,
      delivery_status ENUM('Processing', 'Shipped', 'Delivered') DEFAULT 'Processing'
  );
