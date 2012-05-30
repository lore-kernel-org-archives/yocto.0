Return-Path: <michel.racine@hp.com>
Received: from g1t0028.austin.hp.com (g1t0028.austin.hp.com [15.216.28.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2475FE013D3
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:24:27 -0700 (PDT)
Received: from G1W3635G.americas.hpqcorp.net (g1w3635g.austin.hp.com
	[16.193.48.86]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g1t0028.austin.hp.com (Postfix) with ESMTPS id AF7371C39C
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 14:24:26 +0000 (UTC)
Received: from G2W2535.americas.hpqcorp.net ([169.254.4.45]) by
	G1W3635G.americas.hpqcorp.net ([16.193.48.86]) with mapi id
	14.02.0283.004; Wed, 30 May 2012 14:23:38 +0000
From: "Racine, Michel" <michel.racine@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
Thread-Index: Ac0+b81lgAGq7WbMTqWlvRwCXraGSg==
Date: Wed, 30 May 2012 14:23:37 +0000
Message-ID: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.13]
MIME-Version: 1.0
Subject: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2012 14:24:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3142CB09BE468C408BD5916115E8D45F0129A8G2W2535americashp_"

--_000_3142CB09BE468C408BD5916115E8D45F0129A8G2W2535americashp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello there,

We are creating a distro for Intel N2600/NM10 using Edison 6.0.1 and BSP Ce=
dar Trail 6.0.1. The build stops with a failure on syslinux (see below for =
the last few lines). I checked the Yocto bugzilla, and that seemed to have =
been an issue in the past, but I'm not sure how to get the fix or work arou=
nd it.

What's the best way forward?

Thanks and regards,
Michel Racine
Senior Software Engineer
Hewlett-Packard, Storage

-->

| ccache gcc  -Wp,-MT,syslxcom.o,-MMD,./.syslxcom.o.d -W -Wall -Wstrict-pro=
totypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I. -I.. -I../lib=
installer -c -o syslxcom.o ../libinstaller/syslxcom.c
| In file included from ../libinstaller/linuxioctl.h:22:0,
|                  from syslinux.c:50:
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'
| make[1]: *** [syslinux.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| In file included from ../libinstaller/linuxioctl.h:22:0,
|                  from ../libinstaller/syslxcom.c:33:
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'
| make[1]: *** [syslxcom.o] Error 1
| make[1]: Leaving directory `/home/michel/Development/cedartrail-6.0.1-bui=
ld/tmp/work/i686-linux/syslinux-native-4.03-r2/syslinux-4.03/linux'
| make: *** [installer] Error 2
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see /home/michel/Development/cedartr=
ail-6.0.1-build/tmp/work/i686-linux/syslinux-native-4.03-r2/temp/log.do_com=
pile.25266 for further information)
NOTE: package syslinux-native-4.03-r2: task do_compile: Failed
ERROR: Task 119 (virtual:native:/home/michel/Development/poky-edison-6.0.1/=
meta/recipes-devtools/syslinux/syslinux_4.03.bb, do_compile) failed with ex=
it code '1'
Waiting for 1 active tasks to finish:
0: python-2.6.6-r2.11 do_package (pid 13637)
NOTE: package python-2.6.6-r2.11: task do_package: Succeeded
ERROR: 'virtual:native:/home/michel/Development/poky-edison-6.0.1/meta/reci=
pes-devtools/syslinux/syslinux_4.03.bb' failed


--_000_3142CB09BE468C408BD5916115E8D45F0129A8G2W2535americashp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello there,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are creating a distro for Intel N2600/NM10 using =
Edison 6.0.1 and BSP Cedar Trail 6.0.1. The build stops with a failure on s=
yslinux (see below for the last few lines). I checked the Yocto bugzilla, a=
nd that seemed to have been an issue
 in the past, but I'm not sure how to get the fix or work around it.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What's the best way forward?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Michel Racine<o:p></o:p></p>
<p class=3D"MsoNormal">Senior Software Engineer<o:p></o:p></p>
<p class=3D"MsoNormal">Hewlett-Packard, Storage<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">| =
ccache gcc&nbsp; -Wp,-MT,syslxcom.o,-MMD,./.syslxcom.o.d -W -Wall -Wstrict-=
prototypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I. -I..
 -I../libinstaller -c -o syslxcom.o ../libinstaller/syslxcom.c<br>
| In file included from ../libinstaller/linuxioctl.h:22:0,<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from syslinux.c:50:<br>
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'<b=
r>
| make[1]: *** [syslinux.o] Error 1<br>
| make[1]: *** Waiting for unfinished jobs....<br>
| In file included from ../libinstaller/linuxioctl.h:22:0,<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../libinstaller/syslxcom.c:33:<br>
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'<b=
r>
| make[1]: *** [syslxcom.o] Error 1<br>
| make[1]: Leaving directory `/home/michel/Development/cedartrail-6.0.1-bui=
ld/tmp/work/i686-linux/syslinux-native-4.03-r2/syslinux-4.03/linux'<br>
| make: *** [installer] Error 2<br>
| ERROR: oe_runmake failed<br>
| ERROR: Function 'do_compile' failed (see /home/michel/Development/cedartr=
ail-6.0.1-build/tmp/work/i686-linux/syslinux-native-4.03-r2/temp/log.do_com=
pile.25266 for further information)<br>
NOTE: package syslinux-native-4.03-r2: task do_compile: Failed<br>
ERROR: Task 119 (virtual:native:/home/michel/Development/poky-edison-6.0.1/=
meta/recipes-devtools/syslinux/syslinux_4.03.bb, do_compile) failed with ex=
it code '1'<br>
Waiting for 1 active tasks to finish:<br>
0: python-2.6.6-r2.11 do_package (pid 13637)<br>
NOTE: package python-2.6.6-r2.11: task do_package: Succeeded<br>
ERROR: 'virtual:native:/home/michel/Development/poky-edison-6.0.1/meta/reci=
pes-devtools/syslinux/syslinux_4.03.bb' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3142CB09BE468C408BD5916115E8D45F0129A8G2W2535americashp_--
