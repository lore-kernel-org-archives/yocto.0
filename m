Return-Path: <G.Kautzmann@PRIMES.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B9FDC3DA59
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 13:00:30 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by mx.groups.io with SMTP id smtpd.web10.10217.1721134824002037416
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jul 2024 06:00:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=SAuKBblz;
 spf=pass (domain: primes.de, ip: 212.227.126.131, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1721134822; x=1721739622; i=g.kautzmann@primes.de;
	bh=pHjXd9ggE98TZNnvrYXRqEbA5GJomvABG0jmSNJ/zEU=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:Content-Type:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=SAuKBblz6NtGJOB0x7quUmdpT1XVk5A5nX19ONrxwo58Gz3srQ084L6LNnMpGIpM
	 4Fa4mpY6ntyJ1Qb2BhBLBoHCK3U+dp5gBKbsjhUWpV6b+TLfQSWfKoMIQOahU6ObA
	 hZ4df3YHuSsrbPjshql0HzS5G+EMXqKkBCoMKVM6oS8/dBOnlb5P+gO65iGlh9Vsa
	 l1gdP4iKT8iUcY6SAawZheF3VRTq2nblJgrA07eZ1XjvfLbhKyW4owroXNTVhmK6G
	 2I1yDuSDCFXvk3CPcvZG6CCMouxtwSF05bkmLgd3Yh/KLvmmmMugpHHOrRlgiPNEX
	 KyYsKaCxovgMLkH74Q==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([80.154.17.250]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MhFpq-1rpi4q1BEA-00gO2u for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024
 15:00:22 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by
 Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000;
 Tue, 16 Jul 2024 15:00:21 +0200
From: Gerd Kautzmann <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: kernel modules
Thread-Topic: kernel modules
Thread-Index: AdrXfYMvqJrcd/i9SW2XAYqTHQctNg==
Date: Tue, 16 Jul 2024 13:00:20 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC01106D2BD2@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.140]
Content-Type: multipart/alternative;
	boundary="_000_1619D009AA8C9E469331A8EE22395AEC01106D2BD2Exchange2013P_"
MIME-Version: 1.0
X-Provags-ID: V03:K1:zaQl/PQCOBcxeK/Jj6AUbX/BUGRwt8JaCldnCjdNaObvvKS30SP
 n8y8pShODbx2svTlGApKXKJi2lMP13NXNp2Zz6UYAzeWobGwuNaAWzc6BC4AQr0NqnBNN1f
 Dt0NBs88sJfnF9HfLM+R2Ev2xsRQQPLkmNc/55D0NIwKhhs0LQ37WXDYBTyV7Ij6eUDwc3o
 AE5215/BXqchMDgpk9BQg==
UI-OutboundReport: notjunk:1;M01:P0:X6GkjtOue7s=;0fqHJU1WSUKHiqvrUVrsFGNzBDy
 m6vUA2m/26TgDJOAPWC1m2UZXqQbi2BCSC/h6uIu3UISEj3+zXLAb5uvXPv5iuZvXRsCxHXce
 QZR30ahr+68+mOQTpDp8zDxb+BH6clM2nXpTlNqTqhAOgYXSHWW6KsrtpD3Rg34PLBNQQizfj
 gOEuZXuNaMSZscnD55jSyYk2hYfd/okxJkL5NITS3icYgOnEHRgFPxKfuKpcguuREsulb85dh
 +oEW4VRVnBZLMeL4saciXpdt7BN593R04/9Vv/FJgPiTGzsyKkbCisdsM4tmbw39q1jBR32QI
 ZoLbIkoWP3oC9fzbN1n4wjkVY4cyuSFvBZ8s/YpwHAhJFZNToFnGxAedkQgxUvtCtDwKPf+s6
 x5InSktf5q0sQy+ZloNQSoEwwUrHKwfYdey2L5usUGNV3tTD3CemNrMYGrp9FSk9i7FILzToV
 5c3UW7EooxwLf18HWyT2nWLYyLVhp521Ly0qJiNRGOObJn6o4R2WPfFLj6p2jHuC2iEJ1BHqg
 AgQt6iVNsQv6UAjdk7Ygvchxezc2xs6M2yL8LEwuUArRJ+tUcTY4cADdQS9n9x1gSHpZ7PP2Z
 EeG9Pxw+3WdUjhYshR6NpJmSk/QuLG46QaFE1Obt4ZoRbutek0zBvSzuoRXeTWAA9XYQOdJTe
 vOVvL+00OegkemtHibnBeWzrRZFMfEwmUUjzg9jHIWT9qhwNhUF4d/7paeWYNwlsT2Wid8rkl
 v+fNviOVTnniI7rn/dKnOAkwy2MtgYSaA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 13:00:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63512

--_000_1619D009AA8C9E469331A8EE22395AEC01106D2BD2Exchange2013P_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello ML members,

I used to include some drivers for a camera chip for RaspberryPi4 in Yocto =
dunfell.

Now I'm trying the same under Yicto Scarthgap but it doesn't work.


dunfell
---------
find tmp/work -name my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/l=
ib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/my_driver/my_driv=
er.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/sysroot-destdir/l=
ib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/image/lib/modules=
/5.4.72-v7l/extra/my_driver/my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/package/lib/modul=
es/5.4.72-v7l/extra/my_driver/my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/packages-split/ke=
rnel-module-vc-mipi-common-5.4.72-v7l/lib/modules/5.4.72-v7l/extra/my_drive=
r/my_driver.ko

The kernel modules are compiled but they are never transferred or installed=
 in the image

scarthgap
------------
find tmp/work -name my_driver.ko
tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0/my_driver/my_driver.=
ko


Under dunfell I used an expanded core-image-minimal for my system:
------------
cat meta/recipes-core/images/core-image-minimal.bb

SUMMARY =3D "Small image with own kernel module"

IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"
IMAGE_INSTALL +=3D "kernel-modules v4l-utils hello-mod hello autoconf"
IMAGE_INSTALL +=3D "libgpiod"

KERNEL_MODULE_AUTOLOAD +=3D "hello"

...
------------

I tried different changes on my conf/local.conf without any changes.

I built with:
bitbake core-image-minimal -c cleanall
bitbake core-image-minimal

But nothing changed.




PRIMES GmbH    Max-Planck-Str. 2    64319 Pfungstadt   Germany
T +49 6157 9878 0
CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
Local Court: Darmstadt HRB 5134
g.kautzmann@primes.de<mailto:g.kautzmann@primes.de>    www.primes.de<blocke=
d::http://www.primes.de/>


--_000_1619D009AA8C9E469331A8EE22395AEC01106D2BD2Exchange2013P_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello ML members,<br>
<br>
I used to include some drivers for a camera chip for RaspberryPi4 in Yocto =
dunfell.<br>
<br>
Now I&#8217;m trying the same under Yicto Scarthgap but it doesn&#8217;t wo=
rk.<br>
<br>
<br>
dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">---------<o:p></o:p></p>
<p class=3D"MsoNormal">find tmp/work -name my_driver.ko<o:p></o:p></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/rootfs/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<o=
:p></o:p></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/my_driver/my_driver.ko<o:p></o:p></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/sysroot-destdir/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<o=
:p></o:p></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/image/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<o:p></o:p><=
/p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/package/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<o:p></o:p=
></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/packages-split/kernel-module-vc-mipi-common-5.4.72-v7l/lib/modules/5.=
4.72-v7l/extra/my_driver/my_driver.ko<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
The kernel modules are compiled but they are never transferred or installed=
 in the image<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">scarthgap<o:p></o:p></p>
<p class=3D"MsoNormal">------------<o:p></o:p></p>
<p class=3D"MsoNormal">find tmp/work -name my_driver.ko<o:p></o:p></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0/my_driver/my_driver.ko<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">Und=
er dunfell I used an expanded core-image-minimal for my system:<br>
</span>------------<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">cat meta/recipes-core/imag=
es/core-image-minimal.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">SUMMARY =3D &quot;Small im=
age with own kernel module&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">IMAGE_INSTALL =3D &quot;pa=
ckagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">IMAGE_INSTALL &#43;=3D &qu=
ot;kernel-modules v4l-utils hello-mod hello autoconf&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">IMAGE_INSTALL &#43;=3D &qu=
ot;libgpiod&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">KER=
NEL_MODULE_AUTOLOAD &#43;=3D &quot;hello&quot;<br>
<br>
&#8230;<br>
</span>------------<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><br>
I tried different changes on my conf/local.conf without any changes.<br>
<br>
I built with:<br>
bitbake core-image-minimal -c cleanall<br>
bitbake core-image-minimal<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">But nothing changed.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#383739;mso-fareast-=
language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<b><span lang=3D"EN-GB" style=3D"font-size:8.0pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#4F4D51;mso-fareast-language:DE">PRIMES GmbH&nbsp;&nbs=
p;&nbsp;
</span></b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#4F4D51;mso-fareast-language:DE">Max-Planck-St=
r.
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#4F4D51;mso-fareast-language:DE">2<b>&nbsp;&nbsp;&nbsp;
</b>64319 Pfungstadt&nbsp;&nbsp; Germany&nbsp;&nbsp;&nbsp; <o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">T &#43;49 6157 9878 0&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">CEO: Dr.-Ing. Reinhard Kramer, Dr. rer.=
 nat. Thomas Umschlag&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">Local Court: Darmstadt HRB 5134<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0cm;margin-right:0cm;mar=
gin-bottom:12.0pt;margin-left:5.65pt;line-height:11.1pt;mso-line-height-rul=
e:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE"><a href=3D"mailto:g.kautzmann@primes.de"><span style=
=3D"color:#0563C1">g.kautzmann@primes.de</span></a></span><span style=3D"fo=
nt-size:8.0pt;color:#4F4D51;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;
</span><span style=3D"mso-fareast-language:DE"><a href=3D"blocked::http://w=
ww.primes.de/" title=3D"blocked::http://www.primes.de/=0A=
http://www.primes.de/"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#4F4D51;text-decoration:none">www.primes.de</span=
></a></span><span style=3D"font-size:8.0pt;color:#4F4D51;mso-fareast-langua=
ge:DE">&nbsp;</span><span style=3D"position:relative;top:3.0pt;mso-text-rai=
se:-3.0pt;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1619D009AA8C9E469331A8EE22395AEC01106D2BD2Exchange2013P_--

