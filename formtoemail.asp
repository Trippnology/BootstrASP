<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="inc/strings.asp" -->

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
vbCrLf & "Sent from: " & strUserIP & vbCrLf & _
vbCrLf & vbCrLf & "You can respond to this email directly by clicking reply (as long as a valid email has been provided)."

IF Mailer.SendMail THEN
	Response.Redirect("contact.asp?response=success")
ELSE
	Response.Redirect("contact.asp?response=failure")
END IF
%>