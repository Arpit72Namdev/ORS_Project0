package com.sunilos.proj0.form;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.sunilos.proj0.dto.BaseDTO;
import com.sunilos.proj0.dto.UserDTO;

/**
 * Contains User Registration form elements and their declarative input
 * validations.
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS
 * 
 */

public class UserRegistrationForm extends BaseForm {
	@NotEmpty
	@Pattern(regexp = "[a-zA-Z]*$", message = "{Pattern.form.firstName}")
	private String firstName;

	@NotEmpty
	@Pattern(regexp = "[a-zA-Z]*$", message = "{Pattern.form.lastName}")
	private String lastName;

	@NotEmpty
	@Email
	private String login;

	@Size(max = 10, min = 5)
	private String password;

	@Size(max = 10, min = 5)
	private String confirmPassword;

	@NotEmpty
	private String gender;

	@NotNull
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date dob;

	@NotEmpty
	@Pattern(regexp = "([7-9]{1}[0-9]{9})*$", message = "{Pattern.form.mobileNo}")
	private String mobileNo;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	@Override
	public BaseDTO getDto() {
		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setFirstName(firstName);
		dto.setLastName(lastName);
		dto.setPassword(password);
		dto.setLogin(login);
		dto.setDob(dob);
		dto.setGender(gender);
		dto.setMobileNo(mobileNo);

		return dto;
	}

	@Override
	public void populate(BaseDTO bDto) {
		UserDTO dto = (UserDTO) bDto;
		id = dto.getId();
		firstName = dto.getFirstName();
		lastName = dto.getLastName();
		login = dto.getLogin();
		password = dto.getPassword();
		dob = dto.getDob();
		mobileNo = dto.getMobileNo();
		gender = dto.getGender();
		super.populate(bDto);
	}
}
