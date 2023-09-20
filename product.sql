create table product (
	p_id            varchar2(10) not null,
	p_name          nvarchar2(20),
	p_unitPrice     number,
	p_description   nvarchar2(100),
	p_category      nvarchar2(20),
	p_manufacturer  nvarchar2(20),
	p_unitsInStock  number,
	p_condition     nvarchar2(20),
	p_fileName      nvarchar2(20),
	primary key (p_id)
);
select * from cols where table_name='PRODUCT';

insert into product values('P1234', 'iPhone 6s', 800000,
    '1334X750 Retina HD display, 8-megapixel iSight Camera',
    'Apple', 'Smart Phone', 1000, 'new', 'P1234.png');
    
insert into product values('P1235', 'LG PC gram', 1500000,
    '3.3-inch, IPS LED display, 5rd Generation Intel Core processors', 'LG', 'Notebook',
    1000, 'new', 'P1235.png');
    
insert into product values('P1236', 'Galaxy Tab S', 900000,
    '3.3-inch, 212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor',
    'Samsung', 'Tablet', 1000, 'new', 'P1236.png');
    
select * from product;
