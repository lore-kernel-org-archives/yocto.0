Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2470C4332F
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 13:55:51 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.64662.1643810150935286768
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 05:55:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=dN/A6c3K;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1643810151; x=1801490151;
  h=from:to:subject:date:mime-version;
  bh=nlzGwPO6tMqSYjjZkVM0erF1C3H9W1fKMc1E27mX8gM=;
  b=dN/A6c3KYh5wrxEoigdfz632du6p9oHZ60fCcs/yOMVKr5tajKD/9Va7
   oz1oJAaM+bmPDHKskPgnXljUOvoZ7C0YSd9A5dimYdShwOuVIheX+fGKd
   nGwCDgX1s2Pwd+vUWaBrvzaJrYA66tZPvzW2rBBiFkElhVDgtt9qDpX2N
   0=;
IronPort-SDR: 
 Odge6HfnbNmXS0sjbv2tRhWkalZ0QgYkAxR1JWCFa9uw+yB3824mMVQVMOuIcgbd824LS2F5X3
 5u3LjcEhCLUg==
IronPort-PHdr: =?us-ascii?q?A9a23=3ATwoDmRcipf0Cgp68CTtHJJixlGM+Ld7LVj580?=
 =?us-ascii?q?XLHo4xHfqnrxZn+JkuXvawr0AWTG9mCoKsZ0aKW6/mmBTZZp87Z8TgrS99lb?=
 =?us-ascii?q?1c9k8IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBU?=
 =?us-ascii?q?hrwOhBoKevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmoswndrMYbjZZtJqosy?=
 =?us-ascii?q?hbFvGZDd+BKyW91P16ekAjw6tqq8JJ/7yhcvu8q+tJdX6n9Y6k2V6FTAi48M?=
 =?us-ascii?q?2Ay6s3rtB3DQhWK63ABTGgYkQdGDhbc4h3iUZj/riX1tuxm2CmHJsL2Vqw7W?=
 =?us-ascii?q?S6j76hwVhDljjoMOiMj/2HWjsxwi79boA6kqhdizYPYfJ2ZOfxjda7bYNgUR?=
 =?us-ascii?q?3dOXtxJWiJBHI2ycpcPAeQCM+ZZs4byqEADogGiCQmuHu7j1iNEimHw0KYn0?=
 =?us-ascii?q?+ohCwbG3Ak4Et4At3rUq9P1NLwMXu+r16nE1SjIYe5K2Tjj9ojHbBYhquySU?=
 =?us-ascii?q?Lltdcbex1QhGwbLgl6NroHlJC+V2foTs2eF6epsT+evi2khqwFqvDeg2Nwsh?=
 =?us-ascii?q?5LSiY0P1F/E7iV4wJ0pJdKmTU57esSoH4dXtyGfLoZ7RN4pTG50tigg0LIGp?=
 =?us-ascii?q?YK7czYQyJQh3xPRZfKKfpSJ7x/hVeudPyp0iWxmdb+/gxu//ketxvDyWMS03?=
 =?us-ascii?q?1hGsy5In9vMu30C1hHf99aKR/9+80qixDuDyg/d5+dZKk43jarWM4MtzqIqm?=
 =?us-ascii?q?pcRv0nPBCz7lUrsgKOLbkko5/Sk5/7ob7jpvJOROJV4hhz+P6koh8exG/43M?=
 =?us-ascii?q?hIUUGie4em80brj8lDnT7hSlf02l7XZsIjdJcQGuq61Gw9V3Zgn6xa4Fzqmz?=
 =?us-ascii?q?NsZkmMBLFJAYxKKi5TlN03SLPzlF/u/nk+snC1wyP/cILLhGZXMLmPfkLj/e?=
 =?us-ascii?q?LZ98FRQxxY0zdBa/55UC7cBL+zvWkLpqdDUEgU1Pg66zur9C9hw2ZkSVX+XD?=
 =?us-ascii?q?q+cKqzSsFuI5uw1I+mLYY8YoC39K+Q76P7wk3A5n0URfayu3ZsRc3C3AOppI?=
 =?us-ascii?q?16CbHX3mNgOD3wKvwolTOz2llKCVCVTa2yuUKI74zE3EJimApvbRoCxnLyB2?=
 =?us-ascii?q?z+2H51RZm9aFlCMFmzld4GFW/cXdCKSOdVtkzwDVbe9V48h0gmutBX9y7plM?=
 =?us-ascii?q?OXb5jEYuYjk1Nhv6O2A3S01oHZlCM+B1EmJTnpohSUZQDQq27hlpk5wwUvF1?=
 =?us-ascii?q?rJ3ybQMBNtY+/RhVgYhKYWa3utxF9fqQAXDc9yVDlG8TYP1Lys2S4d75tgIe?=
 =?us-ascii?q?EtwAJHqtQzOwSesS5Rd14GwRdZ8prnA0mb8IYB4zHDd2aQ6p1MvT9BeLnGrg?=
 =?us-ascii?q?7U5/A/WUd2a236FnrqnIPxPlBXG832OmDLmgQ=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AWjSR9KwJPRl9WDudjWB6t+cZxCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkUHzGpMCm7XM6mINDfxKthxaNvn804O6pWGz4cwSgI5rFhgH?=
 =?us-ascii?q?ilAwSbn6XR1DatS0xt/paQvdWo/hyklQoSGfJBcokP0/E/3aOC79SAkjMlke?=
 =?us-ascii?q?5KlYAL6EnEpLeNbYHp54f5Ts7ZRbr9A2bBVMSvU0T/Bi5G31Gue5tJBGjl8B?=
 =?us-ascii?q?5RvCf9YlK+aVDsw5jTSbB3Q1bPUvyF94Jk3fcldI5ZkK7S4ENJWR86bpF241?=
 =?us-ascii?q?n/J9hEoEYL9yu6iNFARBLTbMBOfkWZbXrPkiR9HzsAw+v9jcqVHLxcLzWzhc?=
 =?us-ascii?q?9NZkb2hsbSrVQo3M6uKneMbSBRVCAl0NKBd6aTbLH2k98eUyiUqdlOwn6UyV?=
 =?us-ascii?q?x9oYtdwFuFfRDsmGeYjACEKZQyEr+a3266gDPhrjdgkNNPsPo4Upjdn1z6xM?=
 =?us-ascii?q?BqMafgvWI2TvZkHh3Fg2oYXdcsyrvExMVJHBCksqTUVUrvPNK8DoQ=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AW/poJK6hvrORMw56/wPXwNPXdLJyesId70?=
 =?us-ascii?q?hD6qkRc3xom6Oj+PxG8M5w6faWslcssRMb6LK90cC7KBu2yXcS2+Us1NyZMj?=
 =?us-ascii?q?UO1lHEEGgb1/qA/wHd?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DoAwCVHvlh/wFUSQpagQkJgVGBIYI?=
 =?us-ascii?q?FgU6Sbp83gXwLAQEBAQEBAQEBCAFBBAEBiGcmNQgOAQIEAQEBEgEBBgEBAQE?=
 =?us-ascii?q?BBgQBgRuFaQyCNSKEH1ENARVrJgEEG4J9gg6wFoEzGgJlhGqFEwkBgTCBZoV?=
 =?us-ascii?q?Egn+GF0OPPwSTHxNMgh06nx2gUwcDg0adOoIRMBWWTgORNpZKIKERhRECBAI?=
 =?us-ascii?q?EBQIWgWMCghFwgzpQFwKcfoEsAgYLAQEDCYw8gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2DoAwCVHvlh/wFUSQpagQkJgVGBIYIFgU6Sbp83gXwLA?=
 =?us-ascii?q?QEBAQEBAQEBCAFBBAEBiGcmNQgOAQIEAQEBEgEBBgEBAQEBBgQBgRuFaQyCN?=
 =?us-ascii?q?SKEH1ENARVrJgEEG4J9gg6wFoEzGgJlhGqFEwkBgTCBZoVEgn+GF0OPPwSTH?=
 =?us-ascii?q?xNMgh06nx2gUwcDg0adOoIRMBWWTgORNpZKIKERhRECBAIEBQIWgWMCghFwg?=
 =?us-ascii?q?zpQFwKcfoEsAgYLAQEDCYw8gRABAQ?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635206400";
   d="scan'208,217";a="448436672"
