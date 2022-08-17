package com.abc.quizapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.quizapp.entity.Quiz;
import com.abc.quizapp.entity.User;

public interface QuizRepository extends JpaRepository<Quiz, Integer>{

}
