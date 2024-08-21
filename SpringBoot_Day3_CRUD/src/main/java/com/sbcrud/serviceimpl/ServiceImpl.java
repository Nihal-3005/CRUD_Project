package com.sbcrud.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbcrud.model.Student;
import com.sbcrud.repository.StudentRepository;
import com.sbcrud.servicei.ServiceI;

@Service
public class ServiceImpl implements ServiceI{
	
	@Autowired
	StudentRepository sr;

	@Override
	public void saveStudent(Student s) {
	 System.out.println("In service");
	 sr.save(s);
	}

	@Override
	public Iterable<Student> getAllStudent() {
		
		return sr.findAll();
	}

	@Override
	public Student editStudent(int rollno) {
		
		return sr.findByRollno(rollno);
	}

	@Override
	public void deleteStudent(Student s) {
		sr.delete(s);
		
	}

	@Override
	public Student logincheck(String un, String ps) {
		
		return sr.findByUsernameAndPassword(un, ps);
	}

}
