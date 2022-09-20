package com.ofss;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMER_DETAILS_HDCC")
public class CustomerHdcc {
			
		@Id
		Long ekyc;
		Long aadharNo;
		String customerName;
		String permanentAddress;
		String currentAddress;
		Long contactDetails;
		String emailId;
		String occupation;
		Date birthdate;
		String panCardNo;
		String passportNo;
		Long balance;



		public Long getAadharNo() {
			return aadharNo;
		}



		public void setAadharNo(Long aadharNo) {
			this.aadharNo = aadharNo;
		}



		public String getCustomerName() {
			return customerName;
		}



		public void setCustomerName(String customerName) {
			this.customerName = customerName;
		}



		public String getPermanentAddress() {
			return permanentAddress;
		}



		public void setPermanentAddress(String permanentAddress) {
			this.permanentAddress = permanentAddress;
		}



		public String getCurrentAddress() {
			return currentAddress;
		}



		public void setCurrentAddress(String currentAddress) {
			this.currentAddress = currentAddress;
		}



		public Long getContactDetails() {
			return contactDetails;
		}



		public void setContactDetails(Long contactDetails) {
			this.contactDetails = contactDetails;
		}



		public String getEmailId() {
			return emailId;
		}



		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}



		public String getOccupation() {
			return occupation;
		}



		public void setOccupation(String occupation) {
			this.occupation = occupation;
		}



		public Date getBirthdate() {
			return birthdate;
		}



		public void setBirthdate(Date birthdate) {
			this.birthdate = birthdate;
		}



		public String getPanCardNo() {
			return panCardNo;
		}



		public void setPanCardNo(String panCardNo) {
			this.panCardNo = panCardNo;
		}



		public String getPassportNo() {
			return passportNo;
		}



		public void setPassportNo(String passportNo) {
			this.passportNo = passportNo;
		}



		public Long getEkyc() {
			return ekyc;
		}



		public void setEkyc(Long ekyc) {
			this.ekyc = ekyc;
		}



		public Long getBalance() {
			return balance;
		}



		public void setBalance(Long balance) {
			this.balance = balance;
		}



		@Override
		public String toString() {
			return "CustomerDetails [aadharNo=" + aadharNo + ", customerName=" + customerName + ", permanentAddress="
					+ permanentAddress + ", currentAddress=" + currentAddress + ", contactDetails=" + contactDetails
					+ ", emailId=" + emailId + ", occupation=" + occupation + ", birthdate=" + birthdate + ", panCardNo="
					+ panCardNo + ", passportNo=" + passportNo + ", ekyc=" + ekyc + ", balance=" + balance + "]";
		}


}
