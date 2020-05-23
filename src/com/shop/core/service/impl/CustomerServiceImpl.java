package com.shop.core.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.shop.common.utils.Page;
import com.shop.core.dao.CustomerDao;
import com.shop.core.po.Customer;
import com.shop.core.service.CustomerService;
/**
 * �ͻ�����
 */
@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	// ����DAO���Բ�ע��
	@Autowired
	private CustomerDao customerDao;
	// �ͻ��б�
	public Page<Customer> findCustomerList(Integer page, Integer rows, 
			String custName,  String custSource,String custIndustry,
                                                          String custLevel) {
		// �����ͻ�����
         Customer customer = new Customer();
		// �жϿͻ�����
		if(StringUtils.isNotBlank(custName)){
			customer.setS_name(custName);
		}
		// �жϿͻ���Ϣ��Դ
		if(StringUtils.isNotBlank(custSource)){
			customer.setS_supplier(custSource);
		}
		// �жϿͻ�������ҵ
		if(StringUtils.isNotBlank(custIndustry)){
			customer.setS_class(custIndustry);
		}
		// �жϿͻ�����
		if(StringUtils.isNotBlank(custLevel)){
			customer.setS_state(custLevel);
		}
		// ��ǰҳ
		customer.setStart((page-1) * rows) ;
		// ÿҳ��
		customer.setRows(rows);
		// ��ѯ�ͻ��б�
		List<Customer> customers = 
                            customerDao.selectCustomerList(customer);
		// ��ѯ�ͻ��б��ܼ�¼��
		Integer count = customerDao.selectCustomerListCount(customer);
		// ����Page���ض���
		Page<Customer> result = new Page<>();
		result.setPage(page);
		result.setRows(customers);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * �����ͻ�
	 */
	@Override
	public int createCustomer(Customer customer) {
	    return customerDao.createCustomer(customer);
	}
	/**
	 * ͨ��id��ѯ�ͻ�
	 */
	@Override
	public Customer getCustomerById(Integer id) {	
	    Customer customer = customerDao.getCustomerById(id);
	    return customer;		
	}
	/**
	 * ���¿ͻ�
	 */
	@Override
	public int updateCustomer(Customer customer) {
	    return customerDao.updateCustomer(customer);
	}
	/**
	 * ɾ���ͻ�
	 */
	@Override
	public int deleteCustomer(Integer id) {
	    return customerDao.deleteCustomer(id);	
	}
	@Override
	public int update(Customer customer) {
		// TODO �Զ����ɵķ������
		return customerDao.update(customer);
	}

	
}
