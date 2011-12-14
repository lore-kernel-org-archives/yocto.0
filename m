Return-Path: <prvs=9329ef3ea9=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B7AE013A6
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 00:32:12 -0800 (PST)
X-AuditID: c0a8466b-b7bb8ae000007821-c8-4ee85f0a9928
Received: from POCITMSEXHUB01.LntUniverse.com ( [10.2.1.58])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	4E.9A.30753.A0F58EE4; Wed, 14 Dec 2011 14:02:10 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB01.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Wed, 14 Dec 2011 14:02:09 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package name in .bb file
Thread-Index: Acy6OTqvsey9AXqYSf+JnDDig5Kx5w==
Date: Wed, 14 Dec 2011 08:32:08 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D7116@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsXCxcRopcsV/8LPoLufz2LSyzVsDowe7Sf6
	2AIYo7htkhJLyoIz0/P07RK4M1qvn2EtaDWt+PT1IEsD4069LkZODgkBE4lr24+wQNhiEhfu
	rWfrYuTiEBLYwSix9vcyRpCEkMBWRoktL9VAbDYBG4nH59eBNYgImEq8OPaFDcQWFlCUeHym
	nQ0iriaxYd0BRghbT2LSrelgcRYBVYnuo5OZQGxegRCJa5/uM4PYjECLv59aAxZnFhCXuPVk
	PhPEQQISS/acZ4awRSVePv7H2sXIAWQrSTxeyQlRni/RPPc1K8RIQYmTM5+wTGAUmoVk0iwk
	ZbOQlEHEdSQW7P7EBmFrSyxb+JoZxj5z4DETsvgCRvZVjCK5iZk5+aUlRno5JZl5KZmJesn5
	uZsYgRFxYIVb9g7Gj3tUDjEKcDAq8fBOannuJ8SaWFZcmXuIUZKDSUmUVzD2hZ8QX1J+SmVG
	YnFGfFFpTmrxIUYJDmYlEd61q4HKeVMSK6tSi/JhUjIcHEoSvI5xQG2CRanpqRVpmTnAuIdJ
	M3FwgggukBk8QDPKQQp5iwsSc4sz0yGKTjFKSonz+oAkBEASGaV5cANeMYoDXSrMawKS5QGm
	KriuV0ADmYAGbg8DG1iSiJCSamAU9ZFY/nKNLeuPSUcPej3bJ5T3P8LninLFxbsCuw7XqL9p
	XjXT/3j739V56cfPJsWxRbfLGM4/sX7uFq7TPV/DQn/8z9UWv7LhwZ98SZYtS1hqInl5xWWW
	7bEtbTsy/ZDS7//H1nxxWn27Q/LWTZ/JPWtWXm42L3i/LCB24sTpl+MOPjPJq2j0UGIpzkg0
	1GIuKk4EACCZsLISAwAA
X-Mailman-Approved-At: Wed, 14 Dec 2011 09:32:01 -0800
Subject: Package name in .bb file
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
X-List-Received-Date: Wed, 14 Dec 2011 08:32:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D7116POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7116POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,


1-     I wish to know how we are supposed to include package name in rootfs=
 *.bb file?

Like if I have to include Qt-4.6.3 , which parameter from qt4-embedded_4.6.=
3.bb file I need to give in rootfs poky-image.bb file? I tried giving-

IMAGE_INSTALL +=3D "qt4 busybox tcp-wrappers iproute2 canutils alsa-utils a=
lsa-lib directfb hwapps tslib-conf tslib-tests tslib-calibrate"

But got error Unable to find qt4 package..


2-     I need to get libstdc++.so.6 library in rootfs. Which package I am s=
upposed to install to get the same?

Thanks & Regards,
Navani Kamal Srivastava


Larsen & Toubro Limited

www.larsentoubro.com<http://www.larsentoubro.com/>

This mail is classified as: ( ) L&T Proprietary ( ) L&T Confidential (X) L&=
T Internal Use ( ) L&T General Business
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.




Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7116POCITMSEXMB03Ln_
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
@font-face
	{font-family:"Poor Richard"}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
span.EmailStyle17
	{font-family:"Tahoma","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
ol
	{margin-bottom:0in}
ul
	{margin-bottom:0in}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hello,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"f=
ont-size:9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><spa=
n style=3D"">1-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:9.0pt; font-family:&quot;Taho=
ma&quot;,&quot;sans-serif&quot;">I wish to know how we are supposed to incl=
ude package name in rootfs *.bb file?</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Like if I hav=
e to include Qt-4.6.3 , which parameter from qt4-embedded_4.6.3.bb file I n=
eed to give in rootfs poky-image.bb file? I tried giving-</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">IMAGE_INSTALL=
 &#43;=3D &quot;qt4 busybox tcp-wrappers iproute2 canutils alsa-utils alsa-=
lib directfb hwapps tslib-conf tslib-tests tslib-calibrate&quot;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">But got error=
 Unable to find qt4 package..</span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span>=
</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"f=
ont-size:9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><spa=
n style=3D"">2-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:9.0pt; font-family:&quot;Taho=
ma&quot;,&quot;sans-serif&quot;">I need to get libstdc&#43;&#43;.so.6 libra=
ry in rootfs. Which package I am supposed to install to get the same?</span=
></p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal"><br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
<a href=3D"http://www.larsentoubro.com/"><span style=3D"color:blue">www.lar=
sentoubro.com</span></a>
<br>
<br>
</b><span style=3D"font-family:&quot;Poor Richard&quot;,&quot;serif&quot;; =
color:black">This mail is classified as: ( ) L&amp;T Proprietary ( ) L&amp;=
T Confidential (X) L&amp;T Internal Use ( ) L&amp;T General Business</span>=
<span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;; color:black"><br>
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.
<br>
<br>
</span></p>
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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7116POCITMSEXMB03Ln_--
