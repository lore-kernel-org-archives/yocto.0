Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F4CCC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 19:36:33 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.772.1641324989970911207
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 11:36:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=Pc5RnH/P;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1641324989; x=1799004989;
  h=from:to:subject:date:mime-version;
  bh=lEhs1p0QO9CS4YKjEcxzhUxeZisixQcFDBMmPUaOw+M=;
  b=Pc5RnH/PCyf3tUUrhMdyPGlw06W8fBn8QMDFBrzQBW7f1wJEDHe1B/Od
   SId4I5KX/0wn+Har/XhwC1vPA3HPok7quTSQhbfTDZJzDS+6PuR4B/19L
   ZJWu+NgG0ihjHtHmTyraV5y8K6nbUDLQ2tVIPiby2ENzKGi5siTlQTr8t
   I=;
IronPort-SDR: 
 dudy2JmGhlbGLuMuVdfyZnJCaFVkj3X4G773xLRU8r5izuEly40UsURqjVc8/FWQAsd9HTskpD
 wqUFwYLyfQEA==
IronPort-PHdr: =?us-ascii?q?A9a23=3ADzYouhSuCfqNSBeyJSl6pOpul9psojifAWYlg?=
 =?us-ascii?q?6HPa5pwe6iut67vIFbYra00ygOTBMOCsKkP0rCK+4nbGkU4qa6bt34DdJEeH?=
 =?us-ascii?q?zQksu4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPE?=
 =?us-ascii?q?RvjKwV1Ov71GonPhMiryuy+4ZLebxtViDanfL9/Ihu7oQrMusUIjoZpN7o8x?=
 =?us-ascii?q?AbOrnZUYepd2HlmJUiUnxby58ew+IBs/iFNsP8/9MBOTLv3cb0gQbNXEDopP?=
 =?us-ascii?q?WY15Nb2tRbYVguA+mEcUmQNnRVWBQXO8Qz3UY3wsiv+sep9xTWaMMjrRr06R?=
 =?us-ascii?q?Tiu86FmQwLuhSwaNTA27XvXh9RwgqxFvRyhuxJxzY3VYI6JO/VzZbnScc8YR?=
 =?us-ascii?q?WdbQspdSzJND4WhZIUPFeoBOuNYopHzq1UJqhu+AxKsC/3xxT9TnnP9wLA00?=
 =?us-ascii?q?/g/HgHYwgMgGc8FvWrJp9nxOqgcTOW5wKfVxjjEdPNWxSny6JbWfRAnu/2MW?=
 =?us-ascii?q?LVwcczKyUYxCQzFlU6dppf/MDyLzeQMs3Ob7/Z+WuKqkG4rsR1+oj+qxso1j?=
 =?us-ascii?q?ITCm40axEze+ypj3IY1OcO3SFR9YdO8HpVduT2XOop0T84jXW1kpTg3x74Gt?=
 =?us-ascii?q?JO/cyUHx4kryRDfZvKIboSF5hDuWeaeLDp5mX5oZrayihWx/EW91+HyWc+52?=
 =?us-ascii?q?0tJoCpditTAq2wB2wbd58WFUPdx40Os1DiV2w3S6uxIOV04mbbBJ5MuzbM8j?=
 =?us-ascii?q?JUevV7eEiL2nkj9kbWYeV8++uey7uTqerDmppiBOIBqkgz+KaEumtCnAeQ/L?=
 =?us-ascii?q?wgOQ3CX+eSi273n+k30WKtKgec2kqnftZDaPsAWq6q9DgNJz4ov8RC/AC283?=
 =?us-ascii?q?NsDh3YIMklFeRKcj4j1JV7OJev4Ae2jjFSrlTdn3/HGPrv/DZXRNnXPjavtc?=
 =?us-ascii?q?axz5kNe0gY/0NRS6pxOBrwAIP//Qkrxu8bZDh89PQy02eHnCNBl24MFRWKAH?=
 =?us-ascii?q?LGZP73UsVOS4+IvJO+MZJQLtznjMPgo/OXhgmUnll8GfaipxocXZ269HvR9O?=
 =?us-ascii?q?UmWfX3sgtIZHWcQogU+VPDqiEGFUTNLZ3eyWL4z5i08CI+9CYfDR5utgKCa3?=
 =?us-ascii?q?CuhHpxWYXxJCkyLEXfwbYWEXPUMZzyOLc99iDAEUqKhS4BynS2p4UXrzLF7K?=
 =?us-ascii?q?cLQ+zYErtTy09Np4PXJkhM//iAyCN6SmSnZXmZ/gmQgQz4twLs5sEt21lCby?=
 =?us-ascii?q?696jvdEU9tJ6KUafB09MMuW6ut8EN3/QUaJRcuEVlugCv7uQQwKD5h5l8QSb?=
 =?us-ascii?q?lhwHZOniRbY0iexK7UcmqeaH4A597ma1H/0cZUug03a3bUs2gF1CvBEMner0?=
 =?us-ascii?q?/YXyg=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3Ar8hrNahj08bhkGdMCTImQms9X161ShIKZh0uj?=
 =?us-ascii?q?C45NGQN5FlHY01jehtvWTrTP/ePMzOhfd4gPIm2909V757WxtNgHFc4qX1hR?=
 =?us-ascii?q?SpjpJueD7x1DKtQ0wB+jCH7ockOA/w2MrEsF+hpCC+MzvuRGuK59yMkjPnUH?=
 =?us-ascii?q?uCU5NPsY0ideyc1EE/Ntjo+w4bVsqYw6TSIK1vlVeHa+qUzC3f5s9JACV/43?=
 =?us-ascii?q?orYwP9ZUFUejxtD1rA2TagjUFYzDBD5BrpHTU26ByOQroW5goeHq+j/ILGRp?=
 =?us-ascii?q?gs1/j8zA9Ojl62qIxxSG/jUNE6Eg3dNSrO+jx1Z4Cc1187XNtJFMQEM1HPQz?=
 =?us-ascii?q?os3loglWZ+YEG/FOoXXhOkDXh8eFiZ4JqBL45fNKHWkoNePwkjdNXDrxp2CC?=
 =?us-ascii?q?WlqYdVCo7woUD0mGfswbWplggq4r/Oxy668Yu1tndg4atjsN58YomtnzzzSE?=
 =?us-ascii?q?bAhW5+rfklgzbe0xx9p3oYVQrCHNpFfN2cHUfgJWDUXUn9/NX70tL7AaqHDT?=
 =?us-ascii?q?gBl?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AnqeP8a0i2SPp5ucjmf03HwqjBKUkLtp133?=
 =?us-ascii?q?Aq2lEZdPU1SL36qynKpp9w6faaskdyZJheo6HkBEDtex7hHP1OgbX5X43NYO?=
 =?us-ascii?q?COggLBEGgF1+ffKlbbehEWmNQz6U5oSdkbNOHN?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AbBQAZodRh/0HBJQpagQkJgnGCBYF?=
 =?us-ascii?q?CC5VSnkgLAQEBAQEBAQEBCAEqARYEAQGFBgKDPCY4EwECBAEBARIBAQYBAQE?=
 =?us-ascii?q?BAQYEAYEbhVYTDII1IoNrAQECAwELIV4BCA0EBAEBKC8KFAkJAQQTCIJ3gg6?=
 =?us-ascii?q?tYHiBMxoCZYRqhRAJAYEwgWaFRIJ+hhdDhD8+hHuFRwSRGYELG4ECQJIhjRW?=
 =?us-ascii?q?NJpMaBwODQpdch1YwFZY2A4NXjVcqlgwgoTSEUwIEAgQFAhaBeIF9cIM5URc?=
 =?us-ascii?q?CnH90OAIGCwEBAwmODoEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2AbBQAZodRh/0HBJQpagQkJgnGCBYFCC5VSnkgLAQEBA?=
 =?us-ascii?q?QEBAQEBCAEqARYEAQGFBgKDPCY4EwECBAEBARIBAQYBAQEBAQYEAYEbhVYTD?=
 =?us-ascii?q?II1IoNrAQECAwELIV4BCA0EBAEBKC8KFAkJAQQTCIJ3gg6tYHiBMxoCZYRqh?=
 =?us-ascii?q?RAJAYEwgWaFRIJ+hhdDhD8+hHuFRwSRGYELG4ECQJIhjRWNJpMaBwODQpdch?=
 =?us-ascii?q?1YwFZY2A4NXjVcqlgwgoTSEUwIEAgQFAhaBeIF9cIM5URcCnH90OAIGCwEBA?=
 =?us-ascii?q?wmODoEQAQE?=
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="440212794"
IronPort-SDR: 
 rVZn2BwWoZKrL4yj4nOvV1QCX8jcseQ4yv7ZcSwDBKN0vDbsPB1LOpLxziw+1RxiG6SREBm3d+
 iV8fX7mpq3/Q==
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="47704594"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: BBLAYERS
Thread-Topic: BBLAYERS
Thread-Index: AdgBYsLFEEBNlMFQRG27gM5V2hTVSgAPutVwAAAZPZA=
Date: Tue, 4 Jan 2022 19:35:24 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_4572f27a5d8d4700b45ab4b0e10d40c7baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 19:36:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55730
Message-Id: <20220104193633.2F4CCC433F5@smtp.lore.kernel.org>

