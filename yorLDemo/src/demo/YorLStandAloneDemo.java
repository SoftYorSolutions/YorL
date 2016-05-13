package demo;

import java.io.IOException;

import org.apache.log4j.Logger;

import com.yor.yorL.handler.TagHandler;
import com.yor.yorL.util.TagUtil;
import com.yor.yorL.vo.TagAttributes;

public class YorLStandAloneDemo {

	/**
	 * @param args
	 * @throws IOException 
	 */
	private static Logger logger = Logger.getLogger(YorLStandAloneDemo.class);
	
	public static void main(String[] args) throws IOException {
		long start =  System.currentTimeMillis();
		TagHandler th = TagHandler.getInstance();
		TagAttributes attrs = new TagAttributes();
		attrs.setResources("notvalid,css.main");
		attrs.setProfile("myJSP1Profile");
		TagUtil.d(logger, "\nFinal HTML output : \n" + th.build(attrs));
		TagUtil.d(logger, "YorLStandAloneDemo Test Run[1]" +  (System.currentTimeMillis()-start));
		
		for(int i=0; i<20 ; i++){
			start =  System.currentTimeMillis();
			attrs.setResources("css.main,css.notvalid");
			attrs.setProfile("myJSP1Profile");
			//System.out.println(th.build(attrs));
			TagUtil.d(logger, "YorLStandAloneDemo Test Run[" + (i+2) + "]" +  (System.currentTimeMillis()-start));
		}
		
	}

}
