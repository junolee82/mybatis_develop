package kr.or.dgit.bigdata.mybatis_dev;

import java.util.Date;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import kr.or.dgit.bigdata.mybatis_dev.dto.PhoneNumber;
import kr.or.dgit.bigdata.mybatis_dev.dto.Student;
import kr.or.dgit.bigdata.mybatis_dev.service.StudentService;

public class StudentServiceTest {
	private static StudentService studentService;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		studentService = StudentService.getInstance();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		studentService = null;
	}

	@Test
	public void test() {
		Student student = studentService.findStudentById(1);
		Assert.assertNotNull(student);
		System.out.println("testFindStudentById" + student);
	}

	@Test
	public void testInsertStudent() {
		Student student = new Student();
		student.setStudId(3);
		student.setName("김주하");
		student.setEmail("kjh@gmail.com");
		student.setPhone(new PhoneNumber("010-1234-5678"));
		student.setDob(new Date());

		int result = studentService.insertStudent(student);
		System.out.printf("testInsertStudent %s : result %d%n", student, result);
		Assert.assertSame(1, result);
	}

}
