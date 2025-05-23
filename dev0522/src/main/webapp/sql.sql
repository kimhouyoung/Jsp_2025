create table room_tbl_202305 (
	rm_number number(3) not null primary key,
	rm_type varchar2(2)
);

drop table room_tbl_202305

insert into room_tbl_202305 values (101, 'a');
insert into room_tbl_202305 values (102, 'a');
insert into room_tbl_202305 values (103, 'b');
insert into room_tbl_202305 values (104, 'b');
insert into room_tbl_202305 values (201, 'a');
insert into room_tbl_202305 values (202, 'a');
insert into room_tbl_202305 values (203, 'b');
insert into room_tbl_202305 values (204, 'b');

drop table reservation_tbl_202305

, to_char(resv_to_ymd, 'yyyy/mm/dd')
select resv_no, resv_name, substr(resv_phone, 4, 4), 

select resv_no, resv_name, substr(resv_phone, 1, 3), substr(resv_phone, 8, 4),  to_char(to_date(resv_to_ymd, 'yyyymmdd'), 'yyyy/mm/dd') || '-' || to_char(to_date(resv_to_ymd, 'yyyymmdd'), 'yyyy/mm/dd'), ro.rm_number, decode(rm_type, 'a', '2인실', 'b', '4인실')
from reservation_tbl_202305 r join room_tbl_202305 ro on ro.rm_number = r.resv_rm_number

select * from reservation_tbl_202305

drop table reservation_tbl_202305
create table reservation_tbl_202305 (
	resv_no varchar2(5) not null primary key,
	resv_name varchar2(20),
	resv_phone varchar2(11),
	resv_from_ymd varchar2(8),
	resv_to_ymd varchar2(8),
	resv_rm_number number(3)
	);
	
	insert into reservation_tbl_202305 values ('10001', '홍길동', '01011112222', '20230524', '20230524', 101);
	insert into reservation_tbl_202305 values ('10002', '고길동', '01022223333', '20230524', '20230524', 102);
	insert into reservation_tbl_202305 values ('10003', '이길동', '01033334444', '20230524', '20230525', 103);
	insert into reservation_tbl_202305 values ('10004', '신길동', '01044445555', '20230524', '20230525', 104);
	insert into reservation_tbl_202305 values ('10005', '최길동', '01055556666', '20230525', '20230525', 201);