--_000_4572f27a5d8d4700b45ab4b0e10d40c7baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Is it possible to use BBMASK to remove from builds ?

From: Monsees, Steven C (US)
Sent: Tuesday, January 4, 2022 2:32 PM
To: 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>
Subject: RE: BBLAYERS


Any suggestions... ?

From: Monsees, Steven C (US)
Sent: Tuesday, January 4, 2022 7:22 AM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: BBLAYERS


Under my Yocto build, I have basically 2 build directories (one for Arm and=
 one for Intel platforms)... each build directory has its own bblayer.conf.

Under each of these directories I build multiple images for each platform..=
.

If say, on the Intel side, I can build for 3 MACHINES creating 3 unique ker=
nel images A, B, and C (they all share a common bblayer.conf) and I then wa=
nt to modify one kernel to include meta-virtualization...

How would I manage the bblayer.conf to add this layer to only B's build so =
as not to impact the building of "A"  or "C" ?

If I just add it to the common bblayer.conf, "A" and "C" are impacted by th=
e addition and show:

WARNING: You have included the meta-virtualization layer, but 'virtualizati=
on' has not been enabled in your DISTRO_FEATURES. Some bbappend files may n=
ot take effect. See the meta-virtualization README for details on enabling =
virtualization support.

Thanks,
Steve

