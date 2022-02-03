Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF88C433FE
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 13:33:19 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.9001.1643895198184536119
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 05:33:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=HGsWE9VX;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1643895198; x=1801575198;
  h=from:to:subject:date:mime-version;
  bh=pVEdznjpN3voZj/4RbY1zMy7k0/k34d4YA0AD16ufT0=;
  b=HGsWE9VXHGfIscTBQOjEThWALcfInSZqpvXUULT3vPyzIPFdKsN/J9qT
   UxKTcXt17G1TVjSnVoJwabru3kG5ue0edGynVaMRxtaRlTa8jkW8wA5+v
   2IdRERxapfDn4Vp4VcgkqoqTIK68Q8zKCA0iViGATCszU1iP5NbjwBZ54
   c=;
IronPort-SDR: 
 W0sNdK+RTRfXrBQfvfsdJ4j9H4juPelddGwtlx1UaYbT9bNpIo/YoGjhsyH4tWs9CW7AaJ6AMy
 W/rlPy2EhPDA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AC0CjxB9WOPsbaP9uWUW7ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZgqDvL400QWBHd2Cra4e0qyO6+GocFdDyK7JiGoFfp1IW?=
 =?us-ascii?q?k1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdB?=
 =?us-ascii?q?Aj0OxZrKeTpAI7SiNm82/yv95HJbAhEmiSxbal9IRmrogndq8kbjZV/Iao11?=
 =?us-ascii?q?hfFv2FEdutIyW91P16fgwrw6sKt95N/7ipcvO4s+dRdWqvgZaQ4SrJYDDUiM?=
 =?us-ascii?q?28r4cDgqAfOQwiS6HYCS2saihVHDRTL4xH8RZfxrzD1tvFh1ymAPM35Vq47V?=
 =?us-ascii?q?DK/5Kp2UhDoiSMHNzkk8GHLj8F7kaxWrA69qxF53oXZZpyeOvhjcaPHZd4UR?=
 =?us-ascii?q?XRPUNtNVyJPAY28bpcAAOUaMOlCs4X9pUEDoQeiCQWyAu7k1z9GhmXx3a0/y?=
 =?us-ascii?q?+ktHwbI3AsmH9IVrnvbss71OL8PWu6o0KnH0yvDYO1Q2Tzg9oXDbxQtrv+RU?=
 =?us-ascii?q?751f8ba1E4iFxjZjlqOt4zqITWV2v4Is2ic6epgTvyghHA8qwxquTeg3Nkji?=
 =?us-ascii?q?pLJh4IO1lDL6yB5wJ0vKdKkT057ZMepHZ1NvC6VK4V4WNktQ310uCkk0L0Gv?=
 =?us-ascii?q?4a2ciYExZk7xhPSaf2Kf5aV7h/9V+ucITN1iX1qdb6iiRi/8UeuxvD4W8S20?=
 =?us-ascii?q?FtHoStInsTSu30J1BHe6dWKRuZy8EqnxD2B1BjT5/lZLUwoj6bWJZwszqQtm?=
 =?us-ascii?q?pcXv0nPBC77lUTugKOLakko4Oel5uv9brjpvJOQKo95hwfjOao0gMO/G/43M?=
 =?us-ascii?q?g0WUmie/uSzyaPs8FXiQLVPkv02iq7ZsI3GJcgDpq62HQtV0oE75ha5Dzem1?=
 =?us-ascii?q?s4XnXwcLF9GeB+Lk5TlN0zULPD+F/izmU+jny11yPDdPrzhGYnNIWbGkLf6Z?=
 =?us-ascii?q?7py90lcyA8rwdBe4ZJbFK0BLeruVkPtrtDVAB00Pxapz+vjBthxzIITVGOXD?=
 =?us-ascii?q?q+cKqzSsFuI5uw1I+mLYY8YoC39K+Q76P7wk3A5n0URfayu3ZsRc3C3AOppI?=
 =?us-ascii?q?16CbHX3mNgOD3wKvwolTOz2llKCVCVTa2yuUKI74zE3EJimApvbRoCxnLyB2?=
 =?us-ascii?q?z+2H51RZm9aFlCMFmzld4GFW/cXdCKSOdVtkzwDVbe9V48h0gmutBX9y7plM?=
 =?us-ascii?q?OXb5jEYuYjk1Nhv6O2A3S01oHZlCM+B1EmJTnpohSUZQDQq27hlpk5wwUvF1?=
 =?us-ascii?q?rJ3ybQMBNtY+/RhVgYhKYWa3utxF9fqQAXDc9yVDlG8TYP1Lys2S4d75tgIe?=
 =?us-ascii?q?EtwAJHqtQzOwSesS5Rd14GwRdZ8prnA0mb8IYB4zHDd2aQ6p1MvT9BeLnGrg?=
 =?us-ascii?q?7U5/A/WUd2a236FnrqnIPxPlBXG832OmDLmgQ=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AJM1dzKvEDjWpqC8gSCaLYwPZQefnVHxcMUV32?=
 =?us-ascii?q?f8akzHdYApBsoF/qtZmKWjSPvrcMWX2ed4lbYrloUlS6sCHyd42TgJlrC48R?=
 =?us-ascii?q?S5GgMeUXt7xwmUcn8+xwm8vdK/shiknQoGowPscEzmM9n9BDpC79SMmjfvQH?=
 =?us-ascii?q?+KlYAL5EnkZqTFMGX9JZS1LxrZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTegrN8F251?=
 =?us-ascii?q?juxExYFDNOjm7PgIhBSGueUOwHIgHNbQLm5nhVHvWo51aNT2Pg0MB8R0GrPx?=
 =?us-ascii?q?oEqjosT3XCzYV5B0qnkg/gQTRReVSR5O7ZL9aTvK3Gyqt2I00DDaD3nxPAG4?=
 =?us-ascii?q?EQeYdFIpbYnWzAXnRAfAHVXBvyZvMqnx7mnTcFoh98/N4/6O4gDvWl6yjPUB?=
 =?us-ascii?q?upgRorMK5gmT/cwMCwY35gIRqmYPptCL2QxBCksqiZnYj8/YK/SVs/y7pUnT?=
 =?us-ascii?q?wBllQ=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AjvFG3q40XDXZLB14qQPXwPfXdLJyesId70?=
 =?us-ascii?q?hD6qkXc20tTiX4rbHLoB1/73SftN9/YgBDpTn+AtjmfZqxz/9ICPAqTM+ftW?=
 =?us-ascii?q?rdyQ6VxeNZg7cKqgeIc0CTygc379YCT0ERMr3N5K9B/KDHyTj9L9E7zN6bmZ?=
 =?us-ascii?q?rGudvj?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A9AwCVHvlh/0LBJQpagQkJgVGBIYI?=
 =?us-ascii?q?FgUIMkm6CZZxSgXwLAQEBAQEBAQEBCAEqARYEAQGIZyY0CQ4BAgQBAQESAQE?=
 =?us-ascii?q?GAQEBAQEGBAGBG4VpDII1IoNrAQECAwEsUQ0BCA0EBAEBVwodCQEEEwiCfYI?=
 =?us-ascii?q?Orx54gTMaAmWEaoUTgTqBZoVEgn+GF0OEPz6KQgSTHw4FTIIdOp8doFMHA4N?=
 =?us-ascii?q?Gl3GHWjAVlk4DkTaWSiChEYURAgQCBAUCFoFhghVwgzlRFwKcfnQ4AgYLAQE?=
 =?us-ascii?q?DCYw8gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2A9AwCVHvlh/0LBJQpagQkJgVGBIYIFgUIMkm6CZZxSg?=
 =?us-ascii?q?XwLAQEBAQEBAQEBCAEqARYEAQGIZyY0CQ4BAgQBAQESAQEGAQEBAQEGBAGBG?=
 =?us-ascii?q?4VpDII1IoNrAQECAwEsUQ0BCA0EBAEBVwodCQEEEwiCfYIOrx54gTMaAmWEa?=
 =?us-ascii?q?oUTgTqBZoVEgn+GF0OEPz6KQgSTHw4FTIIdOp8doFMHA4NGl3GHWjAVlk4Dk?=
 =?us-ascii?q?TaWSiChEYURAgQCBAUCFoFhghVwgzlRFwKcfnQ4AgYLAQEDCYw8gRABAQ?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635206400";
   d="scan'208,217";a="448788291"
