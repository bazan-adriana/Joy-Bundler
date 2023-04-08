package com.adriana.javaexam.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.adriana.javaexam.models.Joy;

@Repository
public interface JoyRepository extends CrudRepository<Joy, Long>{
	
	List<Joy> findAll();

}
