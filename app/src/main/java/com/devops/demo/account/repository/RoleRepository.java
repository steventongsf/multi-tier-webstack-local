package com.devops.demo.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devops.demo.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
