Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF650C433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 19:32:06 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.770.1641324724227063476
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 11:32:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=I/59Vw0X;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1641324724; x=1799004724;
  h=from:to:subject:date:mime-version;
  bh=zUqmwJiDeZOPfYr/kVAVNo+0jh3DcTZnzeWK+atrCCU=;
  b=I/59Vw0XPDaA55CAqcaWkUZVWHjs8l5fCe4TecngfemVuZ+34Y/9Juii
   MjmjzY1BtVhKz0pZVBGM8mcuWXBdloYHxB0VCh6igf/gLfY+zZ9i3jthP
   IzeAwXTVQNdl3JTrbGwBE66Lh28pg+BhgoQ/6RRWWiy4rMOVRxONJfV8I
   c=;
IronPort-SDR: 
 TdF2NEFJpTzHoj7zJ0RTMjWazxHsHrWu3r8LabmEQ9Tj/l90QTFlvIok2YjpgsTEpLoO0WXW6H
 k0xxwNnqT9YA==
IronPort-PHdr: =?us-ascii?q?A9a23=3A8SsHFxATuOhWGDpJYiITUyQU60MY04WdBeb1w?=
 =?us-ascii?q?qQuh78GSKm/5ZOqZBWZua80ygaSBs6Csa4MotGVmpioYXYH75eFvSJKW713f?=
 =?us-ascii?q?DhBt/8rmRc9CtWOE0zxIa2iRSU7GMNfSA0tpCnjYgBaF8nkelLdvGC54yIMF?=
 =?us-ascii?q?RXjLwp1Ifn+FpLPg8it2O2+5YDfbx9ViDezb75+Iwi6oRveu8ILnYZsN6E9x?=
 =?us-ascii?q?wfTrHBVYepW32RoJVySnxb4+Mi9+YNo/jpTtfw86cNOSL32cKskQ7NWCjQmK?=
 =?us-ascii?q?H0169bwtRbfVwuP52ATXXsQnxFVHgXK9hD6XpP2sivnqupw3TSRMMPqQbwoX?=
 =?us-ascii?q?zmp8qFmQwLqhigaLT406GHZhNJtgqJHrhyvpB1/zJLbb4yOLvVyYqHdcMkGS?=
 =?us-ascii?q?WZdQMpcUTFKDIOmb4sICuoMJehUoY76p1sIthuxGxejBPj3xjRVm3H2wbM10?=
 =?us-ascii?q?/o/HgHAwQctAc8FvHDao9voMaseX/2+wa7TzTXfcfxWxyny6I7SfhAkpvGMW?=
 =?us-ascii?q?6lwftTPxkk0DA7KlU+fppL+PzKVzeQNr3aU7+97Ve61l2EnrARxryGpy8wxh?=
 =?us-ascii?q?YbHmpgbxUrY9SVl3ok1P9u4RVZ1b9OqDJZdtiOXOopoTs8/XWxluyY3x7kJt?=
 =?us-ascii?q?JO0YSQExpQqyRHCZ/GDcYWF4h3uWeeMLTpmgH9oe7Gyiguv/UavzOD3S8q60?=
 =?us-ascii?q?E5SoyZYjtXArH4A2h7J5sSaTvZw8F2t1DeP2gzL9+1IPVo4mKXUJpI7zbM8j?=
 =?us-ascii?q?IcfvETFEyTrgkv5lrWWeV8h+uWw7uTnZajpqYGEOo9vjwH+LrwumsuiAeQkK?=
 =?us-ascii?q?gQOX3aU+eC71LD74032WrVKjvszkqnCtJ3XIcAWqrKkDwNP1IYs8QyzACy83?=
 =?us-ascii?q?9sGhnkGLElFeA6ZgIjsIFHCOuz3DfC6g1i0kTdrwe7JPqH5D5nQMnTPirnsc?=
 =?us-ascii?q?LRn50JBzAc+w8pT6pNUB70ZJfL8QE7xtNjWDh8jNAy0xv7qCM5h1owAR2KAH?=
 =?us-ascii?q?KmZPLnXsV+P4OIvOPeDa5EOuDvmMPcq/eDhjWQ5mF8GYammw54XaGuiEvt6J?=
 =?us-ascii?q?EWZZGLggs0dHmcSogo+UOvqhUWCUD5Ue3myQ6U86yo/CIKnFofDWputjKaB3?=
 =?us-ascii?q?Se8ApJWemdGCkiWEXfvdYWLResDaD6ILs9miDwEWuvpd4h0nwCpvxP9475mN?=
 =?us-ascii?q?fbPvDwfvo7kzMJy5eDYiVc17zM+R5CM1GqRSElwn3gUXHkn26tjplRnzVWO2?=
 =?us-ascii?q?rQ+hOZXQ499/fRMB00fMpjHwuFhT5jJRg/fc9HBYx7mf+7nS3llVc483dIIJ?=
 =?us-ascii?q?UN6Hc6vgwvr1SOnGK4Oi7GOH9o/9aeKjCu5HNp013uTjPpptFIhWMYabQWb?=
