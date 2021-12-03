package com.example.demo.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.db.entity.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area,Long>{

}
