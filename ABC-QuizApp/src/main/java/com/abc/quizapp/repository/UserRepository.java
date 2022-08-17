package com.abc.quizapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.quizapp.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	public User findByName(String username);
	public List<User> findByRole(String role);

}
