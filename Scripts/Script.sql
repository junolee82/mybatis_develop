-- �ּ�
DROP TABLE IF EXISTS mybatis_develop.addresses RESTRICT;

-- �л�
DROP TABLE IF EXISTS mybatis_develop.students RESTRICT;

-- ����
DROP TABLE IF EXISTS mybatis_develop.tutors RESTRICT;

-- ����
DROP TABLE IF EXISTS mybatis_develop.courses RESTRICT;

-- ����
DROP TABLE IF EXISTS mybatis_develop.course_enrollment RESTRICT;

-- �л����
DROP SCHEMA IF EXISTS mybatis_develop;

-- �л����
CREATE SCHEMA mybatis_develop;

-- �ּ�
CREATE TABLE mybatis_develop.addresses (
	addr_id INTEGER     NOT NULL COMMENT '��ȣ', -- ��ȣ
	street  VARCHAR(50) NOT NULL COMMENT '�Ÿ�', -- �Ÿ�
	city    VARCHAR(50) NOT NULL COMMENT '�õ�', -- �õ�
	state   VARCHAR(50) NOT NULL COMMENT '�ñ���', -- �ñ���
	zip     CHAR(5)     NOT NULL COMMENT '�����ȣ', -- �����ȣ
	country VARCHAR(20) NOT NULL COMMENT '��' -- ��
)
COMMENT '�ּ�';

-- �ּ�
ALTER TABLE mybatis_develop.addresses
	ADD CONSTRAINT PK_addresses -- �ּ� �⺻Ű
		PRIMARY KEY (
			addr_id -- ��ȣ
		);

ALTER TABLE mybatis_develop.addresses
	MODIFY COLUMN addr_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��ȣ';

-- �л�
CREATE TABLE mybatis_develop.students (
	stud_id INTEGER     NOT NULL COMMENT '�й�', -- �й�
	name    VARCHAR(50) NOT NULL COMMENT '����', -- ����
	email   VARCHAR(50) NOT NULL COMMENT '�̸���', -- �̸���
	phone   VARCHAR(15) NULL     COMMENT '����ó', -- ����ó
	dob     DATE        NULL     COMMENT '�������', -- �������
	bio     LONGTEXT    NULL     COMMENT '�ڱ�Ұ���', -- �ڱ�Ұ���
	pic     BLOB        NULL     COMMENT '�������', -- �������
	addr_id INTEGER     NULL     COMMENT '�ּ�' -- �ּ�
)
COMMENT '�л�';

-- �л�
ALTER TABLE mybatis_develop.students
	ADD CONSTRAINT PK_students -- �л� �⺻Ű
		PRIMARY KEY (
			stud_id -- �й�
		);

-- ����
CREATE TABLE mybatis_develop.tutors (
	tutor_id INTEGER     NOT NULL COMMENT '�����ȣ', -- �����ȣ
	name     VARCHAR(50) NOT NULL COMMENT '����', -- ����
	email    VARCHAR(50) NOT NULL COMMENT '�̸���', -- �̸���
	phone    VARCHAR(15) NULL     COMMENT '����ó', -- ����ó
	dob      DATE        NULL     COMMENT '�������', -- �������
	bio      LONGTEXT    NULL     COMMENT '�ڱ�Ұ���', -- �ڱ�Ұ���
	pic      BLOB        NULL     COMMENT '�������', -- �������
	addr_id  INTEGER     NULL     COMMENT '�ּ�' -- �ּ�
)
COMMENT '����';

-- ����
ALTER TABLE mybatis_develop.tutors
	ADD CONSTRAINT PK_tutors -- ���� �⺻Ű
		PRIMARY KEY (
			tutor_id -- �����ȣ
		);

ALTER TABLE mybatis_develop.tutors
	MODIFY COLUMN tutor_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�����ȣ';

-- ����
CREATE TABLE mybatis_develop.courses (
	course_id   INTEGER      NOT NULL COMMENT '���¹�ȣ', -- ���¹�ȣ
	name        VARCHAR(50)  NOT NULL COMMENT '���¸�', -- ���¸�
	description VARCHAR(512) NULL     COMMENT '���³���', -- ���³���
	start_date  DATE         NULL     COMMENT '������', -- ������
	end_date    DATE         NULL     COMMENT '������', -- ������
	tutor_id    INTEGER      NULL     COMMENT '��簭��' -- ��簭��
)
COMMENT '����';

-- ����
ALTER TABLE mybatis_develop.courses
	ADD CONSTRAINT PK_courses -- ���� �⺻Ű
		PRIMARY KEY (
			course_id -- ���¹�ȣ
		);

-- ����
CREATE TABLE mybatis_develop.course_enrollment (
	course_id INTEGER NOT NULL COMMENT '����', -- ����
	stud_id   INTEGER NOT NULL COMMENT '�л�' -- �л�
)
COMMENT '����';

-- ����
ALTER TABLE mybatis_develop.course_enrollment
	ADD CONSTRAINT PK_course_enrollment -- ���� �⺻Ű
		PRIMARY KEY (
			course_id, -- ����
			stud_id    -- �л�
		);

