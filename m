Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.511.1601563324519781451
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 07:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=itWU0tcR;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1601563324; x=1759243324;
  h=from:to:subject:date:mime-version;
  bh=QfBRNsFPMlPzMHQOr+aVW59DRFgAlf8y0x2UbDq2JNM=;
  b=itWU0tcRg2iyJbiiGs3pQVPaFK+VDJf6KSm8s23psUaIWcJZfNTZcxoB
   /FcASaGMLI8xpMwJ+wtICsqDv74hWcAouJVd4O+HOcxDUP8SPLXWoLXkM
   R0xc16pqi2FZYjG8LeU6QemdvDDSjNNSbt2nRugBepxwmfG1GXTODQQax
   I=;
IronPort-PHdr: =?us-ascii?q?9a23=3Aw/ODkxxCUxHyxmrXCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?2uIXIJqq85mqBkHD//Il1AaPAdyErakYwLqO+4nbGkU4qa6bt34DdJEeHzQksu?=
 =?us-ascii?q?4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPERvjKwV1?=
 =?us-ascii?q?Ov71GonPhMiryuy+4ZLebxhKiTanb75/Ixq6oAbNusILnYZsN6E9xwfTrHBVYe?=
 =?us-ascii?q?pW32RoJVySnxb4+Mi9+YNo/jpTtfw86cNOSL32cKskQ7NWCjQmKH0169bwtRbf?=
 =?us-ascii?q?VwuP52ATXXsQnxFVHgXK9hD6XpP2sivnqupw3TSRMMPqQbwoXzmp8qFmQwLqhi?=
 =?us-ascii?q?gaLT406GHZhNJtgqJHrhyvpB1/zJLbb4yOLvVyYqHdcMkGSWZdQMpcUTFKDIOm?=
 =?us-ascii?q?b4sICuoMJehUoY76p1sIthuxGxejBPj3xjRVm3H2wbM10/o/HgHAwQctAc8FvH?=
 =?us-ascii?q?Dao9voMaseX/2+wa7TzTXfcfxWxyny6I7SfhAkpvGMW6lwftTPxkk0DA7KlU+f?=
 =?us-ascii?q?ppL+PzKVzeQNr3aU7+97Ve61l2EnrARxryGpy8wxhYbHmpgbxUrY9SVl3ok1P9?=
 =?us-ascii?q?u4RVZ1b9OqDJZdtiOXOopoTs8/XWxluyY3x7kJtJO0YSQExpQqyRHCZ/GDcYWF?=
 =?us-ascii?q?4h3uWeeMLTpmgH9oe7Gyiguv/UavzOD3S8q60E5SoyZYjtXArH4A2h7J5sSZVP?=
 =?us-ascii?q?dw/l2t1DeO2gzL9+1IPVo4mKXUJpI7xrM8jJkevEbFEyTrgkv5lrWWeV8h+uWw?=
 =?us-ascii?q?7uTnZajpqYGEOo9vjwH+LrwumsuiAeQkKgQOX3aU+eC71LD74UL2Wq5KgeEzkq?=
 =?us-ascii?q?nCtJ3XIccWqrKnDwNP1IYs8QyzACy839sGhnkGLElFeA6ZgIjsIFHCOuz3DfC6?=
 =?us-ascii?q?g1i0kTdrwe7JPqH5D5nQMnTPirnscLRn50JC1gY+zcpT6pNVB70ZJfL8QE7xtN?=
 =?us-ascii?q?jWDh8jNAy0xv7qCM5h1owAR2KAHKmZPLnXsV+P4OIvOPeDa5EOuDvmMPcq/eDh?=
 =?us-ascii?q?jWQ5mF8GYammw54XaGuiEvt6JEWZZGLggs0dHmcSogo+UOvqhUWCUD5Ue3myQ6?=
 =?us-ascii?q?U86yo/CIKnFofDWputjKaB3Se8ApJWemdGCkiWEXfvdYWLResDaD6ILs9miDwE?=
 =?us-ascii?q?Wuvpd4h0nwCpvxP9475mNfbPvDwfvo7kzMJy5eDYiVc17zM+R5CM1GqRSElwn3?=
 =?us-ascii?q?gUXHkn26tjplRnzVWO2rQ+hOZXQ499/fRMB00fMpjHwuFhT5jJRg/fc9HBYx7m?=
 =?us-ascii?q?f+7nS3llVc483dIIJUN6Hc6vgwvr1SOnGK4Oi7GOH9o/9aeKjCu5HNp013uTjP?=
 =?us-ascii?q?pptFIhWMYabWA=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BACj6XVf/0LhJQpfgQmCcoF3gT6yH?=
 =?us-ascii?q?gsBAQEBAQEBAQEIAS8EAQGHAyZLAhABAQYBAQEBAQYEAYZJC4I3IoNNXgEMdCY?=
 =?us-ascii?q?BBBuDH4F+qyKBNIVThHkJAZA5Po8TBJo2nRAHA4JnmlEroRctkmCgDgIEAgQFA?=
 =?us-ascii?q?hWDZXCDOk8XAg2cZoErAgYKAQEDCY4BgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2D7BACj6XVf/0LhJQpfgQmCcoF3gT6yHgsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGHAyZLAhABAQYBAQEBAQYEAYZJC4I3IoNNXgEMdCYBBBuDH4F+qyKBN?=
 =?us-ascii?q?IVThHkJAZA5Po8TBJo2nRAHA4JnmlEroRctkmCgDgIEAgQFAhWDZXCDOk8XAg2?=
 =?us-ascii?q?cZoErAgYKAQEDCY4BgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.77,323,1596499200"; 
   d="scan'208,217";a="450214989"
X-IronPort-AV: E=Sophos;i="5.77,323,1596499200"; 
   d="scan'208,217";a="167977654"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk DRM and DRM_INTEL
Thread-Topic: #yocto #sdk DRM and DRM_INTEL
Thread-Index: AdaYAOXn37kC1RwQQECrCJWOkgqhUA==
Date: Thu, 1 Oct 2020 14:41:59 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1639E55C3AA99317.26131@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_54c1a02c7a1d4b2b8501b8367b1d4089baesystemscom_"

--_000_54c1a02c7a1d4b2b8501b8367b1d4089baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Does Yocto support drm & drm_intel  ?, If so at what Yocto version was supp=
ort added ?

Thanks,
Steve

--_000_54c1a02c7a1d4b2b8501b8367b1d4089baesystemscom_
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does Yocto support drm &amp; drm_intel&nbsp; ?, If s=
o at what Yocto version was support added ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_54c1a02c7a1d4b2b8501b8367b1d4089baesystemscom_--