IronPort-Data: =?us-ascii?q?A9a23=3AsLksSaie2rbE0uRqTuDXOJt5X161ShIKZh0uj?=
 =?us-ascii?q?C45NGQN5FlHY01jehtvX2uDOKyOYGP2Lt1wad6/9xtQu5Ldz9M2SARtpXhhE?=
 =?us-ascii?q?iNjpJueD7x1DKtQ0wB+jCH7ockOA/w2MrEsF+hpCC+MzvuRGuK59yMkjPnUH?=
 =?us-ascii?q?uCU5NPsY0ideyc1EE/Ntjo+w4bVsqYw6TSIK1vlVeHa+qUzC3f5s9JACV/43?=
 =?us-ascii?q?orYwP9ZUFUejxtD1rA2TagjUFYzDBD5BrpHTU26ByOQroW5goeHq+j/ILGRp?=
 =?us-ascii?q?gs1/j8zA9Ojl62qIxxSG/jUNE6Eg3dNSrO+jx1Z4Cc1187XNtJFMQEM1HPQz?=
 =?us-ascii?q?os3loglWZ+YEG/FOoXXhOkDXh8eFiZ4JqBL45fNKHWkoNePwkjdNXDrxp2CC?=
 =?us-ascii?q?WlqYdVCo78sWTsmGfswbWplggq4r/Oxy668Yu1tndg4atjsN58YomtnzzzSE?=
 =?us-ascii?q?bAhW5+rfklgzbe0xx9p3oYVQrCHNpFfN2cHUfgJWDUXUn9/NX70tL3AaqHDT?=
 =?us-ascii?q?gBl?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ANyzgJKrmV+TKHyNjQvtesqUaV5r3eYIsim?=
 =?us-ascii?q?QD101hICG9E/bo7PxG+c5x6faaslgssR0b9Oxoe5PwJU80jKQV3WBJB9eftW?=
 =?us-ascii?q?rdyQmVxeNZnPPfKlTbckWVygc679YET0EUMrLN5DZB4foSrzPIdOrIbeP3lp?=
 =?us-ascii?q?yAlKP19V8oZwdvcqRh5wByBkKgFFFsTgUuP+tbKHPZ3Ls/mwad?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AbBQDxn9Rh/0HBJQpaHgErCwYMIgm?=
 =?us-ascii?q?CcYIFgUILlVKeSAsBAQEBAQEBAQEIASoBFgQBAYhEJjgTAQIEAQEBEgEBBgE?=
 =?us-ascii?q?BAQEBBgQBgRuFVhMMgjUig2sBAQIDAQshXgEIDQQEAQFXCh0JAQQTCIJ3gg6?=
 =?us-ascii?q?taniBMxoCZYRqhRAJAYEwgWaFRIJ+hhdDhD8+ikIEkRmBCxuBQpIhjRWgQAc?=
 =?us-ascii?q?Dg0KXXIdWMBWWNgORLiqWDCChNIRTAgQCBAUCFoF4gX1wgzlRFwKcf3Q4AgY?=
 =?us-ascii?q?LAQEDCY4OgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2AbBQDxn9Rh/0HBJQpaHgErCwYMIgmCcYIFgUILlVKeS?=
 =?us-ascii?q?AsBAQEBAQEBAQEIASoBFgQBAYhEJjgTAQIEAQEBEgEBBgEBAQEBBgQBgRuFV?=
 =?us-ascii?q?hMMgjUig2sBAQIDAQshXgEIDQQEAQFXCh0JAQQTCIJ3gg6taniBMxoCZYRqh?=
 =?us-ascii?q?RAJAYEwgWaFRIJ+hhdDhD8+ikIEkRmBCxuBQpIhjRWgQAcDg0KXXIdWMBWWN?=
 =?us-ascii?q?gORLiqWDCChNIRTAgQCBAUCFoF4gX1wgzlRFwKcf3Q4AgYLAQEDCY4OgRABA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="440211302"
IronPort-SDR: 
 HJ579Bi/l0HkigPWf9o6mZkJ5oPYx4mnYJI1aG47E0N+cs7mLIYUsMwJ5mIGH6SZVRauuK6Qzr
 IwZNBd2RaWFQ==
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="47703877"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: BBLAYERS
Thread-Topic: BBLAYERS
Thread-Index: AdgBYsLFEEBNlMFQRG27gM5V2hTVSgAPutVw
Date: Tue, 4 Jan 2022 19:32:01 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_6e82fad1a67e4f169e0916d4fb9918c6baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 19:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55729
Message-Id: <20220104193206.EF650C433EF@smtp.lore.kernel.org>

--_000_6e82fad1a67e4f169e0916d4fb9918c6baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Any suggestions... ?

From: Monsees, Steven C (US)
Sent: Tuesday, January 4, 2022 7:22 AM
To: yocto@lists.yoctoproject.org
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

--_000_6e82fad1a67e4f169e0916d4fb9918c6baesystemscom_
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any suggestions&#8230;=
 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Tuesday, January 4, 2022 7:22 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
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

--_000_6e82fad1a67e4f169e0916d4fb9918c6baesystemscom_--

