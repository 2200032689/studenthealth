package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Solution;

public interface SolutionRepository extends JpaRepository<Solution, String> {

}
