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
			<div id="left" class="span2 tiltright">
			<!-- #include file="inc/vert-menu.asp" -->
			<!-- #include file="inc/share.asp" -->
			</div>
			
			<div class="span7" id="main" role="main">
				<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
				<article>
					<p>Page content</p>
				</article>
			</div>
			
			<div id="right" class="span3 tiltleft">
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