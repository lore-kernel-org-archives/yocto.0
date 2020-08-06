Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.10176.1596730948433359916
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 09:22:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=h9tzyrXl;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1596730948; x=1754410948;
  h=from:to:subject:date:mime-version;
  bh=W6sP9U71ymTrOYlHQF6fuE9Ofs5akC+fau1NZ6J7LNc=;
  b=h9tzyrXljyc5YdPlC7+E6gBE5ZREcJEgJN/tdprJs4eZnL+BJVTgkG57
   35OYl4hW7E5UnjlKHBytXg2KjmWCHUvwIRe7ydmMk6sdMc8sbBK1lwNoZ
   p/BSTIr2a/rHbRfwEpMW5paBKa9Rm5FGNIaN1yt843G9ZWEPrnxO4h9yi
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AIIJeUxBTUNhIYMVGgsUVUyQJP3N1i/DPJgcQr6Af?=
 =?us-ascii?q?oPdwSPXzo8bcNUDSrc9gkEXOFd2Cra4d1ayG6+u5ATRIyK3CmUhKSIZLWR4BhJ?=
 =?us-ascii?q?detC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBxrwKxd+?=
 =?us-ascii?q?KPjrFY7OlcS30P2594HObwlSizexfLJ/IA+1oAnNucUanJduJroswRbVv3VEfP?=
 =?us-ascii?q?hby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPXw7683trhnD?=
 =?us-ascii?q?UBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RDqv47t3RBLulS?=
 =?us-ascii?q?wKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAWWZBXNxcWzBdDo+i?=
 =?us-ascii?q?aYYEEuoPPfxfr4n4v1YCoxywBQ6qBOP01DBHmGT20bUn2Oo8DQHJwhIgEMwIsH?=
 =?us-ascii?q?/Jstj+KaMeXu6owqXNwznIcvRb2Szh6IfWbBAuv/eMUah1ccrWz0kvDB3KgUuL?=
 =?us-ascii?q?qYH+JDyazPoCs3Ob7up7SeKglWsnqxprrjezwccsj5DEi4QIwV/L6St32pw6Jc?=
 =?us-ascii?q?GkSEFle96kFoNduS+UOoZqQ84vQWBltDgnxrAYupO2fCwHxZsoyhLCZfKKc4eG?=
 =?us-ascii?q?7g/nWeuTITp1i3NodK+hihu28kWtyfDxWtS73ltMsyFLkcHMu2gQ2xDP8MSKRP?=
 =?us-ascii?q?lw8l281TuL2Q3f8OBJLEEsmabGN5It2LE9m5UJvUnHBCP7m0f7gamLfUs+4Oeo?=
 =?us-ascii?q?8f7oYrD+q5+ZMI97lx/xP7w1msy6HeQ4Kg8OX3WH+eik1L3s40n5QLJSg/0wkq?=
 =?us-ascii?q?nZtorVJcEApqO6AwJZzpov5wulAzegytsUh2III0hbdxKcj4npIE3OL+79Dfek?=
 =?us-ascii?q?mVijjDBrx/XeMr3gBJXCMGTDna/8cbph8UJRxgg+wcpC659QBLwNOvP+V07puN?=
 =?us-ascii?q?zdFBA5Mgi0w+j9CNV604MTQXmPArOHP6PMr1CI4PgjI+yLZI8TozbyNeYq5+X1?=
 =?us-ascii?q?gHAig1ASY7Kp3JsMaHCkAPtmJl6ZbWDwjdcGFGcGphA+Q/DyiF2eTT5TYG6/Xq?=
 =?us-ascii?q?I75j4nFIKmCpzORoSsgLyawCe7BYdaZ2BBCl+QDXfocJ2EW+0LaCKQPMBujiAE?=
 =?us-ascii?q?WaKmS4872hH9/DP9nvB2KeHI/QUctIn/z55k4ObPkgko8j55BNjb1HuCBSkgj2?=
 =?us-ascii?q?QDWzge2KFkvVc721CIza9gmftaGNdPofRTXVFpG4TbyrkwLtf0QQ/MZZPBc0qr?=
 =?us-ascii?q?XNigSRp5Du8KgpVGN11hFsuviFbG2CyxDrIOv7aCCYcl6b7R2mO3LMF4nSWVnJ?=
 =?us-ascii?q?I9hkUrF5McfVatgbRyolDe?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArBQD6LSxf/0LBJQpggQmCbYF2gT2BI?=
 =?us-ascii?q?5lDlmoLAQEBAQEBAQEBBwEvBAEBD4ZsJTgTAhABAQYBAQEBAQYEAYZJC4I3IoN?=
 =?us-ascii?q?MXgEMdCYBBBuDH4F+tXqBNIVShR2BOIVCS4hdPoERgmKLIASPZ4lwnEQHA4JiB?=
 =?us-ascii?q?IdekiMqoAGSKZsGhCUCBAIEBQIVgWqBenCDOk8XAg2cZoErAgYIAQEDCY5ugRE?=
 =?us-ascii?q?BAQ?=
