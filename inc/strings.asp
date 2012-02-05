<%
'Global
Dim strDomain, strAdminEmail, strSiteName, strTagline
strDomain = "http://localhost/bootstrasp/"
strAdminEmail = "mail@trippnology.com"
strSiteName = "BootstrASP"
strTagline = "Twitter Bootstrap with some ASP goodies"

'Page Specific
'You could set default values here and overide them per page
Dim strPageName, strCanonical, strDescription, strKeywords, strStylesheet

'Bootstrap
strBSCSS = "bs/docs/assets/css/"
strBSImg = "bs/docs/assets/img/"
strBSJS = "bs/docs/assets/js/"

'External sites
Dim strTwitterName, strTweetText, strFacebookURL, strGoogleAnalID, strGoogleFonts
strTwitterName = "Trippnology"
strFacebookURL = "http://www.facebook.com/Trippnology"
strGoogleAnalID = "UA-XXXXX-X"
strGoogleFonts = "Coda"

'Form to email
'Server Setup
Dim Mailer, strMsgHeader, qryItem, strMsgInfo
Dim strFromName, strFromAdd, strMailHost, strRecipientName, strRecipientEmail, strSubject
strFromName = strSiteName
strFromAdd = strAdminEmail
strMailHost = "auth.smtp.1and1.co.uk"
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