<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:m="urn:mtconnect.org:MTConnectDevices:1.3" >
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
			<head>
		<title>NIST SMS Test Bed: Device Streams</title>
		<meta name="Description" id="Description" content="Test Web Page" />
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="Keywords" id="Keywords" content="" />
		<link type="text/css" href="https://smstestbed.nist.gov/styles/Streams.css" media="screen" rel="stylesheet"/>
               <link rel="stylesheet" href="https://smstestbed.nist.gov/css/nist_base.css"/>
               <link rel="stylesheet" href="https://smstestbed.nist.gov/css/nist_header.css"/>
               <script src="https://smstestbed.nist.gov/js/jquery-1.9.0.min.js" type="text/javascript"/>
               <script src="https://smstestbed.nist.gov/js/nist-header.js" type="text/javascript"/>
	</head>
			<body>
			              <header class="nist-header nist-header--bar" id="nist-header" role="banner">
        <div class="nist-header__inner clearfix">

          <div class="nist-header__logo">
            <a href="https://www.nist.gov/" title="National Institute of Standards and Technology" class="nist-header__logo-link" rel="home">
		    <img src="https://smstestbed.nist.gov/images/svg/nist_logo_reverse.svg" onerror="this.src='https://smstestbed.nist.gov/images/nist_logo_reverse.png'" alt="National Institute of Standards and Technology"/>
            </a>
          </div>

          <div class="nist-header__search" role="search">
            <form accept-charset="UTF-8" action="https://find.nist.gov/search?affiliate=nist-search" id="nist-search" method="get">
	      <input name="utf8" type="hidden" value="true"/>
	      <input id="affiliate" name="affiliate" type="hidden" value="nist-search"/>
              <label class="element-invisible" for="query">Search</label>
	      <input autocomplete="off" class="usagov-search-autocomplete" id="query" name="query" type="text" size="15" maxlength="128" placeholder="Search NIST"/>
              <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
	      <input type="submit" id="edit-submit" name="commit" value="Search" class="form-submit"/>
              <button type="submit" id="edit-submit-btn" name="op" class="form-submit">
                <span class="element-invisible">Search</span>
                <i class="fa fa-search"></i>
              </button>
            </form>
          </div>

        </div> <!--End header content-->

        <div class="nist-header__nav-wrapper">
          <div class="nist-header__nav nist-header__nav--mini" role="navigation">
            <div class="nist-header__nav-toggle-wrapper clearfix">
              <a href="#" class="nist-header__nav-toggle"><span class="fa fa-bars"></span> NIST Menu</a>
            </div>
            <div class="nist-header__nav-inner clearfix">
              <ul class="nist-menu">

                <!--Topics-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/topics" class="nist-menu__link">Topics<span class="expander fa fa-minus"><span class="element-invisible">Expand or Collapse</span></span></a>
                  <div class="nist-menu__submenu">
                    <ul class="nist-menu">
                      <div class="nist-menu__column-container has-three-columns">
                        <span tabindex="0" class="nist-menu__close">Close</span>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2 ">
                            <a href="https://www.nist.gov/topics/advanced-communications" class="nist-menu__link">Advanced Communications</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/bioscience" class="nist-menu__link">Bioscience</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/buildings-and-construction" class="nist-menu__link">Buildings and Construction</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/chemistry" class="nist-menu__link">Chemistry</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/disaster-resilience" class="nist-menu__link">Disaster Resilience</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/electronics" class="nist-menu__link">Electronics</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/energy" class="nist-menu__link">Energy</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/environment" class="nist-menu__link">Environment</a>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/fire" class="nist-menu__link">Fire</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/forensic-science" class="nist-menu__link">Forensic Science</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/health" class="nist-menu__link">Health</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/information-technology" class="nist-menu__link">Information technology</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/manufacturing" class="nist-menu__link">Manufacturing</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/mathematics-and-statistics" class="nist-menu__link">Mathematics and Statistics</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/metrology" class="nist-menu__link">Metrology</a>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2 nist-menu__column-break ">
                            <a href="https://www.nist.gov/topics/nanotechnology" class="nist-menu__link">Nanotechnology</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/neutron-research" class="nist-menu__link">Neutron research</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/performance-excellence" class="nist-menu__link">Performance Excellence</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/physics" class="nist-menu__link">Physics</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/public-safety" class="nist-menu__link">Public safety</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/standards" class="nist-menu__link">Standards</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/transportation" class="nist-menu__link">Transportation</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/topics/cybersecurity" class="nist-menu__link">Cybersecurity</a>
                          </li>
                        </div>
                      </div>
                    </ul>
                  </div>
                </li>

                <!--Publications-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/publications" class="nist-menu__link">Publications</a>
                </li>

                <!--Labs and Major Programs-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/labs-major-programs" class="nist-menu__link">Labs &amp; Major Programs<span class="expander fa fa-minus"><span class="element-invisible">Expand or Collapse</span></span></a>
                  <div class="nist-menu__submenu">
                    <ul class="nist-menu">
                      <div class="nist-menu__column-container has-three-columns">
                        <span tabindex="0" class="nist-menu__close">Close</span>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/labs-major-programs/laboratories" class="nist-menu__link">Laboratories</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/ctl" class="nist-menu__link">Communications Technology Laboratory</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/el" class="nist-menu__link">Engineering Laboratory</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/itl" class="nist-menu__link">Information Technology Laboratory</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/mml" class="nist-menu__link">Material Measurement Laboratory</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/pml" class="nist-menu__link">Physical Measurement Laboratory</a>
                              </li>
                            </ul>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/laboratories/user-facilities" class="nist-menu__link">User Facilities</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/cnst" class="nist-menu__link">Center for Nanoscale Science and Technology</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/ncnr" class="nist-menu__link">NIST Center for Neutron Research</a>
                              </li>
                            </ul>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/labs-major-programs/research-test-beds" class="nist-menu__link">Research Test Beds</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/laboratories/projects-programs" class="nist-menu__link">Research Projects</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/laboratories/tools-instruments" class="nist-menu__link">Tools &amp; Instruments</a>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/labs-major-programs/major-programs" class="nist-menu__link">Major Programs</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/advanced-manufacturing-office" class="nist-menu__link">Advanced Manufacturing Office</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/baldrige" class="nist-menu__link">Baldrige Performance Excellence Program</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/mep" class="nist-menu__link">Manufacturing Extension Partnership (MEP)</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/spo" class="nist-menu__link">Special Programs Office</a>
                              </li>
                            </ul>
                          </li>
                        </div>
                      </div>
                    </ul>
                  </div>
                </li>

                <!--Labs and Major Programs-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/services-resources" class="nist-menu__link">Services &amp; Resources<span class="expander fa fa-minus"><span class="element-invisible">Expand or Collapse</span></span></a>
                  <div class="nist-menu__submenu">
                    <ul class="nist-menu">
                      <div class="nist-menu__column-container has-two-columns">
                        <span tabindex="0" class="nist-menu__close">Close</span>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/services-resources/standards-and-measurements" class="nist-menu__link">Standards and Measurements</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/calibrations" class="nist-menu__link">Calibration Services</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/nvlap" class="nist-menu__link">Laboratory Accreditation (NVLAP)</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/nist-quality-system" class="nist-menu__link">Quality System</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/srm" class="nist-menu__link">Standard Reference Materials (SRMs)</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/standardsgov" class="nist-menu__link">Standards.gov</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/pml/time-and-frequency-division/time-services" class="nist-menu__link">Time Services</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/pml/weights-and-measures" class="nist-menu__link">Office of Weights and Measures</a>
                              </li>
                            </ul>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/services-resources/software" class="nist-menu__link">Software</a>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/data" class="nist-menu__link">Data</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="http://webbook.nist.gov/chemistry/" class="nist-menu__link">Chemistry WebBook</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="http://csrc.nist.gov/groups/SNS/nvd" class="nist-menu__link">National Vulnerability Database</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/pml/productsservices/physical-reference-data" class="nist-menu__link">Physical Reference Data</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/srd" class="nist-menu__link">Standard Reference Data (SRDs)</a>
                              </li>
                            </ul>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="http://csrc.nist.gov/" class="nist-menu__link">Computer Security Resource Center (CSRC)</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="http://tsapps.nist.gov/techtransfer" class="nist-menu__link">License &amp; Patents</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/nist-research-library" class="nist-menu__link">NIST Research Library</a>
                          </li>
                        </div>
                      </div>
                    </ul>
                  </div>
                </li>

                <!--News and Events-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/news-events" class="nist-menu__link">News &amp; Events<span class="expander fa fa-minus"><span class="element-invisible">Expand or Collapse</span></span></a>
                  <div class="nist-menu__submenu has-one-column">
                    <ul class="nist-menu">
                      <div class="nist-menu__column-container has-one-column">
                        <span tabindex="0" class="nist-menu__close">Close</span>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/news-events/news" class="nist-menu__link">News</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/news-events/events" class="nist-menu__link">Events</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/news-events/news/blogs" class="nist-menu__link">Blogs</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/news-events/image-gallery" class="nist-menu__link">Image Gallery</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/news-events/video-gallery" class="nist-menu__link">Video Gallery</a>
                          </li>
                        </div>
                      </div>
                    </ul>
                  </div>
                </li>

                <!--About NIST-->
                <li class="nist-menu__item nist-menu__item--depth-1">
                  <a href="https://www.nist.gov/about-nist" class="nist-menu__link">About NIST<span class="expander fa fa-minus"><span class="element-invisible">Expand or Collapse</span></span></a>
                  <div class="nist-menu__submenu">
                    <ul class="nist-menu">
                      <div class="nist-menu__column-container has-two-columns">
                        <span tabindex="0" class="nist-menu__close">Close</span>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/about-nist/contact-us" class="nist-menu__link">Contact Us</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/pba/nist-visitor-information" class="nist-menu__link">Visit</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/about-nist/our-organization" class="nist-menu__link">Our Organization</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/about-nist/our-organization/mission-vision-values" class="nist-menu__link">Mission, Vision &amp; Values</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/director/nist-organizational-chart" class="nist-menu__link">Organization Chart</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/director" class="nist-menu__link">Office of the Director</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/about-nist/our-organization/locations" class="nist-menu__link">Locations</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/about-nist/our-organization/people" class="nist-menu__link">People</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="https://www.nist.gov/about-nist/our-organization/budget-planning" class="nist-menu__link">Budget &amp; Planning</a>
                              </li>
                            </ul>
                          </li>
                        </div>
                        <div class="nist-menu__column">
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/about-us/nist-awards" class="nist-menu__link">Awards</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/about-nist/work-nist" class="nist-menu__link">Work with NIST</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/office-acquisition-and-agreements-management-oaam/grants-management-division/nist-program" class="nist-menu__link">Funding Opportunities</a>
                          </li>
                          <li class="nist-menu__item nist-menu__item--depth-2">
                            <a href="https://www.nist.gov/timeline" class="nist-menu__link">History</a>
                            <ul class="nist-menu">
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="http://nistdigitalarchives.contentdm.oclc.org/" class="nist-menu__link">IST Digital Archives</a>
                              </li>
                              <li class="nist-menu__item nist-menu__item--depth-3">
                                <a href="http://museum.nist.gov" class="nist-menu__link">NIST Museum</a>
                              </li>
                            </ul>
                          </li>
                        </div>
                      </div>
                    </ul>
                  </div>
                </li>
                <!--End Main Menu items-->

              </ul>
            </div>
          </div>
        </div>
      </header>
			<div id="mtconnect content" style="padding: 0px 30px 30px 30px;">
			<p>
			<!-- <img src="/SMS-Testbed_logo.png" width="600" height="129"></img> -->
			<h1>Smart Manufacturing Systems Test Bed</h1>

			<h2>Volatile Data Stream: Devices</h2>
			</p>
			<p>
				You are viewing the Volatile Data Stream (VDS) component of the NIST Smart Manufacturing Systems (SMS) Test Bed located in Gaithersburg MD USA. Please visit the <a href="http://smstestbed.nist.gov" target="_blank">SMS Test Bed Information Page</a> for more information.
			</p>
				<p>
					<xsl:apply-templates select="/m:MTConnectDevices/m:Header" />
				</p>
				<hr/>
				<xsl:apply-templates select="/m:MTConnectDevices/m:Devices/m:Device" />
			</div>
		<div id="footer-wrapper">
	<table border="0" align="right" width="225">
		<tr>
			<td><br /><form method="post" action="https://service.govdelivery.com/service/multi_subscribe.html"><input value="http://www.nist.gov/" name="origin" type="hidden" /><img src="http://csrc.nist.gov/publications/govdelivery_bubble.gif" alt="govdelivery bubble icon" title="govdelivery bubble icon" border="0" height="21" hspace="0" vspace="0" width="21" /> Sign Up for NIST E-mail alerts:<br /><input onfocus="this.value=''" value="Enter email address" name="login" id="login" title="login" type="text" /> <input value="USNIST" name="code" type="hidden" /> <input name="signupbutton" id="signupbutton" value="Go" type="submit" /></form></td>
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
		Date created: March 17, 2016 |  Last updated: September 28, 2016
		Contact: <a href="mailto:smstestbed@nist.gov" class="bold">SMS Test Bed Coordinators</a>
	</p>

