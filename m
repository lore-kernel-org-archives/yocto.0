Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B91C433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 19:39:07 +0000 (UTC)
Received: from outbound-ip2b.ess.barracuda.com
 (outbound-ip2b.ess.barracuda.com [209.222.82.184])
 by mx.groups.io with SMTP id smtpd.web09.15165.1633376346667558723
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 12:39:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: sakuraus.com, ip: 209.222.82.184, mailfrom: gwilson@sakuraus.com)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
 mx-outbound16-102.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 04 Oct 2021 19:39:05 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (172.23.0.14) by SFAMAIL.SAKURAUS.LOCAL
 (172.23.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Mon, 4 Oct 2021
 12:39:04 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd]) by
 SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd%13]) with mapi id
 15.01.2242.012; Mon, 4 Oct 2021 12:39:04 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: virtual/egl on Raspberry Pi 4
Thread-Topic: virtual/egl on Raspberry Pi 4
Thread-Index: Ade5V3yaHATh5XXBTUa/y6q/HGx7UA==
Date: Mon, 4 Oct 2021 19:39:04 +0000
Message-ID: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [47.157.31.169]
Content-Type: multipart/alternative;
	boundary="_000_0c6e789aba8141509bb31779a8393cbfsakurauscom_"
MIME-Version: 1.0
X-BESS-ID: 1633376345-104198-13071-912-1
X-BESS-VER: 2019.1_20211004.1912
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
 rules version 3.2.2.234926 [from
	cloudscan8-239.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
 KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 19:39:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54943

--_000_0c6e789aba8141509bb31779a8393cbfsakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,

I'm working on a Qt supplied boot2qt Yocto build currently based on Zeus th=
at is running on a Raspberry Pi 4. I recently updated the qt version to 5.1=
5.6 and Qt changed something in the Yocto configuration that they are using=
 and now one of the recipes that we use is failing saying that in needs 'vi=
rtual/egl' but that it is not provided by any recipe.



In the searching that I have done I have found that the raspberry pi 4 is p=
articular on which package supplies the virtual/egl but I haven't seen anyt=
hing that indicates what I should do to re-enable it.



Can anyone tell me what I need to do to enable the correct driver to get vi=
rtual/egl provided on the Raspberry Pi 4? Or maybe even better, how I could=
 search through the packages that are enabled on the old and new Yocto tree=
s so that I can figure out what changed between the releases and re-enable =
the virtual/egl.



Best Regards,

Greg Wilson-Lindberg


--_000_0c6e789aba8141509bb31779a8393cbfsakurauscom_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello list,<o:p></o:p></p>
<p class=3D"MsoPlainText">I'm working on a Qt supplied boot2qt Yocto build =
currently based on Zeus that is running on a Raspberry Pi 4. I recently upd=
ated the qt version to 5.15.6 and Qt changed something in the Yocto configu=
ration that they are using and now
 one of the recipes that we use is failing saying that in needs 'virtual/eg=
l' but that it is not provided by any recipe.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">In the searching that I have done I have found th=
at the raspberry pi 4 is particular on which package supplies the virtual/e=
gl but I haven't seen anything that indicates what I should do to re-enable=
 it.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Can anyone tell me what I need to do to enable th=
e correct driver to get virtual/egl provided on the Raspberry Pi 4? Or mayb=
e even better, how I could search through the packages that are enabled on =
the old and new Yocto trees so that
 I can figure out what changed between the releases and re-enable the virtu=
al/egl.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Best Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">Greg Wilson-Lindberg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0c6e789aba8141509bb31779a8393cbfsakurauscom_--

