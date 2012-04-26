<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "3D Rollover Demo":
strCanonical = "http://localhost/bootstrasp/demo-3d-rollover.asp":
strDescription = "A nice 3D rollover effect":
strKeywords = "":
strStylesheet = "bootstrap.css":
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container-fluid">
		
		<div class="row-fluid tiltwrapper">
			<div id="left" class="span2">
			<!-- #include file="inc/vert-menu.asp" -->
			<!-- #include file="inc/share.asp" -->
			</div>
			
			<div class="span7" id="main" role="main">
				<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
				<section id="rolloverdemo">
					<ol>
						<li>
						<h2>Rollover</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="fade">
						<h2>Fade</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip">
						<h2>Flip</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip up">
						<h2>Flip Up</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip box">
						<h2>Flip Box</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip box fade">
						<h2>Flip Box Fade</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip box fade up">
						<h2>Flip Box Fade Up</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip box fade hideback">
						<h2>Flip Box Fade Hideback</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="flip box fade up hideback">
						<h2>Flip Box Fade Up Hideback</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
						
						<li class="nananana">
						<h2>Nananana</h2>
						<a class="rollover" href="https://developer.mozilla.org/en/HTML/HTML5">
						  <figure class="cube">
							<img src="img/3drollovers/mdnface.png" class="front" alt="MDN">
							<img src="img/3drollovers/htmlface.png" class="back" alt="HTML5">
						  </figure>
						</a>
						</li>
					</ol>					
				</section>
				
				<section>
					<h1>3D Photo Rollover</h1>
					<p></p>
					<ul>
					  <li class="image3d" tabindex="0">
						<figure>
						  <img src="img/3drollovers/mittens.jpg" alt="Mittens the cat">
						  <figcaption>
							<p><strong>Mittens</strong> loves to play with yarn and stuff.</p>
						  </figcaption>
						</figure>
					  </li>
					</ul>
				</section>

				<section>
					<p>Both demos by 
					<a href="http://christianheilmann.com/">Chris Heilmann</a> 
					(<a href="http://twitter.com/codepo8">@codepo8</a>)
					</p>
				</section>

				<div class="tiltwrapper row">
					<div class="tiltright span6" style="width:200px; margin:20px; padding:20px; border:1px #000 solid; font-size:200%;">
						<h1>Tilt Right Example</h1>
						<p>This content is tilted off to one side until you hover on it.</p>
						<p>In Chrome, this effect seems to break after a few hovers.</p>
					</div>
					<div class="tiltleft span6" style="width:200px; margin:20px; padding:20px; border:1px #000 solid; font-size:200%;">
						<h1>Tilt Left Example</h1>
						<p>This content is tilted off to one side until you hover on it.</p>
						<p>In Chrome, this effect seems to break after a few hovers.</p>
					</div>
				</div>
			</div>

			
			<div id="right" class="span3">
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
	
</script>
<%' End of jQuery stuff %>
</body>
</html>