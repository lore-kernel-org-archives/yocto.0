Return-Path: <prvs=33449b24ba=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABBFE0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 06:40:18 -0800 (PST)
X-AuditID: c0a8466b-b7c01ae000004083-9d-4efc7bceb1ab
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	DE.C3.16515.ECB7CFE4; Thu, 29 Dec 2011 20:10:14 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Thu, 29 Dec 2011 20:10:14 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Manuaaly copying library to rootfs/lib
Thread-Index: AczGN4Fzj95Q5oO+QRuQC8CJGIqsVw==
Date: Thu, 29 Dec 2011 14:40:13 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D8A70@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLKsWRmVeSWpSXmKPExsXCxcRoo3uu+o+fwcu/lhaTXq5hc2D0aD/R
	xxbAGMVtk5RYUhacmZ6nb5fAnfFgxRGmgn7lirYPF9gaGBfJdTFyckgImEgs/b6QDcIWk7hw
	bz2QzcUhJLCDUeLgk/PsEM5WRonZbRMYQarYBGwkHp9fxwJiiwiYSrw49gWsW1hAX+LS4dXs
	EHETiddbbrNB2HoS1ya8ZgWxWQRUJR4eusjUxcjBwSsQItH91BckzAi0+PupNUwgNrOAuMSt
	J/OZIA4SkFiy5zwzhC0q8fLxP1aQVgkBJYnHKzkhyvMl9r77BFbCKyAocXLmE5YJjEKzkEya
	haRsFpIyiLiOxILdn9ggbG2JZQtfM8PYZw48ZkIWX8DIvopRJDcxMye/tMRIL6ckMy8lM1Ev
	OT93EyMwIg6scMvewfhxj8ohRgEORiUeXgHv335CrIllxZW5hxglOZiURHnPV/3xE+JLyk+p
	zEgszogvKs1JLT7EKMHBrCTC++AhUDlvSmJlVWpRPkxKmoNFSZx3l8oXPyGB9MSS1OzU1ILU
	IpisDAeHkgQvLzDyhQSLUtNTK9Iyc0oQ0kwcnCCCC2QDD9AGU5BC3uKCxNzizHSIolOMklLi
	vCIgCQGQREZpHtyAV4ziQH8I8/4BOZoHmObgul4BDWQCGnju3C+QgSWJCCmpBsajVo9ZAjl7
	BCauuvnn0dOUxw5+7YIpBi2zFMTuCbPxa07YU7tBtM9s+Xm9D7V6x1cdzZBYdVIwRWylR+Kh
	ew3Ou04sES75/Vb7d/PHjds2XrDeUPc7/ln2w8gVVjcrLnldXVcz67fatajbwYudDqzOdm3r
	CUqfPKvxm/fnpUWaZneV5Q/dmCmrxFKckWioxVxUnAgAac//IDADAAA=
Subject: Manuaaly copying library to rootfs/lib
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
X-List-Received-Date: Thu, 29 Dec 2011 14:40:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D8A70POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8A70POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I need to copy a library manually to rootfs. I want to put it in the manner=
 that on doing bitbake of initscripts this library should get copied to the=
 rootfs in the same manner as it used to copy contents under etc/ to rootfs=
. I am successful in porting this library to tmp/work/armv6-poky-linux-gnue=
abi/initscripts-1.0-r124/image/lib/libc-2.11.1.so, now I am unable to put i=
t in rootfs. When I am compiling rootfs I am unable to see this library.

I tried giving         cp -d           ${WORKDIR}/libc-2.11.1.so       ${D}=
${sysconfdir}/
in initscripts_1.0.bb then the same library got copied in rootfs/etc/ . Wha=
t I am supposed to do to copy it to rootfs/lib ?

Thanks & Regards,
Navani Kamal Srivastava






Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8A70POCITMSEXMB03Ln_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Tahoma}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Tahoma","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I need to copy a library manually to roo=
tfs. I want to put it in the manner that on doing bitbake of initscripts th=
is library should get copied to the rootfs in the same manner
 as it used to copy contents under etc/ to rootfs. I am successful in porti=
ng this library to tmp/work/armv6-poky-linux-gnueabi/initscripts-1.0-r124/i=
mage/lib/libc-2.11.1.so, now I am unable to put it in rootfs. When I am com=
piling rootfs I am unable to see
 this library.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I tried giving &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;cp -d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ${WORKDIR}/libc-2.11.1.so&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 ${D}${sysconfdir}/</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">in initscripts_1.0.bb then the same libr=
ary got copied in rootfs/etc/ . What I am supposed to do to copy it to root=
fs/lib ?</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal"><b><br>
<br>
<br>
</b></p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
www.larsentoubro.com <br>
<br>
</b>This Email may contain confidential or privileged information for the i=
ntended recipient (s) If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.
</body>
</html>

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8A70POCITMSEXMB03Ln_--
