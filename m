Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E61DC433F5
	for <webhook@archiver.kernel.org>; Wed, 17 Nov 2021 17:21:36 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.10287.1637169693071627167
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Nov 2021 09:21:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=iGmC3qoz;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1637169692; x=1794849692;
  h=from:to:subject:date:mime-version;
  bh=MbPfyjKhaTDB+HiU7bjjNv5gs3mQZiMoS3gP1OCtDvw=;
  b=iGmC3qozosrqSsbqaGX3QfY/sNoMZpXxHjTfDzyxNYtK1KDPuDjFDN/2
   DCikDOc2X4Utp/eIqPrGpFgi+K5jLogLzT8j0sh6QZ4+hfgPSb9c0WPGD
   Q7Ye3hsdw9WOqmE77iRcgkWYKJcojvPK0aSae4mxyCixykwHC3t/DKcX3
   Y=;
IronPort-SDR: 
 9fe4WPIE19y9RCKdvHXS7jQuIMEdowY+0KQBfd4Z7yMF7r0psqqLNQKWQ9dJwXKpaP+GF0lODI
 UL3yCu6S8v3A==
IronPort-PHdr: =?us-ascii?q?A9a23=3Ak+TmrRJWdghzjbiIFdmcuARhWUAX0o4c3iYr4?=
 =?us-ascii?q?5Yqw4hDbr6kt8y7ehCFvLM20BSWDc2bs6sC17CO9fi4GCQp2tWoiDg6aptCV?=
 =?us-ascii?q?hsI2409vjcLJ4q7M3D9N+PgdCcgHc5PBxdP9nC/NlVJSo6lPwWB6nK94iQPF?=
 =?us-ascii?q?RrhKAF7Ovr6GpLIj8Swyuu+54Dfbx9HiTajfL9+Nhu7oAreusQUgoZpN6I9x?=
 =?us-ascii?q?gfUrndSdOla239kKUiPkxrg48u74YJu/TlXt/897cBLTL/0f74/TbxWDTQmN?=
 =?us-ascii?q?3466cj2vhTdTgWB+2URXHwOnhVHHwbK4hf6XozssiThrepyxDOaPcztQr8qX?=
 =?us-ascii?q?zmp8rpmRwXpiCcDMD457X3Xh8lth69VvB6tuxpyyJPSbYqINvRxY7ndcMsaS?=
 =?us-ascii?q?2RfQ8hRSyJPDIC9b4QTAOUMJvxXo5X/p1YUsReyGRegCeXywTFInH/22qg63?=
 =?us-ascii?q?vwvHQ/B2wwgGckOv2rKo9XuLKsZTP27zLXWwjXdcfxW3yr25ZbVeRwlr/6CQ?=
 =?us-ascii?q?Ld8fcTMwkQoDAPFkkufqZL7MDOTzOgNtm+b7+x7Ve2xlWEnsBp8rSO1ycgyk?=
 =?us-ascii?q?YnIhpkVykza+iV824Y5P8G3SEl+YdO9FpZbqi6VOZdsTMw4X2FopDg1yqcAu?=
 =?us-ascii?q?ZOjciYHxogqyh/dZvGGbYSE/wzuWeWRLDp8i39od6+ziRiy/Eav1+HxUsu53?=
 =?us-ascii?q?VZFoydEj9XBqHQA2h/Q58WaV/dz8UGs0iuM2QDL8uxIPFw4mbDVJpMj2LI8i?=
 =?us-ascii?q?IQfvETZEiL3mUj6lLKaelk+9uWn5OnreLrrqoWBO4J0jAz1L74gldalAesiN?=
 =?us-ascii?q?wgDR22b+eOh27L95UD5W7BKjuEukqnerZDaOdwXpq6nDA9R1YYu8wqwAC290?=
 =?us-ascii?q?NsEmHkHN1ZIdRaEgoT1JV3COvb4Au2lj1u3ijhk2evGP736ApXRMHfDlazhc?=
 =?us-ascii?q?axh5E5bzQo/1dFf55RKBbEdOP//R1P9uMbWAxI7KQC43fjrBdVn2o4fWG+DG?=
 =?us-ascii?q?qqZP7nTsV+M6OIvOe6MZIoNtTbmN/gq+eDugmE/mVMHeKmp2p0XaGumEft4O?=
 =?us-ascii?q?EWUemHjjc0fHmcRvgs+V/Dqh0OHUT5IfXq9Q6U85jQjBIK8EYjDXpytgKCG3?=
 =?us-ascii?q?CqjHpxWYXxJCkyLEXrzc4WEWuwMaD6JIsN7kj0EUqSuS5Mm1RG2rg/6zLhnI?=
 =?us-ascii?q?fTI9S0Er57j08J15+KA3S01oHZlCM+B1EmJTnpohSUZQDQq27hlpk5wwUvF1?=
 =?us-ascii?q?rJ3ybQMBNtY+/RhVgYhKYWa3utxF9fqQAXDc9yVDlG8TYP1Lys2S4d75tgIe?=
 =?us-ascii?q?EtwAJHqtQzOwSesS5Rd14GwRdZ8prnA0mb8IYB4zHDd2aQ6p1MvT9BeLnGrg?=
 =?us-ascii?q?7U5/A/WUd2a236FnrqnIPxPlBXG832OmDLmgQ=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AS17Uy6JpiBjHU5ZTFE+R+5clxSXFcZb7ZxGr2?=
 =?us-ascii?q?PjKsXjdYENS1TdTyWUcWWvTPvmLNmSgKYhzbYu3/EtTv57VytBlTgcd+CA2R?=
 =?us-ascii?q?RqmiyZl6fd1jKvI0qj7wvTrFCqL1O1DLImfRCwIZiWE/E70a+G+9SIUOZygH?=
 =?us-ascii?q?9IQNsaVYkideic5EE/NuTo78wIIqtYAbeqRWmthivuuyyHrA2JJ7hYvWo4iB?=
 =?us-ascii?q?wNvnzs01Bj6kGtwUlXT/pmntneG/5UeJMp3ya1csxLFrodo8u6SH44vzZmy9?=
 =?us-ascii?q?3jS+gx8W4P9yPD9ewsAS7PJLBOSh39NHaOlh3CupARriuBga7xGMxoR1Wvhc?=
 =?us-ascii?q?9NZkb2hsbSrVQo3M6uKneMbSBRVCAl0NKBd6aTbLH2k98eUyiUqdlOwmaU2X?=
 =?us-ascii?q?BFmZtdwFuFfRDsmGeYjACEKZQyEr+a3266gDPhrjdgkNNPsPo4Upjdn1z6xM?=
 =?us-ascii?q?BqMafgvWI2TvZkDg3Fq3J0IQ6i2WibQUhI3BDyoXvGFEg1/5EoCodqV?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Aq5TnAqskkJrBnYXN+HNfja7g7skDk9V00z?=
 =?us-ascii?q?EX/kB9WHVpm5qj5riTdZUgpGzJYVMqM03I9urtBEDtexzhHbAc2/h1AV6JZn?=
 =?us-ascii?q?iFhILQFvAY0WKA+UydJ8SdzI9gPPxbAs5D4bTLZDAR4PoShjPIbOrIq+PozE?=
 =?us-ascii?q?ncv5ai854bd3ARV0gP1XYJNu+zKDwOeCB2QbA+CIGH6o5mqlObCBAqR/X+LH?=
 =?us-ascii?q?8YRPLO4/rCkJ6OW29gOzcXrCWIkDO0+PrbPnGjr2cjukt0sNQfGBP+8zARP5?=
 =?us-ascii?q?/Tzc2G9g=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A0BABfOZVh/0LhJQpaHgE8DAILFQm?=
 =?us-ascii?q?BUIEhggCBTZVPnD6BfAsBAQEBAQEBAQEIAUEEAQGHbSY2Bw4BAgQBAQESAQE?=
 =?us-ascii?q?GAQEBAQEGBAGBG4VpDII1IoQfXgEMCWsmAQQbgmqBfq5vgTMaAmWEaYUPgTq?=
 =?us-ascii?q?BZoVEgn6GFUOBFYgVhhUEkDE+UU6CGT+eOKAOBwODOZ5xLxWWEgORGIVakDs?=
 =?us-ascii?q?fpWcCBAIEBQIWgWgKggNwgzpQFwKcf4EsAgYLAQEDCZEbgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2A0BABfOZVh/0LhJQpaHgE8DAILFQmBUIEhggCBTZVPn?=
 =?us-ascii?q?D6BfAsBAQEBAQEBAQEIAUEEAQGHbSY2Bw4BAgQBAQESAQEGAQEBAQEGBAGBG?=
 =?us-ascii?q?4VpDII1IoQfXgEMCWsmAQQbgmqBfq5vgTMaAmWEaYUPgTqBZoVEgn6GFUOBF?=
 =?us-ascii?q?YgVhhUEkDE+UU6CGT+eOKAOBwODOZ5xLxWWEgORGIVakDsfpWcCBAIEBQIWg?=
 =?us-ascii?q?WgKggNwgzpQFwKcf4EsAgYLAQEDCZEbgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.87,241,1631577600";
   d="scan'208,217";a="428088832"
