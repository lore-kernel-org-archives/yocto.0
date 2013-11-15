Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63381E01596
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 09:25:13 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Nov 2013 09:25:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,709,1378882800"; 
	d="scan'208,217";a="434162968"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2013 09:25:11 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 15 Nov 2013 09:25:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.67]) with mapi id
	14.03.0123.003; Fri, 15 Nov 2013 09:25:10 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Andy Gikling <agikling@lasx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: FR2 BSP Documentation On Website Error
Thread-Index: Ac7Y+Z2jmjnhrP+TRM2k+7KPy9czdgJLeUNw
Date: Fri, 15 Nov 2013 17:25:10 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F474@ORSMSX101.amr.corp.intel.com>
References: <4C79E62053892D47A6419B29F941677A6E61A994@EXMBX203A.mmeprod.cbeyond>
In-Reply-To: <4C79E62053892D47A6419B29F941677A6E61A994@EXMBX203A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: FR2 BSP Documentation On Website Error
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
X-List-Received-Date: Fri, 15 Nov 2013 17:25:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F474ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F474ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

The website has been changed.  Jeff took care of it.  Thanks for noting the=
 issue.

Best,
Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andy Gikling
Sent: Sunday, November 03, 2013 5:04 PM
To: yocto@yoctoproject.org
Subject: [yocto] FR2 BSP Documentation On Website Error

The Fish River Island 2 documentation on the Yocto Project website has an e=
rror (BSP version 9.0.0 "Dylan").

Specifically, the first section "Building the meta-fri2 BSP layer" describe=
s a step where you are to add a LICENSE_FLAGS_WHITELIST entry to your local=
.conf when trying to enable the EMGD graphics driver.

The website says to add:
LICENSE_FLAGS_WHITELIST =3D "license_emgd-driver-bin_1.10"
But in the README found in the download it says to use:
LICENSE_FLAGS_WHITELIST =3D "license_emgd-driver-bin"

The latter is correct.  This burned me for about 2 hours.  If this could be=
 fixed I'd appreciate it!

Thanks,

~Andy Gikling

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F474ORSMSX101amrcor_
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Andy, <o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The website has been c=
hanged.&nbsp; Jeff took care of it.&nbsp; Thanks for noting the issue.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best, <o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Scott<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Andy Gikling<br>
<b>Sent:</b> Sunday, November 03, 2013 5:04 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] FR2 BSP Documentation On Website Error<o:p></o:p></=
span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Fish River Island 2 documentation on the Yocto P=
roject website has an error (BSP version 9.0.0 &#8220;Dylan&#8221;).<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Specifically, the first section &#8220;Building the =
meta-fri2 BSP layer&#8221; describes a step where you are to add a LICENSE_=
FLAGS_WHITELIST entry to your local.conf when trying to enable the EMGD gra=
phics driver.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The website says to add:<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE_FLAGS_WHITELIST =3D &quot;license_emgd-drive=
r-bin_1.10&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">But in the README found in the download it says to u=
se:<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE_FLAGS_WHITELIST =3D &quot;license_emgd-drive=
r-bin&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The latter is correct.&nbsp; This burned me for abou=
t 2 hours.&nbsp; If this could be fixed I&#8217;d appreciate it!<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">~Andy Gikling<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F474ORSMSX101amrcor_--
