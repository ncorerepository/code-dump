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
@Table(name = "ArtisanArtFormRelation")
public class ArtisanArtFormRelation {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private int artisanId;

    @Column
    private int artFormId;
    
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
    
    
	public ArtisanArtFormRelation() {
		super();
	}


	public ArtisanArtFormRelation(int id, int artisanId, int artFormId,
			String createdOn, int createdBy, String updatedOn,
			int updatedBy, String status) {
		super();
		this.id = id;
		this.artisanId = artisanId;
		this.artFormId = artFormId;
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


	public int getArtisanId() {
		return artisanId;
	}


	public void setArtisanId(int artisanId) {
		this.artisanId = artisanId;
	}


	public int getArtFormId() {
		return artFormId;
	}


	public void setArtFormId(int artFormId) {
		this.artFormId = artFormId;
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
