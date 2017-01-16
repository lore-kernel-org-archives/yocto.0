Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32564E00805; Mon, 16 Jan 2017 06:47:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC4S18.hotmail.com (col004-omc4s18.hotmail.com
	[65.55.34.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E42E0078F
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:47:33 -0800 (PST)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com ([65.55.34.199])
	by COL004-OMC4S18.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 16 Jan 2017 06:47:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=H0+epouhCty8u0m/VqxvQENe8nOeF7SYnYtIijy9YOI=;
	b=SITQlZVt5M/oF4b2+e1bAYfFh5+4LgHqKuFEQNZrp8KnfRdTe5jy1YkBqMy8+yqn0UaB/e951rPTtFNvbnBZW9QK3GRz0++wB0jJm7ckMwkQsk05V3T11BKimicP+MdK+nFSJxHyuHKext7uEXGPv5Hl3UUu6gIpwShrvYRRwv2Ozqfn0zttXNyp7fwsNIUt9QFMiJMXWkrPnnvGr7Ob3xtaKsu0g8BN0JtKg0dGNBFszsTIaaBl2quqKE3vw/PwtFvVOivbA+mkxx63KSdF4zP76v81kIJPTxyzP5I1VVZHk2SL81uMRl/Wunb6f/QRFVY1Oi/j0327rXMb7TtK2w==
Received: from VE1EUR01FT060.eop-EUR01.prod.protection.outlook.com
	(10.152.2.55) by VE1EUR01HT150.eop-EUR01.prod.protection.outlook.com
	(10.152.3.243) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.803.8;
	Mon, 16 Jan 2017 14:47:24 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM (10.152.2.55) by
	VE1EUR01FT060.mail.protection.outlook.com (10.152.3.93) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Mon, 16 Jan 2017 14:47:24 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) by
	MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) with mapi id
	15.01.0845.013; Mon, 16 Jan 2017 14:47:23 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Leon Woestenberg <leon@sidebranch.com>
Thread-Topic: [yocto] Illegal Instruction Generate for Intel Atom
Thread-Index: AQHSb9G3VMe0fiyhnk+6NGfdUXF80aE63loAgAA0ZpA=
Date: Mon, 16 Jan 2017 14:47:23 +0000
Message-ID: <MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>,
	<CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
In-Reply-To: <CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:F92F029ADBBA9A9B7C74203247D592FD241E5EF1EDA32B0A6EC6D503D87A88B3;
	UpperCasedChecksum:A82DBC6E031DF2C2D7A0BF8DF42D409801CEDD8EBAC588D7625FCC21414D96AE;
	SizeAsReceived:7791; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [iQpta5CrKDw7zLq6KIDBGZ8ANxQISoMx]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT150;
	7:Hy0LmFLTdxCV5fgQkkDAoZ2eX2Z1vvCjQ/L9bTSttIp8ypCi+xvoyTPB+hmBw/lk+BJ9kuiwfezH1pQqw/ZsrYKVBSknMcC0sG/f5j/bajMfayOkfFzIZRT0zrOp+HGHQYIgcqgMZBdokol25f19GXPV9NukDRh32uZ6HrctX2qXNQtLLjUS7DZMv3ija7ezIqsebsa2b48BCfUwGDjN/p0hjIv6T4MF+YCea9YCr2HjZHV5DKPyRuS4p4P+e8PFINVJyK8TKgbq2sY8GSlZ9AEBSF0VLbLbLjT3jrE0/0UHwiXhI2KwPbDiq85m0Kzsbk9Ah0p3zyKmJBvpXVWXEKOCJJD5d0ztpIqThhvu0xU+LsLSfV5hdpiyIaaJQVtsdwi2oMz1zqGMLnnvtVwERoUZ9nl2UwzVRgE5FTxxFPmxXRZjw8NGmWPaR3vRCxRatkmaLqbjeYah0i4LtxHsug==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT150;
	H:MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 659ffa82-0887-4471-176a-08d43e1e9530
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(5061506344)(1603103113)(1601125047)(1701031023);
	SRVR:VE1EUR01HT150; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:VE1EUR01HT150; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT150; 
