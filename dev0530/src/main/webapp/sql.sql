create table tbl_std_202105 (
	std_no char(5) not null primary key,
	std_nm varchar2(10) not null,
	std_birth varchar2(8),
	std_address varchar2(50)
);

drop table tbl_std_202105

select * from TBL_STD_202105

insert into tbl_std_202105 values ('30401', '고길동', '19690501', '서울시 도봉구');
insert into tbl_std_202105 values ('30402', '둘리', '19840404', '서울시 은평구');
insert into tbl_std_202105 values ('30403', '도우너', '19880504', '서울시 양천구');
insert into tbl_std_202105 values ('30404', '마이콜', '19751107', '서울시 강동구');
insert into tbl_std_202105 values ('30405', '김영호', '19751107', '서울시 미래구');

create table tbl_att_202105 (
	att_ymd varchar2(8) not null,
	att_std_no char(5) not null,
	att_yn char(1)
);
select * from tbl_att_202105

select std_no, std_nm, to_char(to_date(std_birth, 'yyyymmdd'),'yyyy-mm-dd'), std_address,
nvl2(att_yn, decode(att_yn, 'Y', '출석', 'N', '결석'), '미등록')
from tbl_std_202105 s left outer join tbl_att_202105 a on a.att_std_no = s.std_no



select std_no, std_nm, to_char(to_date(std_birth, 'yyyy-mm-dd'),'yyyy-mm-dd'), std_address, 
decode(att_yn, 'Y', '출석', 'N', '결석', null, '미등록')
from tbl_std_202105 s right join tbl_att_202105 a on a.att_std_no = s.std_no



insert into tbl_att_202105 values ('20210511', '30401', 'Y');
insert into tbl_att_202105 values ('20210511', '30402', 'N');
insert into tbl_att_202105 values ('20210511', '30403', 'Y');
insert into tbl_att_202105 values ('20210511', '30404', 'Y');

select ABS(-15) from dual

SELECT TRUNC(3.14) FROM DUAL;

SELECT ROUND(643.72, -1) FROM DUAL;

SELECT TRUNC(62.113, -1) FROM DUAL;

SELECT MOD(33, 7) FROM DUAL;

SELECT EMPNO, ENAME, JOB FROM EMP WHERE MOD(EMPNO, 2) = 0;

SELECT TO_CHAR(SYSDATE - 20, 'YY/MM/DD') FROM DUAL;

SELECT ENAME, ROUND(MONTHS_BETWEEN(SYSDATE, HIREDATE)) FROM EMP WHERE DEPTNO = 10;

SELECT ENAME, TO_CHAR(ADD_MONTHS(HIREDATE, 3), 'YY/MM/DD')FROM EMP WHERE DEPTNO = 10;

SELECT TO_CHAR(NEXT_DAY(SYSDATE - 7, '금요일'), 'YY/MM/DD'), TO_CHAR(NEXT_DAY(SYSDATE, '금요일'), 'YY/MM/DD')FROM DUAL;

SELECT TO_CHAR(LAST_DAY(SYSDATE), 'YY/MM/DD') FROM DUAL;

SELECT TO_CHAR(HIREDATE, 'YYYY/MM/DD') || ' ' || TO_CHAR(HIREDATE, 'DAY', 'NLS_DATE_LANGUAGE=KOREAN') FROM EMP WHERE DEPTNO = 10;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;

SELECT ENAME, SAL, '₩' || TO_CHAR(SAL, '999,999') FROM EMP WHERE DEPTNO = 10;

SELECT COUNT(DISTINCT JOB) AS CNT_JOB FROM EMP;

SELECT JOB, SUM(SAL) FROM EMP GROUP BY JOB UNION ALL SELECT NULL, SUM(SAL) FROM EMP;

SELECT JOB, DEPTNO, SUM(SAL) FROM EMP GROUP BY ROLLUP(JOB, DEPTNO)

SELECT JOB, SUM(SAL) FROM EMP GROUP BY JOB, DEPTNO UNION ALL SELECT NULL, SUM(SAL) FROM EMP ORDER BY JOB;

SELECT JOB, DEPTNO, SUM(SAL) FROM EMP GROUP BY ROLLUP(JOB, DEPTNO) HAVING NOT (JOB IS NULL AND DEPTNO IS NULL);

SELECT JOB, DEPTNO, SUM(SAL) FROM EMP GROUP BY ROLLUP(JOB, DEPTNO);



 CREATE TABLE EMP
        (EMPNO NUMBER(4) NOT NULL,
         ENAME VARCHAR2(10),
         JOB VARCHAR2(9),
         MGR NUMBER(4),
         HIREDATE DATE,
         SAL NUMBER(7, 2),
         COMM NUMBER(7, 2),
         DEPTNO NUMBER(2));
         
         drop table emp
 
 INSERT INTO EMP VALUES
         (7369, 'SMITH',  'CLERK',     7902,
         TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20);
         
 INSERT INTO EMP VALUES
         (7499, 'ALLEN',  'SALESMAN',  7698,
         TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
 
 INSERT INTO EMP VALUES
         (7521, 'WARD',   'SALESMAN',  7698,
         TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
 
 INSERT INTO EMP VALUES
         (7566, 'JONES',  'MANAGER',   7839,
         TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
 
 INSERT INTO EMP VALUES
         (7654, 'MARTIN', 'SALESMAN',  7698,
         TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
 
 INSERT INTO EMP VALUES
         (7698, 'BLAKE',  'MANAGER',   7839,
         TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
 
 INSERT INTO EMP VALUES
         (7782, 'CLARK',  'MANAGER',   7839,
         TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
 
 INSERT INTO EMP VALUES
         (7788, 'SCOTT',  'ANALYST',   7566,
         TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
 
 INSERT INTO EMP VALUES
         (7839, 'KING',   'PRESIDENT', NULL,
         TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
 
 INSERT INTO EMP VALUES
         (7844, 'TURNER', 'SALESMAN',  7698,
         TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
 
 INSERT INTO EMP VALUES
         (7876, 'ADAMS',  'CLERK',     7788,
         TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
 
 INSERT INTO EMP VALUES
         (7900, 'JAMES',  'CLERK',     7698,
         TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
 
 INSERT INTO EMP VALUES
         (7902, 'FORD',   'ANALYST',   7566,
         TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
 
 INSERT INTO EMP VALUES
         (7934, 'MILLER', 'CLERK',     7782,
         TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);`
 
 
         drop table SALGRADE
         select * from SALGRADE
 CREATE TABLE DEPT
        (DEPTNO NUMBER(2),
         DNAME VARCHAR2(14),
         LOC VARCHAR2(13) );
 
 INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
 INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
 INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
 INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');`

 
 CREATE TABLE SALGRADE
         (GRADE NUMBER,
          LOSAL NUMBER,
          HISAL NUMBER);
 
 INSERT INTO SALGRADE VALUES (1,  700, 1200);
 INSERT INTO SALGRADE VALUES (2, 1201, 1400);
 INSERT INTO SALGRADE VALUES (3, 1401, 2000);
 INSERT INTO SALGRADE VALUES (4, 2001, 3000);
 INSERT INTO SALGRADE VALUES (5, 3001, 9999);`