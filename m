Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6501EE00D7F; Thu,  5 Oct 2017 10:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA45BE00C78
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 10:51:40 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 05 Oct 2017 17:51:34 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 5 Oct 2017 10:51:32 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 5 Oct 2017 10:51:32 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Having trouble getting recipe to run in proper directory
Thread-Index: AQHTPWxb0oRn/yAKOUO4B9H0W4aZLaLU9iAAgACRpBI=
Date: Thu, 5 Oct 2017 17:51:32 +0000
Message-ID: <8c87603b0e564a00b7ef230b0e24b41d@sakuraus.com>
References: <2376f96acc0f4c3db9c3b40a3cfc98f3@sakuraus.com>,
	<3688235.HQgvHeQ0bO@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3688235.HQgvHeQ0bO@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507225893-298553-21844-13189-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185720
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Having trouble getting recipe to run in proper directory
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
X-List-Received-Date: Thu, 05 Oct 2017 17:51:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8c87603b0e564a00b7ef230b0e24b41dsakurauscom_"

--_000_8c87603b0e564a00b7ef230b0e24b41dsakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I changed the name of the recipe to 'canfestival_3-asc.bb' and removed the =
PN, PV, & PR defines and that seems to have gotten bitbake to extract and e=
xecute into the same directory.


I'm now getting an error from the 'configure' scripe:


NOTE: Running ../canfestival-3-asc/configure  --build=3Dx86_64-linux   --ho=
st=3Darm-poky-linux-gnueabi   --target=3Darm-poky-linux-gnueabi   --prefix=
=3D/usr   --exec_prefix=3D/usr   --bindir=3D/usr/bin   --sbindir=3D/usr/sbi=
n   --libexecdir=3D/usr/libexec   --datadir=3D/usr/share   --sysconfdir=3D/=
etc   --sharedstatedir=3D/com   --localstatedir=3D/var   --libdir=3D/usr/li=
b   --includedir=3D/usr/include   --oldincludedir=3D/usr/include   --infodi=
r=3D/usr/share/info   --mandir=3D/usr/share/man   --disable-silent-rules   =
--disable-dependency-tracking   --with-libtool-sysroot=3D/home/gwilson/Qt-5=
.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/raspberrypi3 =96can=3Ds=
ocket =96timers=3Dunix =96SDO_MAX_SIMULTANEOUS_TRANSFERS=3D25              =
   =96SDO_MAX_LENGTH_TRANSFER=3D4096 =96MAX_NB_TIMER=3D128 =96SDO_TIMEOUT_M=
S=3D1000 --disable-static
ERROR: configure failed
Unknown argument --build=3Dx86_64-linux

so bitbake is including an option that the configure script doesn't underst=
and. Is there a way to delete that option?


Thanks so much for you help,

Greg

________________________________
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Sent: Wednesday, October 4, 2017 7:01:10 PM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Having trouble getting recipe to run in proper directo=
ry

Hi Greg,

On Thursday, 5 October 2017 1:16:15 PM NZDT Greg Wilson-Lindberg wrote:
> I'm trying to create a new recipe for a package that has a version and no=
n-numeric rev
> in its name (canfestival-3-asc). I've gotten bitbake to unpack the packag=
e into a tree
> that looks ok, but it keeps trying to run the compile at least in the wro=
ng directory.
> Here is the recipe:
>
>
> SUMMARY =3D "Independent CANOpen=AE stack"
> DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform inde=
pendent \
>                CANOpen=AE stack that can be built as master or slave node=
s on PCs, \
>                Real-time IPCs, and Microcontrollers."
>
> HOMEPAGE =3D "http://www.canfestival.org/"
>
> SRCREV =3D "895:8973dd8be7e8"
>
> SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestiv=
al-3-asc"
> SRC_URI[md5sum] =3D ""
> SRC_URI[sha256sum] =3D ""
>
> PN =3D "canfestival"
> PV =3D '3'
> PR =3D 'asc'
>
> LICENSE =3D "LGPL-2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D \
>                     file://LICENCE;md5=3D"
>
> inherit autotools
>
> # Specify any options you want to pass to the configure script using EXTR=
A_OECONF:
> EXTRA_OECONF =3D "-can=3Dsocket -timers=3Dunix -SDO_MAX_SIMULTANEOUS_TRAN=
SFERS=3D25 \
>                 -SDO_MAX_LENGTH_TRANSFER=3D4096 -MAX_NB_TIMER=3D128 -SDO_=
TIMEOUT_MS=3D1000"
>
> PROVIDES =3D "canfestival"
>
> The directory structure that bitbake builds is:
>
>
> canfestival
>
>            3-asc
>
>                    build
>
>                    canfestival-3           # directory that bitbake is tr=
ying to compile in
>
>                    canfestival-3-asc       # directory that code was extr=
acted to
>
>                    temp
>
>
> I'm not getting any errors from the configure task, but the log file look=
s like
> it is trying to run from the canfestival-3 directory, not the canfestival=
-3-asc. What
> can I do to the recipe to get the build to run in the canfestival-3-asc d=
irectory?
> Or, i guess, get bitbake to unpack the source into the canfestival-3, or =
a
> different directory that it will actually run the tasks in.