x-forefront-prvs: 01894AD3B8
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2017 14:47:23.8249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT150
X-OriginalArrivalTime: 16 Jan 2017 14:47:31.0867 (UTC)
	FILETIME=[77790EB0:01D27007]
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 14:47:36 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MMXP123MB0125453F658E5DDFDDBD3FECDA7D0MMXP123MB0125GBRP_"

--_000_MMXP123MB0125453F658E5DDFDDBD3FECDA7D0MMXP123MB0125GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok,


Rebuilt system the for i586 and asterisk is still the one program to fail, =
still with that illegal andn instruction.  So I can rule out the core2 tuni=
ng.


The compiler log is next to useless, as the asterisk build hides the comman=
d lines but the makeopts files has the following, which seems fair enough:


CC=3Di586-poky-linux-gcc  -m32 -march=3Di586 --sysroot=3D/home/chris/yocto/=
build/tmp/sysroots/pokini
HOST_CC=3Dcc
BUILD_CC=3Dcc
CXX=3Di586-poky-linux-g++  -m32 -march=3Di586 --sysroot=3D/home/chris/yocto=
/build/tmp/sysroots/pokini

Looking around the web, this illegal andn instruction has come up before - =
possibly to do with using 'native' tuning.  This is over a long period of t=
ime though, so not very helpful.


Managed to get the actual compiler lines and the initial args are "-m32 -ma=
rch=3Di586" but there is "-march=3Dnative" appended to the end of the line.


As noted previously , there have been various issues reported with march=3D=
native, for a very long time, so I will try to see how to get that removed =
from the build.


Chris


________________________________
From: Leon Woestenberg <leon@sidebranch.com>
Sent: 16 January 2017 09:57
To: Chris Trobridge
Cc: Yocto List
Subject: Re: [yocto] Illegal Instruction Generate for Intel Atom

Hello Chris,

Probably unrelated, but yesterday my krogoth build failed on an Atom *host/=
build* system. I was just about to debug this when I saw your email.

The configure stage of gmp-native decided to choose -march=3Dk8 and -mtune=
=3Dk8 -m64. I am debugging this currently.

Maybe check if the asterix recipe tries to be smart in a similar way? And v=
erify the do_compile log for actual compiler options.

Regards,

Leon.



build/tmp-glibc/work/x86_64-linux/gmp-native/6.1.0-r0

configure:

checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64 ... yes
checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64  -mtune=3Dk8=
... yes
checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64 -mtune=3Dk8 =
 -march=3Dk8... yes

"-m64 -mtune=3Dk8 -march=3Dk8" on gcc 5.4.0:

x86_64-linux-libtool: compile:  g++ -DHAVE_CONFIG_H -I. -I../../gmp-6.1.0/c=
xx -I.. -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0 -isystem/home/leon/build/tmp=
-glibc/sysroots/x86_64-linux/usr/include -O2 -pedantic -fomit-frame-pointer=
 -m64 -mtune=3Dk8 -march=3Dk8 -isystem/home/leon/build/tmp-glibc/sysroots/x=
86_64-linux/usr/include -O2 -pipe -c ../../gmp-6.1.0/cxx/osmpq.cc  -fPIC -D=
PIC -o .libs/osmpq.o
../x86_64-linux-libtool  --tag=3DCXX   --mode=3Dcompile g++  -DHAVE_CONFIG_=
H -I. -I../../gmp-6.1.0/cxx -I..  -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0 -i=
system/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include  -O2 -pe=
dantic -fomit-frame-pointer -m64 -mtune=3Dk8 -march=3Dk8 -isystem/home/leon=
/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2 -pipe -c -o osmpz.lo=
 ../../gmp-6.1.0/cxx/osmpz.cc
make[2]: *** [osmpz.lo] Segmentation fault


On Mon, Jan 16, 2017 at 9:46 AM, Chris Trobridge <christrobridge@hotmail.co=
m<mailto:christrobridge@hotmail.com>> wrote:

This arose building asterisk switching from 13.7 to 13.11+.


