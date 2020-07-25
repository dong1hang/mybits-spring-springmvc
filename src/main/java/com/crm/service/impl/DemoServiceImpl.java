package com.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.crm.dao.DemoDao;
import com.crm.entities.BaseDict;
import com.crm.entities.Customer;
import com.crm.service.DemoService;

@Service
@Transactional//开启事务
public class DemoServiceImpl implements DemoService {
		
	@Autowired
	private DemoDao dao;

	public List<BaseDict> getBaseType(String code) {
		return dao.getBaseType(code);
	}

	public Customer getCustomerById(Integer id) {
		return dao.getCustomerById(id);
	}

	public int update(Customer customer) {
		return dao.update(customer);
	}

	public void deleteById(Integer id) {
		dao.deleteById(id);
	}

	public int insertCustomer(Customer customer) {
		return dao.insert(customer);
	}

	public List<Customer> getAllCusts() {
		List<Customer> list = dao.getAllCusts();
		return list;
	}
}
