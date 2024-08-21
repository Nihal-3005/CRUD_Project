package com.sbcrud.servicei;

import com.sbcrud.model.Student;

public interface ServiceI {
	
	public void saveStudent(Student s);
	
	public Iterable<Student> getAllStudent();
	
	public Student editStudent(int rollno);
	
	public void deleteStudent (Student s);
	
	public Student logincheck(String un, String ps);
	

}
