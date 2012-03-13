<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "Fancybox Demo":
strCanonical = "http://localhost/bootstrasp/demo-fancybox.asp":
strDescription = "Demo of the Fancybox jQuery plugin":
strKeywords = "":
strStylesheet = "bootstrap.css":
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container-fluid">
		
		<div class="row-fluid tiltwrapper">
			<div id="left" class="span2 tiltright">
			<!-- #include file="inc/leftmenu.asp" -->
			</div>
			
			<div class="span7" id="main" role="main">
				<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
				<article>
            	<p>This is a demonstration of the <a href="http://fancybox.net" title="Fancybox">Fancybox</a> jQuery plugin.</p>

                <!-- The Fancybox itself (not shown initially) -->
                <div id="global-fancybox-wrapper">
                    <div id="global-fancybox">
                        
                    </div>
                </div>
                <!-- End Fancybox -->
                <hr>                
                <p>
                    Different animations<br />
                    <a id="example1" href="img/fancyboxdemo/1_b.jpg"><img alt="example1" src="img/fancyboxdemo/1_s.jpg" /></a>
                    <a id="example2" href="img/fancyboxdemo/2_b.jpg"><img alt="example2" src="img/fancyboxdemo/2_s.jpg" /></a>
                    <a id="example3" href="img/fancyboxdemo/3_b.jpg"><img alt="example3" src="img/fancyboxdemo/3_s.jpg" /></a>
                    <a id="example4" href="img/fancyboxdemo/4_b.jpg"><img class="last" alt="example4" src="img/fancyboxdemo/4_s.jpg" /></a>
                </p>
                <hr>
                <p>
                    Different title positions<br />
                    <a id="example5" href="img/fancyboxdemo/5_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img alt="example4" src="img/fancyboxdemo/5_s.jpg" /></a>
                    <a id="example6" href="img/fancyboxdemo/6_b.jpg" title="Etiam quis mi eu elit tempor facilisis id et neque. Nulla sit amet sem sapien. Vestibulum imperdiet porta ante ac ornare. Vivamus fringilla congue laoreet."><img alt="example5" src="img/fancyboxdemo/6_s.jpg" /></a>
                    <a id="example7" href="img/fancyboxdemo/7_b.jpg" title="Cras neque mi, semper at interdum id, dapibus in leo. Suspendisse nunc leo, eleifend sit amet iaculis et, cursus sed turpis."><img alt="example6" src="img/fancyboxdemo/7_s.jpg" /></a>
                    <a id="example8" href="img/fancyboxdemo/8_b.jpg" title="Sed vel sapien vel sem tempus placerat eu ut tortor. Nulla facilisi. Sed adipiscing, turpis ut cursus molestie, sem eros viverra mauris, quis sollicitudin sapien enim nec est. ras pulvinar placerat diam eu consectetur."><img class="last" alt="example7" src="img/fancyboxdemo/8_s.jpg" /></a>
                </p>
                <hr>
                <p>
                    Image gallery (ps, try using mouse scroll wheel)<br />
                    <a rel="example_group" href="img/fancyboxdemo/9_b.jpg" title="Lorem ipsum dolor sit amet"><img alt="" src="img/fancyboxdemo/9_s.jpg" /></a>
                    <a rel="example_group" href="img/fancyboxdemo/10_b.jpg" title=""><img alt="" src="img/fancyboxdemo/10_s.jpg" /></a>
                    <a rel="example_group" href="img/fancyboxdemo/11_b.jpg" title=""><img alt="" src="img/fancyboxdemo/11_s.jpg" /></a>
                    <a rel="example_group" href="img/fancyboxdemo/12_b.jpg" title=""><img class="last" alt="" src="img/fancyboxdemo/12_s.jpg" /></a>
                </p>
                <hr>
                <p>Various examples</p>
                <ul>
                    <li><a id="various1" href="#inline1" title="Lorem ipsum dolor sit amet">Inline</a></li>
                    <li><a id="various2" href="ajax.txt">Ajax</a></li>
                    <li><a id="various3" href="http://maps.google.co.uk/">Iframe</a></li>
                    <li><a id="various4" href="http://www.adobe.com/jp/events/cs3_web_edition_tour/swfs/perform.swf">Swf</a></li>
                </ul>
                
                <div style="display:none;">
                    <div id="inline1" style="width:400px;height:150px;overflow:auto;">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque. Nulla sit amet sem sapien. Vestibulum imperdiet porta ante ac ornare. Nulla et lorem eu nibh adipiscing ultricies nec at lacus. Cras laoreet ultricies sem, at blandit mi eleifend aliquam. Nunc enim ipsum, vehicula non pretium varius, cursus ac tortor. Vivamus fringilla congue laoreet. Quisque ultrices sodales orci, quis rhoncus justo auctor in. Phasellus dui eros, bibendum eu feugiat ornare, faucibus eu mi. Nunc aliquet tempus sem, id aliquam diam varius ac. Maecenas nisl nunc, molestie vitae eleifend vel, iaculis sed magna. Aenean tempus lacus vitae orci posuere porttitor eget non felis. Donec lectus elit, aliquam nec eleifend sit amet, vestibulum sed nunc.
                    </div>
                </div>
                
                <p>Ajax example will not run from your local computer and requires a server to run.</p>
                <p>Photo Credit: <a href="http://www.flickr.com/people/kharied/">Katie Harris</a></p>

				</article>
			</div>
			
			<div id="right" class="span3 tiltleft">
			<!-- #include file="inc/rightmenu.asp" -->
			</div>
		</div>
		
		<div class="row-fluid">
			<div class="span12">
			<!-- #include file="inc/footer.asp" -->
			</div>
		</div>
    </div>       
<!-- #include file="setup2.asp" -->

<%' Put page specific jQuery stuff here %>
<script>
   $(document).ready(function() {
    /*
    *   Examples - images
    */

    $("a#example1").fancybox();

    $("a#example2").fancybox({
        'overlayShow'   : false,
        'transitionIn'  : 'elastic',
        'transitionOut' : 'elastic'
    });

    $("a#example3").fancybox({
        'transitionIn'  : 'none',
        'transitionOut' : 'none'    
    });

    $("a#example4").fancybox({
        'opacity'       : true,
        'overlayShow'   : false,
        'transitionIn'  : 'elastic',
        'transitionOut' : 'none'
    });

    $("a#example5").fancybox();

    $("a#example6").fancybox({
        'titlePosition'     : 'outside',
        'overlayColor'      : '#000',
        'overlayOpacity'    : 0.9
    });

    $("a#example7").fancybox({
        'titlePosition' : 'inside'
    });

    $("a#example8").fancybox({
        'titlePosition' : 'over'
    });

    $("a[rel=example_group]").fancybox({
        'transitionIn'      : 'none',
        'transitionOut'     : 'none',
        'titlePosition'     : 'over',
        'titleFormat'       : function(title, currentArray, currentIndex, currentOpts) {
            return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
        }
    });

    /*
    *   Examples - various
    */

    $("#various1").fancybox({
        'titlePosition'     : 'inside',
        'transitionIn'      : 'none',
        'transitionOut'     : 'none'
    });

    $("#various2").fancybox();

    $("#various3").fancybox({
        'width'             : '75%',
        'height'            : '75%',
        'autoScale'         : false,
        'transitionIn'      : 'none',
        'transitionOut'     : 'none',
        'type'              : 'iframe'
    });

    $("#various4").fancybox({
        'padding'           : 0,
        'autoScale'         : false,
        'transitionIn'      : 'none',
        'transitionOut'     : 'none'
    });
});

</script>
<%' End of jQuery stuff %>
</body>
</html>