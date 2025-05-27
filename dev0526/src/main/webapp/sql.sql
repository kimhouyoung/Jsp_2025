create table tbl_player_202408 (
	p_id varchar2(4) not null primary key,
	p_name varchar2(20)
);

drop table tbl_medal_202408

insert into tbl_player_202408 values ('1001', '홍길동');
insert into tbl_player_202408 values ('1002', '김길동');
insert into tbl_player_202408 values ('1003', '이길동');
insert into tbl_player_202408 values ('1004', '신길동');
insert into tbl_player_202408 values ('1005', '최길동');
insert into tbl_player_202408 values ('1006', '서길동');
insert into tbl_player_202408 values ('1007', '박길동');
insert into tbl_player_202408 values ('1008', '장길동');
insert into tbl_player_202408 values ('1009', '조길동');

create table tbl_game_202408 (
	g_id varchar2(4) not null primary key,
	g_name varchar2(20),
	g_fg char(1),
	g_date varchar2(8)
);

insert into tbl_game_202408 values ('A001', 'A올림픽', '1', '20240705');
insert into tbl_game_202408 values ('A002', 'B올림픽', '1', '20240725');
insert into tbl_game_202408 values ('A003', 'A세계선수권', '2', '20240811');
insert into tbl_game_202408 values ('A004', 'A아시안게임', '3', '20240827');

create table tbl_medal_202408 (
	m_id varchar2(7) not null primary key,
	m_g_id varchar2(4),
	m_rank varchar2(1),
	m_p_id varchar2(4)
);

select p_id, sum(decode(g_fg, 1, decode(m_rank, 1, 100))), sum(decode(g_fg, 1, decode(m_rank, 2, 1, 60))), sum(decode(g_fg, 1, decode(m_rank, 3, 1, 40)))
group by p_id


select p_id, p_name, sum(case when g_fg = 1 and m_rank = 1 then 100 when g_fg = 1 and m_rank = 2 then 60 when g_fg = 1 and m_rank = 3 then 40 when g_fg = 2 and m_rank = 1 then 20 when g_fg = 2 and m_rank = 2 then 10 when g_fg = 2 and m_rank = 3 then 5 when g_fg = 3 and m_rank = 1 then 5 when g_fg = 3 and m_rank = 2 then 3 when g_fg = 3 and m_rank = 3 then 1 end) as sell from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id group by p_id, p_name order by sell desc
select p_id, p_name, sum(case when g_fg = 1 and m_rank = 1 then 100 when g_fg = 1 and m_rank = 2 then 60 when g_fg = 1 and m_rank = 3 then 40 when g_fg = 2 and m_rank = 1 then 20 when g_fg = 2 and m_rank = 2 then 10 when g_fg = 2 and m_rank = 3 then 5 when g_fg = 3 and m_rank = 1 then 5 when g_fg = 3 and m_rank = 2 then 3 when g_fg = 3 and m_rank = 3 then 1 end) from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id group by p_id, p_name

select p_id, p_name, sum(case when g_fg = 1 and m_rank = 1 then floor(100 * .5) when g_fg = 1 and m_rank = 2 then floor(60 * 0.5) when g_fg = 1 and m_rank = 3 then floor(40 * 0.5) 
when g_fg = 2 and m_rank = 1 then floor(20 * 0.8) when g_fg = 2 and m_rank = 2 then floor(10 * 0.8) when g_fg = 2 and m_rank = 3 then floor(5 * 0.8) 
when g_fg = 3 and m_rank = 1 then floor(5 * 1)  when g_fg = 3 and m_rank = 2 then floor(3 * 1)  when g_fg = 3 and m_rank = 3 then floor(1 * 1) 
end) as sell,
floor(sum(case when g_fg = 1 and m_rank = 1 then floor(100 * .5) when g_fg = 1 and m_rank = 2 then floor(60 * 0.5) when g_fg = 1 and m_rank = 3 then floor(40 * 0.5) 
when g_fg = 2 and m_rank = 1 then floor(20 * 0.8)when g_fg = 2 and m_rank = 2 then floor(10 * 0.8) when g_fg = 2 and m_rank = 3 then floor(5 * 0.8)
when g_fg = 3 and m_rank = 1 then floor(5 * 1) when g_fg = 3 and m_rank = 2 then floor(3 * 1)  when g_fg = 3 and m_rank = 3 then floor(1 * 1) 
end) / 15 * 50  as see)
from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id group by p_id, p_name

