Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DA3E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 09:21:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2013 09:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,648,1363158000"; 
	d="scan'208,217";a="335597510"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2013 09:21:44 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 10 May 2013 17:21:44 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.198]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.205]) with mapi id
	14.01.0355.002; Fri, 10 May 2013 17:21:44 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: MediaWiki Reporting Tool usage documentation
Thread-Index: Ac5NmnVHcwb0dUnmRbqhJ2GdJwAGbQ==
Date: Fri, 10 May 2013 16:21:43 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0979D678@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: MediaWiki Reporting Tool usage documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 May 2013 16:21:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0979D678IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0979D678IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I just finished the documentation for the Mediawiki Testopia reports extens=
ion that was derived after http://www.mediawiki.org/wiki/Extension:Testopia=
_Reports . This extension is being used to generate reports for the Yocto w=
eekly and release tests since January.

Here is the link: https://wiki.yoctoproject.org/wiki/MediaWiki_Reporting_Ex=
tension

Please note that, in order to help with automating or simplifying complex r=
eport generation we currently use the extension together with the following=
 (stable and unmodified) MediaWiki extensions:
http://www.mediawiki.org/wiki/Extension:Variables
http://www.mediawiki.org/wiki/Extension:ParserFunctions

Older versions of the reports do not use these extra extensions. I suggest =
looking at those rather than the latest if you wish to understand how they =
work (the 2 above mentioned extensions complicate the syntax). Here is a li=
st of wiki pages containing reports:
https://wiki.yoctoproject.org/wiki/1.4_QA_Runs
https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Report

Automated report types:
https://wiki.yoctoproject.org/wiki/QA_Status_TEMPLATE - by editing and addi=
ng the ID for each test run in the report header it is easy to generate a f=
ull status report (this report is semi-automated)
https://wiki.yoctoproject.org/wiki/1.3_QA_Status - by editing it and adding=
 values to the filtering parameters (build, testplan, test_date, test_type)=
 a report is generated. There is also a system for selecting what elements =
the report should contain. (this report is fully automated when test_date=
=3Dmax is used)


If you find any issues or have any questions regarding the reports plugin o=
r the reports themselves, please don't hesitate to contact me.

Regards,
Stoicescu Corneliu Nicolae
Romania Yocto QA


--_000_33115ABC4887814E8A92A08FBC93416B0979D678IRSMSX103gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I just finished the documentation for the Mediawiki =
Testopia reports extension that was derived after
<a href=3D"http://www.mediawiki.org/wiki/Extension:Testopia_Reports">http:/=
/www.mediawiki.org/wiki/Extension:Testopia_Reports</a> . This extension is =
being used to generate reports for the Yocto weekly and release tests since=
 January.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the link: <a href=3D"https://wiki.yoctoproje=
ct.org/wiki/MediaWiki_Reporting_Extension">
https://wiki.yoctoproject.org/wiki/MediaWiki_Reporting_Extension</a><o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please note that, in order to help with automating o=
r simplifying complex report generation we currently use the extension toge=
ther with the following (stable and unmodified) MediaWiki extensions:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.mediawiki.org/wiki/Extension:V=
ariables">http://www.mediawiki.org/wiki/Extension:Variables</a><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><a href=3D"http://www.mediawiki.org/wiki/Extension:P=
arserFunctions">http://www.mediawiki.org/wiki/Extension:ParserFunctions</a>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Older versions of the reports do not use these extra=
 extensions. I suggest looking at those rather than the latest if you wish =
to understand how they work (the 2 above mentioned extensions complicate th=
e syntax). Here is a list of wiki
 pages containing reports:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/1.4_QA=
_Runs">https://wiki.yoctoproject.org/wiki/1.4_QA_Runs</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_=
1.4_Milestone_Test_Report">https://wiki.yoctoproject.org/wiki/Yocto_1.4_Mil=
estone_Test_Report</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Automated report types:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/QA_Sta=
tus_TEMPLATE">https://wiki.yoctoproject.org/wiki/QA_Status_TEMPLATE</a> - b=
y editing and adding the ID for each test run in the report header it is ea=
sy to generate a full status report
 (this report is semi-automated) <o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/1.3_QA=
_Status">https://wiki.yoctoproject.org/wiki/1.3_QA_Status</a> - by editing =
it and adding values to the filtering parameters (build, testplan, test_dat=
e, test_type) a report is generated.
 There is also a system for selecting what elements the report should conta=
in. (this report is fully automated when test_date=3Dmax is used)<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you find any issues or have any questions regardi=
ng the reports plugin or the reports themselves, please don&#8217;t hesitat=
e to contact me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Corneliu Nicolae<o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0979D678IRSMSX103gercor_--
