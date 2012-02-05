<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "The Trippnology Skeleton Boilerplate"
strCanonical = "http://localhost/default.asp"
strDescription = "A standards compliant framework to jump start our web projects."
strKeywords = "keyword1, keyword2, keyword3"
strStylesheet = "bootstrap.css"
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body class="container">
	<!-- #include file="inc/bootstrap-topbar.asp" -->
	
	<div class="span16">
	<!-- #include file="inc/header.asp" -->
	</div>
	
	<div class="row tiltwrapper">
        <div id="left" class="span3 tiltright">
        <!-- #include file="inc/leftmenu.asp" -->
        </div>
        
        <div class="span9" id="main" role="main">
            <h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
            <article>
                <h1>About</h1>
                <p>The idea is to get a basic framework in place that is standards compliant, flexible, responsive and contains everything the modern website needs right out of the box.</p>
            </article>
            <article>
                <h1>What's included</h1>
                <p>Currently:</p>
                <ul>
                	<li>Structure/style:
                    	<ul>
                        	<li>HTML5 Boilerplate</li>
                            <li>Inuit.css (layout styles only)</li>
                            <li>Google Font API</li>
                        </ul>
                    </li>
                    <li>Javascript:
                    	<ul>
                        	<li>jQuery and these plugins:
                            	<ul>
                                	<li>ExternalLinks</li>
                                    <li>BlockFader</li>
                                    <li>Fancybox</li>
                                    <li>Tooltipsy</li>
                                </ul>
                            </li>
                            <li>Live.js</li>
                            <li>Google Analytics</li>
                        </ul>
                    </li>
                    <li>Social:
                    	<ul>
                        	<li>Twitter Tweet Button</li>
                            <li>Facebook Like Button</li>
                            <li>AddThis Button</li>
                        </ul>
                    </li>
                </ul>
                <p>Full details are included in the <a href="readme.txt" class="hastip" title="Read the fricken manual" target="_blank">README</a>.</p>
			</article>
        </div>
        
        <div id="right" class="span4 tiltleft">
        <!-- #include file="inc/rightmenu.asp" -->
        </div>
    </div>
	
	<div class="row">
        <div class="span16">
		<!-- #include file="inc/footer.asp" -->
        </div>
	</div>
           
<!-- #include file="setup2.asp" -->

<%' Put page specific jQuery stuff here %>

<%' End of jQuery stuff %>
</body>
</html>