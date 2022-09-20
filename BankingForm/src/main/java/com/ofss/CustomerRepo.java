package com.ofss;

import org.springframework.data.jpa.repository.JpaRepository;

interface CustomerRepo extends JpaRepository<Customer, Long> {
	
}
