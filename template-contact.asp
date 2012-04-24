<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "Example Contact Page":
strCanonical = "contact.asp":
strDescription = "All our contact details.":
strKeywords = "":
strStylesheet = "bootstrap.css":
strTweetText = strPageName:
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container">		
		<div id="main" class="row" role="main">
			<div class="span7 offset1">
				<article class="well">
					<h1 id="pagetitle"><a href="<%=strCanonical%>" title="<%=strPageName%>"><%=strPageName%></a></h1>
					<img src="http://flickholdr.com/128/200/" width="128" height="200" class="right roundsm" alt="Contact <%=strSiteName%>">
					<section itemscope itemtype="http://schema.org/LocalBusiness">
						<h2><span itemprop="name"><%=strSiteName%></span></h2>
						<p><span itemprop="description"><%=strTagline%></span></p>
		                <p>Email: <span itemprop="email">admin<a href="#" title="Replace this with the usual @ symbol. This is just to stop us getting lots of spam email." class="hastooltip">[at]</a>example.com</span></p>
						<p>Phone: <span itemprop="telephone">01234 567890</span></p>
						<div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
							<p><span itemprop="streetAddress">1 Example Road</span><br>
							<span itemprop="addressLocality">Town</span><br>
							<span itemprop="addressRegion">County</span><br>
							<span itemprop="postalCode">AB1 2CD</span></p>
						</div>
						<p><a itemprop="url" href="<%=strDomain%>"><%=strDomain%></a></p>
				    </section>
	                <p><a href="http://twitter.com/<%=strTwitterName%>" rel="external" title="Follow <%=strSiteName%> on twitter">Twitter</a> - <a href="<%=strFacebookURL%>" rel="external" title="Like <%=strSiteName%> on Facebook">Facebook</a></p>
				</article>
			</div>
			<div class="span4">
				<article class="well">
	                <form action="formtoemail.asp" method="post" id="contactForm" class="form-vertical">
	                    <label for="Name">Name</label>
	                    <input name="Name" id="Name" type="text" class="required">
	                    <label for="Email">Email</label>
	                    <input name="Email" id="Email" type="email" class="required email">
	                    <label for="Telephone">Telephone</label>
	                    <input name="Telephone" id="Telephone" type="text">
	                    <label for="Message">Your Message</label>
	                    <textarea name="Message" id="Message" cols="45" rows="5" class="required"></textarea>
	                    <br>
	                    <input id="submit" type="submit" value="Send" class="btn btn-success">
	                </form>
	            </article>
			</div>
		</div>
		
		<div class="row">
			<div class="span8 offset2">
			<!-- #include file="inc/footer.asp" -->
			</div>
		</div>
    </div>

    <%
    strContactResponse = request.QueryString("response")
    IF strContactResponse = "success" THEN
		%>
		<div id="FTEresponse" class="modal fade">
		    <div class="modal-header">
			    <a class="close" data-dismiss="modal">×</a>
			    <h3>Thank you <%=strName%></h3>
		    </div>
		    <div class="modal-body alert-success">
			    <p>Your message was sent successfully. We will contact you shortly.</p>
			    <p></p>
		    </div>
		    <div class="modal-footer">
			    <a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>
		    </div>
	    </div>
	    <%
	END IF
	IF strContactResponse = "failure" THEN
		%>
		<div id="FTEresponse" class="modal fade">
		    <div class="modal-header">
			    <a class="close" data-dismiss="modal">×</a>
			    <h3>It's not your fault <%=strName%> but...</h3>
		    </div>
		    <div class="modal-body alert-danger">
			    <p>...something went wrong. We have notified the ninjas.</p>
			    <p>Please try again and if it still doesn't work, contact us via email or telephone.</p>
		    </div>
		    <div class="modal-footer">
			    <a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>
		    </div>
	    </div>
	    <%
	END IF
	%>

<!-- #include file="setup2.asp" -->

<script src="js/libs/jquery.validate.min.js"></script>
<script>
  $(document).ready(function(){
    $("#contactForm").validate();
    $('#FTEresponse').modal();
  });
 </script>
</body>
</html>