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
@Table(name = "AttachmentImage")
public class AttachmentImage {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String imageName;

    @Column
    private String altText;
    
    @Column
    private int productId;
    
    @Column
    private int artisanId;
    
    @Column
    private int collaborateId;
    
    @Column
    private int trainerId;
    
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
    
    
	public AttachmentImage() {
		super();
	}


	public AttachmentImage(int id, String imageName, String altText,
			int productId, int artisanId, int collaborateId, int trainerId,
			String createdOn, int createdBy, String updatedOn,
			int updatedBy, String status) {
		super();
		this.id = id;
		this.imageName = imageName;
		this.altText = altText;
		this.productId = productId;
		this.artisanId = artisanId;
		this.collaborateId = collaborateId;
		this.trainerId = trainerId;
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


	public String getImageName() {
		return imageName;
	}


	public void setImageName(String imageName) {
		this.imageName = imageName;
	}


	public String getAltText() {
		return altText;
	}


	public void setAltText(String altText) {
		this.altText = altText;
	}


	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public int getArtisanId() {
		return artisanId;
	}


	public void setArtisanId(int artisanId) {
		this.artisanId = artisanId;
	}


	public int getCollaborateId() {
		return collaborateId;
	}


	public void setCollaborateId(int collaborateId) {
		this.collaborateId = collaborateId;
	}


	public int getTrainerId() {
		return trainerId;
	}


	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
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

	
}