--_000_4572f27a5d8d4700b45ab4b0e10d40c7baesystemscom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is it possible to use =
BBMASK to remove from builds ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Tuesday, January 4, 2022 2:32 PM<br>
<b>To:</b> 'yocto@lists.yoctoproject.org' &lt;yocto@lists.yoctoproject.org&=
gt;<br>
<b>Subject:</b> RE: BBLAYERS<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any suggestions&#8230;=
 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Tuesday, January 4, 2022 7:22 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> BBLAYERS<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under my Yocto build, I have basically 2 build direc=
tories (one for Arm and one for Intel platforms)&#8230; each build director=
y has its own bblayer.conf.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under each of these directories I build multiple ima=
ges for each platform&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If say, on the Intel side, I can build for 3 MACHINE=
S creating 3 unique kernel images A, B, and C (they all share a common bbla=
yer.conf) and I then want to modify one kernel to include meta-virtualizati=
on&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>How would I manage the bblayer.conf to add this l=
ayer to only B&#8217;s build so as not to impact the building of &#8220;A&#=
8221;&nbsp; or &#8220;C&#8221; ?<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I just add it to the common bblayer.conf, &#8220;=
A&#8221; and &#8220;C&#8221; are impacted by the addition and show:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: You have included the meta-virtualization l=
ayer, but 'virtualization' has not been enabled in your DISTRO_FEATURES. So=
me bbappend files may not take effect. See the meta-virtualization README f=
or details on enabling virtualization
 support.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_4572f27a5d8d4700b45ab4b0e10d40c7baesystemscom_--

