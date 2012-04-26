<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "Blockfader Demo":
strCanonical = "http://localhost/bootstrasp/demo-blockfader.asp":
strDescription = "A demo of the Blockfader jQuery plugin":
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
					<p>A demo of the <a href="http://www.codefocus.ca/goodies/blockfader" title="Blockfader">Blockfader</a> jQuery plugin</p>
					<div id="BFdemo"></div>
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
$(document).ready(function(){
//  Initialize the blockfader
	$('#BFdemo').blockfade([
		{ image:    'img/icons/backup.png' },
		{ image:    'img/icons/Facebook.png' },
		{ image:    'img/icons/Firefox.png' },
		{ image:    'img/icons/wifi.png' }
	]);
});	
</script>
<%' End of jQuery stuff %>
</body>
</html>