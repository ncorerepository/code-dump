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
@Table(name = "Product")
public class Product {

	@Id
    @Column
    @GeneratedValue(strategy=GenerationType.AUTO)//For auto number
    private int id;

    @Column
    private String name;

    @Column
    private String fullOverview;
    
    @Column
    private String shortOverview;
    
    @Column
    private String mainFeatures;
    
    @Column
    private String price;
    
    
    @Column
    private String name_b;

    @Column
    private String fullOverview_b;
    
    @Column
    private String shortOverview_b;
    
    @Column
    private String mainFeatures_b;
    
    @Column
    private String price_b;
    
    @Column
    private int artisanId;
    
    @Column
    private int categoryId;
    
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
    private String displayPicture;
    
    @Column
    private String status;
    
    @Column
    private String productId;
    
    
	public Product() {
		super();
	}

	
	public Product(int id, String name, String fullOverview,
			String shortOverview, String mainFeatures, String price,
			String name_b, String fullOverview_b, String shortOverview_b,
			String mainFeatures_b, String price_b, int artisanId,
			int categoryId, int artFormId, String createdOn, int createdBy,
			String updatedOn, int updatedBy, String displayPicture,
			String status, String productId) {
		super();
		this.id = id;
		this.name = name;
		this.fullOverview = fullOverview;
		this.shortOverview = shortOverview;
		this.mainFeatures = mainFeatures;
		this.price = price;
		this.name_b = name_b;
		this.fullOverview_b = fullOverview_b;
		this.shortOverview_b = shortOverview_b;
		this.mainFeatures_b = mainFeatures_b;
		this.price_b = price_b;
		this.artisanId = artisanId;
		this.categoryId = categoryId;
		this.artFormId = artFormId;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.updatedOn = updatedOn;
		this.updatedBy = updatedBy;
		this.displayPicture = displayPicture;
		this.status = status;
		this.productId = productId;
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


	public String getFullOverview() {
		return fullOverview;
	}


	public void setFullOverview(String fullOverview) {
		this.fullOverview = fullOverview;
	}


	public String getShortOverview() {
		return shortOverview;
	}


	public void setShortOverview(String shortOverview) {
		this.shortOverview = shortOverview;
	}


	public String getMainFeatures() {
		return mainFeatures;
	}


	public void setMainFeatures(String mainFeatures) {
		this.mainFeatures = mainFeatures;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public int getArtisanId() {
		return artisanId;
	}


	public void setArtisanId(int artisanId) {
		this.artisanId = artisanId;
	}


	public int getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
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


	public String getDisplayPicture() {
		return displayPicture;
	}


	public void setDisplayPicture(String displayPicture) {
		this.displayPicture = displayPicture;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}

	public String getName_b() {
		return name_b;
	}

	public void setName_b(String name_b) {
		this.name_b = name_b;
	}

	public String getFullOverview_b() {
		return fullOverview_b;
	}

	public void setFullOverview_b(String fullOverview_b) {
		this.fullOverview_b = fullOverview_b;
	}

	public String getShortOverview_b() {
		return shortOverview_b;
	}

	public void setShortOverview_b(String shortOverview_b) {
		this.shortOverview_b = shortOverview_b;
	}

	public String getMainFeatures_b() {
		return mainFeatures_b;
	}

	public void setMainFeatures_b(String mainFeatures_b) {
		this.mainFeatures_b = mainFeatures_b;
	}

	public String getPrice_b() {
		return price_b;
	}

	public void setPrice_b(String price_b) {
		this.price_b = price_b;
	}


	public String getProductId() {
		return productId;
	}


	public void setProductId(String productId) {
		this.productId = productId;
	}


	
}
