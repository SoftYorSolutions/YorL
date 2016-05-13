package com.yor.yorL.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import com.yor.yorL.handler.TagHandler;
import com.yor.yorL.vo.TagAttributes;

public class YorLTag extends TagSupport{
	
	private String profile;
	private String resources;
	private String dev;

	

	public String getDev() {
		return dev;
	}

	public void setDev(String dev) {
		this.dev = dev;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter out= pageContext.getOut();
		try{
			out.println("<!-- --------------------------------------------- Auto Generated HTML by YorL Taglib ----------------------------------------------------------- -->");
		}catch(Exception e){
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		JspWriter out= pageContext.getOut();
		try{
			TagHandler th = TagHandler.getInstance();
			TagAttributes attrs = new TagAttributes();
			attrs.setResources(resources); //"purofaltu,Js.jquery, css.style,css.faltu ,js.jquery-ui");
			attrs.setProfile(profile) ;//"mtl");
			attrs.setDev(dev);
			String html = th.build(attrs);
			System.out.println(html);
			out.println(html);
			out.println("<!-- ---------------------------------------------  HTML by YorL Taglib (EOF) ------------------------------------------------------ -->");
		}catch(Exception e){
			e.printStackTrace();
		}
		return super.doEndTag();
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getResources() {
		return resources;
	}

	public void setResources(String resources) {
		this.resources = resources;
	}

}
