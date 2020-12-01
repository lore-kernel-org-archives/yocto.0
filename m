Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web11.1561.1606853180518575243
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Dec 2020 12:06:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=U2cHZAOY;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1606853180; x=1764533180;
  h=from:to:subject:date:in-reply-to:mime-version;
  bh=OcAfsdAEI5O38cgy7X2SuO/WHl96JzvaB5EC6t3HDvk=;
  b=U2cHZAOYvSFoT8W9bTsJPdHBlAJqA5CFgyDETxlki26EW/CIWME8gsC2
   TWd9GXRqQrrXMRZ8xgY9M+UohzGVXPL1jK7eNsbAC4B1MHsylNDjoWHNj
   ryrx7lffLuDcFtrw/v/1mdG8Gg0DXO5RbTO+/IQFISqK9AsLyXx+USjCR
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AC2+VmBFsmevNSvVcS72whZ1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76p8WzbnLW6fgltlLVR4KTs6sC17OJ9fm+AydZuM/JmUtBWaQEbwUCh8?=
 =?us-ascii?q?QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFRrlKAV6?=
 =?us-ascii?q?OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRe7oR/MusQXn4duJbs9xgbUrnBVZ+?=
 =?us-ascii?q?lY2GRkKE6JkR3h/Mmw5plj8ypRu/Il6cFNVLjxcro7Q7JFEjkoKng568L3uxbN?=
 =?us-ascii?q?SwuP/WYcXX4NkhVUGQjF7Qr1UYn3vyDnq+dywiiaPcnxTbApRTSv6rpgRRH0hC?=
 =?us-ascii?q?sbMTMy7WfagdFygq1GuhKsvxxxzZDJboGJOvRwfa3dctEbRWVdUclcTDZODp++?=
 =?us-ascii?q?b4YVE+YNIfhUoo/grFUOtxu+AgysCfvhxjFPgX/227Y63Po/HgHdxAArAs8AsG?=
 =?us-ascii?q?jKo9XrKqgSV/2+wbfVxjnHYfxYxDLx5IbVeR0muvGMQax/cdTPxkkpDQ/Fi1KQ?=
 =?us-ascii?q?qYr+PzyLyOsNqHOW4PF6Wu2xkG4mqxpxoiSxyccpkYnFnJ4aylfB9Shgxos+ON?=
 =?us-ascii?q?K3RlJhb9G+DJtQqz+VN5FwQs46TWxkpSk3x7MGt5C7cyUEx4oryh3DZvGDboWF?=
 =?us-ascii?q?4wzvWPifLzl3hHxpZLyxihay/ES+yuDyWMe63EpEoCRLjtXBtnYA3AHd5MiAT/?=
 =?us-ascii?q?ty5Eah2TCX2gHT7eFLPVw0la3DK547xb4wlIQcvljfHiPsn0X2lqCWe0M58ear?=
 =?us-ascii?q?8+TqeqjqqoOGO4J6iAzyKLoiltK/DOgiMwUDXnCX9fmg2LH58kD0T69Gg/ksnq?=
 =?us-ascii?q?Tasp3XI9kQqLSjDA9PyIkj7g6yDzKh0NsFg3YKNElFeBebj4jxPFHOPez4Ae+/?=
 =?us-ascii?q?g1uylDdrwOjLMaH7DZXWMnfDlazhcLJ55kNf1AY/08pT55ROBb0bO/38QFH+tM?=
 =?us-ascii?q?fYDx8iLwy73ePnCM5n2owCXmKPB7eVMKLUsVCW+uIiO/SAaJMPtDvzKfUp/eDi?=
 =?us-ascii?q?gWE5lFMHfKSk3IMbaHWiEfRnJ0WZb2DsgtAEEWoSpQo+UPLliEOcXj5VfXqyWq?=
 =?us-ascii?q?U85jcgCI24E4jDXZugj6eb0yilBZ1XZntGCkySHnftbIWIQesDaCWXIsN5iDwL?=
 =?us-ascii?q?SaChS5M91RGprAL7y71nIfbI+i0frp/j0Nl15/bPlREp7zB1D8Od3H2RT2Fzhm?=
 =?us-ascii?q?MIXTg23KJhrkNh1lePy694g+ZXFY8b2/QcGCI9M4XRwvc+Q+vuVxzMeJ+iABab?=
 =?us-ascii?q?eZTsSWUqUt8vztlIZkF7ANivlTjJ1iexEqQJmrmQQpcz9/SYlzLgIM1hzF7C1b?=
 =?us-ascii?q?I9lB83RcBTMnW8gaxy/BSVAJTG2Q3NhqGhaaM02C/W6HzF3G2FoEZASglyXK7Z?=
 =?us-ascii?q?G3cFaR2Fg87+4xaIarioErkqKU8J8tKPNKZMIvahzWh9Bb2rbM/Cbny8nSG1Ah?=
 =?us-ascii?q?CTy76XRIDjdn4MxznQDVNCmAcWqyXVfTMiDzus9jqNRAdlEkjiNhvh?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DmBAAWocZf/0LhJQpigQmCcoF8gSEWC?=
 =?us-ascii?q?pVamkmBaAsBAQEBAQEBAQEIARgBBhAEAQGESgKCFCY4EwIQAQEGAQEBAQEGBAG?=
 =?us-ascii?q?GUQyCNyKDGQEBAQQBLFwCAQgRBAEBKAcoChQJCAEBBAESCIMfgX6tF3SBNIpYg?=
 =?us-ascii?q?TiJLYVwPoQpPoJdBYEnARIBV4VABJshnVIHA4JwiRiLLIZkK4RNnVWTbKELAgQ?=
 =?us-ascii?q?CBAUCFYFtgQpwcIM5CUcXAg2XJoVEdDcCBgoBAQMJjm+BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2DmBAAWocZf/0LhJQpigQmCcoF8gSEWCpVamkmBaAsBAQE?=
 =?us-ascii?q?BAQEBAQEIARgBBhAEAQGESgKCFCY4EwIQAQEGAQEBAQEGBAGGUQyCNyKDGQEBA?=
 =?us-ascii?q?QQBLFwCAQgRBAEBKAcoChQJCAEBBAESCIMfgX6tF3SBNIpYgTiJLYVwPoQpPoJ?=
 =?us-ascii?q?dBYEnARIBV4VABJshnVIHA4JwiRiLLIZkK4RNnVWTbKELAgQCBAUCFYFtgQpwc?=
 =?us-ascii?q?IM5CUcXAg2XJoVEdDcCBgoBAQMJjm+BEQEB?=