select p_id, p_name, sum(case when g_fg = 1 and m_rank = 1 then floor(100 * 0.5) when g_fg = 1 and m_rank = 2 then floor(60 * 0.5) when g_fg = 1 and m_rank = 3 then floor(40 * 0.5) when g_fg = 2 and m_rank = 1 then floor(20 * 0.8) when g_fg = 2 and m_rank = 2 then floor(10 * 0.8) when g_fg = 2 and m_rank = 3 then floor(5 * 0.8) when g_fg = 3 and m_rank = 1 then floor(5 * 1) when g_fg = 3 and m_rank = 2 then floor(3 * 1) when g_fg = 3 and m_rank = 3 then floor(1 * 1)ELSE 0 end) as sell, 
floor(sum(case when g_fg = 1 and m_rank = 1 then floor(100 * 0.5) when g_fg = 1 and m_rank = 2 then floor(60 * 0.5) when g_fg = 1 and m_rank = 3 then floor(40 * 0.5) when g_fg = 2 and m_rank = 1 then floor(20 * 0.8) when g_fg = 2 and m_rank = 2 then floor(10 * 0.8) when g_fg = 2 and m_rank = 3 then floor(5 * 0.8) when g_fg = 3 and m_rank = 1 then 
5 * 1 when g_fg = 3 and m_rank = 2 then 3 * 1 when g_fg = 3 and m_rank = 3 then 1 * 1 ELSE 0 end) / 15 * 50) as see from tbl_player_202408 p left outer join tbl_medal_202408 m on m.m_p_id = p.p_id left outer join tbl_game_202408 g on g.g_id = m.m_g_id group by p_id, p_name order by sell desc;



select p_id, p_name, sum(decode(g_fg, 1, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 2, 1, 0), 0)), 
sum(decode(g_fg, 2, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 3, 1, 0), 0)) 
from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id where p.p_id = '1001' group by p_id, p_name;
select p_id, p_name, sum(decode(g_fg, 1, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 3, 1, 0), 0)) from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id where p.p_id = '1001' group by p_id, p_name

select m_p_id, case when g_name = '1' then decode(m_rank, '1', '금메달', '2', '은메달', '3', '동메달')
 when g_name = '2' then decode(m_rank, '1', '금메달', '2', '은메달', '3', '동메달')
  when g_name = '3' then decode(m_rank, '1', '금메달', '2', '은메달', '3', '동메달')
  end from  tbl_medal_202408 m  join tbl_game_202408 g on g.g_id = m.m_g_id 
  
select m_g_id from tbl_medal_202408 where m_g_id like 'A_';

insert into tbl_medal_202408 values ('2024001', 'A001', '1', '1001');
insert into tbl_medal_202408 values ('2024002', 'A001', '2', '1002');
insert into tbl_medal_202408 values ('2024003', 'A001', '3', '1004');
insert into tbl_medal_202408 values ('2024004', 'A002', '1', '1001');
insert into tbl_medal_202408 values ('2024005', 'A002', '2', '1003');
insert into tbl_medal_202408 values ('2024006', 'A002', '3', '1007');
insert into tbl_medal_202408 values ('2024007', 'A003', '1', '1009');
insert into tbl_medal_202408 values ('2024008', 'A003', '2', '1007');
insert into tbl_medal_202408 values ('2024009', 'A003', '3', '1008');
insert into tbl_medal_202408 values ('2024010', 'A004', '1', '1001');
insert into tbl_medal_202408 values ('2024011', 'A004', '2', '1002');
insert into tbl_medal_202408 values ('2024012', 'A004', '3', '1009');