(function ( $ ) {
    $.fn.yorIBAR = function( options ) {
    	 //options setting
 	     var settings = $.extend({
            // defaults.
            direction: "LR",
            stayTime: "5000",
            autoStart: false,
 	     	autoStop: true,
	        barTop  : $(this).offset().top,
	        barLeft : ($(window).width() - $(this).width())/2
        }, options );
 		
 	     
 	    
 	     
 	     
		var thisObj = $(this); 		
		
		
  		var objTop = settings.barTop;
  		var objWidth = thisObj.width();
  		var screenWidth = $(window).width();  
		//var delay;
		var xyz;
		
		thisObj.hide();
		
		if(settings.autoStart){
			_start();
		}
		
  		
  		//private utility methods 
     	function _reset(){
     		//console.log(delay + "-" + xyz);
     		var delay = thisObj.attr("autoStop");
     		if(typeof(delay) != undefined){
     				clearInterval(delay);
     				thisObj.attr("autoStop","");
     		}
     		
		}
     	function _stop(){
     		_reset();
     		var newPos = _getPostion();
			//var newLeft =  (0 - objWidth)  ; 
			thisObj.animate({left: newPos.stop+'px'}, function(){
				thisObj.hide();
			});
			
			
     	}
     	
     	function _getPostion(){
     		
     		var screenWidth = $(window).width();
     		var newPos = {
         			start: screenWidth,
         			stay : (screenWidth - objWidth)/2,
         			stop : (0 - objWidth)
         		};
     		
     		//if()
     		if(settings.direction == "RL"){
     			newPos = {
             			start: (0 - objWidth),
             			stay : (screenWidth - objWidth)/2,
             			stop : screenWidth
             		};
     		} else if(settings.direction == "RR"){
     			newPos = {
             			start: screenWidth,
             			stay : (screenWidth - objWidth)/2,
             			stop : screenWidth
             		};
     		} else if(settings.direction == "LL"){
     			newPos = {
             			start: (0 - objWidth),
             			stay : (screenWidth - objWidth)/2,
             			stop : (0 - objWidth)
             		};
     		}
     		//console.log(thisObj.attr("id" ));
     		//console.log(thisObj.attr("id" )+ " --- > " + objWidth+ " --- > " +  screenWidth+ " --- > " +  JSON.stringify(newPos)) ;
     		
     		return newPos;
     	}
     	function _start(){
     		//var screenWidth = $(document).width();
  			
     			_reset();
  				thisObj.width(objWidth);
  				var newPos = _getPostion();
  				thisObj.show();
  				thisObj.offset({ top: objTop, left:newPos.start}); 
		 		thisObj.animate({left: newPos.stay+'px'});
				if(settings.autoStop){
					var delay = setInterval(function(){
						_stop();
					},settings.stayTime); 
					thisObj.attr("autoStop",delay);
				}
				
     	}
      
      return $.extend( thisObj, {
      	
      		// public methods
      		start: function(){
      				_start();
  				},
			stop: function(){
				_stop();		
			}
	      }
      );
      
      //return this
    };
}( jQuery ));