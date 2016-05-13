package com.yor.yorL.handler;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.ObjectMapper;

import com.yor.yorL.util.TagUtil;
import com.yor.yorL.vo.Config;
import com.yor.yorL.vo.ResourceConfig;
import com.yor.yorL.vo.TagAttributes;

public class TagHandler {
	
	private static TagHandler instance;
	private static Logger logger = Logger.getLogger(TagHandler.class);
	private String path = "/";
	
	
	private Config config = null;
	
	private TagHandler(){
		super();
	}
	
	
	
	public Config getConfig() {
		if (this.config == null) {
			try {
				JsonFactory jf = new JsonFactory();
				jf.enable(JsonParser.Feature.ALLOW_COMMENTS);
				jf.enable(JsonParser.Feature.ALLOW_SINGLE_QUOTES);
				
				ObjectMapper mapper = new ObjectMapper(jf);
				
				this.config = mapper.readValue(this.getClass().getResourceAsStream(path + Config.CONFIG_FILE), Config.class);
				
			} catch (Exception e) {
				TagUtil.e(logger, e.getMessage());
			}
		}
		return this.config;
	}
	
	
	public String build(TagAttributes attrs){
		StringBuffer html = new StringBuffer();
		List<String> resToLoad = new ArrayList<String>();
		if(attrs.getProfile()!= null){
			if(config.getProfile(attrs.getProfile())!=null){
				resToLoad.addAll(config.getProfile(attrs.getProfile()));
			}
		}
		
		if(attrs.getResources()!= null){
			resToLoad.addAll(attrs.getResources());
		}
		//html.append("<!-- --------------------------------------------- Auto Generated HTML by YorL Taglib ----------------------------------------------------------- -->\n");
		
		if(!resToLoad.isEmpty()){
			String entry, type , key= null;
			String[] parts = null;
			ResourceConfig rc = null;
			
			for (int i = 0; i < resToLoad.size(); i++) {
				entry = resToLoad.get(i);
				
				if(entry.indexOf(".") > 0){
					parts = entry.trim().split("\\.");
					type= parts[0].trim().toLowerCase();
					key = parts[1].trim();
					rc = this.getConfig().getResourceTypeConfig(type, key);
					
					if(rc!= null && type.equals(Config.RESOURCE_TYPE_JS)){
						html.append(buildJS(rc,attrs));
					}else if(rc!= null &&  type.equals(Config.RESOURCE_TYPE_CSS)){
						html.append(buildCSS(rc,attrs));
					}else{
						TagUtil.w(logger, "Resource key [" + entry + "] not valid");
					}
				}else{
					TagUtil.w(logger, "Resource key [" + entry + "] not valid");
				}
			}
			//html.append("<!-- --------------------------------------------- Auto Generated HTML by YorL Taglib (EOF) ------------------------------------------------------ -->\n");
		}else{
			html.append("<!-- --------------------------------------------- Generation Error, please check log (EOF) ------------------------------------------------------ -->\n");
		}
		return html.toString();
	}
	
	private String buildJS(ResourceConfig rc, TagAttributes attrs) {
		return "<script src=\"" + generateURL(rc, attrs) + "\"></script>\n";
	}

	private String buildCSS(ResourceConfig rc, TagAttributes attrs) {
		return "<link rel=\"stylesheet\" type=\"text/css\" href=\""+generateURL(rc, attrs)+"\"/>\n";
	}
	
	private String generateURL(ResourceConfig rc, TagAttributes attrs){
		StringBuffer url = new StringBuffer( rc.getUrl());
		
		if(rc.getVersion()!= null && rc.getVersion().trim().length()>0 
				&& config.getGlobalConfig().getParam() != null && config.getGlobalConfig().getParam().trim().length()>0){
			if(url.indexOf("?")<0){
				url.append("?");
			}else if(url.indexOf("=")>0){
				url.append("&");
			}
			url.append(config.getGlobalConfig().getParam().trim());
			url.append("=");
			url.append(rc.getVersion().trim());
			
			boolean devMode = config.getGlobalConfig().isDev();
			if(attrs.getDev() !=null &&  (attrs.getDev().trim().equalsIgnoreCase("true") || attrs.getDev().trim().equalsIgnoreCase("false")) ){
				devMode = Boolean.parseBoolean(attrs.getDev());
			}
			
			if(devMode){
				url.append(".");
				url.append(System.currentTimeMillis());
			}
		}
		return url.toString();
	}

	
	public static TagHandler getInstance() {
		if (instance == null) {
			synchronized (TagHandler.class) {
				if (instance == null) {
					instance = new TagHandler();
				}
			}
		}
		instance.getConfig();
		return instance;
	}



	
}
