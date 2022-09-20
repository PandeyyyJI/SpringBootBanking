package com.ofss;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankingService {
	
	@Autowired
	CustomerRepo customerRepository;
	
	@Autowired
	CustomerInfiRepo custInfiRepository;
	
	@Autowired
	CustomerHdccRepo custHdccRepository;
	
	//Returns a List of All CityBank Customers
	public List<Customer> getAllCityCustomers()
	{
		List<Customer> allCustomers=new ArrayList<>();
		customerRepository.findAll()
		.forEach(customer -> allCustomers.add(customer) );
		return allCustomers;
	}
	
	// Adds a customer using save method
	public void addCityCustomer(Customer cust) {
		customerRepository.save(cust);
	}
	
	// Checks where CityBank account with given aadharNo exists or not
	public Boolean CityCheckExistsByAadharNo(Long aadharNo) {
		return customerRepository.existsById(aadharNo);
	}
	
	// Gets the cityBank customer corresponding to given aadharNo
	public Customer findCityCustByAadhar(Long aadharNo) {
        Optional<Customer> cust = customerRepository.findById(aadharNo);
        Customer customer = cust.get();
        return customer;
    }
	
	// Checks whether InfinityBank account with given eKyc exists or not 
	public Boolean infiCheckExistsByEKyc(Long ekyc) {
		return custInfiRepository.existsById(ekyc);
	}
	
	// Gets the InfinityBank account with given eKyc
	public CustomerInfi infiFindByEkyc(Long ekyc) {
		Optional<CustomerInfi> cust = custInfiRepository.findById(ekyc);
		
		try {
		CustomerInfi customer = cust.get();	//Returns the not-null value contained in the Optional if present else throws NoSuchElementException

		return customer;
		}
		catch(NoSuchElementException e) {
			CustomerInfi NullCust = new CustomerInfi();
			NullCust.setAadharNo(null);
			NullCust.setBalance((long) 0);
			NullCust.setContactDetails(null);
			NullCust.setBirthdate(null);
			NullCust.setCurrentAddress(null);
			NullCust.setCustomerName(null);
			NullCust.setEkyc(null);
			NullCust.setEmailId(null);
			NullCust.setOccupation(null);
			NullCust.setPanCardNo(null);
			NullCust.setPassportNo(null);
			NullCust.setPermanentAddress(null);
			
			return NullCust;
		}

	}
	
	// Checks whether HDCC Bank account with given eKyc exists or not 
	public Boolean HdccCheckExistsByEKyc(Long ekyc) {
		return custHdccRepository.existsById(ekyc);
	}

	// Gets the HDCC Bank account with given eKyc
	public CustomerHdcc hdccFindByEkyc(Long ekyc) {
		
		Optional<CustomerHdcc> cust = custHdccRepository.findById(ekyc);
		
		try {
		CustomerHdcc customerHdcc = cust.get();
		return customerHdcc;
		} catch(NoSuchElementException e) {
			CustomerHdcc NullCust = new CustomerHdcc();
			NullCust.setAadharNo(null);
			NullCust.setBalance((long) 0);
			NullCust.setContactDetails(null);
			NullCust.setBirthdate(null);
			NullCust.setCurrentAddress(null);
			NullCust.setCustomerName(null);
			NullCust.setEkyc(null);
			NullCust.setEmailId(null);
			NullCust.setOccupation(null);
			NullCust.setPanCardNo(null);
			NullCust.setPassportNo(null);
			NullCust.setPermanentAddress(null);
			
			return NullCust;
		}
		
	}
	
	// Gets the Aggregated Balance in both the banks based on the eKyc Number Provided
	public Long getTotalBalance(Long ekyc) {
		Optional<CustomerInfi> custInfi = custInfiRepository.findById(ekyc);
		Optional<CustomerHdcc> custHdcc = custHdccRepository.findById(ekyc);
		
		Long totalBalance = (long) 0 ; 
		
		try {
			CustomerInfi InfiCustomer = custInfi.get();	//Returns the not-null value contained in the Optional if present else throws NoSuchElementException
			totalBalance += InfiCustomer.getBalance(); 
			}
			catch(NoSuchElementException e) {
				CustomerInfi NullInfiCustomer = new CustomerInfi();
				NullInfiCustomer.setAadharNo(null);
				NullInfiCustomer.setBalance((long) 0);
				NullInfiCustomer.setContactDetails(null);
				NullInfiCustomer.setBirthdate(null);
				NullInfiCustomer.setCurrentAddress(null);
				NullInfiCustomer.setCustomerName(null);
				NullInfiCustomer.setEkyc(null);
				NullInfiCustomer.setEmailId(null);
				NullInfiCustomer.setOccupation(null);
				NullInfiCustomer.setPanCardNo(null);
				NullInfiCustomer.setPassportNo(null);
				NullInfiCustomer.setPermanentAddress(null);	
			}
		
		try {
			CustomerHdcc HdccCustomer = custHdcc.get();	//Returns the not-null value contained in the Optional if present else throws NoSuchElementException
			totalBalance += HdccCustomer.getBalance(); 
			}
			catch(NoSuchElementException e) {
				CustomerHdcc NullHdccCustomer = new CustomerHdcc();
				NullHdccCustomer.setAadharNo(null);
				NullHdccCustomer.setBalance((long) 0);
				NullHdccCustomer.setContactDetails(null);
				NullHdccCustomer.setBirthdate(null);
				NullHdccCustomer.setCurrentAddress(null);
				NullHdccCustomer.setCustomerName(null);
				NullHdccCustomer.setEkyc(null);
				NullHdccCustomer.setEmailId(null);
				NullHdccCustomer.setOccupation(null);
				NullHdccCustomer.setPanCardNo(null);
				NullHdccCustomer.setPassportNo(null);
				NullHdccCustomer.setPermanentAddress(null);	
			}
		
		return totalBalance;
	}	

}
