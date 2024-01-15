CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR NOT NULL,
    genre VARCHAR NOT NULL,
    director VARCHAR NOT NULL
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    phone_number VARCHAR NOT NULL
);
CREATE TABLE Ticket (
    tickey_id INT PRIMARY KEY,
    movie_id INT,
    customer_id INT,
    purchase_date DATE,
    ticket_price DECIMAL(10, 2),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

insert into Customer
values (1, "FakeFirst", "FakeLast", "fake_email@gmail.com", "(999)-999-9999");

select * from Customer;