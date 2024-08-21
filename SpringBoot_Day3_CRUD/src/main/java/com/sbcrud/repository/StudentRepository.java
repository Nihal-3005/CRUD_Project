package com.sbcrud.repository;

import org.springframework.data.repository.CrudRepository;

import com.sbcrud.model.Student;

public interface StudentRepository extends CrudRepository<Student, Integer> {
	
	public Student findByRollno(int rollno);
	
	public Student findByUsernameAndPassword(String un,String ps) ;

}
