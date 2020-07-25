package com.crm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.crm.entities.BaseDict;
import com.crm.entities.Customer;
import com.crm.entities.QueryVo;
import com.crm.service.DemoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("demo")
public class DemoController {

	@Autowired
	private DemoService service;

	/**
	 * 結果一覧
	 * 
	 * @param currentPage 
	 * @return  "/WEB-INF/jsp/customer.jsp"
	 */
	@RequestMapping(value = {"list"})
	public String customerList(@RequestParam(value = "page",defaultValue = "1") Integer pn,QueryVo vo, Model model) {
		// 1.select by fromType,industryType,levelType
		List<BaseDict> fromType = service.getBaseType("002");
		model.addAttribute("fromType", fromType);
		List<BaseDict> industryType = service.getBaseType("001");
		model.addAttribute("industryType", industryType);
		List<BaseDict> levelType = service.getBaseType("006");
		model.addAttribute("levelType", levelType);
		// 2.顧客情報を検索 

		// 条件
		if (null != vo) {
			if (null != vo.getCustName() && !vo.getCustName().trim().equals("")) {
				vo.setCustName(vo.getCustName().trim());
			}
			if (null != vo.getCustSource() && !vo.getCustName().trim().equals("")) {
				vo.setCustSource(vo.getCustSource());
			}
			if (null != vo.getCustIndustry() && !vo.getCustIndustry().trim().equals("")) {
				vo.setCustIndustry(vo.getCustIndustry());
			}
			if (null != vo.getCustLevel() && !vo.getCustLevel().trim().equals("")) {
				vo.setCustLevel(vo.getCustLevel());
			}

			
		}
		//何件で表示する
        PageHelper.startPage(pn, 10);

		// サビスを呼び出し
		List<Customer> list = service.getAllCusts();
		PageInfo page = new PageInfo(list,5);
		
		model.addAttribute("page",page);
		return "demo";
	}
	
	@RequestMapping("editUI")
	@ResponseBody
	public Customer editCustomer(Integer id) {
		System.err.println(id);
		//
		Customer customer = service.getCustomerById(id);
		return customer;
	}
	
	@RequestMapping("update")
	@ResponseBody
	public String update(Customer customer) {
		service.update(customer);
		return "ok";
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public String delete(Integer id) {
		service.deleteById(id);
		return "ok";
	}
	
	@RequestMapping("deletes")
	@ResponseBody
	public String deletes(HttpServletRequest request) {
		String[] values = request.getParameterValues("check");
		for(int i=0;i<values.length;i++) {
			service.deleteById(Integer.parseInt(values[i]));
		}
		return "ok";
	}
	
	@RequestMapping("insert")
	@ResponseBody
	public String insert(Customer customer) {
		customer.setCustCreatetime(new Date());
		int num  = service.insertCustomer(customer);
		if (num>=1) {
			return "ok";
		}
		return "err";
	}
}
