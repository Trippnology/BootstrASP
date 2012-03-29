<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->
<%
strPageName = "Contact Form Response":
strCanonical = "contact-response.asp":
strDescription = "Response to our contact form":
strKeywords = "keyword1, keyword2, keyword3":
strTweetText = strPageName
%>
<!-- #include file="setup.asp" -->

<body>
	<!-- #include file="inc/bs-navbar.asp" -->
	<div class="container">		
		<div class="row" id="main" role="main">
			<div class="span10 offset1">
				<article class="well">
					<%
					Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
					Mailer.FromName = strFromName
					Mailer.FromAddress = strFromAdd
					Mailer.ReplyTo = strEmail
					Mailer.RemoteHost = strMailHost
					Mailer.AddRecipient "Trippnology", "trippnology@gmail.com"
					Mailer.Subject = strSubject
					Mailer.BodyText = strMsgHeader & vbCrLf & _
					vbCrLf & "Name: " & strName & vbCrLf & _
					vbCrLf & "Email: " & strEmail & vbCrLf & _
					vbCrLf & "Telephone: " & strTelephone & vbCrLf & _
					vbCrLf & "Message: " & strMessage & vbCrLf & _
					vbCRLf & vbCrLf & "You can respond to this email directly by clicking reply (as long as a valid email has been provided)." & vbCrLf & _
					vbCrLf & "Sent from: " & strUserIP

					IF Mailer.SendMail THEN
					Response.Write "<div id=""FTEresponse"" class=""alert-success"">"
					Response.Write "<p>" & "Thank you " & strName & ",</p>"
					Response.Write "<p>" & "Your request was sent successfully. We will contact you shortly." & "</p>"
					Response.Write "</div>"
					ELSE
					Response.Write "<div id=""FTEresponse"" class=""alert-danger"">"
					Response.Write "<p>" & "The following error occurred while sending your request: " & Mailer.Response & "</p>"
					Response.Write "<p>" & "Please <a href=""javascript:window.history.go(-1)"">go back</a> and try again." & "</p>"
					Response.Write "</div>"
					END IF
					%>
				</article>
			</div>
		</div>
		
		<div class="row">
			<div class="span8 offset2">
			<!-- #include file="inc/footer.asp" -->
			</div>
		</div>
    </div>       
<!-- #include file="setup2.asp" -->

</body>
</html>