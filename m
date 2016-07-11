Return-Path: <gstroz@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64F67E00DF8; Mon, 11 Jul 2016 12:42:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [199.106.114.251 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0185]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jul 2016 12:42:06 PDT
Received: from wolverine02.qualcomm.com (wolverine02.qualcomm.com
	[199.106.114.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CED96E00DD0
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 12:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1468266126; x=1499802126;
	h=from:to:subject:date:message-id:mime-version;
	bh=3iko+ewWxxtMLaACcnvloOJeag+V7qdjTH9hUaFZyx4=;
	b=zMjVq30mnJBK/GsqvV9WnZ+vUQ5pdk5c57z4T0Aj6ZJ1jPFVR576KmM0
	xD97GgiDYZ2EVnIUWoGSTg8dBqPVki/KewyRfht5P6nCyGpI+A7IfcGwX
	covA9yzWFrRuNqPG9IqNt3JIkGx6uMioFgBZ7gIRA7xPBWgf6/7Cv5y0i I=;
X-IronPort-AV: E=Sophos;i="5.28,348,1464678000"; 
	d="scan'208,217";a="302604330"
Received: from unknown (HELO ironmsg02-R.qualcomm.com) ([10.53.140.106])
	by wolverine02.qualcomm.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	11 Jul 2016 12:39:20 -0700
X-IronPort-AV: E=McAfee;i="5700,7163,8223"; a="768529995"
Received: from nasanexm02e.na.qualcomm.com ([10.85.0.86])
	by ironmsg02-R.qualcomm.com with ESMTP/TLS/RC4-SHA;
	11 Jul 2016 12:39:20 -0700
Received: from NASANEXM02C.na.qualcomm.com (10.85.0.43) by
	nasanexm02e.na.qualcomm.com (10.85.0.86) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Mon, 11 Jul 2016 12:39:19 -0700
Received: from NASANEXM02C.na.qualcomm.com ([10.85.0.43]) by
	NASANEXM02C.na.qualcomm.com ([10.85.0.43]) with mapi id 15.00.1178.000;
	Mon, 11 Jul 2016 12:39:19 -0700
From: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SysVinit scripts not being populated in busybox-mdev package 
Thread-Index: AdHbqxwgiETzznArTzS6U7X/dimDLA==
Date: Mon, 11 Jul 2016 19:39:18 +0000
Message-ID: <90e371145c81434598ecc656ed9df48d@NASANEXM02C.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.47.70.6]
MIME-Version: 1.0
Subject: SysVinit scripts not being populated in busybox-mdev package
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
X-List-Received-Date: Mon, 11 Jul 2016 19:42:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_90e371145c81434598ecc656ed9df48dNASANEXM02Cnaqualcommco_"

--_000_90e371145c81434598ecc656ed9df48dNASANEXM02Cnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In the busybox.inc recipe include file there are lines where a SysVinit scr=
ipt should be started when the mdev package is installed:

INITSCRIPT_PACKAGES =3D "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-mdev $=
{PN}-hwclock"

INITSCRIPT_NAME_${PN}-mdev =3D "mdev"
INITSCRIPT_PARAMS_${PN}-mdev =3D "start 03 S ."

We've switched our device manager to mdev but we don't see the SysVInit scr=
ipt being populated on the device. I checked the packages-split folder and =
I see it's also not being populated here. Other packages using INITSCRIPT_N=
AME and INITSCRIPT_PARAMS are being populated in the packages-split folder =
and then are visible on the device. Is this a known issue?

poky/build/tmp/work/aarch64-poky-linux/busybox/1.23.2-r0/packages-split/bus=
ybox-mdev$ find
.
./etc
./etc/mdev
./etc/mdev/find-touchscreen.sh
./etc/mdev/mdev-mount.sh
./etc/mdev.conf
./etc/init.d
./etc/init.d/mdev

-Glenn


--_000_90e371145c81434598ecc656ed9df48dNASANEXM02Cnaqualcommco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">In the busybox.inc recipe include file there are lin=
es where a SysVinit script should be started when the mdev package is insta=
lled:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INITSCRIPT_PACKAGES =3D &quot;${PN}-httpd ${PN}-sysl=
og ${PN}-udhcpd ${PN}-mdev ${PN}-hwclock&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INITSCRIPT_NAME_${PN}-mdev =3D &quot;mdev&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">INITSCRIPT_PARAMS_${PN}-mdev =3D &quot;start 03 S .&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;ve switched our device manager to mdev but =
we don&#8217;t see the SysVInit script being populated on the device. I che=
cked the packages-split folder and I see it&#8217;s also not being populate=
d here. Other packages using INITSCRIPT_NAME and INITSCRIPT_PARAMS
 are being populated in the packages-split folder and then are visible on t=
he device. Is this a known issue?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">poky/build/tmp/work/aarch64-poky-linux/busybox/1.23.=
2-r0/packages-split/busybox-mdev$ find<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">./etc<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/mdev<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/mdev/find-touchscreen.sh<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/mdev/mdev-mount.sh<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/mdev.conf<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/init.d<o:p></o:p></p>
<p class=3D"MsoNormal">./etc/init.d/mdev<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Glenn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_90e371145c81434598ecc656ed9df48dNASANEXM02Cnaqualcommco_--
