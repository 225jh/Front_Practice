-- board table 생성
CREATE TABLE board(
	num NUMBER(5) PRIMARY KEY,
	pwd VARCHAR2(30),
	name VARCHAR2(30),
	email VARCHAR2(30),
	title VARCHAR2(50),
	content VARCHAR2(1000),
	readcount NUMBER(4) DEFAULT 0, --조회수
	writedate DATE DEFAULT SYSDATE
);
select * from board;
--board sequence 생성
create sequence board_seq start with 1 increment by 1;

--게시글 기본 정보 추가
INSERT INTO board(num, name, email, pwd, title, content) 
VALUES(board_seq.nextval, '이재한', 'jh@naver.com', '123', '첫 게시글', '하이~');