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
@Table(name = "WebsiteCategory")
public class WebsiteCategory {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String name;
    
    @Column
    private String name_b;

    @Column
    private String picture;
    
    @Column
    private String description;
    
    @Column
    private String description_b;
    
    @Column
    private String createdOn;
    
    @Column
    private int createdBy;
    
    @Column
    private String updatedOn;
    
    @Column
    private int updatedBy;
    
    @Column
    private int tabOrder;
    
    @Column
    private String status;
    
    @Column
    private String serverUrl;
    
    
	public WebsiteCategory() {
		super();
	}

	public WebsiteCategory(int id, String name, String name_b, String picture,
			String description, String description_b, String createdOn,
			int createdBy, String updatedOn, int updatedBy, int tabOrder,
			String status, String serverUrl) {
		super();
		this.id = id;
		this.name = name;
		this.name_b = name_b;
		this.picture = picture;
		this.description = description;
		this.description_b = description_b;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.tabOrder = tabOrder;
		this.status = status;
		this.serverUrl = serverUrl;
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


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
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


	public int getTabOrder() {
		return tabOrder;
	}


	public void setTabOrder(int tabOrder) {
		this.tabOrder = tabOrder;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getServerUrl() {
		return serverUrl;
	}


	public void setServerUrl(String serverUrl) {
		this.serverUrl = serverUrl;
	}

	public String getName_b() {
		return name_b;
	}

	public void setName_b(String name_b) {
		this.name_b = name_b;
	}

	public String getDescription_b() {
		return description_b;
	}

	public void setDescription_b(String description_b) {
		this.description_b = description_b;
	}


	
	
}
