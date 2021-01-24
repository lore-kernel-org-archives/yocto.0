Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.26069.1611518241810551255
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Jan 2021 11:57:24 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=bej5EuZN;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611518240; x=1769198240;
  h=from:to:subject:date:mime-version;
  bh=maGQWN4ofOR56bxp7Qf8vO0J/zxftcYLHqM592kW9H4=;
  b=bej5EuZNAERvPOTxEwUt3zvT9oJhiBkkpu4oLtAA7Q3qWLqHwpIjyajh
   JuHH2TvJbrlcztlHtbeqnifhAbE75YQnZpjgrCe1U+ryfVO9GR8igB489
   OVYhodq/gSlV5zioqE6IUugPDLnwzvui0PawpHJ7vpb6U8mBUz0Vl9DpC
   4=;
IronPort-PHdr: =?us-ascii?q?9a23=3A6BYj5B+HFboUZv9uRHKM819IXTAuvvDOBiVQ1KB+?=
 =?us-ascii?q?0+gXIJqq85mqBkHD//Il1AaPAdyKragdwLuN++C4ACpcuMnH6ChDOLV3FDY9wf?=
 =?us-ascii?q?0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQka3OgV6?=
 =?us-ascii?q?PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjVu8UMn4duN6k9xx/Hr3BVf+?=
 =?us-ascii?q?ha2X5kKUickhrh5Mq85oJv/zhVt/k868NOTKL2crgiQ7dFFjomKWc15MPqtRnH?=
 =?us-ascii?q?UwSC42YXX3sVnBRVHQXL9Qn2UZjtvCT0sOp9wzSaMtbtTb8oQzSi7rxkRwHuhS?=
 =?us-ascii?q?waKjM26mDXish3jKJGvBKsogF0zoDIbI2JMvd1Y6XQds4YS2VcRMZcTyxPDJ2h?=
 =?us-ascii?q?YYsTAeQPPudYoJXyqFYVtxSyGQusCfnzxjNUmHP727Ax3eQ7EQHB2QwtB9wCvn?=
 =?us-ascii?q?PTrNXzL6cdT/66zLLQwT7ecv1WxSny6JbWfRAnvPqBQ697fc7fxkcyEg/JgEib?=
 =?us-ascii?q?pIv+PzOJyOsNrXaU7+x6WeKqjG4nrRpxrSaxycc3kYTGnZgaxU7f9SR524Y1Oc?=
 =?us-ascii?q?O3SEtgYdK+DJRQsCSaOpJwT8g/TG5mpDw0xacauZ6nYicK0pInygbRZfGJb4WF?=
 =?us-ascii?q?4xDuWeePLTtlmn9oe7KyihK9/EWv1+HyWMm53llXoidBkNTBtn8A2h3O5sWZTv?=
 =?us-ascii?q?Zw/USs1CuS2w7c7OxPPEM6lbLDJpI83rI8jJQevEbZEiPohkn7jLWae0Ql9+Sw?=
 =?us-ascii?q?9ujrfq/qq5+cOoNulw3zPboilta9DOk3NAUFQnKV9v6m1LL5+E30WLBKjvorna?=
 =?us-ascii?q?bHqJ3aPsEbprKhAw9Sz4Yj9w6zDze439QcmnkKNE5Kdwicj4f1PlHOO/T1APO8?=
 =?us-ascii?q?jliwjjtn3fbGMaf7DprWNHfMjqzhfLZm605A1gUzyMtf64hIBbEGJfL/Qk7xtN?=
 =?us-ascii?q?rGAR8lKwG43vrrBM9z244cQ26DHLGVPaPIvVKJ5+8jO+yMa5UUuDb5Jfgl/fnu?=
 =?us-ascii?q?jXohlF8GYammw4UXZ26+Hvh8JkWZZnzsgswfHmgUpQozV/flh0ecXj5IZ3eyRL?=
 =?us-ascii?q?486S8+CIK9F4vMWoetgLmZ0CehApJWfnxGCkyLEXrwd4SEXOsDaD6VIsJ6ljwE?=
 =?us-ascii?q?VKOhS5M61R20tA76zKZoLvbT+i0Ar5Lj09p16PPPmhEu7zB0CN6d027eB11zyy?=
 =?us-ascii?q?kZQDQq24h7oFdh0RGS1qNkhORCEt5e7O8PVR01f9aI3utxF9faXgPaYszPWVGt?=
 =?us-ascii?q?XtK+GzYzQ9kthdgUbBAuNc+li0WJ+i2sGLIYjPjDP4A57K/al1O5Z/tGijyOgL?=
 =?us-ascii?q?I9gkcrRI1KMmu9i6Nk3wLaCpXYiFmUkr3sfqMZin2evFyfxHaD6RkLGDV7Vr/I?=
 =?us-ascii?q?CCgS?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArAwCy0A1g/0LhJQpigQmBT4EjgX6BQ?=
 =?us-ascii?q?7BXgXwLAQEBAQEBAQEBCAEvBAEBhkUmNAkOAhABAQYBAQEBAQYEAYZSC4I4IoN?=
 =?us-ascii?q?NXgGBACYBBBuDH4F+tB2BNIVZhQcJAYEuj0E+hy6HcQSDU4IuC5sTnXsHA4J3m?=
 =?us-ascii?q?2YroniUHqFWAgQCBAUCFoFWghFwgzpPFwINnGqBKwIGCgEBAwmLBIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2ArAwCy0A1g/0LhJQpigQmBT4EjgX6BQ7BXgXwLAQEBAQE?=
 =?us-ascii?q?BAQEBCAEvBAEBhkUmNAkOAhABAQYBAQEBAQYEAYZSC4I4IoNNXgGBACYBBBuDH?=
 =?us-ascii?q?4F+tB2BNIVZhQcJAYEuj0E+hy6HcQSDU4IuC5sTnXsHA4J3m2YroniUHqFWAgQ?=
 =?us-ascii?q?CBAUCFoFWghFwgzpPFwINnGqBKwIGCgEBAwmLBIERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,371,1602547200"; 
   d="scan'208,217";a="342426315"