IronPort-SDR: 
 /hV+y/BIIGmvt0wPfSROu6wQSfQhrRZBm8rsI1J9z2lfalwWGMqZXLA9K8Bo2iU8cTgZjSqqje
 COcVDE8v4s8Nez4Ea2fBmPBFF5/+RZn+fs6n5TCNRGPPyPGtyl3W8QrCEE6Ga9dyw8i9qedrKY
 Xr27o+18eUX3yer/I+9j0cwAMTBBZiPArM8B5eMPU+DQAE6unRMFv/3FdOnRrSb2A04T3S2fBx
 HTGWGDmfPl+drueN+CtLNEckcb8ADRr20FEgCJ+ahrANx9tlaRmbj7gXzlb7tLktDbGS/dC0p6
 o0k=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: IGC build issue with devtoolset-8 (GNU 8.3.1)
Thread-Topic: IGC build issue with devtoolset-8 (GNU 8.3.1)
Thread-Index: AdgYOsjKXEMoV7ikRZmPNXDgh0Cn0w==
Date: Wed, 2 Feb 2022 13:54:48 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_06319bfd6f8f4fcd8b31c116219acdedbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 13:55:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56044
Message-Id: <20220202135551.E2470C4332F@smtp.lore.kernel.org>

--_000_06319bfd6f8f4fcd8b31c116219acdedbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am building zeus with basic OpenCL support for centos 7.x, and using GNU =
8.3.1 compiler and see the following Error when IGC is built, I see the sam=
e error when building with GNU 5.3.1...

