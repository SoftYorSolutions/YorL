package com.yor.yorL.vo;

import java.util.Arrays;
import java.util.List;

public class TagAttributes {

	private String profile;
	private String resources;
	private String dev;
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getDev() {
		return dev;
	}
	public void setDev(String dev) {
		this.dev = dev;
	}
	public void setResources(String resources) {
		this.resources = resources;
		
	}
	
	public List<String> getResources(){
		if(this.resources!= null){
			return  Arrays.asList(this.resources.split(","));
		}
		return null;
	}
	

}
