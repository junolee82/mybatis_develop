package kr.or.dgit.bigdata.mybatis_dev.mappers;

import kr.or.dgit.bigdata.mybatis_dev.dto.Student;

public interface StudentMapper {
	Student findStudentById(int id);
	
}
