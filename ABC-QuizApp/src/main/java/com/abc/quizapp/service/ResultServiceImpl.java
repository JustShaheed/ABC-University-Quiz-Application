package com.abc.quizapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.quizapp.entity.Quiz;
import com.abc.quizapp.entity.Result;
import com.abc.quizapp.repository.ResultRepository;

@Service
public class ResultServiceImpl implements ResultService{
	
	@Autowired
	private ResultRepository resultRepository;

	@Override
	public Result saveResult(Result result) {
		return resultRepository.save(result);
	}

	@Override
	public List<Result> getResultsByStudentId(int id) {
		return resultRepository.findByStudentId(id);
	}

	@Override
	public List<Result> getResultsByQuizId(int id) {
		return resultRepository.findByQuizId(id);
	}
	
	@Override
	public Result getResultByQuizIdAndStudentId(int quizId, int studentId) {
		return resultRepository.findByQuizIdAndStudentId(quizId, studentId);
	}

	@Override
	public Result getResultById(int id) {
		if (resultRepository.findById(id).isEmpty()) {
			return null;
		} else {
			return resultRepository.findById(id).get(); 
		}
	}

	@Override
	public void deleteResultById(int id) {
		resultRepository.deleteById(id);
	}
	
	

}