The executable core dumps immediately with an illegal instruction instructi=
on, which gdb reported as 'andn'.  This is part of BMI1, which was introduc=
ed with Haswell.  I am targeting a (32-bit) Z5xx Atom processor, which pred=
ates this instruction.


I don't know what changed in the Asterisk build to cause this (the instruct=
ion is in some regular compiler generate code) but the compiler is still ge=
nerating legal core2 code and tune-core2.inc is recommended for Atom proces=
sors:


"This tune is recommended for the Intel Core 2 CPU family, including Conroe=
, Merom and beyond, as well as the first Atom CPUs, Diamondville, and beyon=
d."


I am still considering this output is down to some quirk in my configuratio=
n but I found that -mtune and -march options were added for Atom in GCC in =
4.5, so this could be another line of attack, although I didn't find any ex=
plicit code for this in meta/meta-intel.


Any ideas?


My initial plan is to try to acoid the core2 tuning and then, if that helps=
, attempt to get atom tuning working, unless that's likely to be cause furt=
her breakages due to being unexpected.


Regards,

Chris



--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_MMXP123MB0125453F658E5DDFDDBD3FECDA7D0MMXP123MB0125GBRP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Ok,</p>
<p><br>
</p>
<p>Rebuilt system&nbsp;the for i586 and asterisk is still the one program t=
o fail, still with that illegal andn instruction. &nbsp;So I can rule out t=
he core2 tuning.</p>
<p><br>
</p>
<p>The&nbsp;compiler log is next to useless, as the asterisk build hides th=
e command lines but the makeopts files has the following, which seems fair =
enough:</p>
<p><br>
</p>
<p></p>
<div>CC=3Di586-poky-linux-gcc &nbsp;-m32 -march=3Di586 --sysroot=3D/home/ch=
ris/yocto/build/tmp/sysroots/pokini</div>
<div>HOST_CC=3Dcc</div>
<div>BUILD_CC=3Dcc</div>
<div>CXX=3Di586-poky-linux-g&#43;&#43; &nbsp;-m32 -march=3Di586 --sysroot=
=3D/home/chris/yocto/build/tmp/sysroots/pokini</div>
<div><br>
</div>
Looking around the&nbsp;web, this illegal&nbsp;andn instruction has come up=
 before - possibly to do with using 'native' tuning. &nbsp;This is over a l=
ong period of time though, so not very helpful.
<p></p>
<p><br>
</p>
<p>Managed to get the actual compiler lines and the initial args are &quot;=
<span>-m32 -march=3Di586&quot; but</span>&nbsp;there is &quot;<span>-march=
=3Dnative&quot; appended to the end of the line.</span></p>
<p><span><br>
</span></p>
<p><span>As noted&nbsp;previously&nbsp;, there have been various issues rep=
orted with march=3Dnative, for a very long time, so I will try to see how t=
o get that removed from the build. &nbsp;</span></p>
<p><br>
</p>
<p><span>Chris</span></p>
<p><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Leon Woestenberg &lt;=
leon@sidebranch.com&gt;<br>
<b>Sent:</b> 16 January 2017 09:57<br>
<b>To:</b> Chris Trobridge<br>
<b>Cc:</b> Yocto List<br>
<b>Subject:</b> Re: [yocto] Illegal Instruction Generate for Intel Atom</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hello Chris,<br>
<br>
Probably unrelated, but yesterday my krogoth build failed on an Atom *host/=
build* system. I was just about to debug this when I saw your email.<br>
<br>
The configure stage of gmp-native decided to choose -march=3Dk8 and -mtune=
=3Dk8 -m64. I am debugging this currently.<br>
<br>
</div>
<div>Maybe check if the asterix recipe tries to be smart in a similar way? =
And verify the do_compile log for actual compiler options.<br>
<br>
</div>
<div>Regards,<br>
<br>
</div>
<div>Leon.<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
build/tmp-glibc/work/x86_64-linux/gmp-native/6.1.0-r0<br>
<br>
</div>
configure:<br>
<br>
checking compiler gcc&nbsp; -O2 -pedantic -fomit-frame-pointer -m64 ... yes=
<br>
checking compiler gcc&nbsp; -O2 -pedantic -fomit-frame-pointer -m64&nbsp; -=
mtune=3Dk8... yes<br>
checking compiler gcc&nbsp; -O2 -pedantic -fomit-frame-pointer -m64 -mtune=
=3Dk8&nbsp; -march=3Dk8... yes<br>
<div><br>
&quot;-m64 -mtune=3Dk8 -march=3Dk8&quot; on gcc 5.4.0:<br>
<br>
x86_64-linux-libtool: compile:&nbsp; g&#43;&#43; -DHAVE_CONFIG_H -I. -I../.=
./gmp-6.1.0/cxx -I.. -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0 -isystem/home/l=
eon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2 -pedantic -fomit-=
frame-pointer -m64 -mtune=3Dk8 -march=3Dk8 -isystem/home/leon/build/tmp-gli=
bc/sysroots/x86_64-linux/usr/include
 -O2 -pipe -c ../../gmp-6.1.0/cxx/osmpq.cc&nbsp; -fPIC -DPIC -o .libs/osmpq=