X-IronPort-AV: E=Sophos;i="5.79,371,1602547200"; 
   d="scan'208,217";a="177269693"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #kernel setting up PREMIRRORS under zeus
Thread-Topic: #yocto #kernel setting up PREMIRRORS under zeus
Thread-Index: AdbyibSHWW/3/1K+RmOmMBmkYnLMKw==
Date: Sun, 24 Jan 2021 19:57:18 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.55.142.74]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165D434E10AAA4F1.7203@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f23be354a219467fbe705383211b06c7baesystemscom_"

--_000_f23be354a219467fbe705383211b06c7baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am trying to setup PREMIRRORS to setup and point to the directory contain=
ing all the tar-balls for my build...
I was under the impression that the "SOURCE_MIRROR_URL" is a quick way to a=
dd a series of PREMIRROR entries for all supported protocols.

I added the following to my local.conf:

INHERIT +=3D "own-mirrors"
SOURCE_MIRROR_URL =3D "file:///ede/tms/yocto/zeus/downloads/PATH"

But this does not appear to retrieve the tar-balls from from my local repos=
itory...

What is the proper syntax required to setup PREMIRRORS to point to and use =
my local repo ?

Thanks,
Steve

--_000_f23be354a219467fbe705383211b06c7baesystemscom_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">I am trying to setup PREMIRRORS to setup and point t=
o the directory containing all the tar-balls for my build&#8230;<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#242729;background:white">I was under the impres=
sion that the&nbsp;&#8220;</span><code><span style=3D"font-size:10.0pt;font=
-family:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backg=
round:white">SOURCE_MIRROR_URL&#8221;</span></code><span style=3D"font-size=
:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#242729;background:w=
hite">&nbsp;is
 a quick way to add a series of&nbsp;</span><code><span style=3D"font-size:=
10.0pt;font-family:Consolas;color:#242729;border:none windowtext 1.0pt;padd=
ing:0in">PREMIRROR</span></code><span style=3D"font-size:11.5pt;font-family=
:&quot;Arial&quot;,sans-serif;color:#242729;background:white">&nbsp;entries
 for all supported protocols.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added the following to my local.conf:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INHERIT &#43;=3D &quot;own-mirrors&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">SOURCE_MIRROR_URL =3D &#8220;<a href=3D"file:///ede/=
tms/yocto/zeus/downloads/PATH">file:///ede/tms/yocto/zeus/downloads/PATH</a=
>&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But this does not appear to retrieve the tar-balls f=
rom from my local repository&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the proper syntax required to setup PREMIRRO=
RS to point to and use my local repo ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_f23be354a219467fbe705383211b06c7baesystemscom_--
