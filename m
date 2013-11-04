Return-Path: <agikling@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBAE7E016E3
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 17:04:21 -0800 (PST)
X-SBRS: 5.2
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx02bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhQCANzxdlIyFB4LmGdsb2JhbABZgkMjWVO/T4EwDgEBAQEBCAkNBxQhB4InBS1eAQweViYBBBuHeQEEnEWhCo8ng1iBDgOtOYIq
X-IronPort-AV: E=Sophos;i="4.93,628,1378872000"; d="scan'208,217";a="72637155"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 03 Nov 2013 20:04:20 -0500
Received: from EXMBX203A.mmeprod.cbeyond ([fe80::5407:bff7:b5c8:4633]) by
	EXHUB101.mmeprod.cbeyond ([::1]) with mapi id 14.03.0123.003;
	Sun, 3 Nov 2013 20:04:20 -0500
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FR2 BSP Documentation On Website Error
Thread-Index: Ac7Y+Z2jmjnhrP+TRM2k+7KPy9czdg==
Date: Mon, 4 Nov 2013 01:04:19 +0000
Message-ID: <4C79E62053892D47A6419B29F941677A6E61A994@EXMBX203A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.131.134.98]
MIME-Version: 1.0
Subject: FR2 BSP Documentation On Website Error
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
X-List-Received-Date: Mon, 04 Nov 2013 01:04:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4C79E62053892D47A6419B29F941677A6E61A994EXMBX203Ammepro_"

--_000_4C79E62053892D47A6419B29F941677A6E61A994EXMBX203Ammepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_4C79E62053892D47A6419B29F941677A6E61A994EXMBX203Ammepro_
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
</body>
</html>

--_000_4C79E62053892D47A6419B29F941677A6E61A994EXMBX203Ammepro_--