IronPort-SDR: 
 toRHlXj2AysQaZvD274XxSsLCKQxQflDv0/0doMUk8g9qJMUznhRvDisDjyV2PaIBhE3daO6Ke
 IHRyTJCbuqKL3Y+DEYOzDK02mM+HGN+Y5FD1KZ7hBZNYZntPW1aZNduRGk3j2iakZs7whOPQY5
 8BxbrjhCNhicna0OjKjsoLnmCR3DoeZknKDGL6cbNv6eD3tET9KHAcm4hvvUB7gGsw5A+d9XA3
 DwR7ANttrcltDhENADYzvQDebQJuszVeRz+tEaJpcgM65Ewp1YENv6V29iyhPZKqUlyOg/0dts
 w+A=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: IGC build issue with devtoolset-8 (GNU 8.3.1)
Thread-Topic: IGC build issue with devtoolset-8 (GNU 8.3.1)
Thread-Index: AdgYOsjKXEMoV7ikRZmPNXDgh0Cn0wAxKHDQ
Date: Thu, 3 Feb 2022 13:33:14 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_5d263d4137e74a58a83ca5731db17a2dbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 13:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56058
Message-Id: <20220203133319.DAF88C433FE@smtp.lore.kernel.org>

--_000_5d263d4137e74a58a83ca5731db17a2dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Anybody ?

