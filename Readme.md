#BootstrASP v0.3.2
A simple framework built with Bootstrap and ASP  
Licensed under [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/uk/)

##Submodules
- [Bootstrap](https://github.com/twitter/bootstrap.git)
- [FitText](https://github.com/davatron5000/FitText.js.git)
- [H5BP Ant Build Script](https://github.com/h5bp/ant-build-script.git)
- [Modernizr](https://github.com/Modernizr/Modernizr.git)

###Includes
Setup.asp - The entire <head></head>. Do not put scripts here unless necessary (use setup2.asp).

+ Title - Grabbed from strings: [strPageName - strSiteName]
+ META Keywords and Description - Grabbed from strings: strKeywords and strDescription
+ Google Font API - Remove if not required for a (big) performance boost. Placed first to start downloading the font asap.
+ Stylesheet - Grabbed from string strStylesheet. NOT CURRENTLY IN USE
+ Master Stylesheet - styles.css - Placed last to override any previous styles
+ Humans.txt - People and technologies involved in the production.
	
Setup2.asp - All script files should be launched from here.

- jQuery - Grabbed from CDN with a local fallback
- jQuery easing - Grabbed from CDN with a local fallback (used by Fancybox)
- jQuery mousewheel - Grabbed from CDN with a local fallback (used by Fancybox)
- Submodules
        - Fittext        
        - Bootstrap scripts
- js/plugins.js A place for your own jQuery plugins
- js/scripts.js A place for your own non-jQuery scripts        
- Global jQuery options - Put jQuery settings here that will be used site wide.
- BelatedPNGfix Conditional comment for browsers < IE7
- inc/dev.asp Scripts for dev use only. REMOVE THIS INCLUDE FOR PRODUCTION
- inc/global-modal.asp Remove if not required
- Google Analytics - Optimised async version

Inc/dev.asp

- Area for testing scripts, CSS etc. and calls live.js for designing in the browser - Remove include from setup2.asp for production.

Inc/footer.asp

- Contains the page footer.

Inc/global-modal.asp

- Useful if you have modal content you want to use on every page (eg site login)
	
Inc/header.asp

- Contains page header (site name and tagline) and optionally, a top menu (topmenu.asp). NOT IN USE
	
Inc/share.asp

- Addthis (addthis.asp) - Bookmark to multiple networks.
- Tweet Button (tweet-button.asp) - Edit tweet text and username in inc/strings.asp.
- Facebook Like (with like count) (fb-like.asp) - Edit URL to your FB page if you have one in inc/strings.asp or set to null in page to apply likes to current page.

Inc/sidebar.asp

- Contains sidebar content (optional).

Inc/strings.asp - Where all variables are defined. You can set some global variables here and overide them by specifying them in page.

Inc/vert-menu.asp

- Contains side navigation column (optional).
	
GLOBAL

- strDomain - Fully qualified domain name to the root of the site.
- strAdminEmail - Email address of the site owner.
- strSiteName - Website title.
- strTagline - Company slogan.
- strUserIP - IP address of page visitor.
- strBSCSS, strBSImg, strBSJS - Directories of Bootstrap files (just in case they are changed in the future).

PAGE SPECIFIC

- strPageName - Page Name (usually your target keyword).
- strCanonical - URL to be indexed (root relative).
- strDescription - Page META description.
- strKeywords - Page META keywords.
- strStylesheet - Stylesheet to use for layout (all other styles are already included in styles.css).

EXTERNAL SITES
- strTwitterName - Your twitter username.
- strTweetText - Text used when the tweet button is clicked. Set to strPageName on each page by default.
- strFacebookURL - URL of your Facebook page - Set this to null to 'Like' the current page (only if you don't have a FB page).
- strGoogleAnalID - Google Analytics ID.
- strGoogleFonts - List of fonts to pull from the Google Font API (seperate with a comma and no space: Lobster,Lobster).

####CSS
style.css - Master stylesheet for BootstrASP
	
#####Javascript
- Script.js
    - A place to put non jQuery scripts.
    - Add class .current - Links pointing to the current page get an extra class: .current
- Plugins.js
    - A place to put jQuery plugins.
    - externallinks - Any link with rel="external" is given target="_blank"
    - BlockFader - Cycles images with a nice pixel transition effect. See demo-blockfader.asp for demo.
    - Fancybox - Slick pop up overlay for any kind of content. See demo-fancybox.asp for demo.

######Back End
Formtoemail.asp - Processes contact forms. Most settings are in inc/strings.asp.
