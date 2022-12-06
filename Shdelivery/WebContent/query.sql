drop table member;
drop table product;
drop table cart;
drop SEQUENCE product_id_sequence;
drop SEQUENCE cart_id_sequence;

create table member(
	member_id varchar2(20) constraint member_id_pk primary key,
	member_pwd varchar2(20)
);

insert into member(member_id, member_pwd) values('test', '1234');

select * from member order by member_id asc;

CREATE SEQUENCE product_id_sequence;
CREATE SEQUENCE cart_id_sequence;

CREATE TABLE product(
    product_id number CONSTRAINT product_id_pk primary key,
    product_name varchar2(255),
    product_category varchar2(255),
    product_price number,
    product_image_url varchar2(255)
);


CREATE TABLE cart(
    cart_id number CONSTRAINT cart_id_pk primary key,
    cart_count number,
    product_id number CONSTRAINT cart_product_id_fk REFERENCES product(product_id),
    member_id varchar2(20) CONSTRAINT cart_member_id_fk REFERENCES member(member_id)
);

SELECT c.cart_count, c.cart_count, p.product_name, p.product_image_url, product_price
    FROM cart c, product p
    WHERE c.product_id = p.product_id
    AND   member_id='admin';
    
DESC product;
    
INSERT INTO product(product_id, product_name, product_category, product_price, product_image_url)
VALUES(product_id_sequence.NEXTVAL, '사이다', 'drink', 2500, '/drink1.jpg');
INSERT INTO product(product_id, product_name, product_category, product_price, product_image_url)
VALUES(product_id_sequence.NEXTVAL, '츕파츕스', 'candy', 3000, '/candy1.jpg');
INSERT INTO product(product_id, product_name, product_category, product_price, product_image_url)
VALUES(product_id_sequence.NEXTVAL, '보름달', 'barde', 1500, '/barde1.jpeg');
INSERT INTO product(product_id, product_name, product_category, product_price, product_image_url)
VALUES(product_id_sequence.NEXTVAL, '도시락', 'yum', 5000, '/yum1.jpg');



select *   from product;