IronPort-SDR: 
 AOPVGYdDYgEPJH7wjpsnb4Ey540KUWKSREt/A5O6WhTJnmrXKOqDwZ5rRZlOPOrwUo0gQl0Bxg
 +0xcVM4m1FjQ==
X-IronPort-AV: E=Sophos;i="5.87,241,1631577600";
   d="scan'208,217";a="17834027"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: NFS under yocto
Thread-Topic: NFS under yocto
Thread-Index: Adfb1vmPP4ugS7NBSiSqoHknEV830g==
Date: Wed, 17 Nov 2021 17:20:29 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_bf7b7272c75e4bbea9ef11afa6394ba7baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Nov 2021 17:21:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55355
Message-Id: <20211117172136.9E61DC433F5@smtp.lore.kernel.org>

--_000_bf7b7272c75e4bbea9ef11afa6394ba7baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Current yocto build is based on zeus...
We have one board running Yocto Embedded linux that is sharing a drive part=
ition via NFS.
Another board is mounting the NFS share and has a few processes that can wr=
ite data to the drive.
We are seeing conditions were concurrent writes (two client processes) appe=
ar to result in "Stale File Handles".
The drive partition is using the NTFS file system.

We are wondering if there are any issues in the NFS Server or Client that c=
ould be causing these "Stale File Handles".
We have tried to change some of the options used to mount the NFS share.
Are there any options in how the location is shared that we should try?

Anyone hear about or experienced similar issues ?

Thanks,
Steve

--_000_bf7b7272c75e4bbea9ef11afa6394ba7baesystemscom_
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Current yocto build is based on zeus&#8230;<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">We have one board running Yocto Embedded linux that =
is sharing a drive partition via NFS.
<o:p></o:p></p>
<p class=3D"MsoNormal">Another board is mounting the NFS share and has a fe=
w processes that can write data to the drive.
<o:p></o:p></p>
<p class=3D"MsoNormal">We are seeing conditions were concurrent writes (two=
 client processes) appear to result in &#8220;Stale File Handles&#8221;.
<o:p></o:p></p>
<p class=3D"MsoNormal">The drive partition is using the NTFS file system.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are wondering if there are any issues in the NFS =
Server or Client that could be causing these &#8220;Stale File Handles&#822=
1;.
<o:p></o:p></p>
<p class=3D"MsoNormal">We have tried to change some of the options used to =
mount the NFS share.<o:p></o:p></p>
<p class=3D"MsoNormal">Are there any options in how the location is shared =
that we should try?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyone hear about or experienced similar issues ?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_bf7b7272c75e4bbea9ef11afa6394ba7baesystemscom_--

