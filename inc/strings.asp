<%
'Global
Dim strDomain, strSiteName, strTagline
strDomain = "http://localhost/skeletonbp/"
strSiteName = "TNG Skeleton BP"
strTagline = "HTML5 | CSS3 | JS | ASP"

'Page Specific
'You could set default values here and overide them per page
Dim strPageName, strCanonical, strDescription, strKeywords, strStylesheet

'External sites
Dim strTwitterName, strTweetText, strFacebookURL, strGoogleAnalID, strGoogleFonts
strTwitterName = "Trippnology"
strFacebookURL = "http://www.facebook.com/Trippnology"
strGoogleAnalID = "UA-XXXXX-X"
strGoogleFonts = "Lobster"

'Form to email
'Server Setup
Dim Mailer, strMsgHeader, qryItem, strMsgInfo
Dim strFromName, strFromAdd, strMailHost, strRecipientName, strRecipientEmail, strSubject
strFromName = "Trippnology Skeleton BP"
strFromAdd = "bp@trippnology.com"
strMailHost = "auth.smtp.1and1.co.uk"
strRecipientName = "Trippnology"
strRecipientEmail = "trippnology@gmail.com"
strSubject = "Contact from your website"
strMsgHeader = "Someone has sent you a message:"

'Set fields to use here
DIM strName, strEmail, strTelephone, strMessage
strName = request.form("Name")
strEmail = request.form("Email")
strTelephone = request.form("Telephone")
strMessage = request.form("Message")

%>