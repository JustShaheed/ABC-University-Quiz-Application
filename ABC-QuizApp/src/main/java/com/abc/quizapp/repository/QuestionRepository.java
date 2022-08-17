package com.abc.quizapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.quizapp.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer>{
	
	List<Question> findByQuizId(int id);

}
