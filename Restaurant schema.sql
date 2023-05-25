CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR(50),
    customer_phone_number VARCHAR(20)
);

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    restaurant_address VARCHAR(50),
    restaurant_phone_number VARCHAR(20)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_time TIME,
    order_type VARCHAR(10),
    order_status VARCHAR(10),
    customer_id INT,
    restaurant_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE delivery_persons (
    delivery_person_id INT PRIMARY KEY,
    delivery_person_name VARCHAR(50),
    delivery_person_phone_number VARCHAR(20)
);

CREATE TABLE order_delivery (
    order_id INT,
    delivery_person_id INT,
    delivery_date DATE,
    delivery_time TIME,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (delivery_person_id) REFERENCES delivery_persons(delivery_person_id)
);
