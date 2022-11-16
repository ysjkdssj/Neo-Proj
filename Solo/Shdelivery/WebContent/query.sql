drop table member;

create table member(
	member_id varchar2(20) constraint member_id_pk primary key,
	member_pwd varchar2(20)
);

insert into member(member_id, member_pwd) values('test', '1234');

select * from member order by member_id asc;