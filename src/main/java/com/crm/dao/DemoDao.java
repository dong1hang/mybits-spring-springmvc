package com.crm.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.crm.entities.BaseDict;
import com.crm.entities.Customer;
import com.crm.entities.QueryVo;

 /** 
 * @ClassName: AdminDao 
 * @Description: TODO
 * @author: Sven
 * @date: 2020/07/25
 */
@Repository
public interface DemoDao {
	
	
	/**
	 * select by type
	 * @param code
	 * @return
	 */
	List<BaseDict> getBaseType(String code);

	
	/**
	 * select count by vo
	 * @param vo
	 * @return
	 */
	int getTotalRecords(QueryVo vo);

	/**
	 * select all
	 * @param vo
	 * @return
	 */
	List<Customer> getAllCusts();

	/**
	 * select by id
	 * @param id
	 * @return
	 */
	Customer getCustomerById(Integer id);

	/**
	 * update
	 * @param customer
	 * @return
	 */
	int update(Customer customer);

	/**
	 * delete
	 * @param id
	 */
	void deleteById(Integer id);

	/**
	 * insert
	 * @param customer
	 * @return
	 */
	int insert(Customer customer);
	
}
