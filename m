Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.5586.1612965322323147728
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 05:55:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ClJxVclt;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1612965322; x=1770645322;
  h=from:to:subject:date:mime-version;
  bh=hweLtIRwTZ0qmq96d/Aw8Ph1NkoQXHjDHCIctC8DWRU=;
  b=ClJxVclt8dZaE/CN0wmFxhZZIyOBFXzPsqA1cNq6BjtZJZUfclkf091L
   9p4nN3LL8gBzGO6uu6zWUeSmY3nPMqYhkZfEj5ogcyMq166+wnsqKYmBS
   46vahkxUHdfdlyy5CheBlEa4FHQFF7Ht/BeEWPf+X43nQrmYwvqELdFtO
   E=;
IronPort-PHdr: =?us-ascii?q?9a23=3AYSF85h3pWwQ0odODsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?seMeK/ad9pjvdHbS+e9qxAeQG9mCurQZ1KGO6ejJYi8p2d65qncMcZhBBVcuqP?=
 =?us-ascii?q?49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6?=
 =?us-ascii?q?JvjvGo7Vks+7y/2+94fcbglVgDexe7N/IRe5oQnNqMUdnJdvJLs2xhbVuHVDZv?=
 =?us-ascii?q?5YxXlvJVKdnhb84tm/8Zt++ClOuPwv6tBNX7zic6s3UbJXAjImM3so5MLwrhnM?=
 =?us-ascii?q?URGP5noHXWoIlBdDHhXI4wv7Xpf1tSv6q/Z91SyHNsD4Ubw4RTKv5LptRRT1ii?=
 =?us-ascii?q?kIKiQ5/XnXhMJukaxbvByvqR9+w4HIb46YL+Bxcr/ffd4AWWZNQthdWipcCY28?=
 =?us-ascii?q?dYsPCO8BMP5Wo4f6oFsOqwC+CheyC+P00jNDm2L43bEk3OQ/Dw7G2hErEswTu3?=
 =?us-ascii?q?jQotr7KaIeXe6ox6TP1jXDc+1Z2Snj54jOaBwhpPaMXbRrccXP10YvDBjIgU6K?=
 =?us-ascii?q?poP7JDOU1v8Ns3SF4OplTuKjkXIoqwZ0ojW2wMonl4bGiJ4PxF/e6SV53Jg6Jc?=
 =?us-ascii?q?e+SENjb9CpHodduiCYOoZ3XM8uXn9ltSU6x7ACtpO2czUGxponyhDQdvCKd4qF?=
 =?us-ascii?q?7xLsWeuQPDt1mnZodbG8ihuv7ESuxevxXdS33lZStidJj8XAumoD2hHR8MSLVO?=
 =?us-ascii?q?Vx80e71TuO1g3f8vxILVwumafUJJMt2LE9moAOvUnDGCL9hV/4g7WMdko+/+il?=
 =?us-ascii?q?8+HnYrL7qZCCL4J0kQT+Mrg2msy4HOQ4LhACX2iF9uS4073u5VH2T69RjvIql6?=
 =?us-ascii?q?nZq5TXKMAYq6KlHQNZyIAj5AylAzi9ytsXg2IHLVJeeBKbkYfpPkrOLOrkAve4?=
 =?us-ascii?q?hlSgiDZrx/bYMb39GpjBM2TPnK3vcLt/8UJQ1hQ/wNBF659VC7wNOPfzVVXwtN?=
 =?us-ascii?q?zcAB85KQu0w+P/BdVmyoMRR3yPDbGfMK/ItF+I4eQvI/KSa4ALozbwMOMq6OTw?=
 =?us-ascii?q?gn8imV4dZrWp0oUSaHCjBPhpP0KZYX/0jtcbDWgKphY+TPDtiFCaUT9TYGq9X7?=
 =?us-ascii?q?475jwgDIKmDJzDRpy2gLCb3Ca7GYFZZnxBClCUC3focIeEVOkQZyKOOMNhlSYE?=
 =?us-ascii?q?VbfyA7MmgFu/swTmzJJjL/HI4WsJspn/08Bv4O/eng108iZ7RYzJwmaGU2Zcmm?=
 =?us-ascii?q?ITWyRwzad0vUtl0FCB3KNkxftCGooAyelOV1JwEJna1OF3EJS6YR7MYNqPAH3u?=
 =?us-ascii?q?AuidQHt5GsktzsEDZQB4HNO5gx3Y9yCjDqQEjKCGAYdy+aXZiSuib/1hwmrLgf?=
 =?us-ascii?q?Fyx2ItRdFCYDWr?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D/BAC05CNg/0LhJQpiHgEBCxIMQIJyg?=
 =?us-ascii?q?X6BQQqWFIEIm0ELAQEBAQEBAQEBCAEfEAQBAYZRJjgTAhABAQYBAQEBAQYEAYZ?=
 =?us-ascii?q?RAQyCOCKEHV4BgQAmAQQbgmmBfrAwgTSFWIRzCQGBLoklhBWCAz6BEYJkiyYEg?=
 =?us-ascii?q?kgVPSgUgigGAQOQfIp3gzuaVgcDgnqJNpJIK6MolDadMoRFAgQCBAUCFoFsgXp?=
 =?us-ascii?q?wgzkJRxcCDZBri35zNwIGCgEBAwmLBIEPAQE?=
