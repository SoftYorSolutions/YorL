package com.yor.yorL.util;

import org.apache.log4j.Logger;

public class TagUtil {

	
	public static void d(Logger logger, String msg){
		String log = buildLog(msg);
		System.out.println("DEBUG: " + log);
		logger.debug(log);
	}
	public static void e(Logger logger, String msg){
		String log = buildLog(msg);
		System.err.println("ERROR: " +log);
		logger.error(msg);
	}
	public static void w(Logger logger, String msg){
		String log = buildLog(msg);
		System.err.println("WARN: " + log);
		logger.warn(msg);
	}
	
	
	private static String buildLog(String msg){
		return "[yorL-" + System.currentTimeMillis() + "] " + msg;
	}

}
