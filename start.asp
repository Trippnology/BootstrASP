<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "BootstrASP":
strCanonical = "http://localhost/bootstrasp/default.asp":
strDescription = "A standards compliant framework to jump start our web projects.":
strKeywords = "keyword1, keyword2, keyword3":
strStylesheet = "bootstrap.css":
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container-fluid">
		
		<div class="row-fluid tiltwrapper">
			<div id="left" class="span2 tiltright shadowleft roundlrg">
			<!-- #include file="inc/vert-menu.asp" -->
			<!-- #include file="inc/share.asp" -->
			</div>
			
			<div class="span7" id="main" role="main">
				<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
				<article>
					<img src="img/trippnology-logo-square-180.png" alt="Trippnology square logo" class="right roundlrg">
					<h1>About</h1>
					<p>The idea is to use Bootstrap and ASP to build a framework of modules used for rapid development of web projects. We're trying to make it standards compliant, flexible (as in, useful in may senarios), responsive and ensure it contains everything the modern website needs right out of the box.</p>
					<p>There will be some components that aren't needed but it is easy to remove what's not required as things are laid out nice and logically.</p>
				</article>

				<article>
					<h1>What's included</h1>
					<p>Submodules:</p>
					<ul>
						<li><a rel="external" href="https://github.com/twitter/bootstrap.git">Bootstrap</a> <a class="label" rel="external" href="https://github.com/twitter/bootstrap/blob/master/LICENSE">Apache</a>
						<li><a rel="external" href="https://github.com/Modernizr/Modernizr.git">Modernizr</a> <a class="label" rel="external" href="http://modernizr.com/license/">MIT</a>
						<li><a rel="external" href="https://github.com/davatron5000/FitText.js.git">FitText</a> <a class="label" rel="external" href="http://sam.zoy.org/wtfpl/">WTFPL</a>
						<li><a rel="external" href="https://github.com/h5bp/ant-build-script.git">H5BP Ant Build Script</a>
					</ul>

					<p>Javascript:</p>
					<ul>
						<li><a rel="external" href="http://jquery.com/">jQuery</a> <a class="label" rel="external" href="https://www.gnu.org/licenses/gpl-3.0.html">GPL</a> and these plugins:
							<ul>
								<li><a rel="external" href="http://gsgd.co.uk/sandbox/jquery/easing/">jQuery Easing</a>
								<li><a rel="external" href="http://archive.plugins.jquery.com/project/mousewheel">jQuery Mousewheel</a> <a class="label" rel="external" href="https://github.com/brandonaaron/jquery-mousewheel/blob/master/LICENSE.txt">&copy;Brandon Aaron</a>
								<li><a rel="external" href="http://bassistance.de/jquery-plugins/jquery-plugin-validation/">jQuery Validation</a> <a class="label" rel="external" href="https://www.gnu.org/licenses/gpl-3.0.html">GPL</a>
								<li><a rel="external" href="http://www.codefocus.ca/goodies/blockfader">BlockFader</a> <a class="label" rel="external" href="https://www.gnu.org/licenses/gpl-3.0.html">GPL</a>
								<li><a rel="external" href="http://fancybox.net/">Fancybox</a> <a class="label" rel="external" href="https://www.gnu.org/licenses/gpl-3.0.html">GPL</a>
								<li>ExternalLinks
							</ul>
						</li>
						<li><a rel="external" href="http://www.google.com/analytics/">Google Analytics</a>
						<li><a rel="external" href="http://www.google.com/webfonts">Google Fonts</a>
					</ul>

					<p>Social:</p>
					<ul>
						<li><a rel="external" href="http://twitter.com/about/resources/buttons">Twitter Tweet Button</a>
						<li><a rel="external" href="http://developers.facebook.com/docs/reference/plugins/like/">Facebook Like Button</a>
						<li><a rel="external" href="http://www.addthis.com/">AddThis Button</a>
					</ul>

					<p>Development</p>
					<ul>
						<li><a rel="external" href="http://livejs.com/">Live.js</a> <a class="label" rel="external" href="http://livejs.com/license">MIT</a>
					</ul>

					<p>Full details are included in the <a href="Readme.md" class="hastooltip" title="Read the fricken manual" target="_blank">Readme file</a>.</p>
				</article>
			</div>
			
			<div id="right" class="span3 tiltleft shadowright roundlrg">
			<!-- #include file="inc/sidebar.asp" -->
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
</script>
<%' End of jQuery stuff %>
</body>
</html>