X-IPAS-Result: =?us-ascii?q?A2ArBQD6LSxf/0LBJQpggQmCbYF2gT2BI5lDlmoLAQEBAQE?=
 =?us-ascii?q?BAQEBBwEvBAEBD4ZsJTgTAhABAQYBAQEBAQYEAYZJC4I3IoNMXgEMdCYBBBuDH?=
 =?us-ascii?q?4F+tXqBNIVShR2BOIVCS4hdPoERgmKLIASPZ4lwnEQHA4JiBIdekiMqoAGSKZs?=
 =?us-ascii?q?GhCUCBAIEBQIVgWqBenCDOk8XAg2cZoErAgYIAQEDCY5ugREBAQ?=
X-IronPort-AV: E=Sophos;i="5.75,441,1589241600"; 
   d="scan'208,217";a="431143811"
X-IronPort-AV: E=Sophos;i="5.75,441,1589241600"; 
   d="scan'208,217";a="213647327"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Does any version of Yocto currently support LLVM/CLANG/and OpenCL ?
Thread-Topic: Does any version of Yocto currently support LLVM/CLANG/and
 OpenCL ?
Thread-Index: AdZsDbAWG5FPX5RrQeusvw/DxSFsDw==
Date: Thu, 6 Aug 2020 16:21:51 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.1628BA56FCFEA888.10739@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_001870fa079146b1a17bc0fb0ec25accbaesystemscom_"

--_000_001870fa079146b1a17bc0fb0ec25accbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello:

I am currently working with rocko 2.4.1... building for X86_64 platforms.

I am looking to add support for LLVM/CLANG/and OpenCL, but thought it might=
 be  easier to move to a more recent version of Yocto if support was alread=
y in place for these components.

Is there a more recent version of the Yocto Project which possibly includes=
 support for these components ?, and if not, has anyone ever attempted to b=
uild an SDK to add support these components to their platform ?

My first pass attempt finds the "nativesdk-cmake" functional, but the LLVM/=
CLANG build under the SDK appears to have some issues.
Knowing my current rocko platform is a bit dated, I thought it best to chec=
k in and see if porting to a more recent platform might be beneficial.

Thanks,
Steve


--_000_001870fa079146b1a17bc0fb0ec25accbaesystemscom_
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
<p class=3D"MsoNormal">Hello:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently working with rocko 2.4.1&#8230; build=
ing for X86_64 platforms.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking to add support for LLVM/CLANG/and OpenC=
L, but thought it might be&nbsp; easier to move to a more recent version of=
 Yocto if support was already in place for these components.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a more recent version of the Yocto Project =
which possibly includes support for these components ?, and if not, has any=
one ever attempted to build an SDK to add support these components to their=
 platform ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My first pass attempt finds the &#8220;nativesdk-cma=
ke&#8221; functional, but the LLVM/CLANG build under the SDK appears to hav=
e some issues.
<o:p></o:p></p>
<p class=3D"MsoNormal">Knowing my current rocko platform is a bit dated, I =
thought it best to check in and see if porting to a more recent platform mi=
ght be beneficial.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_001870fa079146b1a17bc0fb0ec25accbaesystemscom_--