X-IronPort-AV: E=Sophos;i="5.78,385,1599523200"; 
   d="scan'208,217";a="466811550"
X-IronPort-AV: E=Sophos;i="5.78,385,1599523200"; 
   d="scan'208,217";a="173378212"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto
Thread-Topic: [yocto] #yocto
Thread-Index: Ada9q0Gah+MAkjdpRLyRArogF5D01gKcfVyg
Date: Tue, 1 Dec 2020 20:06:17 +0000
In-Reply-To: <1648FB72CE3E4F12.13688@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.164CB074CF07EE24.20854@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7f51467f414a4f64bc1b2cf31081437cbaesystemscom_"

--_000_7f51467f414a4f64bc1b2cf31081437cbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I still haven't been able to track this down, can someone tell me in what p=
ackage is the banner output generated ?

Thanks,
Steve
From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On=
 Behalf Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Wednesday, November 18, 2020 8:08 AM
To: yocto@lists.yoctoproject.org
Subject: [yocto] #yocto

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.


I was going through the kernel boot output and saw the following output, ca=
n someone tell me why this might be popping up and how I might modify confi=
guration to resolve? :
.
.
LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS0

-sh: cannot set terminal process group (1137): Inappropriate ioctl for devi=
ce
-sh: no job control in this shell
.
.

Thanks,
Steve

--_000_7f51467f414a4f64bc1b2cf31081437cbaesystemscom_
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I still haven&#8217;t =
been able to track this down, can someone tell me in what package is the ba=
nner output generated ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Steve<o:p></o:p></span=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org [mailto:yo=
cto@lists.yoctoproject.org]
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Wednesday, November 18, 2020 8:08 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] #yocto<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:solid windowtext 1.0pt;padding:1.0pt 4.0pt 1.0pt 4.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">*<strong=
><span style=3D"font-family:&quot;Arial&quot;,sans-serif">**
</span></strong></span><strong><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,sans-serif">WARNING
</span></strong><strong><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif">***</span></strong><span style=3D"font-size:8.5pt;fo=
nt-family:&quot;Arial&quot;,sans-serif"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">EXTERNAL EMAIL -- This message originates from outside our organizati=
on</span><span style=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,sans-=
serif">.</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">I was going through the kernel boot output and saw t=
he following output, can someone tell me why this might be popping up and h=
ow I might modify configuration to resolve? :
<o:p></o:p></p>
<p class=3D"MsoNormal">. <o:p></o:p></p>
<p class=3D"MsoNormal">. <o:p></o:p></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default tty=
S0 <o:p>
</o:p></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: cannot set terminal p=
rocess group (1137): Inappropriate ioctl for device
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: no job control in thi=
s shell </span>
<o:p></o:p></p>
<p class=3D"MsoNormal">. <o:p></o:p></p>
<p class=3D"MsoNormal">. <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">Thanks, <o:p></o:p></p>
<p class=3D"MsoNormal">Steve <o:p></o:p></p>
</div>
</body>
</html>

--_000_7f51467f414a4f64bc1b2cf31081437cbaesystemscom_--
