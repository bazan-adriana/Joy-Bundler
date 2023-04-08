package com.adriana.javaexam.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.adriana.javaexam.models.Joy;
import com.adriana.javaexam.repositories.JoyRepository;

@Service
public class JoyService {
	private final JoyRepository joyRepo;
	public JoyService(JoyRepository joyRepo) {
		this.joyRepo = joyRepo;
	}
	
	public Joy getOne(Long id) {
		Optional<Joy> joy = joyRepo.findById(id);
		return joy.isPresent() ? joy.get() : null;
	}

	public List<Joy> getAll() {
		return (List<Joy>) joyRepo.findAll();
	}

	public Joy create(Joy joy) {
		return joyRepo.save(joy);
	}

	public Joy update(Joy joy) {
		return joyRepo.save(joy);
	}

	public void delete(Long id) {
		joyRepo.deleteById(id);
	}


}
