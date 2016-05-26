<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:m="urn:mtconnect.org:MTConnectStreams:1.3" >
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
			<head>
				<title>NIST SMS Test Bed: Volatile Data Stream</title>
				<meta name="Description" id="Description" content="Test Web Page" />
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<meta name="Keywords" id="Keywords" content="" />
				<meta name="Generator" id="Generator" content="CommonSpot Content Server Build 5.1.1.160" />
				<link type="text/css" href="/styles/Streams.css" media="screen" rel="stylesheet"/>
				<link rel="stylesheet" href="http://www.nist.gov/style/nist-styles.css" type="text/css" />
				<link rel="stylesheet" href="http://www.nist.gov/style/nist-subsite-overrides.css" type="text/css" />
				<style type="text/css">
					.mw { color:#000000;font-family:Verdana,Arial,Helvetica;font-weight:bold;font-size:xx-small;text-decoration:none; }
					a.mw:link	{color:#000000;font-family:Verdana,Arial,Helvetica;font-weight:bold;font-size:xx-small;text-decoration:none;}
					a.mw:visited	{color:#000000;font-family:Verdana,Arial,Helvetica;font-weight:bold;font-size:xx-small;text-decoration:none;}
					a.mw:hover	{color:#0000FF;font-family:Verdana,Arial,Helvetica;font-weight:bold;font-size:xx-small;text-decoration:none;}
				</style>

<script type="text/javascript">
<!--
	var gMenuControlID = 0;
	var menus_included = 0;
	var jsDlgLoader = '/el/loader.cfm';
	var jsSiteID = 1;
	var jsSubSiteID = 489;
	var js_gvPageID = 1558468;
	var jsPageID = 1558468;
	var jsPageSetID = 0;
	var jsPageType = 0;
	var jsControlsWithRenderHandlers = ",9,9,10,10,10,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,36,36,36,1339,1344,1349,1479,1494,1543,1569,1585,1605,1618,1634,1692,2203,2220,2421,2428,2435,2444,2449,2449,2449,2449,2449,2464,2494,6326,6773,10072,12168,12836,12836,15531,15531,20135,20242,28006,28239,41056,41056,41056,1294596,1300481,1306240,1544965,";
	var jsDefaultRenderHandlerProps = ",1339_1,1344_1,1349_1,1479_1,1494_1,1543_1,1569_1,1585_1,1605_1,1618_1,1634_1,1692_1,2203_1,2220_1,2421_1,2428_1,2435_1,2444_1,2449_1,2464_1,2494_1,6326_1,6773_1,10072_1,12168_1,12836_1,15531_1,20135_1,20242_1,28006_1,28239_1,41056_1,1300481_1,1306240_1,1544965_1,";
	var jsAuthorizedControls = ",1,2,3,4,6,7,8,9,10,11,16,18,20,21,22,23,25,26,27,28,29,30,31,34,36,39,40,41,42,43,44,45,46,47,50,51,52,53,54,1339,1344,1349,1352,1479,1494,1543,1569,1585,1605,1618,1634,1692,2203,2220,2421,2428,2435,2444,2449,2464,2494,6326,6773,10072,12168,12836,15531,20135,20242,28006,28239,41056,1264259,1287646,1294596,1300481,1306240,1518104,1520389,1544965,1545565,1545573,1545588,1545618,1545625,1545636,";
	var jsCustomRenderHandlerPairs = "";
	var jsStandardRenderHandlers = "";
	var jsSiteSecurityCreateControls = 0;
	var jsShowRejectForApprover = 1;

	document.CS_StaticURL = "http://cspot-run2.nist.gov/";
	document.CS_DynamicURL = "http://cspot-run2.nist.gov/";
// -->

</script>
<script type="text/javascript" src="http://www.nist.gov/commonspot/javascript/browser-all.js"></script> 
<script language="JavaScript" src="http://www.nist.gov/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="http://www.nist.gov/js/swfobject.js" type="text/javascript"></script>
<script language="JavaScript" src="http://www.nist.gov/js/jquery.youtubin.js" type="text/javascript"></script>
<script language="JavaScript" src="http://www.nist.gov/js/custom.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<script language="JavaScript" src="http://www.nist.gov/js/jquery.dropdown.js" type="text/javascript"></script>
<script language="JavaScript" src="http://www.nist.gov/js/pngfix.js" type="text/javascript" defer="defer"></script>
<link href="http://www.nist.gov/style/nist-styles-ie-overrides.css" rel="stylesheet" type="text/css" media="screen" />
<![endif]-->
<meta name="DC.creator" content="US Department of Commerce, NIST" />
<meta name="DC.description" content="Engineering Laboratory Home" />
<meta name="DC.date.created" scheme="ISO8601" content="2010-09-23" />
<meta name="DC.date.reviewed" scheme="ISO8601" content="2011-01-03" />
<meta name="DC.language" scheme="DCTERMS.RFC1766" content="EN-US" />



<meta name="pagetype" content="3Column" />
<link rel="stylesheet" href="http://www.nist.gov/commonspot/commonspot.css" type="text/css" id="cs_maincss" /> 
	<script type="text/javascript" src="http://www.nist.gov/js/jquery.cycle.all.min.js"></script>
	<link rel="stylesheet" type="text/css" media="screen" href="http://www.nist.gov/style/jqbanner.css" />

			</head>

<body lang="en" class="CS_Document"><a name="__topdoc__"></a><script src="http://www.nist.gov/commonspot/pagemode/always-include-common.js" type="text/javascript"></script><script src="http://www.nist.gov/commonspot/pagemode/always-include-moz.js" type="text/javascript"></script>
<div id="base-template-wrapper" class="el">
	<div id="header-wrapper">
	<div id="meta-navigation-wrapper"> <a href="http://www.nist.gov/"> <img src="http://www.nist.gov/images/ui/NIST_logo.gif" alt="NIST logo" /> </a>

		<div id="meta-navigation-links">
			<div class="pipelistBold">
				<ul>
					<li><a href="http://www.time.gov/">NIST Time</a></li>
					<li><a href="http://www.nist.gov/">NIST Home</a></li>
					<li><a href="http://www.nist.gov/public_affairs/nandyou.cfm">About NIST</a></li>
					<li><a href="http://www.nist.gov/public_affairs/contact.cfm">Contact Us</a></li>

					<li><a href="http://www.nist.gov/alphasiteindex.cfm">A-Z Site Index</a></li>
				</ul>
			</div><!-- END class="pipelistBold" -->
		</div><!-- END id="meta-navigation-links" -->
		
		
<form method="get" action="http://www.nist.gov/search-results.cfm" name="GoogleSearchForm" id="meta-search-form" class="meta-search-form">
<input type="text" name="q" size="25" maxlength="255" value="" class="meta-search-form-input" title="search form input" />
<input type="submit" name="btng" value="Search" class="meta-search-form-button" id="searchButton" />
<input type="hidden" name="num" value="10" />
<input type="hidden" name="sortType" value="L" />
<input type="hidden" name="scopeType" value="0" />

<input type="hidden" name="datefrom" value="" />

<input type="hidden" name="dateto" value="" />
</form>
 		
	</div><!-- END id="meta-navigation-wrapper" -->
	<div id="banner-graphic-wrapper">
		
		<a href="http://www.nist.gov/el">  <img src="http://www.nist.gov/images/banner_graphics/el.jpg" height="33" width="974" alt="Engineering Laboratory (EL)" title="Engineering Laboratory (EL)" border="0" /> 
	</a>

	</div><!-- END id="banner-graphic-wrapper" -->
	<div class="pipelist" id="navigation-wrapper">

		
		
			<ul id="nav" class="dropdown dropdown-horizontal">

				<li class="dir"><a class="MenuBarItemSubmenu" href="http://www.nist.gov/el/aboutbfrl.cfm">About EL</a>
					<ul>
						<li><a href="http://www.nist.gov/el/staff_org.cfm">Staff and Organization</a></li>
						<li><a href="http://www.nist.gov/el/facilities_instruments/index.cfm">Facilities</a></li>
						<li><a href="http://www.nist.gov/el/bfrlstandards.cfm">Standards Activities</a></li>

						<li><a href="http://www.nist.gov/el/workwithus.cfm">Work With Us</a></li>

						<li><a href="http://www.nist.gov/el/careers.cfm">Careers</a></li>
						<li><a href="http://www.nist.gov/el/aboutbfrl.cfm">What We Do</a></li>
						<li><a href="http://www.nist.gov/el/contacts.cfm">Contact Us</a></li>
					</ul>
				</li>

				<li><a href="http://www.nist.gov/publication-portal.cfm">Publications</a></li>
				<li><a href="http://www.nist.gov/el/bfrl_topics.cfm">Topic/Subject Areas</a></li>

				<li class="dir"><a class="MenuBarItemSubmenu">Products/Services</a>
					<ul>
						<li><a href="http://www.nist.gov/el/bfrlris.cfm">Research Information Services</a></li>
						<li><a href="http://www.nist.gov/el/software.cfm">Software Products</a></li>

						<li><a href="http://www.nist.gov/el/newsletter.cfm">Newsletter</a></li>
						<li><a href="http://www.nist.gov/el/workwithus.cfm">Employment/Research Opportunities</a></li>

					</ul>
				</li>
				<li><a href="http://www.nist.gov/el/news.cfm">News/Multimedia</a></li>
				<li><a href="http://www.nist.gov/el/goalsprograms.cfm">Programs/Projects</a></li>

				<li><a href="http://www.nist.gov/el/events.cfm">Events</a></li>
			</ul>
			
	</div>


<div id="cs_control_1366" class="cs_control breadcrumb-wrapper">



</div></div>
<!-- end #header-wrapper -->


<div id="mtconnect content" style="padding: 0px 30px 30px 30px;">
<p>
<!-- <img src="/SMS-Testbed_logo.png" width="600" height="129"></img> -->
<h1>Smart Manufacturing Systems Test Bed</h1>
<h2>Volatile Data Stream</h2>
</p>
<p>
You are viewing the Volatile Data Stream (VDS) component of the NIST Smart Manufacturing Systems (SMS) Test Bed located in Gaithersburg MD USA. Please visit the <a href="http://smstestbed.nist.gov" target="_blank">SMS Test Bed Information Page</a> for more information.
</p>
				<p>
					<xsl:apply-templates select="/m:MTConnectStreams/m:Header" />
				</p>
				<hr/>
				<xsl:apply-templates select="/m:MTConnectStreams/m:Streams/m:DeviceStream" />
</div>

<div id="footer-wrapper">
	<table border="0" align="right" width="225">
		<tr>
			<td><br /><form method="post" action="https://service.govdelivery.com/service/multi_subscribe.html"><input value="http://www.nist.gov/" name="origin" type="hidden" /><img src="http://www.nist.gov/images/govdelivery_bubble.gif" alt="govdelivery bubble icon" title="govdelivery bubble icon" border="0" height="21" hspace="0" vspace="0" width="21" /> Sign Up for NIST E-mail alerts:<br /><input onfocus="this.value=''" value="Enter email address" name="login" id="login" title="login" type="text" /> <input value="USNIST" name="code" type="hidden" /> <input name="signupbutton" id="signupbutton" value="Go" type="submit" /></form></td>
		</tr>
	</table>
	<p>The National Institute of Standards and Technology (NIST) is an agency of the U.S. Commerce Department.</p>
	<p>
		<a href="http://www.nist.gov/public_affairs/privacy.cfm">Privacy policy / security notice / accessibility statement</a> / 
		<a href="http://www.nist.gov/public_affairs/disclaimer.cfm">Disclaimer</a> / 
		<a href="http://www.nist.gov/director/foia/">Freedom of Information Act (FOIA)</a> / 
		<br />
		<a href="http://www.nist.gov/director/civil/nofearpolicy.cfm">No Fear Act Policy</a> /
		<a href="http://www.ExpectMore.gov">ExpectMore.gov (performance of federal programs)</a> / 
		<a href="http://www.nist.gov/director/quality_standards.cfm">NIST Information Quality Standards</a> / <br />
		<a href="http://www.nist.gov/public_affairs/envpolicy.cfm">Environmental Policy Statement</a>
	</p>
	<p>
		Date created: March 17, 2016 |  Last updated: May 26, 2016
		Contact: <a href="mailto:smstestbed@nist.gov" class="bold">SMS Test Bed Coordinators</a>
	</p>

</div><!-- end #footer-wrapper -->

</div><!-- end #base-template-wrapper --><div style="display:block; clear:left; padding:0px; font-family:Verdana,Arial; font-size:10px; color:gray;"></div><script type="text/javascript">
		<!--
			var jsPageContributeMode = 'read';
			var jsPageSessionContributeMode = 'read';
			var jsPageAuthorMode = 0;
			var jsPageEditMode = 0;
			// build commonspot.csPage, used by entrance.js and onDocumentLoaded
			if(!commonspot)
				var commonspot = {};
			commonspot.csPage = {};
			commonspot.csPage.url = location.pathname + ((location.pathname.match(/.cfm/i)) ? '' : 'index.cfm'); // use index.cfm if no filename
			commonspot.csPage.id = 1558468;
			commonspot.csPage.title = 'Engineering Laboratory';
			commonspot.csPage.subsiteRoot = '/el/';
			commonspot.csPage.siteRoot = '/';
			commonspot.csPage.mode = jsPageSessionContributeMode;
			commonspot.csPage.authorok = 0;
			commonspot.csPage.showContainerUI = 0;
			commonspot.csPage.requestedVersionTimestamp = '';
			commonspot.csPage.userRights = {};
			commonspot.csPage.userRights.isLoggedIn = 0;
			commonspot.csPage.userRights.read = 1;
			commonspot.csPage.userRights.author = 0;
			commonspot.csPage.userRights.edit = 0;
			commonspot.csPage.userRights.approve = 0;
			commonspot.csPage.userRights.history = 0;
			commonspot.csPage.userRights.design = 0;
			commonspot.csPage.userRights.admin = 0;
			commonspot.csPage.userRights.subsiteAdmin = 0;
			commonspot.csPage.userRights.siteAdmin = 0;
			commonspot.csPage.userRights.userAdmin = 0;
			var doLviewRedirect;
			if(parent && parent.commonspot && parent.commonspot.lview && (!doLviewRedirect))
			{
				onPageArrival = function()
				{
					parent.commonspot.lview.currentPage.onPageArrival(commonspot.csPage.mode, commonspot.csPage.url, commonspot.csPage.id, commonspot.csPage.title, commonspot.csPage.subsiteRoot, commonspot.csPage.siteRoot);
				};
				onPageUnload = function()
				{
					parent.commonspot.lview.currentPage.onPageUnload(location.pathname + '?' + document.location.search);
				};
				parent.Spry.Utils.addEventListener(window, 'load', onPageArrival, false);
				parent.Spry.Utils.addEventListener(window, 'unload', onPageUnload, false);
			}
		
		// -->
		</script>

			</body>
	</xsl:template>
	
	<xsl:template match="m:DeviceStream">
		<h2>Device: <xsl:value-of select="@name"/>
		<xsl:text>; UUID: </xsl:text><xsl:value-of select="@uuid"/>
		</h2>
		<xsl:apply-templates select="m:ComponentStream"/>
	</xsl:template>
	
	<xsl:template match="m:Header">
		<ul>
			<xsl:for-each select="@*">
				<li>
					<xsl:value-of select="name()"/>
					<xsl:text>: </xsl:text>
					<xsl:value-of select="." />
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
	
	<xsl:template match="m:ComponentStream">
		<h3>
			<xsl:value-of select="@component" />
			<xsl:text> : </xsl:text>
			<xsl:value-of select="@name" />
		</h3>
		<xsl:apply-templates select="	m:Samples"/>
		<xsl:apply-templates select="	m:Events"/>
		<xsl:apply-templates select="	m:Condition"/>
	</xsl:template>
	
	<xsl:template match="*">
		<p><xsl:value-of select="name()"/></p>
		<table border="1px">
			<thead>
				<th>Timestamp</th><th>Type</th><th>Sub Type</th><th>Name</th><th>Id</th>
				<th>Sequence</th><th>Value</th>
			</thead>
			<tbody>
				<xsl:for-each select="*">
					<tr>
						<td><xsl:value-of select="@timestamp"/></td>
						<td><xsl:value-of select="name()"/></td>
						<td><xsl:value-of select="@subType"/></td>
						<td><xsl:value-of select="@name"/></td>
						<td><xsl:value-of select="@dataItemId"/></td>
						<td><xsl:value-of select="@sequence"/></td>
						<td><xsl:value-of select="."/></td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
	
</xsl:stylesheet>
