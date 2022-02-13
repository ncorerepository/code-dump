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
@Table(name = "TrainingProgram")
public class TrainingProgram {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String trainingName;

    @Column
    private String description;
    
    @Column
    private String trainingName_b;

    @Column
    private String description_b;
    
    @Column
    private String picture;
    
    @Column
    private String videoUrl;
    
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
    private int parentTrainingId;
    
    
	public TrainingProgram() {
		super();
	}

	public TrainingProgram(int id, String trainingName, String description,
			String trainingName_b, String description_b, String picture,
			String videoUrl, String createdOn, int createdBy, String updatedOn,
			int updatedBy, String status, int parentTrainingId) {
		super();
		this.id = id;
		this.trainingName = trainingName;
		this.description = description;
		this.trainingName_b = trainingName_b;
		this.description_b = description_b;
		this.picture = picture;
		this.videoUrl = videoUrl;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.status = status;
		this.parentTrainingId = parentTrainingId;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;
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

	public int getParentTrainingId() {
		return parentTrainingId;
	}

	public void setParentTrainingId(int parentTrainingId) {
		this.parentTrainingId = parentTrainingId;
	}

	public String getTrainingName() {
		return trainingName;
	}

	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public String getTrainingName_b() {
		return trainingName_b;
	}

	public void setTrainingName_b(String trainingName_b) {
		this.trainingName_b = trainingName_b;
	}

	public String getDescription_b() {
		return description_b;
	}

	public void setDescription_b(String description_b) {
		this.description_b = description_b;
	}


}
