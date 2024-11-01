<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>XML Sitemap</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<style type="text/css">
					body {
						font-family:"Lucida Grande","Lucida Sans Unicode",Tahoma,Verdana;
						font-size:13px;
					}
					
					#intro {
						background-color:#63AAEF;
						border:1px #18385A solid;
						padding:5px 13px 5px 13px;
						margin:10px;
					}
					
					#intro p {
						line-height:	16.8667px;
					}
					
					td {
						font-size:11px;
					}
					
					th {
						text-align:left;
						padding-right:30px;
						font-size:11px;
					}
					
					tr.high {
						background-color:whitesmoke;
					}
					
					#footer {
						padding:2px;
						margin:10px;
						font-size:8pt;
						color:gray;
					}
					
					#footer a {
						color:gray;
					}
					
					a {
						color:black;
					}
				</style>
			</head>
			<body>
				<h1>XML Sitemap</h1>
				<div id="intro">
					<p>
						This <a href="http://sitemaps.org">XML Sitemap Index</a> is designed for search engines and crawlers such as <a href="http://www.google.com">Google</a>, <a href="http://www.bing.com/">BING</a> and <a href="http://www.yahoo.com">YAHOO</a>.<br />
						It was generated with the <a href="http://www.strictly-software.com/plugins/strictly-google-sitemap/" title="Strictly Google Sitemaps designed with performance in mind for high traffic Wordpress sites">Strictly Google Sitemap Plugin</a> which has been developed specifically for Wordpress blogs that require high performance, low memory footprints and minimal network traffic.											
					</p>
				</div>
				<div id="content">
					<table cellpadding="5">
						<tr style="border-bottom:1px black solid;">
							<th>Sitemap</th>							
							<th>Last Changed</th>
						</tr>
						<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
						<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
						<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
							<tr>
								<xsl:if test="position() mod 2 != 1">
									<xsl:attribute  name="class">high</xsl:attribute>
								</xsl:if>
								<td>
									<xsl:variable name="itemURL">
										<xsl:value-of select="sitemap:loc"/>
									</xsl:variable>
									<a href="{$itemURL}">
										<xsl:value-of select="sitemap:loc"/>
									</a>
								</td>								
								<td>
									<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				<div id="footer">
					Generated with <a href="http://www.strictly-software.com/plugins/strictly-google-sitemap/" title="Strictly Google Sitemap Plugin for WordPress">Google Sitemap Generator Plugin for WordPress</a> by <a href="http://blog.strictly-software.com/">Rob Reid</a>. This XSLT template is released under GPL.
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>