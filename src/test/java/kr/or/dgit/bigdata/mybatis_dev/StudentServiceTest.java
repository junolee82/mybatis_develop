package kr.or.dgit.bigdata.mybatis_dev;

import java.util.Date;
import java.util.List;
import java.util.Map;

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

	/*@Test
	public void test() {
		Student student = studentService.findStudentById(1);
		Assert.assertNotNull(student);
		System.out.println("testFindStudentById" + student);
	}*/

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
	
	/*@Test
	public void testFindAllStudetn() {
		List<Student> student = studentService.findAllStudent();
		Assert.assertNotNull(student);
		System.out.println("testFindAllStudent");
		for(Student student1 : student){
			Assert.assertNotNull(student1);
			System.out.println(student1);
		}
	}
	
	@Test
	public void testFindAllStudentsForResultMap() {
		List<Student> stud1 = studentService.findAllStudentsForResultMap();
		Assert.assertNotNull(stud1);
		System.out.println("testFindAllStudentsForResultMap");
		for(Student student : stud1){
			Assert.assertNotNull(stud1);
			System.out.println(stud1);
		}
	}
	
	@Test
	public void testFindStudentByIdForResultMap() {
		Student student = studentService.findStudentByIdForResultMap(3);
		Assert.assertNotNull(student);
		System.out.println("testFindStudentByIdForResultMap" + student);		
	}*/
	
	/*@Test
	public void testFindAllStudentsForHashMap() {
		List<Map<String, Object>> studentMap = studentService.findAllStudentsForHashMap();
		Assert.assertNotNull(studentMap);
		System.out.println("findAllStudentsForHashMap");
		for(Map<String, Object> studMap : studentMap){
			System.out.printf("stud_id : %s ", studMap.get("stud_id"));
			System.out.printf("name : %s ", studMap.get("name"));
			System.out.printf("email : %s ", studMap.get("email"));
			System.out.printf("phone : %s ", studMap.get("phone"));
			System.out.printf("dob : %s ", studMap.get("dob"));
			System.out.println();
		}
	}
	
	@Test
	public void testFindStudentByIdForHashMap() {
		Map<String, Object> studMap = studentService.findStudentByIdForHashMap(3);
		Assert.assertNotNull(studMap);
		System.out.println("findStudentByIdForHashMap");
	}*/
	
	@Test
	public void testFindStudentByIdForresultMapExtend() {
		Student student = studentService.findStudentByIdForresultMapExtend(1);
		Assert.assertNotNull(student);
		System.out.println("findStudentByIdForresultMapExtend");
	}
}