</div><!-- end #footer-wrapper -->
			</body>
	</xsl:template>
	
	<xsl:template match="m:Device">
		<h2>Device: <xsl:value-of select="@name"/>
		<xsl:text>; UUID: </xsl:text><xsl:value-of select="@uuid"/>
		</h2>
		<xsl:apply-templates select="m:Description"/>
		<xsl:apply-templates select="m:DataItems"/>
		<xsl:apply-templates select="m:Components">
			<xsl:with-param name="depth" select="1" />
		</xsl:apply-templates>
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
	
	<xsl:template match="m:Description">
		<ul>
			<xsl:for-each select="@*">
				<li>
					<xsl:value-of select="name()"/>
					<xsl:text>: </xsl:text>
					<xsl:value-of select="." />
				</li>
			</xsl:for-each>
			<li><xsl:value-of select="text()"/></li>
		</ul>		
	</xsl:template>
	
	<xsl:template match="m:DataItems">
		<table class="data-item">
			<thead>
				<tr><th>Category</th><th>Type</th><th>Sub Type</th><th>Id</th><th>Name</th>
					 <th>Units</th><th>Native Units</th><th>Representation</th><th>Sample Rate</th><th>Native Scale</th><th>Statistic</th></tr>
			</thead>
			<tbody>				
				<xsl:for-each select="./m:DataItem">
					<tr>
						<td><xsl:value-of select="@category" /></td>
						<td><xsl:value-of select="@type" /></td>
						<td><xsl:value-of select="@subType" /></td>
						<td><xsl:value-of select="@id" /></td>
						<td><xsl:value-of select="@name" /></td>
						<td><xsl:value-of select="@units" /></td>
						<td><xsl:value-of select="@nativeUnits" /></td>
						<td><xsl:value-of select="@representation" /></td>
						<td><xsl:value-of select="@sampleRate" /></td>
						<td><xsl:value-of select="@nativeScale" /></td>
						<td><xsl:value-of select="@statistic" /></td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
	
	<xsl:template match="m:Components">
		<xsl:param name="depth"/>
		<ul>
			<xsl:for-each select="./*">
				<li>
					<h3><xsl:value-of select="name()"/><xsl:text>: </xsl:text><xsl:value-of select="@name" /><xsl:text> (</xsl:text><xsl:value-of select="@nativeName"/><xsl:text>)</xsl:text></h3>
					<xsl:apply-templates select="m:Description"/>
					<xsl:apply-templates select="m:DataItems"/>
					<xsl:apply-templates select="m:Components">
						<xsl:with-param name="depth" select="$depth+1" />
					</xsl:apply-templates>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
	
</xsl:stylesheet>
