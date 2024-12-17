package com.example.Utk.repo;

import java.util.ArrayList;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Utk.model.JobPost;

@Repository
public interface JobRepo extends JpaRepository<JobPost,Integer> {}
