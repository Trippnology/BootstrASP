<%
'Global
Dim strDomain, strAdminEmail, strSiteName, strTagline, strUserIP
strDomain = "http://localhost/bootstrasp/"
strAdminEmail = ""
strSiteName = "BootstrASP"
strTagline = "Twitter Bootstrap with some ASP goodies"
strUserIP = Request.ServerVariables("REMOTE_ADDR")

'Page Specific
'You could set default values here and overide them per page
Dim strPageName, strCanonical, strDescription, strKeywords, strStylesheet

'Bootstrap
Dim strBSCSS, strBSImg, strBSJS
strBSCSS = "bs/docs/assets/css/"
strBSImg = "bs/docs/assets/img/"
strBSJS = "bs/docs/assets/js/"

'External sites
Dim strTwitterName, strTweetText, strFacebookURL, strGoogleAnalID, strGoogleFonts
strTwitterName = "Trippnology"
strFacebookURL = "http://www.facebook.com/Trippnology"
strGoogleAnalID = "UA-XXXXX-X"
strGoogleFonts = "Squada+One"

'Form to email
'Server Setup
Dim Mailer, strMsgHeader, qryItem, strMsgInfo
Dim strFromName, strFromAdd, strMailHost, strRecipientName, strRecipientEmail, strSubject
strFromName = strSiteName
strFromAdd = strAdminEmail
strMailHost = ""
strRecipientName = "Trippnology"
strRecipientEmail = strAdminEmail
strSubject = "Contact from your website"
strMsgHeader = "Someone has sent you a message:"

'Set fields to use here
DIM strName, strEmail, strTelephone, strMessage
strName = request.form("Name")
strEmail = request.form("Email")
strTelephone = request.form("Telephone")
strMessage = request.form("Message")
%>