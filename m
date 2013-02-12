Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0905FE006AD
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 15:47:26 -0800 (PST)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx08bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AlwBACjUGlEyFB4LmWdsb2JhbABEgkkjvhcOAQEBAQEICwsHFCeCIQUtXgEqViYBBBuICgGeV5EVkAKRJGEDqX2CJw
X-IronPort-AV: E=Sophos;i="4.84,652,1355115600"; d="scan'208,217";a="7952623"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 12 Feb 2013 18:47:25 -0500
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB101.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Tue, 12 Feb 2013 18:47:21 -0500
From: David Mulder <dmulder@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building uio-pci-generic  into core-image-minimal
Thread-Index: Ac4Je0VK0p5tUgoGRH+vZRb53O1pcA==
Date: Tue, 12 Feb 2013 23:47:20 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E501346EB2@EXMBX202A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Subject: Building uio-pci-generic into core-image-minimal
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
X-List-Received-Date: Tue, 12 Feb 2013 23:47:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_19F0379280417C4A8FE3BD23AA7298E501346EB2EXMBX202Ammepro_"

--_000_19F0379280417C4A8FE3BD23AA7298E501346EB2EXMBX202Ammepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I need to use the uio-pci-generic kernel module, but I don't know how to ma=
ke it available in my image.

Yocto 1.3, core-image-minimal, did 'bitbake linux-yocto -c menuconfig' and =
added "Generic driver for PCI 2.3". It took a while to bitbake core-image-m=
inimal after that change, and I saw uio-pci-generic.o, so I assume it rebui=
lt the kernel and built the module, but I don't see any traces of the modul=
e in my image ('find / -name *uio*', /sys/class/uio or /sys/bus/pci/drivers=
/uio-pci-generic).

I added uio and uio-pci-generic to a recipe's RDEPENDS, but it can't find a=
 provider. I added them to IMAGE_FEATURES in local.conf, but that didn't se=
em to do anything. I set 'module_autoload_uio =3D "uio"' in local.conf, whi=
ch also seemed to do nothing. Same for setting it in linux-yocto_3.4.bbappe=
nd (some patches indicate that it used to be set in that file).  I don't kn=
ow what else to try.

What might I be missing?  Where could I look to see if that module has been=
 built and copied to my image?

Thanks!

--_000_19F0379280417C4A8FE3BD23AA7298E501346EB2EXMBX202Ammepro_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
<p class=3D"MsoNormal">I need to use the uio-pci-generic kernel module, but=
 I don&#8217;t know how to make it available in my image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yocto 1.3, core-image-minimal, did &#8216;bitbake li=
nux-yocto &#8211;c menuconfig&#8217; and added &#8220;Generic driver for PC=
I 2.3&#8221;. It took a while to bitbake core-image-minimal after that chan=
ge, and I saw uio-pci-generic.o, so I assume it rebuilt the kernel
 and built the module, but I don&#8217;t see any traces of the module in my=
 image (&#8216;find / -name *uio*&#8217;, /sys/class/uio or /sys/bus/pci/dr=
ivers/uio-pci-generic).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added uio and uio-pci-generic to a recipe&#8217;s =
RDEPENDS, but it can&#8217;t find a provider. I added them to IMAGE_FEATURE=
S in local.conf, but that didn&#8217;t seem to do anything. I set &#8216;mo=
dule_autoload_uio =3D &#8220;uio&#8221;&#8217; in local.conf, which also se=
emed
 to do nothing. Same for setting it in linux-yocto_3.4.bbappend (some patch=
es indicate that it used to be set in that file).&nbsp; I don&#8217;t know =
what else to try.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What might I be missing? &nbsp;Where could I look to=
 see if that module has been built and copied to my image?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
</div>
</body>
</html>

--_000_19F0379280417C4A8FE3BD23AA7298E501346EB2EXMBX202Ammepro_--
