package com.yor.yorL.vo;

public class ResourceConfig {

	private String url;
	private String version;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	
	public boolean isVersionEnabled(){
		return version != null && version.trim().length() > 0;
	}
	
}
