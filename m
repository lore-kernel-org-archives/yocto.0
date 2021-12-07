Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F2D6C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 22:07:24 +0000 (UTC)
Received: from outbound-ip2a.ess.barracuda.com
 (outbound-ip2a.ess.barracuda.com [209.222.82.169])
 by mx.groups.io with SMTP id smtpd.web09.3995.1638914843243106825
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 14:07:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror, err=too many SPF records (domain: sakuraus.com,
 ip: 209.222.82.169, mailfrom: gwilson@sakuraus.com)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
 mx-outbound8-236.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 07 Dec 2021 22:07:21 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (172.23.0.14) by SFAMAIL.SAKURAUS.LOCAL
 (172.23.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Tue, 7 Dec 2021
 14:07:20 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd]) by
 SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd%13]) with mapi id
 15.01.2242.012; Tue, 7 Dec 2021 14:07:20 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Touchscreen not working if keyboard or mouse plugged in
Thread-Topic: Touchscreen not working if keyboard or mouse plugged in
Thread-Index: AdfrtekgAjtk8pS4TU2HdMLfYtnFrA==
Date: Tue, 7 Dec 2021 22:07:20 +0000
Message-ID: <9e28238f37654e9d873bcb01eb0b876e@sakuraus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.2.131]
Content-Type: multipart/alternative;
	boundary="_000_9e28238f37654e9d873bcb01eb0b876esakurauscom_"
MIME-Version: 1.0
X-BESS-ID: 1638914841-102284-5326-58050-1
X-BESS-VER: 2019.1_20211206.2233
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
 rules version 3.2.2.236372 [from
	cloudscan13-57.us-east-2a.ess.aws.cudaops.com]
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
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 22:07:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55507

--_000_9e28238f37654e9d873bcb01eb0b876esakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are building yocto Zeus for the Raspberrypi 4. We are using a touchscree=
n on the system, and it works just fine. But if a keyboard or mouse is plug=
ged in when the system boots then the touchscreen is disabled.

I am wondering if there is a configuration somewhere that can be set to all=
ow both the touchscreen and an external keyboard at the same time?

I'm sorry if this is the wrong forum to ask this, please point me in the ri=
ght direction if not.

Regards,
Greg Wilson-Lindberg

--_000_9e28238f37654e9d873bcb01eb0b876esakurauscom_
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We are building yocto Zeus for the Raspberrypi 4. We=
 are using a touchscreen on the system, and it works just fine. But if a ke=
yboard or mouse is plugged in when the system boots then the touchscreen is=
 disabled.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am wondering if there is a configuration somewhere=
 that can be set to allow both the touchscreen and an external keyboard at =
the same time?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m sorry if this is the wrong forum to ask th=
is, please point me in the right direction if not.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg Wilson-Lindberg<o:p></o:p></p>
</div>
</body>
</html>

--_000_9e28238f37654e9d873bcb01eb0b876esakurauscom_--

