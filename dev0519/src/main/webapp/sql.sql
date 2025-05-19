create table tbl_guest (
	userid char(15) not null primary key,
	usernm varchar2(20) not null,
	passwd char(10),
	jumin char(13),
	gender char(1),
	address varchar2(50),
	jobcd number(1),
	mailrcv char(1),
	intro varchar2(50)
);

select userid, usernm, substr(jumin, 1, 6), decode(gender, '1', '남자', '2', '여자'), decode(jobcd, '1', '학생', '2', '회사원', '3', '공무원', '4', '군인', '5', '기타'), intro from TBL_GUEST where trim(userid) LIKE 'seojm'
select userid, usernm, substr(jumin, 1, 6), decode(gender, '1', '남자', '2', '여자'), decode(jobcd, '1', '학생', '2', '회사원', '3', '공무원', '4', '군인', '5', '기타'), intro from TBL_GUEST where userid = 'seojm'
drop table tbl_guest

insert into tbl_guest values ('seojm', '서정만', 's123!!', '7003211157222', '1', '평택시 비전동 283', 3, 'Y', '한국복지 대학 교수');
insert into tbl_guest values ('kks', '김규성', 'k345!!', '6805011311111', '1', '수원시 영동구 그린아파트', 2, 'Y', '삼성전자 부장');
insert into tbl_guest values ('shm', '손흥민', 's678!!', '920401123222', '1', '서울시 여의동 23', 3, 'Y', '토트넘 FC');
insert into tbl_guest values ('kds', '김다솔', 'k222!!', '0202213111222', '2', '수원시 영동구 111', 1, 'N', '수원공고 학생');
insert into tbl_guest values ('khk', '김연경', 'k007!!', '970502231111', '2', '청주시 청원군 향군로 108', 5, 'N', '육군 장교');

select * from TBL_GUEST

select userid, usernm, substr(jumin, 1, 6), decode(gender, '1', '남자', '2', '여자'), decode(jobcd, '1', '학생', '2', '회사원', '3', '공무원', '4', '군인', '5', '기타'), intro from TBL_GUEST where userid LIKE '%'

select userid, usernm, substr(jumin, 1, 6), decode(gender, '1', '남자', '2', '여자'), decode(jobcd, '1', '학생', '2', '회사원', '3', '공무원', '4', '군인', '5', '기타'), intro from TBL_GUEST