X-IPAS-Result: =?us-ascii?q?A2D/BAC05CNg/0LhJQpiHgEBCxIMQIJygX6BQQqWFIEIm0E?=
 =?us-ascii?q?LAQEBAQEBAQEBCAEfEAQBAYZRJjgTAhABAQYBAQEBAQYEAYZRAQyCOCKEHV4Bg?=
 =?us-ascii?q?QAmAQQbgmmBfrAwgTSFWIRzCQGBLoklhBWCAz6BEYJkiyYEgkgVPSgUgigGAQO?=
 =?us-ascii?q?QfIp3gzuaVgcDgnqJNpJIK6MolDadMoRFAgQCBAUCFoFsgXpwgzkJRxcCDZBri?=
 =?us-ascii?q?35zNwIGCgEBAwmLBIEPAQE?=
X-IronPort-AV: E=Sophos;i="5.81,168,1610409600"; 
   d="scan'208,217";a="346062874"
X-IronPort-AV: E=Sophos;i="5.81,168,1610409600"; 
   d="scan'208,217";a="178693595"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #kernel "yocto-check-layer"
Thread-Topic: #yocto #kernel "yocto-check-layer"
Thread-Index: Adb/sdxXMPr95eIOQseZ1TN4BkqMOw==
Date: Wed, 10 Feb 2021 13:55:19 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1662676ABE100B46.25203@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2be7971c965c47e4a953937f2663a1ddbaesystemscom_"

--_000_2be7971c965c47e4a953937f2663a1ddbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Mb build was setup and done under one layer, with "distro" and "bsp" at the=
 same layer, I wanted to split them up into separate layers inorder to bett=
er conform to the Yocto standard.... (Note my kernel builds and runs correc=
tly when split or not split)

When not split "Yocto-check-layer" calls me out for having "distro" and "bs=
p" in same layer, when I split them I am seeing the following for each new =
layer:

Can someone explain the errors the script is reporting and how to resolve (=
these are not seen build the split or non-split images) ?

08:43 smonsees@yix490031 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default>yocto-check-layer /disk0/scratch/smonsees/y=
octo/workspace_3/poky/../meta-bae/meta-limws/meta-intel/meta-intel-bsp
INFO: Detected layers:
INFO: meta-intel-bsp: LayerType.BSP, /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/meta-intel/meta-intel-bsp
INFO:
INFO: Setting up for meta-intel-bsp(LayerType.BSP), /disk0/scratch/smonsees=
/yocto/workspace_3/meta-bae/meta-limws/meta-intel/meta-intel-bsp
INFO: Getting initial bitbake variables ...
INFO: Getting initial signatures ...
INFO: Generating signatures failed. This might be due to some parse error a=
nd/or general layer incompatibilities.
Command: BB_ENV_EXTRAWHITE=3D"$BB_ENV_EXTRAWHITE BB_SIGNATURE_HANDLER" BB_S=
IGNATURE_HANDLER=3D"OEBasicHash" bitbake -S none world
Output:
Parsing recipes...done.
Parsing of 2450 .bb files complete (0 cached, 2450 parsed). 3645 targets, 9=
1 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'shim' (but /disk0/scratch/smonsees/yocto/workspac=
e_3/poky/meta/recipes-core/packagegroups/packagegroup-base.bb RDEPENDS on o=
r otherwise requires it)
NOTE: Runtime target 'shim' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['shim']
ERROR: Required build target 'meta-world-pkgdata' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'packag=
egroup-base', 'shim']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

INFO:
INFO: Summary of results:
INFO:
INFO: meta-intel-bsp ... FAIL (Generating world signatures)
08:44 smonsees@yix490031 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default>yocto-check-layer /disk0/scratch/smonsees/y=
octo/workspace_3/poky/../meta-bae/meta-limws/meta-intel/meta-intel-distro
INFO: Detected layers:
INFO: meta-intel-distro: LayerType.DISTRO, /disk0/scratch/smonsees/yocto/wo=
rkspace_3/meta-bae/meta-limws/meta-intel/meta-intel-distro
INFO:
INFO: Setting up for meta-intel-distro(LayerType.DISTRO), /disk0/scratch/sm=
onsees/yocto/workspace_3/meta-bae/meta-limws/meta-intel/meta-intel-distro
INFO: Getting initial bitbake variables ...
INFO: Getting initial signatures ...
INFO: Generating signatures failed. This might be due to some parse error a=
nd/or general layer incompatibilities.
Command: BB_ENV_EXTRAWHITE=3D"$BB_ENV_EXTRAWHITE BB_SIGNATURE_HANDLER" BB_S=
IGNATURE_HANDLER=3D"OEBasicHash" bitbake -S none world
Output:
Loading cache...done.
Loaded 3645 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'seloader' (but /disk0/scratch/smonsees/yocto/work=
space_3/poky/meta/recipes-core/packagegroups/packagegroup-base.bb RDEPENDS =
on or otherwise requires it)
NOTE: Runtime target 'seloader' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['seloader']
ERROR: Required build target 'meta-world-pkgdata' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'packag=
egroup-base', 'seloader']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