Is this a known issue, is a patch available ?
Any ideas why I might be seeing this ?

cpp.o -MF IGC/Compiler/CMakeFiles/Compiler.dir/CISACodeGen/DebugInfo.cpp.o.=
d -o IGC/Compiler/CMakeFiles/Compiler.dir/CISACodeGen/DebugInfo.cpp.o -c /d=
isk0/scratch/yocto_user/yocto/workspace_zeus/builds/sbcb-default/tmp/work/x=
86_64-linux/intel-graphics-compiler-native/1.0.11-r0/git/IGC/Compiler/CISAC=
odeGen/DebugInfo.cpp
| In file included from /usr/include/sys/stat.h:106,
|                  from /disk0/scratch/yocto_user/yocto/workspace_zeus/buil=
ds/sbcb-default/tmp/work/x86_64-linux/intel-graphics-compiler-native/1.0.11=
-r0/git/IGC/../3d/common/iStdLib/File.h:47,
|                  from /disk0/scratch/yocto_user/yocto/workspace_zeus/buil=
ds/sbcb-default/tmp/work/x86_64-linux/intel-graphics-compiler-native/1.0.11=
-r0/git/IGC/Compiler/CISACodeGen/DebugInfo.hpp:42,
|                  from /disk0/scratch/yocto_user/yocto/workspace_zeus/buil=
ds/sbcb-default/tmp/work/x86_64-linux/intel-graphics-compiler-native/1.0.11=
-r0/git/IGC/Compiler/CISACodeGen/DebugInfo.cpp:26:
| /usr/include/bits/stat.h:106:31: error: expected unqualified-id before '[=
' token
|      __syscall_slong_t __unused[3];
|                                ^
| /usr/include/bits/stat.h:164:31: error: expected unqualified-id before '[=
' token
|      __syscall_slong_t __unused[3];
|

I am using bitbake -k, and everything else builds correctly, and no other c=
omponents references this...

If I modify the header like so:

