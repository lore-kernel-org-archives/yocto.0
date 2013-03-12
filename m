Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C65E01342
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 07:48:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2013 07:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,830,1355126400"; 
	d="scan'208,217";a="304757038"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 12 Mar 2013 07:48:26 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.198]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.19]) with mapi id
	14.01.0355.002; Tue, 12 Mar 2013 14:47:30 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Full Pass Test Report for Yocto 1.3.1 RC2 20130301-2 Build
Thread-Index: Ac4fMEOg6Q6Kc+SbQDGfTm0faxtymQ==
Date: Tue, 12 Mar 2013 14:47:29 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B08DEE826@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Full Pass Test Report for Yocto 1.3.1 RC2 20130301-2 Build
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
X-List-Received-Date: Tue, 12 Mar 2013 14:48:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B08DEE826IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B08DEE826IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is this the report for the 1.3.1 RC2 danny build:
https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.3.1_RC=
2_201303012_Build

NOTE: This is a follow-up full pass for 1.3.1 RC1 and contains some shared =
results based on what was not changed in the added commits. The following t=
est runs ware remade: core build system, atom-pc, ADT, HOB.

Please send us feedback regarding what you like/don't like in this new repo=
rting style.

The current status of the real-time reporting tool:
-The template used for each build is located at: https://wiki.yoctoproject.=
org/wiki/QA_Status_TEMPLATE
-The report is generated from the template, replacing the template (placeho=
lder) test runs with actual test run numbers from Testopia (https://wiki.yo=
ctoproject.org/wiki/Testopia )
-NEW: a new summary report is in the works all will be ready this week. Thi=
s will be used in the milestone reporting page: https://wiki.yoctoproject.o=
rg/wiki/Yocto_1.4_Milestone_Test_Report

Thank you for the support ! If you have any questions or concerns, please c=
ontact me or my team.
Regards,
Cornel


--_000_33115ABC4887814E8A92A08FBC93416B08DEE826IRSMSX103gercor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">H</span>ere is this th=
e report for the
<span style=3D"color:#1F497D">1.3.1 RC</span><span style=3D"color:#1F497D">=
2</span><span style=3D"color:#1F497D"> danny</span> build:<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"https://wik=
i.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.3.1_RC2_201303012=
_Build">https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_=
1.3.1_RC2_201303012_Build</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: </span><span sty=
le=3D"color:#1F497D">This is a</span><span style=3D"color:#1F497D"> follow-=
up full pass
</span><span style=3D"color:#1F497D">for 1.3.1 RC1 and contains some shared=
 results based on what was not changed in the added commits. The following =
test runs ware remade: core build system, atom-pc, ADT, HOB.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please send us feedbac=
k regarding what you like/don&#8217;t like in this new reporting style.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The current status of =
the real-time reporting tool:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-The template used for=
 each build is located at</span>:
<a href=3D"https://wiki.yoctoproject.org/wiki/QA_Status_TEMPLATE">https://w=
iki.yoctoproject.org/wiki/QA_Status_TEMPLATE</a><o:p></o:p></p>
<p class=3D"MsoNormal">-The report is generated from the template, replacin=
g the template (placeholder) test runs with actual test run numbers from Te=
stopia (<a href=3D"https://wiki.yoctoproject.org/wiki/Testopia">https://wik=
i.yoctoproject.org/wiki/Testopia</a>
 )<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-NEW: a new summary re=
port is in the works all will be ready this week. This will be used in the =
milestone reporting page:
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Repo=
rt">https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Report</a><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Thank you for the support ! If you have any question=
s or concerns, please contact me<span style=3D"color:#1F497D"> or my team</=
span>.<o:p></o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Cornel <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B08DEE826IRSMSX103gercor_--
