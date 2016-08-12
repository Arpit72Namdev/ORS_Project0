package com.sunilos.proj0.form;

import javax.validation.constraints.NotNull;

import com.sunilos.proj0.dto.BaseDTO;
import com.sunilos.proj0.dto.FacultyDTO;

public class FacultyForm extends BaseForm {

	@NotNull
	private long userId;

	@NotNull
	private long collegeId;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(long collegeId) {
		this.collegeId = collegeId;
	}

	@Override
	public void populate(BaseDTO bDto) {
		FacultyDTO dto = (FacultyDTO) bDto;
		id = dto.getId();
		userId = dto.getUserId();
		collegeId = dto.getCollegeId();
	}

	@Override
	public BaseDTO getDto() {
		FacultyDTO dto = new FacultyDTO();
		dto.setId(id);
		dto.setUserId(userId);
		dto.setCollegeId(collegeId);
		return dto;
	}
}
