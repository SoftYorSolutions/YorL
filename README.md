YorL
=======
A Java based component to manage your Web Resources (js,css) in your JEE Applicaitions. Also incliudes versioning of the Resources. Simple, Robust, Integrated, loosely coupled, light weight.

To get started, checkout examples and documentation at
https://github.com/SoftYorSolutions/yorL

Use cases
---------
* Managing Web resources (JS,CSS) centrally, and re-use in JSP pages. 
* Easy usage through Taglib.
* Smart Switching between DEV / PROD mode, globally or through each usage.
* Versioning the resources to avoid browser caching.
* In DEV mode, Caching is always off.

Java compatibility
---------------------
* 1.7

Third Party Jar Dependencies
-----------------------------
* [commons-logging-1.1.1.jar] 
* [jackson-annotations-2.2.4.jar]
* [jackson-core-asl.jar]
* [jackson-mapper-asl.jar]
* [log4j-1.2.13.jar]

Usage
-----
* Download the latest yorL_XXX.jar from https://github.com/SoftYorSolutions/YorL/tree/master/yorL/dist
* Place the yorL_XXX.jar in WEB-INF/lib (do not forget to place the dependent jars mentioned above)
* Download the sample yorL.config.json from https://github.com/SoftYorSolutions/YorL/blob/master/yorL/config/
* Place the yorL.config.json in the root of your web classpath, i.e., src/yorL.config.json
* Change the yorL.config.json according to the documentation below.
* Open any jsp where the component to be used 
  - Add the taglib declaration, e.g., <%@ taglib prefix="y" uri="/yorL-tags"%>
  - Use the tag where you want to include the scripts. e.g., < y:yorL profile="myJsp1Profile"/ >

Documentation
------------
* Configuration :

The template of the config should be valid JSON and is explained below,
{
  "resourceConfig": {
    "js": {
      "resource-key": {
        "url": "resource url",
        "version": "resource version"
      },
      "jquery": {
        "url": "https://code.jquery.com/jquery-2.2.3.min.js",
        "version": "2.2.3"
      }
      //... other JS files
    },
    "css": {
      "bootstrap": {
        "url": "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css",
        "version": "3.3.6"
      }
     //... other CSS files
    }
  },
  "globalConfig" : {
    "dev" : true,
    "param" : "w"
  },
  "profiles":{
    "profile-key"   : ["<resource-type>.<resource.key>", "<resource-type>.<resource.key>"]
  	"myJSP1Profile" : ["js.jquery", "css.bootstrap"],
  	"myJSP2Profile" : ["js.jquery"]
  }
}

Where, 
 - resource-key : Any key to designate the resource. The key has to be unique inside that resource-type (i.e. js/css)
 - resource url : The URL for the resource, could be from CDN, or packaged in web application
 - resource version : Version of the resource, change this whenever there is a change in the said resource file. If you forget to change this, the browser will not download the latest resource.
 - globalConfig/dev : Switch ON the DEV mode, default is false. 
   If turned ON, this will generate different version in each request for all resources in all the pages.
   If turned OFF, this will NOT generate different version in each request for all resources in all the pages.
    
* Tag library : There are different attribute which can be passed through the Tag.
 - profile : Preset profile to include in your page. 
   This will include all the resources defined against to this profile. 
   (Caution: If there are resources which are not valid, this will simply ignore, and genrate warning in the Server Console.)
 - resources : The resources to include in your page, use format <resource-type>.<resource.key>; e.g; js.jquery
   This is another way of including resources. If there are more than one resource, please separate using comma. e.g. <y:yorL resources="js.jquery,css.bootstrap"></y:yorL>
   (Caution: If there are resources which are not valid, this will simply ignore, and genrate warning in the Server Console.)
 - dev : Override the Dev Mode (true/false)
   If turned ON, this will generate different version in each request, regardless of global "dev" setting.
   If turned OFF, this will NOT generate different version in each request, regardless of global "dev" setting.
   
[commons-logging-1.1.1.jar] : https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/commons-logging-1.1.1.jar
[jackson-annotations-2.2.4.jar] : https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-annotations-2.2.4.jar
[jackson-core-asl.jar] : https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-core-asl.jar
[jackson-mapper-asl.jar] : https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-mapper-asl.jar
[log4j-1.2.13.jar] : https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/log4j-1.2.13.jar

