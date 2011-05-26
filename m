Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8D3B4C804F7
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 17:50:09 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 May 2011 15:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,276,1304319600"; d="scan'208,217";a="5582447"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 26 May 2011 15:50:09 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 May 2011 15:50:09 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Thu, 26 May 2011 15:50:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 26 May 2011 15:50:07 -0700
Thread-Topic: Yocto Bug Triage call for action
Thread-Index: Acwb9z3NxrZmJcN/QKm3geKRyDqeIw==
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9501179BD704@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto Bug Triage call for action
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
X-List-Received-Date: Thu, 26 May 2011 22:50:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9AFCD584B0B67B48AE8D8585BE30BA9501179BD704orsmsx504amrc_"

--_000_9AFCD584B0B67B48AE8D8585BE30BA9501179BD704orsmsx504amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,



The Yocto bug triage team did bug scrub and the following 2 bugs are identi=
fied as critical major which means they need to be fixed ASAP for the upcom=
ing 1.1 M1 release.



1100 - [emenlow/crownbay-noemgd] X window could not start up with sato-sdk =
image (Tom, Dexuan, Darren)

1108 - keyboard could not work in qemux86/x86-64 (Saul, Ke)



So people that are working on these bugs , please make sure leave enough in=
formation for your current investigation/debugging by EOD your time so the =
next person in a different time zone can easily pickup the context and cont=
inue working on the fix.



Thanks,

Jessica


--_000_9AFCD584B0B67B48AE8D8585BE30BA9501179BD704orsmsx504amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Yocto bug triage team did bug scrub and the foll=
owing 2 bugs are identified as critical major which means they need to be f=
ixed ASAP for the upcoming 1.1 M1 release.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1100 &#8211; [emenlow/crownbay-noemgd] X window coul=
d not start up with sato-sdk image (Tom, Dexuan, Darren)<o:p></o:p></p>
<p class=3D"MsoNormal">1108 &#8211; keyboard could not work in qemux86/x86-=
64 (Saul, Ke)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So people that are working on these bugs , please ma=
ke sure leave enough information for your current investigation/debugging b=
y EOD your time so the next person in a different time zone can easily pick=
up the context and continue working
 on the fix.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jessica<o:p></o:p></p>
</div>
</body>
</html>

--_000_9AFCD584B0B67B48AE8D8585BE30BA9501179BD704orsmsx504amrc_--
