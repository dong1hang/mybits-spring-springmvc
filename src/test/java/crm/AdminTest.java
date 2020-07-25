package crm;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crm.dao.DemoDao;
import com.crm.entities.Customer;
import com.crm.entities.QueryVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class AdminTest {

	@Autowired
	private DemoDao dao;
	
	@Test
	public void test() {
		QueryVo vo = new QueryVo();
		vo.setCustName("demo");
		vo.setCustSource("7");
		vo.setCustIndustry("1");
		vo.setCustLevel("23");
		System.err.println(dao.getTotalRecords(vo));
		
	}
	
	@Test
	public void testQueryList() {
		QueryVo vo = new QueryVo();
		vo.setCustSource("6");
		vo.setCustIndustry("2");
		vo.setCustLevel("22");
		List<Customer> list = dao.getAllCusts();
		for (Customer customer : list) {
			System.out.println(customer);
		}
	}
	
	@Test
	public void testQueryById() {
		System.out.println(dao.getCustomerById(14));
	}
	
}
