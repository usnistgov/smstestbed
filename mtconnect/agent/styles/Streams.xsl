<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:m="urn:mtconnect.org:MTConnectStreams:1.3" >
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<head>
			<title>NIST SMS Test Bed: Volatile Data Stream</title>
			<meta name="Description" id="Description" content="Test Web Page" />
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
			<meta name="Keywords" id="Keywords" content="manufacturing, data, MTConnect, QIF, design">
			<link rel="stylesheet" href="https://pages.nist.gov/nist-header-footer/css/nist-combined.css">
			<script src="https://pages.nist.gov/nist-header-footer/js/jquery-1.9.0.min.js" type="text/javascript" defer="defer"></script>
			<script src="https://pages.nist.gov/nist-header-footer/js/nist-header-footer.js" type="text/javascript" defer="defer"></script>
			<!-- DAP Analytics -->
			<script type="text/javascript" id="_fed_an_ua_tag" src="https://dap.digitalgov.gov/Universal-Federated-Analytics-Min.js?agency=DOC&subagency=NIST&pua=UA-102226507-7&yt=true&exts=ppsx,pps,f90,sch,rtf,wrl,txz,m1v,xlsm,msi,xsd,f,tif,eps,mpg,xml,pl,xlt,c"></script>
		</head>

		<div id="main" class="nist-main">
			<div id="mtconnect content" style="padding: 0px 30px 30px 30px;">
				<p>
				<!-- <img src="/SMS-Testbed_logo.png" width="600" height="129"></img> -->
				<h1>Smart Manufacturing Systems Test Bed</h1>

				<h2>Volatile Data Stream: Streams</h2>
				</p>
				<p>
					You are viewing the Volatile Data Stream (VDS) component of the NIST Smart Manufacturing Systems (SMS) Test Bed located in Gaithersburg MD USA. Please visit the <a href="http://smstestbed.nist.gov" target="_blank">SMS Test Bed Information Page</a> for more information.
				</p>
				<p>
					<xsl:apply-templates select="/m:MTConnectStreams/m:Header" />
				</p>
				<hr style="color: black;background-color: black;height: 4px;" />
				<xsl:apply-templates select="/m:MTConnectStreams/m:Streams/m:DeviceStream" />
				<p>	Date created: March 17, 2016 | Last updated: November 21, 2018 | Contact: <a href="mailto:smstestbed@nist.gov" class="bold">SMS Test Bed Coordinators</a></p>
			</div>
		</div>
		</body>
	</xsl:template>
	
	<xsl:template match="m:DeviceStream">
		<h2>Device: <xsl:value-of select="@name"/>
		<xsl:text>; UUID: </xsl:text><xsl:value-of select="@uuid"/>
		</h2>
		<xsl:apply-templates select="m:ComponentStream"/>
		<div style="height:50px;"></div>
		<hr style="color: black;background-color: black;height: 4px;" />
		<div style="height:10px;"></div>
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