-- �л�
ALTER TABLE mybatis_develop.students
	ADD CONSTRAINT FK_addresses_TO_students -- �ּ� -> �л�
		FOREIGN KEY (
			addr_id -- �ּ�
		)
		REFERENCES mybatis_develop.addresses ( -- �ּ�
			addr_id -- ��ȣ
		);

-- ����
ALTER TABLE mybatis_develop.tutors
	ADD CONSTRAINT FK_addresses_TO_tutors -- �ּ� -> ����
		FOREIGN KEY (
			addr_id -- �ּ�
		)
		REFERENCES mybatis_develop.addresses ( -- �ּ�
			addr_id -- ��ȣ
		);

-- ����
ALTER TABLE mybatis_develop.courses
	ADD CONSTRAINT FK_tutors_TO_courses -- ���� -> ����
		FOREIGN KEY (
			tutor_id -- ��簭��
		)
		REFERENCES mybatis_develop.tutors ( -- ����
			tutor_id -- �����ȣ
		);

-- ����
ALTER TABLE mybatis_develop.course_enrollment
	ADD CONSTRAINT FK_courses_TO_course_enrollment -- ���� -> ����
		FOREIGN KEY (
			course_id -- ����
		)
		REFERENCES mybatis_develop.courses ( -- ����
			course_id -- ���¹�ȣ
		);

-- ����
ALTER TABLE mybatis_develop.course_enrollment
	ADD CONSTRAINT FK_students_TO_course_enrollment -- �л� -> ����
		FOREIGN KEY (
			stud_id -- �л�
		)
		REFERENCES mybatis_develop.students ( -- �л�
			stud_id -- �й�
		);


INSERT INTO ADDRESSES (ADDR_ID,STREET,CITY,STATE,ZIP,COUNTRY) VALUES 
 (1,'4891 Pacific Hwy','San Diego','CA','92110','San Diego'),
 (2,'2400 N Jefferson St','Perry','FL','32347','Taylor'),
 (3,'710 N Cable Rd','Lima','OH','45825','Allen'),
 (4,'5108 W Gore Blvd','Lawton','OK','32365','Comanche');

INSERT INTO STUDENTS (STUD_ID,NAME,EMAIL,PHONE,DOB,BIO,PIC,ADDR_ID) VALUES 
 (1,'Timothy','timothy@gmail.com','123-123-1234','1988-04-25',NULL,NULL,3),
 (2,'Douglas','douglas@gmail.com','789-456-1234','1990-08-15',NULL,NULL,4);

INSERT INTO TUTORS (TUTOR_ID,NAME,EMAIL,PHONE,DOB,BIO,PIC,ADDR_ID) VALUES 
 (1,'John','john@gmail.com','111-222-3333','1980-05-20',NULL,NULL,1),
 (2,'Ken','ken@gmail.com','111-222-3333','1980-05-20',NULL,NULL,1),
 (3,'Paul','paul@gmail.com','123-321-4444','1981-03-15',NULL,NULL,2),
 (4,'Mike','mike@gmail.com','123-321-4444','1981-03-15',NULL,NULL,2);

INSERT INTO COURSES (COURSE_ID,NAME,DESCRIPTION,START_DATE,END_DATE,TUTOR_ID) VALUES 
 (1,'Quickstart Core Java','Core Java Programming','2013-03-01','2013-04-15',1),
 (2,'Quickstart JavaEE6','Enterprise App Development using JavaEE6','2013-04-01','2013-08-30',1),
 (3,'MyBatis3 Premier','MyBatis 3 framework','2013-06-01','2013-07-15',2);

INSERT INTO COURSE_ENROLLMENT (COURSE_ID,STUD_ID) VALUES 
 (1,1),
 (1,2),
 (2,2);
 
select * from students;
select * from tutors;
select * from addresses;
select * from courses;
select * from course_enrollment;
 
 select stud_id, name, email, dob from students where stud_id=1;

 insert into students(stud_id,name,email,phone,dob)
 values(5,'������','kbm@asd.asd','010-111-1111','2016-12-28');
 
 insert into students(name,email,phone,dob)
 values('������2','kbm2@asd.asd','010-111-1111','2016-12-28');
 
 set foreign_key_checks = 1;
 
 update students set name='��â��', email='rcg@asd.asd', phone='010-789-7896',dob='1983-12-10' where stud_id='5';
 
 delete from students where stud_id = 4;
 
 select stud_id, name, email,phone,dob from students;
 
 select stud_id, name, email,phone, a.addr_id, a.street, a.city, a.state, a.zip, a.country
 from students s inner join addresses a on s.addr_id=a.addr_id
 where stud_id=1;
 
 select t.tutor_id, t.name, email, c.course_id, c.name, c.description, c.start_date,c.end_date 
 from tutors t left outer join addresses a on t.addr_id = a.addr_id
 	left outer join courses c on t.tutor_id = c.tutor_id
 where t.tutor_id = "1";
 
 select * 
 from courses where tutor_id = 1
 and name like '%java%';
 
 select * from courses;