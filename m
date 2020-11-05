Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.7246.1604582164860189567
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 05:16:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=IZUQhmBw;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1604582164; x=1762262164;
  h=from:to:subject:date:mime-version;
  bh=eC/NrDNC+datJvK69v0ZZOu5wjs0aETYJAq2PFMANVI=;
  b=IZUQhmBw6NuPIDhDZhIoAFru0aMNJKeIWI++24NcnR5mwlwJ2fz546QW
   Yzm5jJb8IS+ND53A9R02c+KcDbnh8/AfDbhb90+a44nkeHekneGjVgtvF
   urCX0VWn+0Cv8BSW//xqJ4wDg2h/tiMs55UMuC6zOOULq/0OY3LIofTnE
   8=;
IronPort-PHdr: =?us-ascii?q?9a23=3AW4DgFx9LAvOn+P9uRHKM819IXTAuvvDOBiVQ1KB2?=
 =?us-ascii?q?2+4cTK2v8tzYMVDF4r011RmVBNqdsqobwLeO+4nbGkU4qa6bt34DdJEeHzQksu?=
 =?us-ascii?q?4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPERvjKwV1?=
 =?us-ascii?q?Ov71GonPhMiryuy+4ZLebxhKiTanfL9+MBe7oQrRu8UKnIBvNrs/xhzVr3VSZu?=
 =?us-ascii?q?9Y33loJVWdnxb94se/4ptu+DlOtvwi6sBNT7z0c7w3QrJEAjsmNXs15NDwuhnY?=
 =?us-ascii?q?UQSP/HocXX4InRdOHgPI8Qv1Xpb1siv9q+p9xCyXNtD4QLwoRTiv6bpgRRn1gy?=
 =?us-ascii?q?kFKjE56nnahMxugqxGvBKvqR9xw4/Ib46aL/dxZL/RfdEASGZdQspdSSpMCZ68?=
 =?us-ascii?q?YYsVCOoBOP5Vo4f6qVsJqxu+HhejC/30yjNQm3T4wLE63Po/EQ7Y2gwrAswDu2?=
 =?us-ascii?q?nQoNr7KakeVO65x7TPwDXYc/NZxyn955bOchw7pPGMWrRwcdHPxkYxDAPIlU6f?=
 =?us-ascii?q?ppb7MDOO1uUNqHSb4PRlVeK0kWIotwZxoj22y8oql4LGiZ4bxEre+iVl3IY6O8?=
 =?us-ascii?q?e4SEhjbNCqHpZdqyCXOol3T888Xm1lpiU3x70CtJO0cyUG1Zopyh7QZfCad4WF?=
 =?us-ascii?q?4BLuWemQLDtlmn9ofLGyihWv/ES9xePxUNS/3lVSriddj9XAqmoB2hLR58SdV/?=
 =?us-ascii?q?dw+kms1SyO2g3S8u1IPFw4mbDUJpMu2LI9koAfvEfBEyLwhU74lrWZdl8+9eit?=
 =?us-ascii?q?8+nnZ7LmqYKCOIJskQH+N7gumtS4AeQlLggCR2ib9vq41L3k5UD5RrVKjvssna?=
 =?us-ascii?q?ncq5DXJsQWqrKlDwNIyIoj7QywAy2939sCg3YHN1JEeAmbj4f3PlHOO+r0Auu4?=
 =?us-ascii?q?g1SpiDtrxvbGMaP9ApjVM3TPjK3tcLh/5kJG1QY+yd5S64hVB7wAOP7zX1X+tN?=
 =?us-ascii?q?3cDh83KQy0xOPnBc1m1oMCR22PHLGWMKXIvV+N4eIvJfKMa5ELtzbmMPUq/OTh?=
 =?us-ascii?q?gmEimV4dZqmpwYUYaHWjHvh8P0qZZn/sjs8bEWgWpgo+UPDqiFqaXD9TYHa9Q7?=
 =?us-ascii?q?485jYgBYKiDIfDXZytgKeb0Ca7GZ1ZenxGCleUEXfycIWEWekDZz6OIsN7lTwE?=
 =?us-ascii?q?T7ehGMcd0kTkpQjx171PKuvP5jZepJXoyN9t/erRmBousztuAI7Vh3CKRH1ztm?=
 =?us-ascii?q?cJXCMtmrF4qlB60k2E06Vzn7pfD9MFtN1TVQJvf7vbyfd3Bsu2Ejndc8mETh6N?=
 =?us-ascii?q?CpWbOnB7BoYq39IQbkA7HtKklR3OxAKgCrIOhqeXCZkvtKnb2i6idI5G13/a2f?=
 =?us-ascii?q?x53BEdScxVODj+iw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D4BABk+qNf/0LBJQpig3uBd4FAsXoLA?=
 =?us-ascii?q?QEBAQEBAQEBCAEvBAEBhlomSxIBAQYCAQEBBgQBhlILgjcig01eAQx0JgEEG4M?=
 =?us-ascii?q?fgX6yfoVXhG6QTz6PFZp+nScHA4JtmwAroW2TTaBEAgQCBAUCFYNlcIQJFwINn?=
 =?us-ascii?q?GiBQwmNN4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2D4BABk+qNf/0LBJQpig3uBd4FAsXoLAQEBAQEBAQEBCAE?=
 =?us-ascii?q?vBAEBhlomSxIBAQYCAQEBBgQBhlILgjcig01eAQx0JgEEG4MfgX6yfoVXhG6QT?=
 =?us-ascii?q?z6PFZp+nScHA4JtmwAroW2TTaBEAgQCBAUCFYNlcIQJFwINnGiBQwmNN4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.77,453,1596499200"; 
   d="scan'208,217";a="323641482"
X-IronPort-AV: E=Sophos;i="5.77,453,1596499200"; 
   d="scan'208,217";a="230215636"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto overriding a task in a recipe
Thread-Topic: #yocto overriding a task in a recipe
Thread-Index: AdazbDgVLjGNiuR5Sj6hwBOxOFBjdQ==
Date: Thu, 5 Nov 2020 12:13:34 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.16449EFACAB396B5.26023@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f2c892080a424ee8901f5ce07729b758baesystemscom_"

--_000_f2c892080a424ee8901f5ce07729b758baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


If a recipe has a task "do_something() {...stuff...}", and for some reason =
I do not want that task to execute its steps, but a different series of ste=
ps, can I over-ride the task from a .bbapend by supplying the same routine =
with different steps ("do_something() {...new stuff...}") ?

Thanks,
Steve

--_000_f2c892080a424ee8901f5ce07729b758baesystemscom_
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
<p class=3D"MsoNormal">If a recipe has a task &#8220;do_something() {&#8230=
;stuff&#8230;}&#8221;, and for some reason I do not want that task to execu=
te its steps, but a different series of steps, can I over-ride the task fro=
m a .bbapend by supplying the same routine with different
 steps (&#8220;do_something() {&#8230;new stuff&#8230;}&#8221;) ?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_f2c892080a424ee8901f5ce07729b758baesystemscom_--
