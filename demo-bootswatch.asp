<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "Bootswatch Demo":
strCanonical = "demo-bootswatch.asp":
strDescription = "A demo of swatches from Bootswatch.com":
strKeywords = "keyword1, keyword2, keyword3":
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container">
		
		<div class="row tiltwrapper">
			<div id="left" class="span2 tiltright">
			<!-- #include file="inc/vert-menu.asp" -->
			<!-- #include file="inc/share.asp" -->
			</div>
			
			<div class="span5" id="main" role="main">
				<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
				<article>
					<p><a href="http://bootswatch.com/" title="Bootswatch" rel="external">Bootswatch</a> is a collection of free themes that you can drop into your Bootstrap site.</p>
					<p>It's currently implemented into BootstrASP in a bad way. It's currently hotlinking the .css file from bootswatch.com instead of using the API they provide. Switching to the API is on the TODO list.</p>
				</article>
			</div>
				
			<div class="span5">
				<article>
					<h1>Available skins:</h1>
					<div class="skinchooser"></div>
				</article>
			</div>
		</div>
		
		<div class="row">
			<div class="span12">
			<!-- #include file="inc/footer.asp" -->
			</div>
		</div>
    </div>       
<!-- #include file="setup2.asp" -->

<!--[if lt IE 10]>  
<script src="https://raw.github.com/dkastner/jquery.iecors/master/jquery.iecors.js"></script>
<![endif]-->
<script src="https://raw.github.com/janl/mustache.js/master/mustache.js"></script>

<%' Put page specific jQuery stuff here %>
<script>
$.get("http://simplejsonp.nodester.com/thomaspark/bootswatch", function (data) {
			
     var t_menu = "<div class='skinchoosermenu'><select>{{#.}}<option>{{name}}</option>{{/.}}</select></div>";
     var t_previews = "{{#.}}<div class='preview hidden' id='{{name}}'><h2>{{name}}: {{description}}</h2><p><a href='{{preview}}'><img src='{{thumbnail}}'></a></p></div>{{/.}}";
					
     var o_menu = Mustache.render(t_menu, data.themes);
     var o_previews = Mustache.render(t_previews, data.themes);					

    $('.skinchooser').append(o_menu + o_previews);
			
    $('.preview').first().removeClass('hidden');
									
    $('.skinchoosermenu').change(function(){                    
      $('.preview').addClass('hidden');
      var show = '#' + $('.skinchoosermenu :selected').text();
      $(show).removeClass('hidden');
    });
			
}, "json");
</script>
<%' End of jQuery stuff %>
</body>
</html>