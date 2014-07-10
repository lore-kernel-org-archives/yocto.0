Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2C43E0056A; Thu, 10 Jul 2014 01:42:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98410E00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 01:42:07 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,636,1400005800"; d="scan'208,217";a="22828597"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 10 Jul 2014 14:01:49 +0530
Received: from CHN-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.150.12.27) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 10 Jul 2014 14:12:06 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT02.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Thu, 10 Jul 2014 14:12:06 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with Python include directives
Thread-Index: Ac+cGWwaq35e3FOATZCQykIpwlHczA==
Date: Thu, 10 Jul 2014 08:42:05 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADDA24@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Issue with Python include directives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jul 2014 08:42:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5D833673AB94D9489A7F7F73E9E611C814ADDA24chnhcltmbs08HCL_"

--_000_5D833673AB94D9489A7F7F73E9E611C814ADDA24chnhcltmbs08HCL_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build gpsd-2.95 for ARM 32-bit using Yocto on a Ubuntu 12.04=
.4 64-Bit machine
I got the following compilation error

| arm-poky-linux-gnueabi-gcc -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -L/home/user/project/build/tmp/sysroots/machine/usr/lib -lm --=
sysroot=3D/home/user/project/build/tmp/sysroots/machine -fno-strict-aliasin=
g -DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-prototypes -O2 -pipe -g -feliminat=
e-unused-debug-types -Wall -Wcast-align -Wmissing-declarations -Wmissing-pr=
ototypes -Wstrict-prototypes -Wpointer-arith -Wreturn-type -D_GNU_SOURCE -f=
PIC -I/home/user/project/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnu=
eabi/gpsd/2.95-r10.0/gpsd-2.95 -I/usr/include/python2.7 -c gpspacket.c -o b=
uild/temp.linux-x86_64-2.7/gpspacket.o
| In file included from /usr/include/python2.7/Python.h:58:0,
|                  from gpspacket.c:8:
| /usr/include/python2.7/pyport.h:849:2: error: #error "LONG_BIT definition=
 appears wrong for platform (bad gcc/glibc config?)."
| In file included from gpspacket.c:11:0:
| gpsd.h:327:0: warning: "SIZEOF_LONG" redefined [enabled by default]
| In file included from /usr/include/python2.7/Python.h:8:0,
|                  from gpspacket.c:8:
| /usr/include/python2.7/pyconfig.h:992:0: note: this is the location of th=
e previous definition
| gpspacket.c:244:1: warning: no previous prototype for 'initpacket' [-Wmis=
sing-prototypes]
| error: command 'arm-poky-linux-gnueabi-gcc' failed with exit status 1

In the tmp/.../gpsd-2.95 folder, I just executed directly the arm-poky-linu=
x-gnueabi-gcc command with the same arguments except I replaced -I/usr/incl=
ude/python2.7 with -I/home/user/project/build/tmp/sysroots/machine/usr/incl=
ude/python2.7
Now the compilation command was successful.

But now the problem is, how do I change the -I/usr/include/python2.7 with -=
I/home/user/project/build/tmp/sysroots/machine/usr/include/python2.7 which =
is passed as an argument for the arm-poky-linux-gnueabi-gcc using the recip=
e files ?


Thanks,
B.Sathish Kumar


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------

--_000_5D833673AB94D9489A7F7F73E9E611C814ADDA24chnhcltmbs08HCL_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build gpsd-2.95 for ARM 32-bit using =
Yocto on a Ubuntu 12.04.4 64-Bit machine<o:p></o:p></p>
<p class=3D"MsoNormal">I got the following compilation error<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">| arm-poky-linux-gnueabi-gcc -march=3Darmv7-a -mthum=
b-interwork -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15 -Wl,-O1 -Wl=
,--hash-style=3Dgnu -Wl,--as-needed -L/home/user/project/build/tmp/sysroots=
/machine/usr/lib -lm --sysroot=3D/home/user/project/build/tmp/sysroots/mach=
ine
 -fno-strict-aliasing -DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-prototypes -O2=
 -pipe -g -feliminate-unused-debug-types -Wall -Wcast-align -Wmissing-decla=
