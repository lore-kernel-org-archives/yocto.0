Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.23630.1605704998070368465
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 05:10:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=MEttzfXg;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605704998; x=1763384998;
  h=from:to:subject:date:mime-version;
  bh=EM6kF3CmgshYD8GV0m0Xhn04XATlIT8PYN6Z/ee2m70=;
  b=MEttzfXg4UvK/4041nQNjwv7WGm5ZWispiazbr8fLIFdGjOxWItXc135
   5GKaPSWEnTrafOqx/vLI3PlaaYqkKeTPmdXjxjICvhWjAzAZpdX4rlYNG
   Y/+mbsA28P7GKcq+zw4mE2sNX4mCkqbiaRpTNaTJmI7o4OIU7gAO6GGSZ
   s=;
IronPort-PHdr: =?us-ascii?q?9a23=3ARd7emxAItSyUzWPe6vG0UyQJP3N1i/DPJgcQr6Af?=
 =?us-ascii?q?oPdwSPXzo8bcNUDSrc9gkEXOFd2Cra4d1KyP6P2rBTxIyK3CmUhKSIZLWR4BhJ?=
 =?us-ascii?q?detC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBxrwKxd+?=
 =?us-ascii?q?KPjrFY7OlcS30P2594HObwlSizexfLF/IA+roQjftsQajoRvJ6UswRbVv3VEfP?=
 =?us-ascii?q?hby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPXw7683trhnD?=
 =?us-ascii?q?UBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RDqv47t3RBLulS?=
 =?us-ascii?q?wKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAWWZBXNxcWzBdDo+i?=
 =?us-ascii?q?aYYEEuoPPfxfr4n4v1YCoxywBQ6qBOP01DBHmGT20bUn2Oo8DQHJwhIgEMwIsH?=
 =?us-ascii?q?/Jstj+KaMeXu6owqXNwznIcvRb2Szh6IfWbBAuv/eMUah1ccrWz0kvDB3KgUuL?=
 =?us-ascii?q?qYH+JDyazPoCs3Ob7up7SeKglWsnqxprrjezwccsj5DEi4QIwV/L6St32pw6Jc?=
 =?us-ascii?q?GkSEFle96kFoNduS+UOoZqQ84vQWBltDgnxrAYupO2fCwHxZsoyhLCZfKKc4eG?=
 =?us-ascii?q?7g/nWeuTITp1i3NodK+hihu28kWtyfDxWtS73ltMsyFLkcHMu2gQ2xDP8MSKRP?=
 =?us-ascii?q?lw8l281TuL2Q3f8OBJLEAsmabGN5It2LE9m5UJvUnHBCP7m0f7gamLfUs+4Oeo?=
 =?us-ascii?q?8f7oYrD+q5+ZMI97lx/xP7w1msy6HeQ4Kg8OX3WH+eik1L3s40n5QLJSg/0oiK?=
 =?us-ascii?q?bZsJbaJcEApqO9BwJY1pov5wulAzegytsUh2III0hbdxKcj4npIE3OL+79Dfek?=
 =?us-ascii?q?mVijjDBrx/XeMr3gBJXCMGTDna/8cbph8UJRxgg+wcpC659QBLwNOvP+V0/puN?=
 =?us-ascii?q?zdFBA5Mgi0w+j9CNV604MTQXmPArOHP6PMr1CI4PgjI+yLZI8TozbyNeYq5+X1?=
 =?us-ascii?q?gHAig1ASY7Kp3JsMaHCkAPtmJl6ZbWDwjdcGFGcGphA+Q/DyiF2eTT5TYG6/Xq?=
 =?us-ascii?q?I75j4nFIKmCpzORoSsgLyawCe7BYdaZ2BBCl+QDXfocJ2EW+0LaCKQPMBujiAE?=
 =?us-ascii?q?WaKmS4872hH9/DP9nvB2KeHI/QUctIn/z55k4ObPkgko8j55BNjb1HuCBSkgj2?=
 =?us-ascii?q?QDWzge2KFkvVc721CIza9gmftaGNdPofRTXVFpG4TbyrkwLtf0QQ/MZZPBc0qr?=
 =?us-ascii?q?XNigSRp5Du8KgpVGN11hFsuviFbG2CyxDrIOv7aCCYcl6b7R2mO3LMF4nSWVnJ?=
 =?us-ascii?q?I9hkUrF5McfVatgbRyolDe?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BACeG7Vf/0HBJQpigQmCcoF7gUCyC?=
 =?us-ascii?q?AsBAQEBAQEBAQEIAS8EAQGGciY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+BfrAYgTSFV4R0CQGBLo8dPo8VBJsGnS8HA4JtmxAroXqTU6BXAgQCB?=
 =?us-ascii?q?AUCFYFrgXpwgzpPFwINnGiBKwIGCgEBAwmNN4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2D7BACeG7Vf/0HBJQpigQmCcoF7gUCyCAsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGciY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQmAQQbgx+BfrAYg?=
 =?us-ascii?q?TSFV4R0CQGBLo8dPo8VBJsGnS8HA4JtmxAroXqTU6BXAgQCBAUCFYFrgXpwgzp?=
 =?us-ascii?q?PFwINnGiBKwIGCgEBAwmNN4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.77,486,1596499200"; 
   d="scan'208,217";a="326854310"
X-IronPort-AV: E=Sophos;i="5.77,486,1596499200"; 
   d="scan'208,217";a="446884464"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto
Thread-Topic: #yocto 
Thread-Index: Ada9q0Gah+MAkjdpRLyRArogF5D01g==
Date: Wed, 18 Nov 2020 13:08:05 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_"

--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


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

--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_
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
<p class=3D"MsoNormal">I was going through the kernel boot output and saw t=
he following output, can someone tell me why this might be popping up and h=
ow I might modify configuration to resolve? :<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default tty=
S0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: cannot set terminal p=
rocess group (1137): Inappropriate ioctl for device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: no job control in thi=
s shell<o:p></o:p></span></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_--
