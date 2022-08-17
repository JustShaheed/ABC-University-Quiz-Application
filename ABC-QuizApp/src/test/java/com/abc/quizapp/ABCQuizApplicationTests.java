package com.abc.quizapp;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.abc.quizapp.entity.User;
import com.abc.quizapp.repository.UserRepository;
import com.abc.quizapp.service.UserService;

@SpringBootTest
class ABCQuizApplicationTests {

	@Autowired
	private UserService service;

	@MockBean
	private UserRepository repository;

	@Test
	public void saveUserTest() {
		User user = new User("Shaheed", "pass", "shaheed@gmail.com", "student");
		when(repository.save(user)).thenReturn(user);
		assertEquals(user, service.adminSaveUser(user));
	}

	@Test
	public void deleteUserTest() {
		User user = new User("Shaheed", "pass", "shaheed@gmail.com", "student");
		service.deleteStudentById(user.getId());
		verify(repository, times(1)).delete(user);
	}


}
