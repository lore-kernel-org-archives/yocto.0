Return-Path: <chris.sutton@l3harris.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 224B4C77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 09:49:39 +0000 (UTC)
Received: from USMLB1RNPMX02POUT.l3harris.com (USMLB1RNPMX02POUT.l3harris.com [192.52.235.39])
 by mx.groups.io with SMTP id smtpd.web10.33503.1681897776253198874
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 02:49:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@l3harris.com header.s=mail header.b=YVrpAQag;
 spf=pass (domain: l3harris.com, ip: 192.52.235.39, mailfrom: prvs=46636239d=chris.sutton@l3harris.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=l3harris.com; i=@l3harris.com; q=dns/txt; s=mail;
  t=1681897776; x=1713433776;
  h=from:to:subject:date:message-id:mime-version;
  bh=CevMLLwnhREYBE8cWbC5QIXRl6xhv9mYwgWKqX5R80E=;
  b=YVrpAQagLOXisB+rTAy0x8UBwFoC/21jiC5C93S+P7Pz10oT6A8Hbi3W
   Gy86JyaLiody3jPkqMeHYYGf3ePFuz/hMHwQVhJr3Xc0mYAxgqFp4dgDR
   J7hirZPQxf+ltHsptMDdQsHr7ZoLAx1vdJnxw+v8cIgijlH8cSn4DKrw0
   kjyBRjn6E9f8OgriV7J62ORKYZ1iVJ9EEtR7eTzSjwZ1ENZalseyGFO9U
   qZpb/6IaXT14bj/BREzIN/g2MhPfUyIuDx+hWORfjGNDG/tlgt/qdxGGr
   5+Gh8i6CGK8vMUmUCwFvVTqAil2FP5NktVFWK/XXQgO129wujAmqNuTLO
   A==;
IronPort-SDR: 0nsOvlwtF/zTYlxi6VUIXBJKQlp8M/NFgUTfu1G6llJjb9m2+5YgSFhMMkOdppt0xyszAnnVr2
 iQ9YkqOO8f/JUu7FMdxts9C2xFfhcdOuCLTAad1+7a3ywO46ovKEImjPKBoVpwmZ41WiAyCihg
 bduzlu+J3glCuiS4U/pfApNnJ9QPlREYahDuKTst8LgMWTBzIODNFWcsDAhumLvG7tjKuKh2XM
 uBm9mcwPkDGCZ2Pb0xfXHDNdH97c8m8wOCyxLyA3bzXQjAqrBr8gWAVRLalIvLngpvobJwy6/W
 D9MDB2B7Yrzilj39zJamuVOB
X-IronPort-AV: E=Sophos;i="5.99,208,1677542400"; 
   d="scan'208,217";a="101751781"
Received: from usmlb1rnprt04pout.l3harris.com ([10.64.225.12])
  by USMLB1RNPMX02POUT.l3harris.com with ESMTP; 19 Apr 2023 09:49:34 +0000
X-filenames: 
X-filesizes: None
X-filetypes: 
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.99,208,1677542400"; 
   d="scan'208,217";a="128450652"
Received: from win-p1001190.rootforest.com (HELO mail.l3t.com) ([10.95.128.16])
  by USMLB1RNPRT04POUT.l3harris.com with ESMTP; 19 Apr 2023 09:49:33 +0000
Received: from WIN-P1001190.rootforest.com (10.95.128.16) by
 WIN-P1001190.rootforest.com (10.95.128.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.20; Wed, 19 Apr 2023 09:49:33 +0000
Received: from WIN-P1001190.rootforest.com ([fe80::6926:865a:1671:30dc]) by
 WIN-P1001190.rootforest.com ([fe80::6926:865a:1671:30dc%8]) with mapi id
 15.02.1118.020; Wed, 19 Apr 2023 09:49:33 +0000
From: "Sutton, Chris (FP) - IC" <chris.sutton@L3Harris.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: cleaning/rebuilding recipes with multiconfigs
Thread-Topic: cleaning/rebuilding recipes with multiconfigs
Thread-Index: AdlyoEpzp2VG2q58RWCgjRWgnSVw8A==
Date: Wed, 19 Apr 2023 09:49:32 +0000
Message-ID: <db48b829e4354ac3a95a4a21020318f1@L3Harris.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.232.2]
Content-Type: multipart/alternative;
	boundary="_000_db48b829e4354ac3a95a4a21020318f1L3Harriscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 09:49:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59726

--_000_db48b829e4354ac3a95a4a21020318f1L3Harriscom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,

I have setup a multiconfig build. This is working fine. I can build using

bitbake core-image-minimal mc:myconfig:core-image-minimal

If I want to clean a specific recipe I use the command:

bitbake -c u-boot

However, only recipe for core-image-minimal is cleaned. The recipe for mc:m=
yconfig:core-image-minimal remains.

I tried including the multiconfig name in the command:

bitbake mc:myconfig:core-image-minimal  -c u-boot
bitbake -c mc:myconfig:core-image-minimal

But it makes no difference: the recipes and/or multiconfig output remain. I=
 can't find any documentation on this.
Does bitbake support cleaning recipes for multiconfig builds? Do I have the=
 syntax wrong?
Is my only option to delete the entire tmp directory and build from scratch=
 each time?
If I manually delete the multiconfig output it is not rebuilt because the s=
state cache doesn't know its missing (because it was not cleaned properly)

 =


CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use=
 of the intended recipient and may contain material that is proprietary, co=
nfidential, privileged or otherwise legally protected or restricted under a=
pplicable laws. Any review, disclosure, distributing or other use without e=
xpressed permission of the sender is strictly prohibited. If you are not th=
e intended recipient, please contact the sender and delete all copies witho=
ut reading, printing, or saving.



L3Harris Technologies UK Limited is a private company registered in England=
 with the company number 11111631 whose registered office is at 100 New Bri=
dge Street, London, United Kingdom, EC4V 6JA.



For information on our Privacy & Cookie Policies, please visit our website:=
 https://www.l3harris.com/en-gb/privacy-policy

--_000_db48b829e4354ac3a95a4a21020318f1L3Harriscom_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have setup a multiconfig build. This is working fi=
ne. I can build using
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>bitbake core-image-minimal mc:myconfig:core-image=
-minimal<o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I want to clean a specific recipe I use the comma=
nd: <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>bitbake -c u-boot<o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, only recipe for <i>core-image-minimal</i> i=
s cleaned. The recipe for
<i>mc:myconfig:core-image-minimal</i> remains.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried including the multiconfig name in the comman=
d:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>bitbake mc:myconfig:core-image-minimal &nbsp;-c u=
-boot<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>bitbake -c mc:myconfig:core-image-minimal<o:p></o=
:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal">But it makes no difference: the recipes and/or multi=
config output remain. I can&#8217;t find any documentation on this.<o:p></o=
:p></p>
<p class=3D"MsoNormal">Does bitbake support cleaning recipes for multiconfi=
g builds? Do I have the syntax wrong?<o:p></o:p></p>
<p class=3D"MsoNormal">Is my only option to delete the entire tmp directory=
 and build from scratch each time?
<o:p></o:p></p>
<p class=3D"MsoNormal">If I manually delete the multiconfig output it is no=
t rebuilt because the sstate cache doesn&#8217;t know its missing (because =
it was not cleaned properly)<o:p></o:p></p>
</div>
<br><span>&nbsp;</span><div>CONFIDENTIALITY NOTICE: This email and any atta=
chments are for the sole use of the intended recipient and may contain mate=
rial that is proprietary, confidential, privileged or otherwise legally pro=
tected or restricted under applicable laws. Any review, disclosure, distrib=
uting or other use without expressed permission of the sender is strictly p=
rohibited. If you are not the intended recipient, please contact the sender=
 and delete all copies without reading, printing, or saving.<div><br><div>L=
3Harris Technologies UK Limited is a private company registered in England =
with the company number 11111631 whose registered office is at 100 New Brid=
ge Street, London, United Kingdom, EC4V 6JA.<div><br><div>For information o=
n our Privacy &amp; Cookie Policies, please visit our website: https://www.=
l3harris.com/en-gb/privacy-policy</body>
</html>

--_000_db48b829e4354ac3a95a4a21020318f1L3Harriscom_--


