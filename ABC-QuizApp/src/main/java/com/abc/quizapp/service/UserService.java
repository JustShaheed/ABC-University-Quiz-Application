package com.abc.quizapp.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import com.abc.quizapp.entity.User;


public interface UserService extends UserDetailsService {

	public User save(User user);
	public User getUserByName(String name);
	public User getUserById(int id);
	public List<User> getUserByRole(String role);
	public List<User> getAllUsers();
	public void deleteStudentById(int id);
	public User adminSaveUser(User user);

}
