Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.49668.1622496770440179359
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 14:32:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=lIl6r9AH;
 spf=permerror, err=parse error for token &{10 18 %{d}.54.spf-protect.dmp.cisco.com}: invalid domain name (domain: baesystems.com, ip: 198.145.29.25, mailfrom: steven.monsees@baesystems.com)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4E09338C0661
	for <yocto@yoctoproject.org>; Mon, 31 May 2021 21:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1622496769; x=1780176769;
  h=from:to:subject:date:mime-version;
  bh=gco7PJkqRKMpD2TQ4wYbs9SAR/KmxNMpUZBhinnKY3Y=;
  b=lIl6r9AHGwMXm27Al0d6rXoMeKc1pO2U2qu0R90fcoEjzbpidXhxzup7
   KT7Fah4FNSkZ+dlFZTHgnaErac/AnsZIiZkeAkNTdBpdsVp26QO5H//ht
   nbnCZoZ/SSS3PyW12qw8lY0qCo/i3UnQVakahNrVlMIGuAlg9wZYODUsr
   U=;
IronPort-SDR: eTWrTImWle9TXsERTz4mD4+r5HnSfwnBeXPMUmWyQ+rnlJgyXR5IuTpZxGHQYW1cPwzJpf7tcS
 gKc3dPu9lArA==
IronPort-PHdr: =?us-ascii?q?A9a23=3A/YdEGBUVXK6P8IgtSTY7cnqyuMbV8KxNVTF92?=
 =?us-ascii?q?vMcY1JmTK2v8tzYMVDF4r011RmVBNSdsaMfwLON4+jJYi8p2d65qncMcZhBB?=
 =?us-ascii?q?VcuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMB?=
 =?us-ascii?q?x7xKRR6JvjvGo7Vks+7y/2+94fcbglVgDexe61+IRG4oAneq8Ubj4hvIbstx?=
 =?us-ascii?q?xXUpXdFZ/5Yzn5yK1KJmBb86Maw/Jp9/ClVpvks6c1OX7jkcqohVbBXAygoP?=
 =?us-ascii?q?G4z5M3wqBnMVhCP6WcGUmUXiRVHHQ7I5wznU5jrsyv6su192DSGPcDzULs5V?=
 =?us-ascii?q?yiu47ttRRT1jioMKjw3/3zNisFojKxVvg+vpwBxzYDXYYGaKPVxc7jHct8GR?=
 =?us-ascii?q?2pMRNpdWzBfDo66coABD/ABPeFdr4TlqVcAqhy+BQ+3BOzx1DBInWf61rAn3?=
 =?us-ascii?q?eQ9Dw7GwhIvH9QTu3nKsd75MKkdX/2wwKXG0D7OaOhW2Svj54jWbB8hp+uAX?=
 =?us-ascii?q?bd3ccrX0kkgCR3Kjk6LpIP+JTyayP8NsmiA7+p8S+2vjnUnpxttrTiow8chk?=
 =?us-ascii?q?4/EjZ8axV7Y7yt22po1JcGmR05hZ96pCJVeui+GOoZ3QM4vQn9ktDskx7AFu?=
 =?us-ascii?q?ZO2eCcHxZs6yxDRa/GJfJWE7xbhWeuRLjp1hW9pday7ihux8kWt1/DwWMay3?=
 =?us-ascii?q?V1XrSRFisHBum0R2xDJ5MWKSOFx8lql1DuBzQze6+BJLVgpmabHMZIswr49m?=
 =?us-ascii?q?oAOvUnBECL6gkT7ga+Qe0454Oan8f7nba/jppKEMo90jRzxPbo2l8ykBOQ4L?=
 =?us-ascii?q?hAOX2+G+eSgzLHj/VP2QLFNjvAulKnZsJbaKt4epq6iAAJY0pov5wqiAzu81?=
 =?us-ascii?q?tQXh2MLI0lfdx2ZlIjoO0rOIOzmAve6mFSgiitkx/fDPrH5A5XNKGbMkKv5c?=
 =?us-ascii?q?Lpg90JQ0gQ+wNJF655JDrwMLuj/V07wudDACx82KQ20w+LpCNVn0YMeXHqCA?=
 =?us-ascii?q?rSFMKzMr1+H+OQvL/OJZI8Svjb9MOYq6OD1jXIiglASZ7em3YAXaXCjAvRpP?=
 =?us-ascii?q?UCZYWH2jtgdFmcKuxIyTPb2h12aTT5Te3GyUro85zE8FI2mEYDDS5utgbyGw?=
 =?us-ascii?q?Ci7AppWZnhcClCLE3fnaZmLW+sWZCKVOM9hnW9Mab/0AZ4m3g2pnB79wKZgN?=
 =?us-ascii?q?vDT+CATqdTkztc/r7nCkhou8hRlCM+B1HmXSGN5lX9OQCU5ivNRu0t4nx2m1?=
 =?us-ascii?q?q5jjvFDUZRo+/5XXwFyHtac8tc7QZimQR7MYNqPDlOhRM6rDCoZRNs82M4Vf?=
 =?us-ascii?q?0t4AJOpiRWVjHniOKMci7HeXM98yanbxXWkf65A?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AQ3EPKKl59abQD+2nnGlfGv7v3rXpDfLw3D?=
 =?us-ascii?q?Abv31ZSRFFG/Fw9vre58jzsCWetN9/Yh8dcLy7VZVoAkmskaKdmLNxAV76Zm?=
 =?us-ascii?q?nbUQiTXeNfBOnZskXd8kTFn4Y26U4HSdkaNDSaNzdHZKjBjDVQXOxQp+VvXZ?=
 =?us-ascii?q?rY49v23jNGdykvQadl9gJ4AgGQHglNQhVcD5ZRLuv+2iMCnUvYRUgq?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADBQD0VLVg/0LBJQpagQkJgnGBf4F?=
 =?us-ascii?q?Ns2QLAQEBAQEBAQEBCAFBBAEBhlEmOBMCBAEBARIBAQYBAQEBAQYEAYEDhWk?=
 =?us-ascii?q?MgjgihB5eARVrHwcBBBuCaoF+qiyBNBoCZYRkhSQJAYEwgWWFIoJohghDjzQ?=
 =?us-ascii?q?EozyfFAcDgxmdWigRlQgDkE2VR6QiAgQCBAUCFoFrgX1wgzpPFwKce4ErAgY?=
 =?us-ascii?q?KAQEDCYpJgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2ADBQD0VLVg/0LBJQpagQkJgnGBf4FNs2QLAQEBAQEBA?=
 =?us-ascii?q?QEBCAFBBAEBhlEmOBMCBAEBARIBAQYBAQEBAQYEAYEDhWkMgjgihB5eARVrH?=
 =?us-ascii?q?wcBBBuCaoF+qiyBNBoCZYRkhSQJAYEwgWWFIoJohghDjzQEozyfFAcDgxmdW?=
 =?us-ascii?q?igRlQgDkE2VR6QiAgQCBAUCFoFrgX1wgzpPFwKce4ErAgYKAQEDCYpJgREBA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.83,238,1616457600"; 
   d="scan'208,217";a="381200263"
