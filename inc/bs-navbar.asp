<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
		<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</a>
		<a class="brand" href="<%=strDomain%>" title="<%=strSiteName%>"><%=strSiteName%></a>
		<div class="nav-collapse">
			<ul class="nav">
				<li><a href="default.asp" title="Home">Home</a></li>
				<li class="dropdown" id="layoutsmenu">
					<a href="#layoutsmenu" class="dropdown-toggle" data-toggle="dropdown">Layouts<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="1140.asp" title="1140px Grid">1140px Grid</a></li>
							<li><a href="960.asp" title="960.GS">960 Grid System</a></li>
							<li><a href="bootstrap.asp" title="Bootstrap">Bootstrap</a></li>
							<li><a href="glish.asp" title="Old skool Glish method">Glish</a></li>
							<li><a href="inuit.asp" title="Super Sharp Inuit.css">Inuit</a></li>
						</ul>
				</li>
				<li class="dropdown" id="demosmenu">
					<a href="#demosmenu" class="dropdown-toggle" data-toggle="dropdown">Demos<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><b>jQuery</b></a></li>
						<li><a href="blockfader.asp">Blockfader</a></li>
						<li><a href="fancybox.asp">Fancybox</a></li>
						<li class="divider"></li>
						<li><a href="#"><b>CSS3</b></a></li>
						<li><a href="3drollovers.asp">3D Rollovers</a></li>
					</ul>
				</li>
			</ul>
			<form class="navbar-search pull-right">
				<input type="text" class="search-query" placeholder="Search">
			</form>
			</div>
		</div>
	</div>
</div>