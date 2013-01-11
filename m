Return-Path: <christopher.a.thornburg@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4644FE004D1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 14:06:42 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Jan 2013 14:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,455,1355126400"; 
	d="scan'208,217";a="190324320"
Received: from fmsmsx106.amr.corp.intel.com ([10.19.9.37])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Jan 2013 14:06:41 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.19.17.7) by
	FMSMSX106.amr.corp.intel.com (10.19.9.37) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 11 Jan 2013 14:06:40 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.247]) by
	FMSMSX153.amr.corp.intel.com ([169.254.11.130]) with mapi id
	14.01.0355.002; Fri, 11 Jan 2013 14:06:39 -0800
From: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enabling shared state mirrors
Thread-Index: Ac3wRxrrF4rW1SVQTZSHsIwDIem33g==
Date: Fri, 11 Jan 2013 22:06:39 +0000
Message-ID: <752F65977A748344A01D69BF22DCDBAE3357F1D4@FMSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Enabling shared state mirrors
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
X-List-Received-Date: Fri, 11 Jan 2013 22:06:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_752F65977A748344A01D69BF22DCDBAE3357F1D4FMSMSX101amrcor_"

--_000_752F65977A748344A01D69BF22DCDBAE3357F1D4FMSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Struggling to get shared state mirrors to work. I can see files with the sa=
me file name (and therefore the same hash) in my mirror and, after a build,=
 in my local sstate cache direcotry. Ala:
/storage/yocto-cache/sstate-toolchain/Ubuntu-10.04/95/sstate-bzip2-native-i=
686-linux-1.0.6-r5-i686-2-95b6058a3f3f35386c8593e8447c59da_populate-lic.tgz=
.siginfo
and
<build dir>/sstate-cache/Ubuntu-10.04/95/sstate-bzip2-native-i686-linux-1.0=
.6-r5-i686-2-95b6058a3f3f35386c8593e8447c59da_populate-lic.tgz.siginfo

bitbake-diffsigs confirms that the signatures match. I have the following i=
n my local.conf:
SSTATE_MIRRORS ?=3D "\
file://.* file:///storage/yocto-cache/sstate-toolchain/PATH \
file://.* file:///storage/yocto-cache/sstate-kernel/PATH<file:///\\storage\=
yocto-cache\sstate-kernel\PATH>"

...and yet bitbake insists on rebuilding everything every time. I had this =
working yesterday, and today it fails again.

Any suggestions?


--_000_752F65977A748344A01D69BF22DCDBAE3357F1D4FMSMSX101amrcor_
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
<p class=3D"MsoNormal">Struggling to get shared state mirrors to work. I ca=
n see files with the same file name (and therefore the same hash) in my mir=
ror and, after a build, in my local sstate cache direcotry. Ala:<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">/storage/yocto-cache/ssta=
te-toolchain/Ubuntu-10.04/95/sstate-bzip2-native-i686-linux-1.0.6-r5-i686-2=
-95b6058a3f3f35386c8593e8447c59da_populate-lic.tgz.siginfo<o:p></o:p></p>
<p class=3D"MsoNormal">and<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;build dir&gt;/sstate-=
cache/Ubuntu-10.04/95/sstate-bzip2-native-i686-linux-1.0.6-r5-i686-2-95b605=
8a3f3f35386c8593e8447c59da_populate-lic.tgz.siginfo<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake-diffsigs confirms that the signatures match.=
 I have the following in my local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">SSTATE_MIRRORS ?=3D &quot=
;\<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">file://.* file:///storage=
/yocto-cache/sstate-toolchain/PATH \<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">file://.* <a href=3D"file=
:///\\storage\yocto-cache\sstate-kernel\PATH">
file:///storage/yocto-cache/sstate-kernel/PATH</a>&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;and yet bitbake insists on rebuilding everyth=
ing every time. I had this working yesterday, and today it fails again.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_752F65977A748344A01D69BF22DCDBAE3357F1D4FMSMSX101amrcor_--