IronPort-SDR: D6xTzl7Ck0ZIJ01fYMoJR0E19aq8Px4WlfzRe4AiGUdnW7Rt5hXPo1jKahEGYDj+rzz5gMpU0U
 Ez3fGo1iyYrBNLXRoWUkknvyNONj4vRIzFD68AirvhgvQuK+IViWFIf0ZL5cTqU3/c27eYPY42
 LeaaPYraG36vInbgSSv8u/t39YgufIkUSyMNro8we/GR79doNMsBSFLWIdFU7I7vzZDF1h+K+E
 UFfkJrahJDTYMY6QZXVVbcsWRF284IXx7mkmXfmAgVMe2C2OFD3EhRxWHx8a/u0gEY0TtDVAYm
 VYg=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: kernel init debug features
Thread-Topic: kernel init debug features
Thread-Index: AddWYznV0bAjIC+FQHq08LZLmoDiRA==
Date: Mon, 31 May 2021 21:31:47 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.55.173.65]
MIME-Version: 1.0
Message-ID: <MADEUP.16844437E10EB3B5.665@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_552f1382c66c4fd0b700ca2e45cba796baesystemscom_"

--_000_552f1382c66c4fd0b700ca2e45cba796baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I have kernels based off "rocko" and "zeus" for both Arm and Intel... all u=
sing sysvinit (not systemd).

Under the Yocto build system, how can I easily set the following kernel con=
figuration variables based on the build for testing/debug ?


*        sched_rt_period_us

*        sched_rt_runtime_us

*        overcommit_memory

thanks,
Steve

--_000_552f1382c66c4fd0b700ca2e45cba796baesystemscom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
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
/* List Definitions */
@list l0
	{mso-list-id:640232136;
	mso-list-type:hybrid;
	mso-list-template-ids:1230428702 367809532 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">I have kernels based off &#8220;rocko&#8221; and &#8=
220;zeus&#8221; for both Arm and Intel&#8230; all using sysvinit (not syste=
md).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under the Yocto build system, how can I easily set t=
he following kernel configuration variables based on the build for testing/=
debug ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>sched_rt_period_us<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>sched_rt_runtime_us<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>overcommit_memory<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_552f1382c66c4fd0b700ca2e45cba796baesystemscom_--
