package kr.or.dgit.bigdata.mybatis_dev;

import java.util.Date;
import java.util.List;

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

	/*@Test
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
	}*/
	
	/*@Test
	public void testInsertStudentAutoIncrement() {
		Student student = new Student();
		student.setName("김태희");
		student.setEmail("kth@gmail.com");
		student.setPhone(new PhoneNumber("010-5782-7586"));
		student.setDob(new Date());

		int result = studentService.insertStudent(student);
		System.out.printf("testInsertStudent %s : result %d%n", student, result);
		Assert.assertSame(1, result);
	}*/
	
	/*@Test
	public void testUpdateStudent() {
		Student student = new Student();
		student.setStudId(1);
		student.setName("Timothy");
		student.setEmail("timothy6@gmail.com");
		student.setPhone(new PhoneNumber("010-7596-4845"));
		student.setDob(new Date());
		
		int result = studentService.updateStudent(student);
		System.out.printf("testUpdateStudent %s : result %d%n", student, result);
		Assert.assertSame(1, result);
	}*/
	
	/*@Test
	public void testDeleteStudent() {
		int result = studentService.deleteStudent(5);
		System.out.printf("testDeleteStudent : result %d%n", result);
		Assert.assertSame(1, result);
	}*/
	
	@Test
	public void testFindAllStudetn() {
		List<Student> student = studentService.findAllStudent();
		Assert.assertNotNull(student);
		System.out.println("testFindAllStudent");
		for(Student student1 : student){
			Assert.assertNotNull(student1);
			System.out.println(student1);
		}
	}
}
