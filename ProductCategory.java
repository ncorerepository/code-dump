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
@Table(name = "ProductCategory")
public class ProductCategory {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String categoryName;

    @Column
    private String description;
    
    @Column
    private String categoryName_b;

    @Column
    private String description_b;
    
    @Column
    private String picture;
    
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
    private int parentCategoryId;
    
    
	public ProductCategory() {
		super();
	}


	


	public ProductCategory(int id, String categoryName, String description,
			String categoryName_b, String description_b, String picture,
			String createdOn, int createdBy, String updatedOn, int updatedBy,
			String status, int parentCategoryId) {
		super();
		this.id = id;
		this.categoryName = categoryName;
		this.description = description;
		this.categoryName_b = categoryName_b;
		this.description_b = description_b;
		this.picture = picture;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.status = status;
		this.parentCategoryId = parentCategoryId;
	}





	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCategoryName() {
		return categoryName;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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


	public int getParentCategoryId() {
		return parentCategoryId;
	}


	public void setParentCategoryId(int parentCategoryId) {
		this.parentCategoryId = parentCategoryId;
	}

	public String getCategoryName_b() {
		return categoryName_b;
	}

	public void setCategoryName_b(String categoryName_b) {
		this.categoryName_b = categoryName_b;
	}


	public String getDescription_b() {
		return description_b;
	}


	public void setDescription_b(String description_b) {
		this.description_b = description_b;
	}


}
