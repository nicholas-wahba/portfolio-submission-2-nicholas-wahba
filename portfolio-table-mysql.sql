CREATE DATABASE salers;

CREATE TABLE salers.customers (
	customer_id INT(14),
	first_name VARCHAR (255),
	last_name VARCHAR (255),
	phone VARCHAR (255),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (255),
	zip_code VARCHAR (255),
    PRIMARY KEY(customer_id)
);

UPDATE TABLE sale.customers (
SET email = '@yahoo.com',
WHERE state = 'NY', 
);



INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(0, 'Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY',14127);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(1, 'Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA',95008);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(2, 'Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA',90278);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(3, 'Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY',11553);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(4, 'Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA',95820);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(5, 'Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY',14450);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(6, 'Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY',14215);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(7, 'Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY',11372);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(8, 'Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY',11050);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(9, 'Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY',10950);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(10, 'Freddie','Howell',NULL,'freddie.howell@hotmail.com','895 East St. ','Albany','NY',12084);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(11, 'Lindsay','Vargas','(716) 463-7894','lindsay.vargas@hotmail.com','327 Oyster Road ','Los Angeles','CA',90001);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(12, 'Jill','Singh',NULL,'jill.singh@yahoo.com','27 Yellow St. ','Niagara Falls','NY',14301);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(13, 'Cheryl','Carlson',NULL,'cheryl.carlson@msn.com','6437 Norway St. ','San Diego','CA',22434);
INSERT INTO salers.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(14, 'Josue','Caldwell',NULL,'josue.caldwell@gmail.com','863 Almond Road ','Syracuse','NY',13210);