INFO:
INFO: Summary of results:
INFO:
INFO: meta-intel-distro ... FAIL (Generating world signatures)
08:46 smonsees@yix490031 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default>

Thanks,
Steve

--_000_2be7971c965c47e4a953937f2663a1ddbaesystemscom_
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
<p class=3D"MsoNormal">Mb build was setup and done under one layer, with &#=
8220;distro&#8221; and &#8220;bsp&#8220; at the same layer, I wanted to spl=
it them up into separate layers inorder to better conform to the Yocto stan=
dard&#8230;. (Note my kernel builds and runs correctly when split
 or not split)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When not split &#8220;Yocto-check-layer&#8221; calls=
 me out for having &#8220;distro&#8221; and &#8220;bsp&#8221; in same layer=
, when I split them I am seeing the following for each new layer:<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone explain the errors the script is reporti=
ng and how to resolve (these are not seen build the split or non-split imag=
es) ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">08:43 smonsees@yix490031 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/sbcb-default&gt;yocto-check-layer=
 /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/meta=
-intel/meta-intel-bsp<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Detected layers:<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: meta-intel-bsp: LayerType.BSP, /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/meta-intel/meta-intel-bsp<o:=
p></o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Setting up for meta-intel-bsp(LayerType.BSP), =
/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/meta-intel/me=
ta-intel-bsp<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Getting initial bitbake variables ...<o:p></o:=
p></p>
<p class=3D"MsoNormal">INFO: Getting initial signatures ...<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Generating signatures failed. This might be du=
e to some parse error and/or general layer incompatibilities.<o:p></o:p></p=
>
<p class=3D"MsoNormal">Command: BB_ENV_EXTRAWHITE=3D&quot;$BB_ENV_EXTRAWHIT=
E BB_SIGNATURE_HANDLER&quot; BB_SIGNATURE_HANDLER=3D&quot;OEBasicHash&quot;=
 bitbake -S none world<o:p></o:p></p>
<p class=3D"MsoNormal">Output:<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes...done.<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing of 2450 .bb files complete (0 cached, 2450 p=
arsed). 3645 targets, 91 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: Nothing RPROVIDE=
S 'shim' (but /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-c=
ore/packagegroups/packagegroup-base.bb RDEPENDS on or otherwise requires it=
)<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">NOTE: Runtime target 'shim' is unbuildable, removing=
...<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['shim'=
]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: Required build t=
arget 'meta-world-pkgdata' has no buildable providers.<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['meta-=
world-pkgdata', 'packagegroup-base', 'shim']<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Summary of results:<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: meta-intel-bsp ... FAIL (Generating world sign=
atures)<o:p></o:p></p>
<p class=3D"MsoNormal">08:44 smonsees@yix490031 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/sbcb-default&gt;yocto-check-layer=
 /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/meta=
-intel/meta-intel-distro<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Detected layers:<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: meta-intel-distro: LayerType.DISTRO, /disk0/sc=
ratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/meta-intel/meta-intel-=
distro<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Setting up for meta-intel-distro(LayerType.DIS=
TRO), /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/meta-in=
tel/meta-intel-distro<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Getting initial bitbake variables ...<o:p></o:=
p></p>
<p class=3D"MsoNormal">INFO: Getting initial signatures ...<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Generating signatures failed. This might be du=
e to some parse error and/or general layer incompatibilities.<o:p></o:p></p=
>
<p class=3D"MsoNormal">Command: BB_ENV_EXTRAWHITE=3D&quot;$BB_ENV_EXTRAWHIT=
E BB_SIGNATURE_HANDLER&quot; BB_SIGNATURE_HANDLER=3D&quot;OEBasicHash&quot;=
 bitbake -S none world<o:p></o:p></p>
<p class=3D"MsoNormal">Output:<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache...done.<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 3645 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: Nothing RPROVIDE=
S 'seloader' (but /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recip=
es-core/packagegroups/packagegroup-base.bb RDEPENDS on or otherwise require=
s it)<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">NOTE: Runtime target 'seloader' is unbuildable, remo=
ving...<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['seloa=
der']<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: Required build t=
arget 'meta-world-pkgdata' has no buildable providers.<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['meta-=
world-pkgdata', 'packagegroup-base', 'seloader']<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: Summary of results:<o:p></o:p></p>
<p class=3D"MsoNormal">INFO: <o:p></o:p></p>
<p class=3D"MsoNormal">INFO: meta-intel-distro ... FAIL (Generating world s=
ignatures)<o:p></o:p></p>
<p class=3D"MsoNormal">08:46 smonsees@yix490031 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/sbcb-default&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_2be7971c965c47e4a953937f2663a1ddbaesystemscom_--
