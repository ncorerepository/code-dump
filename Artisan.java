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
@Table(name = "Artisan")
public class Artisan {

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
    private String profilePicture;
    
    @Column
    private String videoUrl;
    
    @Column
    private int experience;
    
    @Column
    private String overview;
    
    @Column
    private String country;
    
    @Column
    private String state;
    
    @Column
    private String district;
    
    @Column
    private String addressLine1;
    
    @Column
    private String addressLine2;
    
    @Column
    private String pinCode;
    
    @Column
    private String landMark;
    
    @Column
    private String experience_b;
    
    @Column
    private String overview_b;
    
    @Column
    private String country_b;
    
    @Column
    private String state_b;
    
    @Column
    private String district_b;
    
    @Column
    private String addressLine1_b;
    
    @Column
    private String addressLine2_b;
    
    @Column
    private String pinCode_b;
    
    @Column
    private String landMark_b;
    
    @Column
    private String gender;
    
    @Column
    private String isTrainer;
    
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
    
    @Column
    private int trainerId;
    
    
	public Artisan() {
		super();
	}


	
	

	public Artisan(int id, String name, String name_b, String email,
			String phone, String profilePicture, String videoUrl,
			int experience, String overview, String country, String state,
			String district, String addressLine1, String addressLine2,
			String pinCode, String landMark, String experience_b,
			String overview_b, String country_b, String state_b,
			String district_b, String addressLine1_b, String addressLine2_b,
			String pinCode_b, String landMark_b, String gender,
			String isTrainer, String createdOn, int createdBy,
			String updatedOn, int updatedBy, String status, int trainerId) {
		super();
		this.id = id;
		this.name = name;
		this.name_b = name_b;
		this.email = email;
		this.phone = phone;
		this.profilePicture = profilePicture;
		this.videoUrl = videoUrl;
		this.experience = experience;
		this.overview = overview;
		this.country = country;
		this.state = state;
		this.district = district;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.pinCode = pinCode;
		this.landMark = landMark;
		this.experience_b = experience_b;
		this.overview_b = overview_b;
		this.country_b = country_b;
		this.state_b = state_b;
		this.district_b = district_b;
		this.addressLine1_b = addressLine1_b;
		this.addressLine2_b = addressLine2_b;
		this.pinCode_b = pinCode_b;
		this.landMark_b = landMark_b;
		this.gender = gender;
		this.isTrainer = isTrainer;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.status = status;
		this.trainerId = trainerId;
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


	public String getProfilePicture() {
		return profilePicture;
	}


	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}


	public String getVideoUrl() {
		return videoUrl;
	}


	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}


	public int getExperience() {
		return experience;
	}


	public void setExperience(int experience) {
		this.experience = experience;
	}


	public String getOverview() {
		return overview;
	}


	public void setOverview(String overview) {
		this.overview = overview;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public String getAddressLine1() {
		return addressLine1;
	}


	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}


	public String getAddressLine2() {
		return addressLine2;
	}


	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getLandMark() {
		return landMark;
	}

	public void setLandMark(String landMark) {
		this.landMark = landMark;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getIsTrainer() {
		return isTrainer;
	}

	public void setIsTrainer(String isTrainer) {
		this.isTrainer = isTrainer;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}

	public String getName_b() {
		return name_b;
	}

	public void setName_b(String name_b) {
		this.name_b = name_b;
	}

	public String getExperience_b() {
		return experience_b;
	}

	public void setExperience_b(String experience_b) {
		this.experience_b = experience_b;
	}

	public String getOverview_b() {
		return overview_b;
	}

	public void setOverview_b(String overview_b) {
		this.overview_b = overview_b;
	}

	public String getCountry_b() {
		return country_b;
	}

	public void setCountry_b(String country_b) {
		this.country_b = country_b;
	}

	public String getState_b() {
		return state_b;
	}

	public void setState_b(String state_b) {
		this.state_b = state_b;
	}

	public String getDistrict_b() {
		return district_b;
	}

	public void setDistrict_b(String district_b) {
		this.district_b = district_b;
	}

	public String getAddressLine1_b() {
		return addressLine1_b;
	}

	public void setAddressLine1_b(String addressLine1_b) {
		this.addressLine1_b = addressLine1_b;
	}

	public String getAddressLine2_b() {
		return addressLine2_b;
	}

	public void setAddressLine2_b(String addressLine2_b) {
		this.addressLine2_b = addressLine2_b;
	}

	public String getPinCode_b() {
		return pinCode_b;
	}

	public void setPinCode_b(String pinCode_b) {
		this.pinCode_b = pinCode_b;
	}

	public String getLandMark_b() {
		return landMark_b;
	}

	public void setLandMark_b(String landMark_b) {
		this.landMark_b = landMark_b;
	}

}
