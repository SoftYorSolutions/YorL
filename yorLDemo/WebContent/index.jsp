<%@ taglib prefix="y" uri="/yorL-tags"%>

<!--  Through profile -->
<y:yorL profile="myJSP1Profile" dev="true"   ></y:yorL>

<!--  Through Resources -->
<y:yorL resources="css.main"   ></y:yorL>

<title>yorL Demo</title>
<h1>Visit <a href="https://github.com/SoftYorSolutions/YorL">Github/SoftYorSolutions/YorL</a> for more info</h1>
<div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-yorl" class="anchor" href="#yorl" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>YorL</h1>

<p>A Java based component to manage your Web Resources (js,css) in your JEE Applicaitions. Also incliudes versioning of the Resources. Simple, Robust, Integrated, loosely coupled, light weight.</p>

<p>To get started, checkout from <a href="https://github.com/SoftYorSolutions/yorL">here</a></p>

<h2><a id="user-content-use-cases" class="anchor" href="#use-cases" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Use cases</h2>

<ul>
<li>Managing Web resources (JS,CSS) centrally, and re-use in JSP pages. </li>
<li>Easy usage through Taglib.</li>
<li>Smart Switching between DEV / PROD mode, globally or through each usage.</li>
<li>Versioning the resources to avoid browser caching.</li>
<li>In DEV mode, Caching is always off.</li>
</ul>

<h2><a id="user-content-java-compatibility" class="anchor" href="#java-compatibility" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Java compatibility</h2>

<ul>
<li>1.7</li>
</ul>

<h2><a id="user-content-third-party-jar-dependencies" class="anchor" href="#third-party-jar-dependencies" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Third Party Jar Dependencies</h2>

<ul>
<li><a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/commons-logging-1.1.1.jar">commons-logging-1.1.1.jar</a></li>
<li><a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-annotations-2.2.4.jar">jackson-annotations-2.2.4.jar</a></li>
<li><a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-core-asl.jar">jackson-core-asl.jar</a></li>
<li><a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/jackson-mapper-asl.jar">jackson-mapper-asl.jar</a></li>
<li><a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/lib/log4j-1.2.13.jar">log4j-1.2.13.jar</a></li>
</ul>

<h2><a id="user-content-usage" class="anchor" href="#usage" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Usage</h2>

<ul>
<li>Download the latest <strong>yorL_XXX.jar</strong> from <a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorL/dist">here</a></li>
<li>Place the <strong>yorL_XXX.jar</strong> in WEB-INF/lib (do not forget to place the dependent jars mentioned above)</li>
<li>Download the sample <strong>yorL.config.json</strong> from <a href="https://github.com/SoftYorSolutions/YorL/blob/master/yorL/config/">here</a></li>
<li>Place the <strong>yorL.config.json</strong> in the root of your web classpath, i.e., src/yorL.config.json</li>
<li>Change the <strong>yorL.config.json</strong> according to the documentation below.</li>
<li>Open any jsp where the component to be used 

<ul>
<li>Add the taglib declaration, e.g., <code>&lt;%@ taglib prefix="y" uri="/yorL-tags"%&gt;</code></li>
<li>Use the tag where you want to include the scripts. e.g., <code>&lt;y:yorL profile="myJsp1Profile"/ &gt;</code></li>
</ul></li>
</ul>

<h2><a id="user-content-documentation" class="anchor" href="#documentation" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Documentation</h2>

<ul>
<li><p>Tag library : There are different attribute which can be passed through the Tag.</p>

<ul>
<li><strong>profile</strong> : Preset profile to include in your page. 
This will include all the resources defined against to this profile. 
(Caution: If there are resources which are not valid, this will simply ignore, and genrate warning in the Server Console.)</li>
<li><strong>resources</strong> : The resources to include in your page, use format .; e.g; js.jquery
This is another way of including resources. If there are more than one resource, please separate using comma. e.g. <a href="/SoftYorSolutions/YorL/blob/master/y:yorL">/y:yorL</a>
(Caution: If there are resources which are not valid, this will simply ignore, and genrate warning in the Server Console.)</li>
<li><strong>dev</strong> : Override the Dev Mode (true/false)
If turned ON, this will generate different version in each request, regardless of global "dev" setting.
If turned OFF, this will NOT generate different version in each request, regardless of global "dev" setting.</li>
</ul></li>
<li><p>Configuration :</p></li>
</ul>

<p>The template of the config should be valid JSON and is explained below,</p>

<pre><code>{
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
    "profile-key"   : ["&lt;resource-type&gt;.&lt;resource.key&gt;", "&lt;resource-type&gt;.&lt;resource.key&gt;"]
    "myJSP1Profile" : ["js.jquery", "css.bootstrap"],
    "myJSP2Profile" : ["js.jquery"]
  }
}
</code></pre>

<p>Where, </p>

<ul>
<li><strong>resource-key</strong> : Any key to designate the resource. The key has to be unique inside that resource-type (i.e. js/css)</li>
<li><strong>resource-url</strong> : The URL for the resource, could be from CDN, or packaged in web application</li>
<li><strong>resource-version</strong> : Version of the resource, change this whenever there is a change in the said resource file. If you forget to change this, the browser will not download the latest resource.</li>
<li><strong>globalConfig/dev</strong> : Switch ON the DEV mode, default is false. 
If turned ON, this will generate different version in each request for all resources in all the pages.
If turned OFF, this will NOT generate different version in each request for all resources in all the pages.</li>
<li><strong>globalConfig/param</strong> : Name of the version param that will be appended in the genarated url . 
If ommitted, there will be no versioning. </li>
</ul>

<h2><a id="user-content-exampledemo" class="anchor" href="#exampledemo" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1h-1c-1.5 0-3-1.69-3-3.5s1.55-3.5 3-3.5h4c1.45 0 3 1.69 3 3.5 0 1.41-0.91 2.72-2 3.25v-1.16c0.58-0.45 1-1.27 1-2.09 0-1.28-1.02-2.5-2-2.5H4c-0.98 0-2 1.22-2 2.5s1 2.5 2 2.5z m9-3h-1v1h1c1 0 2 1.22 2 2.5s-1.02 2.5-2 2.5H9c-0.98 0-2-1.22-2-2.5 0-0.83 0.42-1.64 1-2.09v-1.16c-1.09 0.53-2 1.84-2 3.25 0 1.81 1.55 3.5 3 3.5h4c1.45 0 3-1.69 3-3.5s-1.5-3.5-3-3.5z"></path></svg></a>Example/Demo</h2>

<ul>
<li>Checkout the Demo project from <a href="https://github.com/SoftYorSolutions/YorL/tree/master/yorLDemo">here</a></li>
<li>Build &amp; Deploy in any app server, </li>
<li>Visit <code>http://&lt;host&gt;:&lt;port&gt;/yorLDemo</code></li>
<li>View the source of the HTML, by right clicking &gt; "view source"</li>
<li>The generated and included scripts according to the tag lib seen.</li>
<li>TO change the configuration, change the  <strong>yorL.config.json</strong> under src.</li>
<li>Also the standalone version can be run to see the same output. <strong>YorLStandAloneDemo.java</strong> under src/demo </li>
</ul>
</article>
  </div>

</div>
<h1>Visit <a href="https://github.com/SoftYorSolutions/YorL">Github/SoftYorSolutions/YorL</a> for more info</h1>

