<div id="tweetbutton">
	<script type="text/javascript">
    //<![CDATA[
    (function() {
        document.write('<a href="http://twitter.com/share" class="twitter-share-button" data-count="none" data-text="<%=strTweetText%>" data-url="<%=strCanonical%>" data-via="<%=strTwitterName%>">Tweet</a>');
        var s = document.createElement('SCRIPT'), s1 = document.getElementsByTagName('SCRIPT')[0];
        s.type = 'text/javascript';
        s.async = true;
        s.src = 'http://platform.twitter.com/widgets.js';
        s1.parentNode.insertBefore(s, s1);
    })();
    //]]>
    </script>
</div>