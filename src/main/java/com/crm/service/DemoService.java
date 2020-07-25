package com.crm.service;

import java.util.List;

import com.crm.entities.BaseDict;
import com.crm.entities.Customer;

public interface DemoService {

	
	List<BaseDict> getBaseType(String code);

	List<Customer> getAllCusts();

	Customer getCustomerById(Integer id);

	int update(Customer customer);

	void deleteById(Integer id);

	int insertCustomer(Customer customer);
	
}
