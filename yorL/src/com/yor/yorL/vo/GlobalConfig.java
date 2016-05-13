package com.yor.yorL.vo;

public class GlobalConfig {

	private boolean dev = false;
	private String param = "v";
	
	public boolean isDev() {
		return dev;
	}
	public void setDev(boolean dev) {
		this.dev = dev;
	}
	
	public void setParam(String param) {
		this.param = param;
	}
	
	public String getParam() {
		return param;
	}
}
