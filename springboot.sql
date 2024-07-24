-- 스프링부트 13장
DROP TABLE myuser;
CREATE TABLE myuser(
    id varchar2(20),
    name varchar2(10)
);
-- 샘플 데이터 직접 추가하기
insert into myuser values ( 'test1', '홍길동1');
insert into myuser values ( 'test2', '홍길동2');
insert into myuser values ( 'test3', '홍길동3');
commit;

-- 14장
drop table simple_bbs;
create table simple_bbs (
    id number(4) primary key,
    writer varchar2(100),
    title varchar2(100),
    content varchar2(100)
);

drop sequence simple_bbs_seq;
-- id 컬럼의 값을 자동으로 1씩 증가시키기 위해서 
-- 오라클의 시퀀스 기능을 사용하고 있다
create sequence simple_bbs_seq;

delete from simple_bbs where id = 1;
commit;

-- 19.MyBatis_Complex SQL 문
select A.ename as ename1, B.deptno as dno1, B.dname as dname1
			from emp A, dept B
		where A.deptno = B.deptno
			and B.deptno = 10;
select A.ename, B.deptno, B.dname
			from emp A, dept B
		where A.deptno = B.deptno
			and B.deptno = 10;