/usr/include/bits>diff stat.h stat.h_HOLD
106c106,108
<     __syscall_slong_t __unused[3];
---
>     __syscall_slong_t __unused1;
>     __syscall_slong_t __unused2;
>     __syscall_slong_t __unused3;
164c166,168
<     __syscall_slong_t __unused[3];
---
>     __syscall_slong_t __unused1;
>     __syscall_slong_t __unused2;
>     __syscall_slong_t __unused3;
08:29 smonsees@yix465383 /usr/include/bits>

IGC builds clean, and test show it appears to working correctly...

I really shouldn't be modifying the header, and would like to know what the=
 real issue issue is...

Thanks,
Steve

--_000_06319bfd6f8f4fcd8b31c116219acdedbaesystemscom_
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
<p class=3D"MsoNormal">I am building zeus with basic OpenCL support for cen=
tos 7.x, and using GNU 8.3.1 compiler and see the following Error when IGC =
is built, I see the same error when building with GNU 5.3.1&#8230;<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this a known issue, is a patch available ?<o:p></=
o:p></p>
<p class=3D"MsoNormal">Any ideas why I might be seeing this ?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">cpp.o -MF IGC/Compiler/CMakeFiles/Compiler.dir/CISAC=
odeGen/DebugInfo.cpp.o.d -o IGC/Compiler/CMakeFiles/Compiler.dir/CISACodeGe=
n/DebugInfo.cpp.o -c /disk0/scratch/yocto_user/yocto/workspace_zeus/builds/=
sbcb-default/tmp/work/x86_64-linux/intel-graphics-compiler-native/1.0.11-r0=
/git/IGC/Compiler/CISACodeGen/DebugInfo.cpp<o:p></o:p></p>
<p class=3D"MsoNormal">| In file included from /usr/include/sys/stat.h:106,=
<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /disk0/scratch/yoc=
to_user/yocto/workspace_zeus/builds/sbcb-default/tmp/work/x86_64-linux/inte=
l-graphics-compiler-native/1.0.11-r0/git/IGC/../3d/common/iStdLib/File.h:47=
,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /disk0/scratch/yoc=
to_user/yocto/workspace_zeus/builds/sbcb-default/tmp/work/x86_64-linux/inte=
l-graphics-compiler-native/1.0.11-r0/git/IGC/Compiler/CISACodeGen/DebugInfo=
.hpp:42,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;from /disk0/scratch/yoc=
to_user/yocto/workspace_zeus/builds/sbcb-default/tmp/work/x86_64-linux/inte=
l-graphics-compiler-native/1.0.11-r0/git/IGC/Compiler/CISACodeGen/DebugInfo=
.cpp:26:<o:p></o:p></p>
<p class=3D"MsoNormal">| /usr/include/bits/stat.h:106:31: error: expected u=
nqualified-id before &#8216;[&#8217; token<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __=
unused[3];<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<o:p></o:p></=
p>
<p class=3D"MsoNormal">| /usr/include/bits/stat.h:164:31: error: expected u=
nqualified-id before &#8216;[&#8217; token<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __=
unused[3];<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using bitbake &#8211;k, and everything else bui=
lds correctly, and no other components references this&#8230;<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I modify the header like so:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/usr/include/bits&gt;diff stat.h stat.h_HOLD<o:p></o=
:p></p>
<p class=3D"MsoNormal">106c106,108<o:p></o:p></p>
<p class=3D"MsoNormal">&lt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed[3];<o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed1;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed2;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed3;<o:p></o:p></p>
<p class=3D"MsoNormal">164c166,168<o:p></o:p></p>
<p class=3D"MsoNormal">&lt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed[3];<o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed1;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed2;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp; __syscall_slong_t __unu=
sed3;<o:p></o:p></p>
<p class=3D"MsoNormal">08:29 smonsees@yix465383 /usr/include/bits&gt;<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IGC builds clean, and test show it appears to workin=
g correctly&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I really shouldn&#8217;t be modifying the header, an=
d would like to know what the real issue issue is&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_06319bfd6f8f4fcd8b31c116219acdedbaesystemscom_--

