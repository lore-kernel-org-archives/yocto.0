Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A6EE006C3
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 01:48:42 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Feb 2013 01:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,708,1355126400"; 
	d="scan'208,217";a="290026824"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 21 Feb 2013 01:48:41 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 21 Feb 2013 09:47:40 +0000
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.15]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.135]) with mapi id
	14.01.0355.002; Thu, 21 Feb 2013 09:47:40 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Weekly Test Report for Yocto 1.4 20130213 Build
Thread-Index: Ac4QF+B4Hrv9hTgFTjyptUKo1qQxaQ==
Date: Thu, 21 Feb 2013 09:47:40 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B08DD9F0D@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Weekly Test Report for Yocto 1.4 20130213 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Feb 2013 09:48:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B08DD9F0DIRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B08DD9F0DIRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

As described in a previous mail regarding the automated real-time reports, =
here is this the report for the current weekly build:
https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.4_2013021=
3_Build

This is a static page.

Here is the status of the real-time reporting tool:
-the information in the report is extracted directly and in real-time from =
Testopia (https://wiki.yoctoproject.org/wiki/Testopia )
-pages are derived from a template for each branch (ex: for master we have =
this template: https://wiki.yoctoproject.org/wiki/QA_Status_TEMPLATE)
-the template can be changed/improved at any time
-from the template we can create reports for any build by editing it and re=
placing the TEMPLATE Test Runs with actual Test Runs from the current build=
 (using the run_id field)
-the next step will be to fully automate this report and make it extract th=
e test runs needed based on the last build inserted into Testopia. This wil=
l be fully functional in Q2. Until then I need to get as much feedback as p=
ossible on how the report should look and what information it should contai=
n.
-after automation, a wiki page will be created with usage instructions for =
this extension. Even though this extension has some documentation on the ne=
t, it is not of much use. I have heavily modified it by removing/adding fea=
tures, fields and parameters. The goal is to fully personalize it for us.

Thank you for the support ! If you have any questions or concerns, please c=
ontact me.
Regards,
Cornel


--_000_33115ABC4887814E8A92A08FBC93416B08DD9F0DIRSMSX103gercor_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">As described in a previous mail regarding the automa=
ted real-time reports, here is this the report for the current weekly build=
:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/Weekly=
_Test_Report_for_Yocto_1.4_20130213_Build">https://wiki.yoctoproject.org/wi=
ki/Weekly_Test_Report_for_Yocto_1.4_20130213_Build</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is a static page. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the status of the real-time reporting tool:<=
o:p></o:p></p>
<p class=3D"MsoNormal">-the information in the report is extracted directly=
 and in real-time from Testopia (<a href=3D"https://wiki.yoctoproject.org/w=
iki/Testopia">https://wiki.yoctoproject.org/wiki/Testopia</a> )<o:p></o:p><=
/p>
<p class=3D"MsoNormal">-pages are derived from a template for each branch (=
ex: for master we have this template:
<a href=3D"https://wiki.yoctoproject.org/wiki/QA_Status_TEMPLATE">https://w=
iki.yoctoproject.org/wiki/QA_Status_TEMPLATE</a>)<o:p></o:p></p>
<p class=3D"MsoNormal">-the template can be changed/improved at any time<o:=
p></o:p></p>
<p class=3D"MsoNormal">-from the template we can create reports for any bui=
ld by editing it and replacing the TEMPLATE Test Runs with actual Test Runs=
 from the current build (using the run_id field)<o:p></o:p></p>
<p class=3D"MsoNormal">-the next step will be to fully automate this report=
 and make it extract the test runs needed based on the last build inserted =
into Testopia. This will be fully functional in Q2. Until then I need to ge=
t as much feedback as possible on
 how the report should look and what information it should contain.<o:p></o=
:p></p>
<p class=3D"MsoNormal">-after automation, a wiki page will be created with =
usage instructions for this extension. Even though this extension has some =
documentation on the net, it is not of much use. I have heavily modified it=
 by removing/adding features, fields
 and parameters. The goal is to fully personalize it for us.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for the support ! If you have any question=
s or concerns, please contact me.<o:p></o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Cornel <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B08DD9F0DIRSMSX103gercor_--
