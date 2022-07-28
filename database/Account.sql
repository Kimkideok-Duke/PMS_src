/*
계정 테이블 생성
사원번호 (userno) 기본키

권한(auth)
master (전체 관리자)
pm (프로젝트 관리자)
um (유저 관리자)
user (일반 사용자)

*/
CREATE TABLE account(
	userno varchar2(9) PRIMARY KEY,
	pw varchar2(16) NOT NULL,
	name varchar2(30) NOT NULL,
	email varchar2(100),
	position varchar2(30),
	address varchar2(200),
	hpnum varchar2(15),
	birthdate DATE,
	joindate DATE NOT NULL,
	auth varchar2(30) CHECK(auth IN('master','pm','um','user'))
);



/*
사원번호(userno) 시퀀스 생성 / 숫자8자리
 */
CREATE SEQUENCE acc_seq
       INCREMENT BY 1
       START WITH 10000000
       MINVALUE 10000000
       MAXVALUE 99999999
       NOCYCLE;


INSERT INTO account values('E'||to_char(acc_seq.nextval),'abcabc123','홍길동','himan7777@naver.com',
	'과장','서울시 마포구 서교동 447-5 201호','010-1234-5678',NULL,sysdate,'master');

SELECT * FROM account;