So firstly the directory where the build system should expect to find the
source after do_unpack is specified by the S variable, whose default
is "${WORKDIR}/${BP}" where BP defaults to "${BPN}-${PV}" and BPN will be t=
he
same as PN in this case. However, you're setting the "asc" part in PR -
typically PR is left under the control of the build system and thus your PV
would typically be set to "3-asc" in which case S would default to the righ=
t value i.e.
"canfestival-3-asc" (but if it didn't, you would just set S to fix it).

To summarise, set PV =3D "3-asc" (or alternatively have it picked up from t=
he
file name, i.e. name it canfestival_3-asc.bb) and it should work as you
expect.

A couple of other notes:
* For LICENSE, LGPL-2 isn't a standard value - LGPLv2, LGPLv2.0, LGPLv2.1,
  LGPL-2.0, or LGPL-2.1 (with or without + at the end) would be understood
  by the build system
* You don't need SRC_URI md5sum/sha256sum for an hg:// URL.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

--_000_8c87603b0e564a00b7ef230b0e24b41dsakurauscom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Paul,</p>
<p>I changed the name of the recipe to 'canfestival_3-asc.bb' and removed t=
he PN, PV, &amp; PR defines and that seems to have gotten bitbake to extrac=
t and execute into the same directory.</p>
<p><br>
</p>
<p>I'm now getting an error from the 'configure' scripe:</p>
<p><br>
</p>
<p></p>
<div><span style=3D"font-family:&quot;Courier New&quot;,monospace">NOTE: Ru=
nning ../canfestival-3-asc/configure&nbsp; --build=3Dx86_64-linux
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --host=3Darm-poky-linux-gnueabi
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --target=3Darm-poky-linux-gnueabi
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --prefix=3D/usr
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --exec_prefix=3D/usr
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --bindir=3D/usr/bin
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --sbindir=3D/usr/sbin
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --libexecdir=3D/usr/libexec
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --datadir=3D/usr/share
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --sysconfdir=3D/etc
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --sharedstatedir=3D/com
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --localstatedir=3D/var
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --libdir=3D/usr/lib
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --includedir=3D/usr/include
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --oldincludedir=3D/usr/include
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --infodir=3D/usr/share/info
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --mandir=3D/usr/share/man
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --disable-silent-rules
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --disable-dependency-tracking
</span><span style=3D"white-space:pre; font-family:&quot;Courier New&quot;,=
monospace"></span><span style=3D"font-family:&quot;Courier New&quot;,monosp=
ace">&nbsp; --with-libtool-sysroot=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/sysroots/raspberrypi3 =96can=3Dsocket =96timers=3Dun=
ix
 =96SDO_MAX_SIMULTANEOUS_TRANSFERS=3D25&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;=96SDO_MAX_LENGTH_TRANSFER=3D4096 =96MAX_NB_TIMER=
=3D128 =96SDO_TIMEOUT_MS=3D1000 --disable-static&nbsp;&nbsp;</span></div>
<div><span style=3D"font-size:12pt; font-family:&quot;Courier New&quot;,mon=
ospace">ERROR: configure failed</span><br>
</div>
<div><span style=3D"font-family:&quot;Courier New&quot;,monospace">Unknown =
argument --build=3Dx86_64-linux</span></div>
<div><br>
</div>
so bitbake is including an option that the configure script doesn't underst=
and. Is there a way to delete that option?
<p></p>
<p><br>
</p>
<p>Thanks so much for you help,</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Paul Eggleton &lt;p=
aul.eggleton@linux.intel.com&gt;<br>
<b>Sent:</b> Wednesday, October 4, 2017 7:01:10 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Having trouble getting recipe to run in proper =
directory</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Greg,<br>
<br>
On Thursday, 5 October 2017 1:16:15 PM NZDT Greg Wilson-Lindberg wrote:<br>
&gt; I'm trying to create a new recipe for a package that has a version and=
 non-numeric rev<br>
&gt; in its name (canfestival-3-asc). I've gotten bitbake to unpack the pac=
kage into a tree
<br>
&gt; that looks ok, but it keeps trying to run the compile at least in the =
wrong directory.
<br>
&gt; Here is the recipe:<br>
&gt; <br>
&gt; <br>
&gt; SUMMARY =3D &quot;Independent CANOpen=AE stack&quot;<br>
&gt; DESCRIPTION =3D &quot;CanFestival focuses on providing an ANSI-C platf=
orm independent \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; CANOpen=AE stack that can be built as master or slave n=
odes on PCs, \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Real-time IPCs, and Microcontrollers.&quot;<br>
&gt; <br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://www.canfestival.org/">http://www.=
canfestival.org/</a>&quot;<br>
&gt; <br>
&gt; SRCREV =3D &quot;895:8973dd8be7e8&quot;<br>
&gt; <br>
&gt; SRC_URI =3D &quot;hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dc=
anfestival-3-asc&quot;<br>
&gt; SRC_URI[md5sum] =3D &quot;&quot;<br>
&gt; SRC_URI[sha256sum] =3D &quot;&quot;<br>
&gt; <br>
&gt; PN =3D &quot;canfestival&quot;<br>
&gt; PV =3D '3'<br>
&gt; PR =3D 'asc'<br>
&gt; <br>
&gt; LICENSE =3D &quot;LGPL-2&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;<a href=3D""></a>file://COPYING;md5=3D \<br=
>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file://LICENCE=
;md5=3D">file://LICENCE;md5=3D</a>&quot;<br>
&gt; <br>
&gt; inherit autotools<br>
&gt; <br>
&gt; # Specify any options you want to pass to the configure script using E=
XTRA_OECONF:<br>
&gt; EXTRA_OECONF =3D &quot;-can=3Dsocket -timers=3Dunix -SDO_MAX_SIMULTANE=
OUS_TRANSFERS=3D25 \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; -SDO_MAX_LENGTH_TRANSFER=3D4096 -MAX_NB_TIMER=3D1=
28 -SDO_TIMEOUT_MS=3D1000&quot;<br>
&gt; <br>
&gt; PROVIDES =3D &quot;canfestival&quot;<br>
&gt; <br>
&gt; The directory structure that bitbake builds is:<br>
&gt; <br>
&gt; <br>
&gt; canfestival<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3-as=
c<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; build<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; canfestival-3&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # directory that bitbake is tryi=
ng to compile in<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; canfestival-3-asc&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; # directory that code was extracted to<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; temp<br>
&gt; <br>
&gt; <br>
&gt; I'm not getting any errors from the configure task, but the log file l=
ooks like
<br>
&gt; it is trying to run from the canfestival-3 directory, not the canfesti=
val-3-asc. What
<br>
&gt; can I do to the recipe to get the build to run in the canfestival-3-as=
c directory?
<br>
&gt; Or, i guess, get bitbake to unpack the source into the canfestival-3, =
or a<br>
&gt; different directory that it will actually run the tasks in.<br>
<br>
So firstly the directory where the build system should expect to find the<b=
r>
source after do_unpack is specified by the S variable, whose default<br>
is &quot;${WORKDIR}/${BP}&quot; where BP defaults to &quot;${BPN}-${PV}&quo=
t; and BPN will be the<br>
same as PN in this case. However, you're setting the &quot;asc&quot; part i=
n PR -<br>
typically PR is left under the control of the build system and thus your PV=
<br>
would typically be set to &quot;3-asc&quot; in which case S would default t=
o the right value i.e.<br>
&quot;canfestival-3-asc&quot; (but if it didn't, you would just set S to fi=
x it).<br>
<br>
To summarise, set PV =3D &quot;3-asc&quot; (or alternatively have it picked=
 up from the<br>
file name, i.e. name it canfestival_3-asc.bb) and it should work as you<br>
expect.<br>
<br>
A couple of other notes:<br>
* For LICENSE, LGPL-2 isn't a standard value - LGPLv2, LGPLv2.0, LGPLv2.1, =
<br>
&nbsp; LGPL-2.0, or LGPL-2.1 (with or without &#43; at the end) would be un=
derstood<br>
&nbsp; by the build system<br>
* You don't need SRC_URI md5sum/sha256sum for an hg:// URL.<br>
<br>
Cheers,<br>
Paul<br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div>
</span></font>
</body>
</html>

--_000_8c87603b0e564a00b7ef230b0e24b41dsakurauscom_--
