#BootstrASP v0.2
A simple framework built with Bootstrap and ASP  

##Submodules
- [Bootstrap](https://github.com/twitter/bootstrap.git)
- [FitText](https://github.com/davatron5000/FitText.js.git)
- [HTML5 Bilerplate Build Script](https://github.com/h5bp/ant-build-script.git)
- [Modernizr](https://github.com/Modernizr/Modernizr.git)

###Includes
Setup.asp - The entire <head></head>. Do not put scripts here unless necessary (use setup2.asp).

+ Title - Grabbed from strings: [strPageName - strSiteName]
+ META Keywords and Description - Grabbed from strings: strKeywords and strDescription
+ Google Font API - Remove if not required for a (big) performance boost. Placed first to start downloading the font asap.
+ Stylesheet - Grabbed from string strStylesheet. NOT CURRENTLY IMPLEMENTED
+ Master Stylesheet - styles.css - Placed last to override any previous styles
+ Humans.txt - People and technologies involved in the production.
	
Setup2.asp - All script files should be launched from here.

- jQuery - Grabbed from CDN with a local fallback
- jQuery easing - Grabbed from CDN with a local fallback (used by Fancybox)
- jQuery mousewheel - Grabbed from CDN with a local fallback (used by Fancybox)
- Global jQuery options - Put jQuery settings here that will be used site wide.
- Google Analytics - Optimised async version

Inc/dev.asp

- Area for testing scripts, CSS etc. and calls live.js for designing in the browser - Remove include from setup.asp for production.

Inc/footer.asp

- Contains global modal window and the page footer.
	
Inc/header.asp

- Contains page header (site name and tagline) and optionally, a top menu (topmenu.asp). NOT YET IMPLEMENTED
	
Inc/leftmenu.asp

- Contains left side navigation column (optional).
	
Inc/rightmenu.asp

- Contains right side navigation column (optional).
	
Inc/share.asp

- Addthis (addthis.asp) - Bookmark to multiple networks.
- Tweet Button (tweet-button.asp) - Edit tweet text and username in inc/strings.asp.
- Facebook Like (with like count) (fb-like.asp) - Edit URL to your FB page if you have one in inc/strings.asp or set to null in page to apply likes to current page.

Inc/strings.asp - Where all variables are defined. You can set some global variables here and overide them by specifying them in page.

GLOBAL

- strDomain - Fully qualified domain name to the root of the site.
- strSiteName - Website title.
- strTagline - Company slogan.
- strTwitterName - Your twitter username.
- strFacebookURL - URL of your Facebook page - Set this to null to 'Like' the current page (only if you don't have a FB page).
- strGoogleAnalID - Google Analytics ID.
- strGoogleFonts - List of fonts to pull from the Google Font API (seperate with a comma and no space: Lobster,Lobster).

PAGE SPECIFIC

- strPageName - Page Name (usually your target keyword).
- strCanonical - URL to be indexed (root relative).
- strDescription - Page META description.
- strKeywords - Page META keywords.
- strStylesheet - Stylesheet to use for layout (all other styles are already included in styles.css).

EXTERNAL SITES

- the current page.
- strTweetText - Text used when the tweet button is clicked. Set to strPageName on each page by default.

####CSS
style.css - Master stylesheet for BootstrASP
	
#####Javascript
- Script.js
    - A place to put non jQuery scripts.
    - Add class .current - Links pointing to the current page get an extra class: .current
- Plugins.js
    - A place to put jQuery plugins.
    - externallinks - Any link with rel="external" is given target="_blank"
    - BlockFader - Cycles images with a nice pixel transition effect. See blockfader.asp for demo.
    - Fancybox - Slick pop up overlay for any kind of content. See fancybox.asp for demo. One global window is embedded in inc/footer.asp settings for it are in setup2.asp

######Back End
Formtoemail.asp - Processes contact forms. Most settings are in inc/strings.asp.
