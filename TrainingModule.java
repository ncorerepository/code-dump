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
@Table(name = "TrainingModule")
public class TrainingModule {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String moduleName;
    
    @Column
    private String moduleName_b;
    
    @Column
    private String contentName;
    
    @Column
    private String contentName_b;

    @Column
    private String moduleNo;
    
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
    private int trainingProgramId;
    
    
	public TrainingModule() {
		super();
	}


	


	public TrainingModule(int id, String moduleName, String moduleName_b,
			String contentName, String contentName_b, String moduleNo,
			String videoUrl, String createdOn, int createdBy, String updatedOn,
			int updatedBy, String status, int trainingProgramId) {
		super();
		this.id = id;
		this.moduleName = moduleName;
		this.moduleName_b = moduleName_b;
		this.contentName = contentName;
		this.contentName_b = contentName_b;
		this.moduleNo = moduleNo;
		this.videoUrl = videoUrl;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.status = status;
		this.trainingProgramId = trainingProgramId;
	}





	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getModuleName() {
		return moduleName;
	}


	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}


	public String getModuleNo() {
		return moduleNo;
	}


	public void setModuleNo(String moduleNo) {
		this.moduleNo = moduleNo;
	}


	public String getVideoUrl() {
		return videoUrl;
	}


	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
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


	public int getTrainingProgramId() {
		return trainingProgramId;
	}

	public void setTrainingProgramId(int trainingProgramId) {
		this.trainingProgramId = trainingProgramId;
	}

	public String getModuleName_b() {
		return moduleName_b;
	}

	public void setModuleName_b(String moduleName_b) {
		this.moduleName_b = moduleName_b;
	}

	public String getContentName() {
		return contentName;
	}

	public void setContentName(String contentName) {
		this.contentName = contentName;
	}

	public String getContentName_b() {
		return contentName_b;
	}

	public void setContentName_b(String contentName_b) {
		this.contentName_b = contentName_b;
	}

}