It appears to be a CPP issue in the IGC code... but not sure why.
The "__syscall_slong_t" definition appears to be getting resolved out corre=
ctly when I replace the array with individual variables of the same type (a=
nd the IGC is working)...

I'd feel more comfortable patching the IGC, but am still trying to fully un=
derstand the root cause...

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

Note:

tmp/work/x86_64-linux/intel-graphics-compiler-native/1.0.11-r0/git/3d/commo=
n/iStdLib/File.h:

#elif defined(__GNUC__)
#   include <libgen.h>
#   include <sys/stat.h> <<<---Line #47
#endif

sys/stat.h:

#include <bits/types.h>         /* For __mode_t and __dev_t.  */

#include <bits/stat.h>


bits/stat.h:    __syscall_slong_t __unused[3];

bits/types.h:__STD_TYPE __SYSCALL_SLONG_TYPE __syscall_slong_t;

                #if defined __x86_64__ && defined __ILP32__
                                bits/typesizes.h:# define __SYSCALL_SLONG_T=
YPE            __SQUAD_TYPE
                #else
                                bits/typesizes.h:# define __SYSCALL_SLONG_T=
YPE            __SLONGWORD_TYPE

                #if __WORDSIZE =3D=3D 32
                                bits/types.h:# define __SQUAD_TYPE         =
            __quad_t
                #elif __WORDSIZE =3D=3D 64
                                bits/types.h:# define __SQUAD_TYPE         =
            long int

bits/types.h:

#define __SLONGWORD_TYPE   long int


From: Monsees, Steven C (US)
Sent: Wednesday, February 2, 2022 8:55 AM
To: yocto@lists.yoctoproject.org
Subject: IGC build issue with devtoolset-8 (GNU 8.3.1)


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

--_000_5d263d4137e74a58a83ca5731db17a2dbaesystemscom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Anybody ?<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">It appears to be a CPP=
 issue in the IGC code&#8230; but not sure why.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The &#8220;</span>__sy=
scall_slong_t<span style=3D"color:#1F497D">&#8221; definition appears to be=
 getting resolved out correctly when I replace the array with individual va=
riables of the same type (and the IGC is working)&#8230;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I&#8217;d feel more co=
mfortable patching the IGC, but am still trying to fully understand the roo=
t cause&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Note:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">tmp/work/x86_64-linux/=
intel-graphics-compiler-native/1.0.11-r0/git/3d/common/iStdLib/File.h:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#elif defined(__GNUC__=
)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#&nbsp;&nbsp; include =
&lt;libgen.h&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#&nbsp;&nbsp; include =
&lt;sys/stat.h&gt; &lt;&lt;&lt;---Line #47<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#endif<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">sys/stat.h:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#include &lt;bits/type=
s.h&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* For __mode_t and=
 __dev_t.&nbsp; */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#include &lt;bits/stat=
.h&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">bits/stat.h:&nbsp;&nbs=
p;&nbsp; __syscall_slong_t __unused[3];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">bits/types.h:__STD_TYP=
E __SYSCALL_SLONG_TYPE __syscall_slong_t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #if de=
fined __x86_64__ &amp;&amp; defined __ILP32__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bits/typesizes.h:# define __SYSCALL_SLONG_TYPE&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __SQUAD_TYPE<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #else<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bits/typesizes.h:# define __SYSCALL_SLONG_TYPE&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __SLONGWORD_TYPE<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #if __=
WORDSIZE =3D=3D 32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bits/types.h:# define __SQUAD_TYPE&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; __quad_t<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #elif =
__WORDSIZE =3D=3D 64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bits/types.h:# define __SQUAD_TYPE&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; long int<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">bits/types.h:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">#define __SLONGWORD_TY=
PE&nbsp;&nbsp; long int<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Wednesday, February 2, 2022 8:55 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> IGC build issue with devtoolset-8 (GNU 8.3.1)<o:p></o:p></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_5d263d4137e74a58a83ca5731db17a2dbaesystemscom_--