.o<br>
../x86_64-linux-libtool&nbsp; --tag=3DCXX&nbsp;&nbsp; --mode=3Dcompile g&#4=
3;&#43;&nbsp; -DHAVE_CONFIG_H -I. -I../../gmp-6.1.0/cxx -I..&nbsp; -D__GMP_=
WITHIN_GMPXX -I../../gmp-6.1.0 -isystem/home/leon/build/tmp-glibc/sysroots/=
x86_64-linux/usr/include&nbsp; -O2 -pedantic -fomit-frame-pointer -m64 -mtu=
ne=3Dk8
 -march=3Dk8 -isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/i=
nclude -O2 -pipe -c -o osmpz.lo ../../gmp-6.1.0/cxx/osmpz.cc<br>
make[2]: *** [osmpz.lo] Segmentation fault<br>
<br>
</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Mon, Jan 16, 2017 at 9:46 AM, Chris Trobridge=
 <span dir=3D"ltr">
&lt;<a href=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">christr=
obridge@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_1221039791643424416divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size:12pt; color:#000000; font-family:Calibri,Arial,Helvetica,sans-ser=
if">
<p>This arose building asterisk switching from 13.7 to 13.11&#43;.</p>
<p><br>
</p>
<p>The executable core dumps immediately with an illegal instruction instru=
ction, which gdb reported as 'andn'.&nbsp; This is part of&nbsp;<span>BMI1,=
 which was introduced with Haswell. &nbsp;</span><span style=3D"font-size:1=
2pt">I am targeting a (32-bit) Z5xx&nbsp;Atom processor,
 which predates this instruction.</span></p>
<p><span><br>
</span></p>
<p><span>I don't know what changed in the Asterisk build to cause this (the=
 instruction is in some regular compiler generate code)&nbsp;but the compil=
er is still generating legal core2 code and tune-core2.inc is recommended f=
or Atom processors:</span></p>
<p><span><br>
</span></p>
<p><span>&quot;</span><span style=3D"font-size:12pt">This tune is recommend=
ed for the Intel Core 2 CPU family, including Conroe,&nbsp;</span><span sty=
le=3D"font-size:12pt">Merom and beyond, as well as the first Atom CPUs, Dia=
mondville, and beyond.&quot;</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">I am still considering this output is dow=
n to some quirk in my configuration but I found that -mtune and -march opti=
ons were added for Atom in GCC in 4.5, so this could be another line of att=
ack, although I didn't find any explicit
 code for this in meta/meta-intel.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Any ideas?</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">My initial plan is to try to acoid the co=
re2 tuning and then, if that helps, attempt to get atom tuning working, unl=
ess that's likely to be cause further breakages due to being unexpected.</s=
pan></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Regards,</span></p>
<p><span style=3D"font-size:12pt">Chris</span></p>
<p><br>
</p>
<p><br>
</p>
</div>
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MMXP123MB0125453F658E5DDFDDBD3FECDA7D0MMXP123MB0125GBRP_--
