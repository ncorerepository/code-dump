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
@Table(name = "OurTeam")
public class OurTeam {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String name;
    
    @Column
    private String name_b;
    
    @Column
    private String email;
    
    @Column
    private String phone;
    
    @Column
    private String gender;

    @Column
    private String designation;
    
    @Column
    private String designation_b;
    
    @Column
    private String organization;
    
    @Column
    private String karumotiDesignation;
    
    @Column
    private String karumotiDesignation_b;
    
    @Column
    private String qualification;
    
    @Column
    private String experience;
    
    @Column
    private String description;
    
    @Column
    private String workDescription;
    
    @Column
    private String book;
    
    @Column
    private String publication;
    
    @Column
    private String paper;
    
    @Column
    private String fbLink;
    
    @Column
    private String twiterLink;
    
    @Column
    private String profilePicture;
    
    @Column
    private String createdOn;
    
    @Column
    private int createdBy;
    
    @Column
    private String updatedOn;
    
    @Column
    private int updatedBy;
    
    @Column
    private String status;
    
    
	public OurTeam() {
		super();
	}

	

	public OurTeam(int id, String name, String name_b, String email,
			String phone, String gender, String designation,
			String designation_b, String organization,
			String karumotiDesignation, String karumotiDesignation_b,
			String qualification, String experience, String description,
			String workDescription, String book, String publication,
			String paper, String fbLink, String twiterLink,
			String profilePicture, String createdOn, int createdBy,
			String updatedOn, int updatedBy, String status) {
		super();
		this.id = id;
		this.name = name;
		this.name_b = name_b;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.designation = designation;
		this.designation_b = designation_b;
		this.organization = organization;
		this.karumotiDesignation = karumotiDesignation;
		this.karumotiDesignation_b = karumotiDesignation_b;
		this.qualification = qualification;
		this.experience = experience;
		this.description = description;
		this.workDescription = workDescription;
		this.book = book;
		this.publication = publication;
		this.paper = paper;
		this.fbLink = fbLink;
		this.twiterLink = twiterLink;
		this.profilePicture = profilePicture;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
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


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getOrganization() {
		return organization;
	}


	public void setOrganization(String organization) {
		this.organization = organization;
	}


	public String getKarumotiDesignation() {
		return karumotiDesignation;
	}


	public void setKarumotiDesignation(String karumotiDesignation) {
		this.karumotiDesignation = karumotiDesignation;
	}


	public String getQualification() {
		return qualification;
	}


	public void setQualification(String qualification) {
		this.qualification = qualification;
	}


	public String getExperience() {
		return experience;
	}


	public void setExperience(String experience) {
		this.experience = experience;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getWorkDescription() {
		return workDescription;
	}


	public void setWorkDescription(String workDescription) {
		this.workDescription = workDescription;
	}


	public String getBook() {
		return book;
	}


	public void setBook(String book) {
		this.book = book;
	}


	public String getPublication() {
		return publication;
	}


	public void setPublication(String publication) {
		this.publication = publication;
	}


	public String getPaper() {
		return paper;
	}


	public void setPaper(String paper) {
		this.paper = paper;
	}


	public String getFbLink() {
		return fbLink;
	}


	public void setFbLink(String fbLink) {
		this.fbLink = fbLink;
	}


	public String getTwiterLink() {
		return twiterLink;
	}


	public void setTwiterLink(String twiterLink) {
		this.twiterLink = twiterLink;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getCreatedOn() {
		return createdOn;
	}


	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public String getUpdatedOn() {
		return updatedOn;
	}

	public void setUpdatedOn(String updatedOn) {
		this.updatedOn = updatedOn;
	}

	public int getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(int updatedBy) {
		this.updatedBy = updatedBy;
	}



	public String getName_b() {
		return name_b;
	}



	public void setName_b(String name_b) {
		this.name_b = name_b;
	}



	public String getDesignation_b() {
		return designation_b;
	}



	public void setDesignation_b(String designation_b) {
		this.designation_b = designation_b;
	}



	public String getKarumotiDesignation_b() {
		return karumotiDesignation_b;
	}



	public void setKarumotiDesignation_b(String karumotiDesignation_b) {
		this.karumotiDesignation_b = karumotiDesignation_b;
	}


}
