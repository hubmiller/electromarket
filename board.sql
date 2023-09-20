create table board(
	num         varchar2(10) not null,
	id          varchar2(10) not null,
	name        nvarchar2(10) not null,
	subject     nvarchar2(100) not null,
	content     nvarchar2(500) not null,
	regist_day  nvarchar2(30),
	hit         number,
	ip          nvarchar2(20),
	primary key (num)
);

create SEQUENCE board_seq;
select * from col where tname='BOARD';

insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목1', '내용1', '2029-08-03', 0, '');
insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목2', '내용2', '2029-08-04', 0, '');

insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목3', '내용3', '2023-08-07', 0, '');
insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목4', '내용4', '2029-08-07', 0, '');
insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목5', '내용5', '2029-08-07', 0, '');
insert into board values(board_seq.nextval, 'hgd', '홍길동', '제목6', '내용6', '2029-08-07', 0, '');

select * from board;

select count(*) from board where name like '%홍%';