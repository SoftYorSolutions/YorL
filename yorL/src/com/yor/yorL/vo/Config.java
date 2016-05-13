package com.yor.yorL.vo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Config {
	
	public static String RESOURCE_TYPE_JS = "js";
	public static String RESOURCE_TYPE_CSS = "css";
	public static String CONFIG_FILE = "yorL.config.json";
	
	           //js/css   ,resource-key, config     
	private Map<String, Map<String, ResourceConfig>> resourceConfig;
	private GlobalConfig globalConfig = new GlobalConfig();
	private Map<String, List<String>> profiles = new HashMap<String, List<String>>();

	public Map<String, Map<String, ResourceConfig>> getResourceConfig() {
		return resourceConfig;
	}

	public void setResourceConfig(Map<String, Map<String, ResourceConfig>> resource) {
		this.resourceConfig = resource;
	}
	
	public Map<String, ResourceConfig> getJSTypeConfigs(){
		return getResourceTypeConfigs(RESOURCE_TYPE_JS);
	}
	
	public Map<String, ResourceConfig> getCSSTypeConfigs(){
		return getResourceTypeConfigs(RESOURCE_TYPE_CSS);
	}
	
	public Map<String, ResourceConfig> getResourceTypeConfigs(String resourceType){
		if(resourceConfig != null ){
			return resourceConfig.get(resourceType);
		}
		return null;
	}
	
	public ResourceConfig getJSTypeConfig(String resKey){
		return getResourceTypeConfig(RESOURCE_TYPE_JS, resKey);
	}
	
	public ResourceConfig getCSSTypeConfig(String resKey){
		return getResourceTypeConfig(RESOURCE_TYPE_CSS, resKey);
	}
	
	public  ResourceConfig getResourceTypeConfig(String resourceType, String resKey){
		if(getResourceTypeConfigs(resourceType) != null){
			return getResourceTypeConfigs(resourceType).get(resKey);
		}
		return null;
	}

	public GlobalConfig getGlobalConfig() {
		return globalConfig;
	}

	public void setGlobalConfig(GlobalConfig globalConfig) {
		this.globalConfig = globalConfig;
	}

	public Map<String, List<String>> getProfiles() {
		return profiles;
	}
	
	public  List<String> getProfile(String profile) {
		return profiles.get(profile);
	}

	public void setProfiles(Map<String, List<String>> profiles) {
		this.profiles = profiles;
	}
	
	
}
