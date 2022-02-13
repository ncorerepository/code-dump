package com.karumoti.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "CollaborateUs")
public class CollaborateUs {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String name;

    @Column
    private String email;
    
    @Column
    private String phone;
    
    @Column
    private String gender;
    
    @Column
    private String requirements;
    
    @Column
    private String type;
    
    @Column
    private String collaborateWith;
    
    @Column
    private String createdOn;
    
    @Column
    private String status;
    
    
	public CollaborateUs() {
		super();
	}


	public CollaborateUs(int id, String name, String email, String phone,
			String gender, String requirements, String type, String collaborateWith,
			String createdOn, String status) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.requirements = requirements;
		this.type = type;
		this.collaborateWith = collaborateWith;
		this.createdOn = createdOn;
		this.status = status;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getRequirements() {
		return requirements;
	}


	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}


	public String getCreatedOn() {
		return createdOn;
	}


	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getCollaborateWith() {
		return collaborateWith;
	}


	public void setCollaborateWith(String collaborateWith) {
		this.collaborateWith = collaborateWith;
	}


	
}
