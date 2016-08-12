package com.sunilos.proj0.form;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

import com.sunilos.proj0.dto.BaseDTO;
import com.sunilos.proj0.dto.MarksheetDTO;

public class MarksheetForm extends BaseForm {

	protected long id = 0;

	@NotEmpty
	private String rollNo;

	private String name;

	@NotNull
	@Max(100)
	@Min(0)
	private int physics;

	@NotNull
	@Max(100)
	@Min(0)
	private int chemistry;

	@NotNull
	@Max(100)
	@Min(0)
	private int maths;

	protected long studentId;

	private long[] Ids;

	public long[] getIds() {
		return Ids;
	}

	public void setIds(long[] ids) {
		Ids = ids;
	}

	public long getStudentId() {
		return studentId;
	}

	public void setStudentId(long studentId) {
		this.studentId = studentId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRollNo() {
		return rollNo;
	}

	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhysics() {
		return physics;
	}

	public void setPhysics(int physics) {
		this.physics = physics;
	}

	public int getChemistry() {
		return chemistry;
	}

	public void setChemistry(int chemistry) {
		this.chemistry = chemistry;
	}

	public int getMaths() {
		return maths;
	}

	public void setMaths(int maths) {
		this.maths = maths;
	}

	@Override
	public BaseDTO getDto() {
		MarksheetDTO dto = new MarksheetDTO();
		dto.setId(id);
		dto.setMaths(maths);
		dto.setPhysics(physics);
		dto.setChemistry(chemistry);
		dto.setRollNo(rollNo);
		dto.setStudentId(studentId);
		dto.setName(name);
		return dto;

	}

	@Override
	public void populate(BaseDTO bDto) {
		MarksheetDTO dto = (MarksheetDTO) bDto;
		id = dto.getId();
		name = dto.getName();
		maths = dto.getMaths();
		physics = dto.getPhysics();
		chemistry = dto.getChemistry();
		rollNo = dto.getRollNo();
		studentId = dto.getStudentId();

	}
}
