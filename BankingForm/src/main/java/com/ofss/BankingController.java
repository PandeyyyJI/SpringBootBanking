package com.ofss;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
//@RequestMapping("/api")
public class BankingController {
	
	@Autowired
	BankingService cs;
	
	@RequestMapping("/")
    public String home() {
        return "index";	// redirects to /WEB-INF/views/index.jsp 
    }
	
	@GetMapping("/register")
	public String showForm(Model model) {
		Customer cust = new Customer();
		model.addAttribute("cust", cust);
		
		return "register_form";
	}
		
	@PostMapping("/register")
	public String submitForm(@ModelAttribute("customer") Customer customer) {
	     	     
	    cs.addCityCustomer(customer);
	    return "register_success";
	}
	
	// Shows all the customers
	@GetMapping(value="/customers")
	public String m2(ModelMap map) {
		
		if(!cs.getAllCityCustomers().isEmpty()) {
			map.addAttribute("customers", cs.getAllCityCustomers());
			return "customers";
		} else {
			return "noCustomersFound";
		}
	}
	

	// Redirects to the getAadharNo form 
	@GetMapping("/accDetails")
	public String getAadharNo(Model model) {

		AadharNumber aadharNo = new AadharNumber();

		model.addAttribute("aadharNo", aadharNo);
		return "getAadharNo";
	}
	
	// Gets the Aadhar Number Submitted by the user
	@PostMapping("/accDetails")
	public String submitAadharNumber(@ModelAttribute("aadharNo") AadharNumber aadharNo, Model map) {

		if(cs.CityCheckExistsByAadharNo(aadharNo.getAadharNo())) {		
			map.addAttribute("find", cs.findCityCustByAadhar(aadharNo.getAadharNo()));
			return "findById";
		} else {
			return "AadharFailure";
		}		
	}
		
	//Redirects to the GetKycNo JSP page 
	@GetMapping("/getKyc")
	public String getKycNumber(Model model) {
		KycPOJO Kyc = new KycPOJO();
		
		model.addAttribute("Kyc", Kyc);
		return "GetKycNo";
	}
	
	//Gets the eKyc Number submitted in the getKYC form
	@PostMapping("/getKyc")
	public String submitKycNumber(@ModelAttribute("Kyc") KycPOJO kyc, Model map) {
		
		if(cs.infiCheckExistsByEKyc(kyc.getKycNo()) || cs.HdccCheckExistsByEKyc(kyc.getKycNo())) {
				
			map.addAttribute("find", cs.infiFindByEkyc(kyc.getKycNo()));
			map.addAttribute("findHdcc", cs.hdccFindByEkyc(kyc.getKycNo()));
			return "findByEkyc";
		}
		else {
			return "KycFailure";
		}

	}
	
	//Redirects to the GetKycNo JSP page 
	@GetMapping("/getTotalBalance")
	public String getToatlBalance(Model model) {
		KycPOJO Kyc = new KycPOJO();
		
		model.addAttribute("Kyc", Kyc);
		return "CheckBalance";
	}
	
	@PostMapping("/getTotalBalance")
	public String submitKycForBalance(@ModelAttribute("Kyc") KycPOJO kyc, Model map) {
			
		if(cs.infiCheckExistsByEKyc(kyc.getKycNo()) || cs.HdccCheckExistsByEKyc(kyc.getKycNo())) {
			map.addAttribute("totalBalance", cs.getTotalBalance(kyc.getKycNo()));
			
			return "totalBalance";
		}
		else {
			return "KycFailure";
		}
	}
	
}