rations -Wmissing-prototypes -Wstrict-prototypes -Wpointer-arith -Wreturn-t=
ype -D_GNU_SOURCE -fPIC -I/home/user/project/build/tmp/work/cortexa15hf-vfp=
-neon-poky-linux-gnueabi/gpsd/2.95-r10.0/gpsd-2.95
 -I/usr/include/python2.7 -c gpspacket.c -o build/temp.linux-x86_64-2.7/gps=
packet.o<o:p></o:p></p>
<p class=3D"MsoNormal">| In file included from /usr/include/python2.7/Pytho=
n.h:58:0,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from gpspacket.c:8:<o:p=
></o:p></p>
<p class=3D"MsoNormal">| /usr/include/python2.7/pyport.h:849:2: error: #err=
or &quot;LONG_BIT definition appears wrong for platform (bad gcc/glibc conf=
ig?).&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">| In file included from gpspacket.c:11:0:<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| gpsd.h:327:0: warning: &quot;SIZEOF_LONG&quot; red=
efined [enabled by default]<o:p></o:p></p>
<p class=3D"MsoNormal">| In file included from /usr/include/python2.7/Pytho=
n.h:8:0,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from gpspacket.c:8:<o:p=
></o:p></p>
<p class=3D"MsoNormal">| /usr/include/python2.7/pyconfig.h:992:0: note: thi=
s is the location of the previous definition<o:p></o:p></p>
<p class=3D"MsoNormal">| gpspacket.c:244:1: warning: no previous prototype =
for 'initpacket' [-Wmissing-prototypes]<o:p></o:p></p>
<p class=3D"MsoNormal">| error: command 'arm-poky-linux-gnueabi-gcc' failed=
 with exit status 1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the tmp/&#8230;/gpsd-2.95 folder, I just executed=
 directly the arm-poky-linux-gnueabi-gcc command with the same arguments ex=
cept I replaced &#8211;I/usr/include/python2.7 with -I/home/user/project/bu=
ild/tmp/sysroots/machine/usr/include/python2.7<o:p></o:p></p>
<p class=3D"MsoNormal">Now the compilation command was successful.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But now the problem is, how do I change the &#8211;I=
/usr/include/python2.7 with -I/home/user/project/build/tmp/sysroots/machine=
/usr/include/python2.7 which is passed as an argument for the arm-poky-linu=
x-gnueabi-gcc using the recipe files ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">B.Sathish Kumar<o:p></o:p></p>
</div>
<span style=3D"FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 7=
.5pt; mso-fareast-font-family: 'Times New Roman'">
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><br><br><font style=3D"F=
ONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 9px">::DISCLAIMER=
::<br>---------------------------------------------------------------------=
---------------------------------------------------------------------------=
----</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">The contents of thi=
s e-mail and any attachment(s) are confidential and intended for the named =
recipient(s) only.<br>E-mail transmission is not guaranteed to be secure or=
 error-free as information could be intercepted, corrupted, <br>lost, destr=
oyed, arrive late or incomplete, or may contain viruses in transmission. Th=
e e mail and its contents <br>(with or without referred errors) shall there=
fore not attach any liability on the originator or HCL or its affiliates. <=
br>Views or opinions, if any, presented in this email are solely those of t=
he author and may not necessarily reflect the <br>views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, <br>distribution and / or publication of this message w=
ithout the prior written consent of authorized representative of <br>HCL is=
 strictly prohibited. If you have received this email in error please delet=
e it and notify the sender immediately. <br>Before opening any email and/or=
 attachments, please check them for viruses and other defects.</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">-------------------=
---------------------------------------------------------------------------=
------------------------------------------------------</font></span></P></b=
ody>
</html>

--_000_5D833673AB94D9489A7F7F73E9E611C814ADDA24chnhcltmbs08HCL_--
