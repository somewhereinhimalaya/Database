CREATE TABLE suppliers(
    supplier_id NUMBER(10) NULL,
    supplier_name VARCHAR2(4000) NULL,
    supplier_address VARCHAR2(4000) NULL
);

CREATE TABLE order1(
    order_number NUMBER NULL,
    supplier_id NUMBER NULL,
    city VARCHAR2(4000) NULL
);

INSERT ALL
    INTO suppliers(supplier_id, supplier_name, supplier_address) VALUES(1, 'Bata shoes', 'Agra')
    INTO suppliers(supplier_id, supplier_name, supplier_address) VALUES(2, 'Kingfisher', 'Delhi')
    INTO suppliers(supplier_id, supplier_name, supplier_address) VALUES(3, 'Vojo', 'Lucknow')
    INTO order1(order_number, supplier_id, city) VALUES(101, 1, 'Allahabad')
    INTO order1(order_number, supplier_id, city) VALUES(102, 2, 'Kanpur')
SELECT * FROM dual;


CREATE VIEW sup_orders AS  
SELECT suppliers.supplier_id, order1.quantity, order1.price  
FROM suppliers  
INNER JOIN order1  
ON suppliers.supplier_id = supplier_id  
WHERE suppliers.supplier_name = 'VOJO';

SELECT * FROM sup_orders;
--facing error but why



