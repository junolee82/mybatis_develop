package kr.or.dgit.bigdata.mybatis_dev.mappers;

import kr.or.dgit.bigdata.mybatis_dev.dto.Student;

public interface StudentMapper {
	Student findStudentById(int id);

	int insertStudent(Student student);

	int insertStudentAutoIncrement(Student student);

	int updateStudent(Student student);
}
