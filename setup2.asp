<%' Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if necessary %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>window.jQuery || document.write("<script src='js/libs/jquery-1.7.1.min.js'>\x3C/script>")</script>

<%' Grab extra jQuery files from CDN or fall back to local %>
<script src="//cachedcommons.org/cache/jquery-easing/1.3.0/javascripts/jquery-easing-min.js"></script>
<script>window.jQuery || document.write("<script src='js/libs/jquery.easing-1.3.pack.js'>\x3C/script>")</script>
<script src="//cachedcommons.org/cache/jquery-mousewheel/3.0.3/javascripts/jquery-mousewheel-min.js"></script>
<script>window.jQuery || document.write("<script src='js/libs/jquery.mousewheel-3.0.4.pack.js'>\x3C/script>")</script>

<%' Submodules %>
<%' FitText %>
<script src="fittext/jquery.fittext.js"></script>
<%' Bootstrap %>
<script src="<%=strBSJS%>bootstrap-transition.js"></script>
<script src="<%=strBSJS%>bootstrap-alert.js"></script>
<script src="<%=strBSJS%>bootstrap-modal.js"></script>
<script src="<%=strBSJS%>bootstrap-dropdown.js"></script>
<script src="<%=strBSJS%>bootstrap-scrollspy.js"></script>
<script src="<%=strBSJS%>bootstrap-tab.js"></script>
<script src="<%=strBSJS%>bootstrap-tooltip.js"></script>
<script src="<%=strBSJS%>bootstrap-popover.js"></script>
<script src="<%=strBSJS%>bootstrap-button.js"></script>
<script src="<%=strBSJS%>bootstrap-collapse.js"></script>
<script src="<%=strBSJS%>bootstrap-carousel.js"></script>
<script src="<%=strBSJS%>bootstrap-typeahead.js"></script>
<script src="<%=strBSJS%>application.js"></script>

<!-- DO NOT modify the following (including the comments) -->
<!-- scripts concatenated and minified via ant build script-->
<script src="js/plugins.js"></script>
<script src="js/script.js"></script>
<!-- end scripts-->

<%' Global jQuery settings %>
<script>
	$(document).ready(function() {
		/* FitText */
		$("#pagetitle").fitText(0.8, { minFontSize: '44px' });
		/* Bootstrap */
		$('.dropdown-toggle').dropdown();
		$('a.hastooltip').tooltip({
			'placement' : 'right'
		});
		$('#globalmodal').modal('hide')
		/* Fancybox */
		$("#fancybox-trigger").fancybox({
			'titlePosition'		: 'inside',
			'transitionIn'		: 'elastic',
			'transitionOut'		: 'elastic'
		})
	});
</script>

<!--[if lt IE 7 ]>
<script src="http://cachedcommons.org/cache/dd-belated-png/0.0.8/javascripts/dd-belated-png-min.js"></script>
<script>window.jQuery || document.write("<script src="js/libs/dd-belated-png-0.0.8-min.js"></script>")</script>
<script>DD_belatedPNG.fix("img, .png_bg");</script>
<![endif]-->
    
<%' Additional items used during development and testing
  ' Remove this reference for production - integrate the contents of inc/dev.asp or lose it! %>
<!-- #include file="inc/dev.asp" -->

<%' Google Analytics %>
<script>
	var _gaq=[["_setAccount","<%=strGoogleAnalID%>"],["_trackPageview"]];
	(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
	g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
	s.parentNode.insertBefore(g,s)}(document,"script"));
</script>

<%' Global Modal Window %>
<!-- #include file="inc/global-modal.asp" -->