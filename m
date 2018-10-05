Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1B59E00A0C; Fri,  5 Oct 2018 16:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.236 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.150.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E244E009CF
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 16:26:53 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx26.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 05 Oct 2018 23:26:33 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 5 Oct 2018 16:26:31 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 5 Oct 2018 16:26:31 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] changing kernel config in Morty build
Thread-Index: AQHUWpOFhG/9utVvSUu/b9KkDUPU4qUPjkQggAG3AYD//5UF0IAAc21p
Date: Fri, 5 Oct 2018 23:26:31 +0000
Message-ID: <772b7fca373e4a9085660b8a79a36673@sakuraus.com>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
	<a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>,
	<7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
In-Reply-To: <7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1538781993-853316-30326-61411-1
X-BESS-VER: 2018.13-r1810050002
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.201124
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Fri, 05 Oct 2018 23:26:56 -0000
X-Groupsio-MsgNum: 42696
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_006_772b7fca373e4a9085660b8a79a36673sakurauscom_"

--_006_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_772b7fca373e4a9085660b8a79a36673sakurauscom_"

--_000_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
I've been able to reproduce the problem in a more minimal environment.

To build a basic Yocto Raspberry Pi environment I based my build on the ins=
tructions found here:
https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/

The steps that I actually executed are:

git clone -b morty --single-branch git://git.yoctoproject.org/poky
cd poky/
git clone -b morty http://git.yoctoproject.org/git/meta-raspberrypi
source oe-init-build-env rpi-build

In rpi-build/conf/local.conf I changed the MACHINE assignment to "raspberry=
pi2" from "qemu86"

In rpi-build/conf/bblayers.conf I added "  /home/gwilson/Qt/poky/meta-raspb=
errypi \" to pick up the raspberry layer.

At this point I ran:
bitbake rpi-hwup-image

to verify that the environment was correct. The build finished with only a =
couple of warnings about checksum problems and using alternate mirrors.


I then copied in my kernel scripts and added in the directory to the bblaye=
rs file.

When I rebuilt with these changes I get the same warnings/errors about chan=
ging the kernel config that I get with my full build environment.

I've attached my meta-test directory with the kernel configuration .bbappen=
d and .scc & .cfg files, and the final bblayers.conf & local.conf files.

Thank you for taking a look at this.

Regards,

Greg Wilson-Lindberg





________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Greg Wilson-Lindberg <GWilson@sakuraus.com>
Sent: Friday, October 5, 2018 9:23:52 AM
To: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] changing kernel config in Morty build

Hi Bruce,
I'll do my best to get something for you.
Thanks,

Greg Wilson-Lindberg
Principal Firmware Engineer | Sakura Finetek USA, Inc.

1750 W 214th Street | Torrance, CA 90501 | U.S.A.
T: +1 310 783 5075
F: +1 310 618 6902 | E: gwilson@sakuraus.com
www.sakuraus.com<http://www.sakuraus.com>





Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Friday, October 05, 2018 08:46 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] changing kernel config in Morty build
>
> On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
> > Does anybody else have any idea about what is going on here?
> >
>
> I can't tell from the information provided.
>
> But if you can send me a set of layers to clone, and configure locally, I=
 can figure it
> out.
>
> Cheers,
>
> Bruce
>
> > Yocto is seeing my request to change the kernel config, suggests that
> > the change is acceptable, but then doesn't make it.
> >
> > Thanks in advance for any insight,
> >
> > Greg
> >
> > **
> >
> > *From:*Greg Wilson-Lindberg
> > *Sent:* Tuesday, October 02, 2018 02:22 PM
> > *To:* yocto@yoctoproject.org
> > *Subject:* changing kernel config in Morty build
> >
> > I'm trying to change some kernel configuration flags in a
> > raspberrypi3 Morty build and I get warnings that it isn't working.
> >
> > Here is the build info and warnings:
> >
> > Build Configuration:
> >
> > BB_VERSION        =3D "1.32.0"
> >
> > BUILD_SYS         =3D "x86_64-linux"
> >
> > NATIVELSBSTRING   =3D "universal"
> >
> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> >
> > MACHINE           =3D "raspberrypi3"
> >
> > DISTRO            =3D "b2qt"
> >
> > DISTRO_VERSION    =3D "2.2.4"
> >
> > TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
> > callconvention-hard cortexa7"
> >
> > TARGET_FPU        =3D "hard"
> >
> > SDKMACHINE        =3D "x86_64"
> >
> > meta
> >
> > meta-poky         =3D "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
> >
> > meta-raspberrypi  =3D "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
> >
> > meta-oe
> >
> > meta-python
> >
> > meta-networking
> >
> > meta-initramfs
> >
> > meta-multimedia   =3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> >
> > meta-boot2qt
> >
> > meta-raspberrypi-extras =3D "<unknown>:<unknown>"
> >
> > meta-mingw        =3D "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
> >
> > meta-qt5          =3D "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
> >
> > meta-sakura       =3D "<unknown>:<unknown>"
> >
> > Initialising tasks: 100%
> >
> |###################################################################
> ##
> >
> |###################################################################
> ##
> > |###|
> > Time: 0:00:00
> >
> > NOTE: Executing SetScene Tasks
> >
> > NOTE: Executing RunQueue Tasks
> >
> > WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> > do_kernel_configcheck: [kernel config]: specified values did not make
> > it into the kernel's final configuration:
> >
> > ---------- CONFIG_SND_SOC_MAX9768 -----------------
> >
> > Config: CONFIG_SND_SOC_MAX9768
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
> >
> > Actual value:
> >
> > Config 'SND_SOC_MAX9768' has the following conditionals:
> >
> > Dependency values are:
> >
> > ---------- CONFIG_MAX1363 -----------------
> >
> > Config: CONFIG_MAX1363
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:  CONFIG_MAX1363=3Dm
> >
> > Actual value:     # CONFIG_MAX1363 is not set
> >
> > Config 'MAX1363' has the following conditionals:
> >
> >    I2C (value: "y")
> >
> > Dependency values are:
> >
> >    I2C [y]
> >
> > ---------- CONFIG_CAN_EMS_USB -----------------
> >
> > Config: CONFIG_CAN_EMS_USB
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:  CONFIG_CAN_EMS_USB=3Dm
> >
> > Actual value:     # CONFIG_CAN_EMS_USB is not set
> >
> > Config 'CAN_EMS_USB' has the following conditionals:
> >
> >    (none)
> >
> > Dependency values are:
> >
> > Here is my
> >
> > linux-raspberrypi_4.4.bbappend for the kernel:
> >
> > # Scribe additions to Kernel configuration
> >
> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/files:"
> >
> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"
> >
> > SRC_URI +=3D "file://Scribe.scc <file:///%5C%5CScribe.scc>"
> >
> > SRC_URI +=3D "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>"
> >
> > The Scribe.scc file:
> >
> > # Scribe additions to kernel configuration
> >
> > kconf hardware Scribe.cfg
> >
> > And the Scribe.cfg file:
> >
> > # Scribe additions to kernel configuration
> >
> > # Enable MAX9768
> >
> > #CONFIG_SOC_ALL_CODECS=3Dm
> >
> > #CONFIG_COMPILE_TEST=3Dy
> >
> > CONFIG_SND_SOC_MAX9768=3Dy
> >
> > # Enable MAX11606
> >
> > #IIO=3Dy
> >
> > CONFIG_MAX1363=3Dm
> >
> > # Enable EMS CPC-USB
> >
> > CONFIG_CAN_EMS_USB=3Dm
> >
> > Here is my directory tree:
> >
> > Qt-5.9.6
> >
> >       Yocto-mirror
> > # Yocto build mirror
> >
> >       Yocto-build-RPi3                                              #
> > Yocto build root
> >
> >                  build-raspberrypi                                   #
> > build directory
> >
> >                  sources
> >   # yocto sources
> >
> >                         meta-sakura
> > # our recipes
> >
> >                                 recipes-kernel
> > # directory for kernel changes
> >
> >                                         linux
> >     # directory that contains linux-raspberrypi_4.4.bbappend
> >
> >                                                files
> >       # directory that contains .scc & .cfg files
> >
> > As seen above none of the changes are accepted although there is
> > nothing that blocks any of them.
> >
> > Any help understanding this would be greatly appreciated.
> >
> > Regards,
> >
> > Greg Wilson-Lindberg
> >
> >
> >

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<p></p>
<div style=3D"color:#000000; background-color:#ffffff; font-style:normal; f=
ont-weight:normal; text-decoration:none">
<pre>Hi Bruce,=0A=
I've been able to reproduce the problem in a more minimal environment.=0A=
=0A=
To build a basic Yocto Raspberry Pi environment I based my build on the ins=
tructions found here:=0A=
https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/=
=0A=
=0A=
The steps that I actually executed are:=0A=
=0A=
git clone -b morty --single-branch git://git.yoctoproject.org/poky=0A=
cd poky/=0A=
git clone -b morty http://git.yoctoproject.org/git/meta-raspberrypi=0A=
source oe-init-build-env rpi-build=0A=
=0A=
In rpi-build/conf/local.conf I changed the MACHINE assignment to &quot;rasp=
berrypi2&quot; from &quot;qemu86&quot;=0A=
=0A=
In rpi-build/conf/bblayers.conf I added &quot;  /home/gwilson/Qt/poky/meta-=
raspberrypi \&quot; to pick up the raspberry layer.=0A=
=0A=
At this point I ran:=0A=
bitbake rpi-hwup-image=0A=
=0A=
to verify that the environment was correct. The build finished with only a =
couple of warnings about checksum problems and using alternate mirrors.</pr=
e>
<pre>=0A=
I then copied in my kernel scripts and added in the directory to the bblaye=
rs file. </pre>
<pre>When I rebuilt with these changes I get the same warnings/errors about=
 changing the kernel config that I get with my full build environment.<br><=
/pre>
<pre><pre style=3D"font-size:16px">I've attached my meta-test directory wit=
h the kernel configuration .bbappend and .scc &amp; .cfg files, and the fin=
al bblayers.conf &amp; local.conf files.</pre><pre style=3D"font-size:16px"=
>Thank you for taking a look at this.</pre><pre style=3D"font-size:16px">Re=
gards,</pre><pre style=3D"font-size:16px">Greg Wilson-Lindberg</pre><pre st=
yle=3D"font-size:16px">=0A=
</pre>=0A=
</pre>
</div>
<br>
<p></p>
<p></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Greg Wilson=
-Lindberg &lt;GWilson@sakuraus.com&gt;<br>
<b>Sent:</b> Friday, October 5, 2018 9:23:52 AM<br>
<b>To:</b> Bruce Ashfield; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] changing kernel config in Morty build</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Bruce,<br>
I'll do my best to get something for you.<br>
Thanks,<br>
<br>
Greg Wilson-Lindberg&nbsp; <br>
Principal Firmware Engineer | Sakura Finetek USA, Inc.&nbsp; <br>
&nbsp;<br>
1750 W 214th Street | Torrance, CA 90501 | U.S.A.&nbsp; <br>
T: &#43;1 310 783 5075&nbsp; <br>
F: &#43;1 310 618 6902 | E:&nbsp;gwilson@sakuraus.com&nbsp;&nbsp; &nbsp;&nb=
sp; <br>
<a href=3D"http://www.sakuraus.com">www.sakuraus.com</a>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;<br>
<br>
<br>
<br>
<br>
Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any
 disclosure, copying, distribution, or reliance upon the contents of this e=
-mail is strictly prohibited. If you have received this e-mail transmission=
 in error, please reply to the sender, so that Sakura Finetek USA, Inc. can=
 arrange for proper delivery, and
 then please delete the message from your inbox. Thank you.<br>
<br>
<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Bruce Ashfield [<a href=3D"mailto:bruce.ashfield@windriver.com">=
mailto:bruce.ashfield@windriver.com</a>]<br>
&gt; Sent: Friday, October 05, 2018 08:46 AM<br>
&gt; To: Greg Wilson-Lindberg &lt;GWilson@sakuraus.com&gt;; yocto@yoctoproj=
ect.org<br>
&gt; Subject: Re: [yocto] changing kernel config in Morty build<br>
&gt; <br>
&gt; On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:<br>
&gt; &gt; Does anybody else have any idea about what is going on here?<br>
&gt; &gt;<br>
&gt; <br>
&gt; I can't tell from the information provided.<br>
&gt; <br>
&gt; But if you can send me a set of layers to clone, and configure locally=
, I can figure it<br>
&gt; out.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; Bruce<br>
&gt; <br>
&gt; &gt; Yocto is seeing my request to change the kernel config, suggests =
that<br>
&gt; &gt; the change is acceptable, but then doesn't make it.<br>
&gt; &gt;<br>
&gt; &gt; Thanks in advance for any insight,<br>
&gt; &gt;<br>
&gt; &gt; Greg<br>
&gt; &gt;<br>
&gt; &gt; **<br>
&gt; &gt;<br>
&gt; &gt; *From:*Greg Wilson-Lindberg<br>
&gt; &gt; *Sent:* Tuesday, October 02, 2018 02:22 PM<br>
&gt; &gt; *To:* yocto@yoctoproject.org<br>
&gt; &gt; *Subject:* changing kernel config in Morty build<br>
&gt; &gt;<br>
&gt; &gt; I'm trying to change some kernel configuration flags in a<br>
&gt; &gt; raspberrypi3&nbsp;Morty build and I get warnings that it isn't wo=
rking.<br>
&gt; &gt;<br>
&gt; &gt; Here is the build info and warnings:<br>
&gt; &gt;<br>
&gt; &gt; Build Configuration:<br>
&gt; &gt;<br>
&gt; &gt; BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;1.32.0&quot;<br>
&gt; &gt;<br>
&gt; &gt; BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;x86_64-linux=
&quot;<br>
&gt; &gt;<br>
&gt; &gt; NATIVELSBSTRING&nbsp; &nbsp;=3D &quot;universal&quot;<br>
&gt; &gt;<br>
&gt; &gt; TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;arm-poky-linux-gn=
ueabi&quot;<br>
&gt; &gt;<br>
&gt; &gt; MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;raspber=
rypi3&quot;<br>
&gt; &gt;<br>
&gt; &gt; DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;b2qt&qu=
ot;<br>
&gt; &gt;<br>
&gt; &gt; DISTRO_VERSION&nbsp; &nbsp; =3D &quot;2.2.4&quot;<br>
&gt; &gt;<br>
&gt; &gt; TUNE_FEATURES&nbsp; &nbsp; &nbsp;=3D &quot;arm armv7ve vfp thumb =
neon vfpv4<br>
&gt; &gt; callconvention-hard cortexa7&quot;<br>
&gt; &gt;<br>
&gt; &gt; TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;hard&quot;<br>
&gt; &gt;<br>
&gt; &gt; SDKMACHINE&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta<br>
&gt; &gt;<br>
&gt; &gt; meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;HEAD:df76669=
bdd70aa0d903c4211dde731221c7e756d&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-raspberrypi&nbsp; =3D &quot;HEAD:2a192261a914892019f4f428d74=
62bb3c585ebac&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-oe<br>
&gt; &gt;<br>
&gt; &gt; meta-python<br>
&gt; &gt;<br>
&gt; &gt; meta-networking<br>
&gt; &gt;<br>
&gt; &gt; meta-initramfs<br>
&gt; &gt;<br>
&gt; &gt; meta-multimedia&nbsp; &nbsp;=3D &quot;HEAD:b40116cf457b88a2db14b8=
6fda9627fb34d56ae6&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-boot2qt<br>
&gt; &gt;<br>
&gt; &gt; meta-raspberrypi-extras =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;=
&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-mingw&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:1c2e155111dc=
e94423cc227ea69f7f50f316c78e&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-qt5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:49e9d9a=
73b5c6e3d6eab88dc0005305e85b1a62d&quot;<br>
&gt; &gt;<br>
&gt; &gt; meta-sakura&nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&lt;unknown&gt;:&=
lt;unknown&gt;&quot;<br>
&gt; &gt;<br>
&gt; &gt; Initialising tasks: 100%<br>
&gt; &gt;<br>
&gt; |###################################################################<b=
r>
&gt; ##<br>
&gt; &gt;<br>
&gt; |###################################################################<b=
r>
&gt; ##<br>
&gt; &gt; |###|<br>
&gt; &gt; Time: 0:00:00<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt; &gt;<br>
&gt; &gt; WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067=
-r0<br>
&gt; &gt; do_kernel_configcheck: [kernel config]: specified values did not =
make<br>
&gt; &gt; it into the kernel's final configuration:<br>
&gt; &gt;<br>
&gt; &gt; ---------- CONFIG_SND_SOC_MAX9768 -----------------<br>
&gt; &gt;<br>
&gt; &gt; Config: CONFIG_SND_SOC_MAX9768<br>
&gt; &gt;<br>
&gt; &gt; From:<br>
&gt; &gt; /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp=
/work<br>
&gt; &gt; -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cf=
g<br>
&gt; &gt;<br>
&gt; &gt; Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt; &gt;<br>
&gt; &gt; Actual value:<br>
&gt; &gt;<br>
&gt; &gt; Config 'SND_SOC_MAX9768' has the following conditionals:<br>
&gt; &gt;<br>
&gt; &gt; Dependency values are:<br>
&gt; &gt;<br>
&gt; &gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt; &gt;<br>
&gt; &gt; Config: CONFIG_MAX1363<br>
&gt; &gt;<br>
&gt; &gt; From:<br>
&gt; &gt; /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp=
/work<br>
&gt; &gt; -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cf=
g<br>
&gt; &gt;<br>
&gt; &gt; Requested value:&nbsp; CONFIG_MAX1363=3Dm<br>
&gt; &gt;<br>
&gt; &gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<br>
&gt; &gt;<br>
&gt; &gt; Config 'MAX1363' has the following conditionals:<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt; &gt;<br>
&gt; &gt; Dependency values are:<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; I2C [y]<br>
&gt; &gt;<br>
&gt; &gt; ---------- CONFIG_CAN_EMS_USB -----------------<br>
&gt; &gt;<br>
&gt; &gt; Config: CONFIG_CAN_EMS_USB<br>
&gt; &gt;<br>
&gt; &gt; From:<br>
&gt; &gt; /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp=
/work<br>
&gt; &gt; -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cf=
g<br>
&gt; &gt;<br>
&gt; &gt; Requested value:&nbsp; CONFIG_CAN_EMS_USB=3Dm<br>
&gt; &gt;<br>
&gt; &gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_CAN_EMS_USB is not set<=
br>
&gt; &gt;<br>
&gt; &gt; Config 'CAN_EMS_USB' has the following conditionals:<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; (none)<br>
&gt; &gt;<br>
&gt; &gt; Dependency values are:<br>
&gt; &gt;<br>
&gt; &gt; Here is my<br>
&gt; &gt;<br>
&gt; &gt; linux-raspberrypi_4.4.bbappend for the kernel:<br>
&gt; &gt;<br>
&gt; &gt; # Scribe additions to Kernel configuration<br>
&gt; &gt;<br>
&gt; &gt; FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/files:&quot;<b=
r>
&gt; &gt;<br>
&gt; &gt; FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/${PN}:&quot;<b=
r>
&gt; &gt;<br>
&gt; &gt; SRC_URI &#43;=3D &quot;<a href=3D""></a>file://Scribe.scc &lt;<a =
href=3D"file:///%5C%5CScribe.scc">file:///%5C%5CScribe.scc</a>&gt;&quot;<br=
>
&gt; &gt;<br>
&gt; &gt; SRC_URI &#43;=3D &quot;<a href=3D""></a>file://mcp251x.c.patch &l=
t;<a href=3D"file:///%5C%5Cmcp251x.c.patch">file:///%5C%5Cmcp251x.c.patch</=
a>&gt;&quot;<br>
&gt; &gt;<br>
&gt; &gt; The Scribe.scc file:<br>
&gt; &gt;<br>
&gt; &gt; # Scribe additions to kernel configuration<br>
&gt; &gt;<br>
&gt; &gt; kconf hardware Scribe.cfg<br>
&gt; &gt;<br>
&gt; &gt; And the Scribe.cfg file:<br>
&gt; &gt;<br>
&gt; &gt; # Scribe additions to kernel configuration<br>
&gt; &gt;<br>
&gt; &gt; # Enable MAX9768<br>
&gt; &gt;<br>
&gt; &gt; #CONFIG_SOC_ALL_CODECS=3Dm<br>
&gt; &gt;<br>
&gt; &gt; #CONFIG_COMPILE_TEST=3Dy<br>
&gt; &gt;<br>
&gt; &gt; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt; &gt;<br>
&gt; &gt; # Enable MAX11606<br>
&gt; &gt;<br>
&gt; &gt; #IIO=3Dy<br>
&gt; &gt;<br>
&gt; &gt; CONFIG_MAX1363=3Dm<br>
&gt; &gt;<br>
&gt; &gt; # Enable EMS CPC-USB<br>
&gt; &gt;<br>
&gt; &gt; CONFIG_CAN_EMS_USB=3Dm<br>
&gt; &gt;<br>
&gt; &gt; Here is my directory tree:<br>
&gt; &gt;<br>
&gt; &gt; Qt-5.9.6<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp;Yocto-mirror<br>
&gt; &gt; # Yocto build mirror<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp;Yocto-build-RPi3&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #<br>
&gt; &gt; Yocto build&nbsp;root<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bui=
ld-raspberrypi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#<br>
&gt; &gt; build directory<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; sou=
rces<br>
&gt; &gt;&nbsp; &nbsp;# yocto sources<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;meta-sakura<br>
&gt; &gt; # our recipes<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;recipes-kernel<br>
&gt; &gt; # directory for kernel changes<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;linux<br>
&gt; &gt;&nbsp; &nbsp; &nbsp;# directory that contains linux-raspberrypi_4.=
4.bbappend<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; files<br>
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp;# directory that contains .scc &amp; .c=
fg files<br>
&gt; &gt;<br>
&gt; &gt; As seen above none of the changes are accepted although there is<=
br>
&gt; &gt; nothing that blocks any of them.<br>
&gt; &gt;<br>
&gt; &gt; Any help understanding this would be greatly appreciated.<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt;<br>
&gt; &gt; Greg Wilson-Lindberg<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
</div>
</span></font>
</body>
</html>

--_000_772b7fca373e4a9085660b8a79a36673sakurauscom_--

--_006_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: application/octet-stream; name="bblayers.conf"
Content-Description: bblayers.conf
Content-Disposition: attachment; filename="bblayers.conf"; size=377;
	creation-date="Fri, 05 Oct 2018 23:19:21 GMT";
	modification-date="Fri, 05 Oct 2018 23:19:21 GMT"
Content-Transfer-Encoding: base64

IyBQT0tZX0JCTEFZRVJTX0NPTkZfVkVSU0lPTiBpcyBpbmNyZWFzZWQgZWFjaCB0aW1lIGJ1aWxk
L2NvbmYvYmJsYXllcnMuY29uZgojIGNoYW5nZXMgaW5jb21wYXRpYmx5ClBPS1lfQkJMQVlFUlNf
Q09ORl9WRVJTSU9OID0gIjIiCgpCQlBBVEggPSAiJHtUT1BESVJ9IgpCQkZJTEVTID89ICIiCgpC
QkxBWUVSUyA/PSAiIFwKICAvaG9tZS9nd2lsc29uL1F0L3Bva3kvbWV0YSBcCiAgL2hvbWUvZ3dp
bHNvbi9RdC9wb2t5L21ldGEtcG9reSBcCiAgL2hvbWUvZ3dpbHNvbi9RdC9wb2t5L21ldGEteW9j
dG8tYnNwIFwKICAvaG9tZS9nd2lsc29uL1F0L3Bva3kvbWV0YS1yYXNwYmVycnlwaSBcCiAgL2hv
bWUvZ3dpbHNvbi9RdC9wb2t5L21ldGEtdGVzdCBcCiAgIgo=

--_006_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: application/octet-stream; name="local.conf"
Content-Description: local.conf
Content-Disposition: attachment; filename="local.conf"; size=10297;
	creation-date="Fri, 05 Oct 2018 23:19:21 GMT";
	modification-date="Fri, 05 Oct 2018 23:19:21 GMT"
Content-Transfer-Encoding: base64

IwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3VyYXRpb24gZmlsZSBhbmQgaXMgd2hl
cmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxhY2VkLiBUaGUgY29tbWVudHMgaW4g
dGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0aW9ucyBhIG5ldyB1c2VyCiMgdG8g
dGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQgcHJldHR5IG11Y2ggYW55IGNvbmZp
Z3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlzIGZpbGUuIE1vcmUgYWR2ZW50dXJv
dXMgdXNlcnMgY2FuIGxvb2sgYXQgbG9jYWwuY29uZi5leHRlbmRlZAojIHdoaWNoIGNvbnRhaW5z
IG90aGVyIGV4YW1wbGVzIG9mIGNvbmZpZ3VyYXRpb24gd2hpY2ggY2FuIGJlIHBsYWNlZCBpbiB0
aGlzIGZpbGUKIyBidXQgbmV3IHVzZXJzIGxpa2VseSB3b24ndCBuZWVkIGFueSBvZiB0aGVtIGlu
aXRpYWxseS4KIwojIExpbmVzIHN0YXJ0aW5nIHdpdGggdGhlICcjJyBjaGFyYWN0ZXIgYXJlIGNv
bW1lbnRlZCBvdXQgYW5kIGluIHNvbWUgY2FzZXMgdGhlCiMgZGVmYXVsdCB2YWx1ZXMgYXJlIHBy
b3ZpZGVkIGFzIGNvbW1lbnRzIHRvIHNob3cgcGVvcGxlIGV4YW1wbGUgc3ludGF4LiBFbmFibGlu
ZwojIHRoZSBvcHRpb24gaXMgYSBxdWVzdGlvbiBvZiByZW1vdmluZyB0aGUgIyBjaGFyYWN0ZXIg
YW5kIG1ha2luZyBhbnkgY2hhbmdlIHRvIHRoZQojIHZhcmlhYmxlIGFzIHJlcXVpcmVkLgoKIwoj
IE1hY2hpbmUgU2VsZWN0aW9uCiMKIyBZb3UgbmVlZCB0byBzZWxlY3QgYSBzcGVjaWZpYyBtYWNo
aW5lIHRvIHRhcmdldCB0aGUgYnVpbGQgd2l0aC4gVGhlcmUgYXJlIGEgc2VsZWN0aW9uCiMgb2Yg
ZW11bGF0ZWQgbWFjaGluZXMgYXZhaWxhYmxlIHdoaWNoIGNhbiBib290IGFuZCBydW4gaW4gdGhl
IFFFTVUgZW11bGF0b3I6CiMKI01BQ0hJTkUgPz0gInFlbXVhcm0iCiNNQUNISU5FID89ICJxZW11
YXJtNjQiCiNNQUNISU5FID89ICJxZW11bWlwcyIKI01BQ0hJTkUgPz0gInFlbXVtaXBzNjQiCiNN
QUNISU5FID89ICJxZW11cHBjIgojTUFDSElORSA/PSAicWVtdXg4NiIKI01BQ0hJTkUgPz0gInFl
bXV4ODYtNjQiCiMKIyBUaGVyZSBhcmUgYWxzbyB0aGUgZm9sbG93aW5nIGhhcmR3YXJlIGJvYXJk
IHRhcmdldCBtYWNoaW5lcyBpbmNsdWRlZCBmb3IKIyBkZW1vbnN0cmF0aW9uIHB1cnBvc2VzOgoj
CiNNQUNISU5FID89ICJiZWFnbGVib25lIgojTUFDSElORSA/PSAiZ2VuZXJpY3g4NiIKI01BQ0hJ
TkUgPz0gImdlbmVyaWN4ODYtNjQiCiNNQUNISU5FID89ICJtcGM4MzE1ZS1yZGIiCiNNQUNISU5F
ID89ICJlZGdlcm91dGVyIgojCiMgVGhpcyBzZXRzIHRoZSBkZWZhdWx0IG1hY2hpbmUgdG8gYmUg
cWVtdXg4NiBpZiBubyBvdGhlciBtYWNoaW5lIGlzIHNlbGVjdGVkOgpNQUNISU5FID8/PSAicmFz
cGJlcnJ5cGkyIgoKIwojIFdoZXJlIHRvIHBsYWNlIGRvd25sb2FkcwojCiMgRHVyaW5nIGEgZmly
c3QgYnVpbGQgdGhlIHN5c3RlbSB3aWxsIGRvd25sb2FkIG1hbnkgZGlmZmVyZW50IHNvdXJjZSBj
b2RlIHRhcmJhbGxzCiMgZnJvbSB2YXJpb3VzIHVwc3RyZWFtIHByb2plY3RzLiBUaGlzIGNhbiB0
YWtlIGEgd2hpbGUsIHBhcnRpY3VsYXJseSBpZiB5b3VyIG5ldHdvcmsKIyBjb25uZWN0aW9uIGlz
IHNsb3cuIFRoZXNlIGFyZSBhbGwgc3RvcmVkIGluIERMX0RJUi4gV2hlbiB3aXBpbmcgYW5kIHJl
YnVpbGRpbmcgeW91CiMgY2FuIHByZXNlcnZlIHRoaXMgZGlyZWN0b3J5IHRvIHNwZWVkIHVwIHRo
aXMgcGFydCBvZiBzdWJzZXF1ZW50IGJ1aWxkcy4gVGhpcyBkaXJlY3RvcnkKIyBpcyBzYWZlIHRv
IHNoYXJlIGJldHdlZW4gbXVsdGlwbGUgYnVpbGRzIG9uIHRoZSBzYW1lIG1hY2hpbmUgdG9vLgoj
CiMgVGhlIGRlZmF1bHQgaXMgYSBkb3dubG9hZHMgZGlyZWN0b3J5IHVuZGVyIFRPUERJUiB3aGlj
aCBpcyB0aGUgYnVpbGQgZGlyZWN0b3J5LgojCiNETF9ESVIgPz0gIiR7VE9QRElSfS9kb3dubG9h
ZHMiCgojCiMgV2hlcmUgdG8gcGxhY2Ugc2hhcmVkLXN0YXRlIGZpbGVzCiMKIyBCaXRCYWtlIGhh
cyB0aGUgY2FwYWJpbGl0eSB0byBhY2NlbGVyYXRlIGJ1aWxkcyBiYXNlZCBvbiBwcmV2aW91c2x5
IGJ1aWx0IG91dHB1dC4KIyBUaGlzIGlzIGRvbmUgdXNpbmcgInNoYXJlZCBzdGF0ZSIgZmlsZXMg
d2hpY2ggY2FuIGJlIHRob3VnaHQgb2YgYXMgY2FjaGUgb2JqZWN0cwojIGFuZCB0aGlzIG9wdGlv
biBkZXRlcm1pbmVzIHdoZXJlIHRob3NlIGZpbGVzIGFyZSBwbGFjZWQuCiMKIyBZb3UgY2FuIHdp
cGUgb3V0IFRNUERJUiBsZWF2aW5nIHRoaXMgZGlyZWN0b3J5IGludGFjdCBhbmQgdGhlIGJ1aWxk
IHdvdWxkIHJlZ2VuZXJhdGUKIyBmcm9tIHRoZXNlIGZpbGVzIGlmIG5vIGNoYW5nZXMgd2VyZSBt
YWRlIHRvIHRoZSBjb25maWd1cmF0aW9uLiBJZiBjaGFuZ2VzIHdlcmUgbWFkZQojIHRvIHRoZSBj
b25maWd1cmF0aW9uLCBvbmx5IHNoYXJlZCBzdGF0ZSBmaWxlcyB3aGVyZSB0aGUgc3RhdGUgd2Fz
IHN0aWxsIHZhbGlkIHdvdWxkCiMgYmUgdXNlZCAoZG9uZSB1c2luZyBjaGVja3N1bXMpLgojCiMg
VGhlIGRlZmF1bHQgaXMgYSBzc3RhdGUtY2FjaGUgZGlyZWN0b3J5IHVuZGVyIFRPUERJUi4KIwoj
U1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIKCiMKIyBXaGVyZSB0byBwbGFj
ZSB0aGUgYnVpbGQgb3V0cHV0CiMKIyBUaGlzIG9wdGlvbiBzcGVjaWZpZXMgd2hlcmUgdGhlIGJ1
bGsgb2YgdGhlIGJ1aWxkaW5nIHdvcmsgc2hvdWxkIGJlIGRvbmUgYW5kCiMgd2hlcmUgQml0QmFr
ZSBzaG91bGQgcGxhY2UgaXRzIHRlbXBvcmFyeSBmaWxlcyBhbmQgb3V0cHV0LiBLZWVwIGluIG1p
bmQgdGhhdAojIHRoaXMgaW5jbHVkZXMgdGhlIGV4dHJhY3Rpb24gYW5kIGNvbXBpbGF0aW9uIG9m
IG1hbnkgYXBwbGljYXRpb25zIGFuZCB0aGUgdG9vbGNoYWluCiMgd2hpY2ggY2FuIHVzZSBHaWdh
Ynl0ZXMgb2YgaGFyZCBkaXNrIHNwYWNlLgojCiMgVGhlIGRlZmF1bHQgaXMgYSB0bXAgZGlyZWN0
b3J5IHVuZGVyIFRPUERJUi4KIwojVE1QRElSID0gIiR7VE9QRElSfS90bXAiCgojCiMgRGVmYXVs
dCBwb2xpY3kgY29uZmlnCiMKIyBUaGUgZGlzdHJpYnV0aW9uIHNldHRpbmcgY29udHJvbHMgd2hp
Y2ggcG9saWN5IHNldHRpbmdzIGFyZSB1c2VkIGFzIGRlZmF1bHRzLgojIFRoZSBkZWZhdWx0IHZh
bHVlIGlzIGZpbmUgZm9yIGdlbmVyYWwgWW9jdG8gcHJvamVjdCB1c2UsIGF0IGxlYXN0IGluaXRp
YWxseS4KIyBVbHRpbWF0ZWx5IHdoZW4gY3JlYXRpbmcgY3VzdG9tIHBvbGljeSwgcGVvcGxlIHdp
bGwgbGlrZWx5IGVuZCB1cCBzdWJjbGFzc2luZwojIHRoZXNlIGRlZmF1bHRzLgojCkRJU1RSTyA/
PSAicG9reSIKIyBBcyBhbiBleGFtcGxlIG9mIGEgc3ViY2xhc3MgdGhlcmUgaXMgYSAiYmxlZWRp
bmciIGVkZ2UgcG9saWN5IGNvbmZpZ3VyYXRpb24KIyB3aGVyZSBtYW55IHZlcnNpb25zIGFyZSBz
ZXQgdG8gdGhlIGFic29sdXRlIGxhdGVzdCBjb2RlIGZyb20gdGhlIHVwc3RyZWFtCiMgc291cmNl
IGNvbnRyb2wgc3lzdGVtcy4gVGhpcyBpcyBqdXN0IG1lbnRpb25lZCBoZXJlIGFzIGFuIGV4YW1w
bGUsIGl0cyBub3QKIyB1c2VmdWwgdG8gbW9zdCBuZXcgdXNlcnMuCiMgRElTVFJPID89ICJwb2t5
LWJsZWVkaW5nIgoKIwojIFBhY2thZ2UgTWFuYWdlbWVudCBjb25maWd1cmF0aW9uCiMKIyBUaGlz
IHZhcmlhYmxlIGxpc3RzIHdoaWNoIHBhY2thZ2luZyBmb3JtYXRzIHRvIGVuYWJsZS4gTXVsdGlw
bGUgcGFja2FnZSBiYWNrZW5kcwojIGNhbiBiZSBlbmFibGVkIGF0IG9uY2UgYW5kIHRoZSBmaXJz
dCBpdGVtIGxpc3RlZCBpbiB0aGUgdmFyaWFibGUgd2lsbCBiZSB1c2VkCiMgdG8gZ2VuZXJhdGUg
dGhlIHJvb3QgZmlsZXN5c3RlbXMuCiMgT3B0aW9ucyBhcmU6CiMgIC0gJ3BhY2thZ2VfZGViJyBm
b3IgZGViaWFuIHN0eWxlIGRlYiBmaWxlcwojICAtICdwYWNrYWdlX2lwaycgZm9yIGlwayBmaWxl
cyBhcmUgdXNlZCBieSBvcGtnIChhIGRlYmlhbiBzdHlsZSBlbWJlZGRlZCBwYWNrYWdlIG1hbmFn
ZXIpCiMgIC0gJ3BhY2thZ2VfcnBtJyBmb3IgcnBtIHN0eWxlIHBhY2thZ2VzCiMgRS5nLjogUEFD
S0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSBwYWNrYWdlX2RlYiBwYWNrYWdlX2lwayIKIyBX
ZSBkZWZhdWx0IHRvIHJwbToKUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSIKCiMKIyBT
REsgdGFyZ2V0IGFyY2hpdGVjdHVyZQojCiMgVGhpcyB2YXJpYWJsZSBzcGVjaWZpZXMgdGhlIGFy
Y2hpdGVjdHVyZSB0byBidWlsZCBTREsgaXRlbXMgZm9yIGFuZCBtZWFucwojIHlvdSBjYW4gYnVp
bGQgdGhlIFNESyBwYWNrYWdlcyBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuIHRoZSBtYWNo
aW5lIHlvdSBhcmUKIyBydW5uaW5nIHRoZSBidWlsZCBvbiAoaS5lLiBidWlsZGluZyBpNjg2IHBh
Y2thZ2VzIG9uIGFuIHg4Nl82NCBob3N0KS4KIyBTdXBwb3J0ZWQgdmFsdWVzIGFyZSBpNjg2IGFu
ZCB4ODZfNjQKI1NES01BQ0hJTkUgPz0gImk2ODYiCgojCiMgRXh0cmEgaW1hZ2UgY29uZmlndXJh
dGlvbiBkZWZhdWx0cwojCiMgVGhlIEVYVFJBX0lNQUdFX0ZFQVRVUkVTIHZhcmlhYmxlIGFsbG93
cyBleHRyYSBwYWNrYWdlcyB0byBiZSBhZGRlZCB0byB0aGUgZ2VuZXJhdGVkCiMgaW1hZ2VzLiBT
b21lIG9mIHRoZXNlIG9wdGlvbnMgYXJlIGFkZGVkIHRvIGNlcnRhaW4gaW1hZ2UgdHlwZXMgYXV0
b21hdGljYWxseS4gVGhlCiMgdmFyaWFibGUgY2FuIGNvbnRhaW4gdGhlIGZvbGxvd2luZyBvcHRp
b25zOgojICAiZGJnLXBrZ3MiICAgICAgIC0gYWRkIC1kYmcgcGFja2FnZXMgZm9yIGFsbCBpbnN0
YWxsZWQgcGFja2FnZXMKIyAgICAgICAgICAgICAgICAgICAgIChhZGRzIHN5bWJvbCBpbmZvcm1h
dGlvbiBmb3IgZGVidWdnaW5nL3Byb2ZpbGluZykKIyAgImRldi1wa2dzIiAgICAgICAtIGFkZCAt
ZGV2IHBhY2thZ2VzIGZvciBhbGwgaW5zdGFsbGVkIHBhY2thZ2VzCiMgICAgICAgICAgICAgICAg
ICAgICAodXNlZnVsIGlmIHlvdSB3YW50IHRvIGRldmVsb3AgYWdhaW5zdCBsaWJzIGluIHRoZSBp
bWFnZSkKIyAgInB0ZXN0LXBrZ3MiICAgICAtIGFkZCAtcHRlc3QgcGFja2FnZXMgZm9yIGFsbCBw
dGVzdC1lbmFibGVkIHBhY2thZ2VzCiMgICAgICAgICAgICAgICAgICAgICAodXNlZnVsIGlmIHlv
dSB3YW50IHRvIHJ1biB0aGUgcGFja2FnZSB0ZXN0IHN1aXRlcykKIyAgInRvb2xzLXNkayIgICAg
ICAtIGFkZCBkZXZlbG9wbWVudCB0b29scyAoZ2NjLCBtYWtlLCBwa2djb25maWcgZXRjLikKIyAg
InRvb2xzLWRlYnVnIiAgICAtIGFkZCBkZWJ1Z2dpbmcgdG9vbHMgKGdkYiwgc3RyYWNlKQojICAi
ZWNsaXBzZS1kZWJ1ZyIgIC0gYWRkIEVjbGlwc2UgcmVtb3RlIGRlYnVnZ2luZyBzdXBwb3J0CiMg
ICJ0b29scy1wcm9maWxlIiAgLSBhZGQgcHJvZmlsaW5nIHRvb2xzIChvcHJvZmlsZSwgbHR0bmcs
IHZhbGdyaW5kKQojICAidG9vbHMtdGVzdGFwcHMiIC0gYWRkIHVzZWZ1bCB0ZXN0aW5nIHRvb2xz
ICh0c19wcmludCwgYXBsYXksIGFyZWNvcmQgZXRjLikKIyAgImRlYnVnLXR3ZWFrcyIgICAtIG1h
a2UgYW4gaW1hZ2Ugc3VpdGFibGUgZm9yIGRldmVsb3BtZW50CiMgICAgICAgICAgICAgICAgICAg
ICBlLmcuIHNzaCByb290IGFjY2VzcyBoYXMgYSBibGFuayBwYXNzd29yZAojIFRoZXJlIGFyZSBv
dGhlciBhcHBsaWNhdGlvbiB0YXJnZXRzIHRoYXQgY2FuIGJlIHVzZWQgaGVyZSB0b28sIHNlZQoj
IG1ldGEvY2xhc3Nlcy9pbWFnZS5iYmNsYXNzIGFuZCBtZXRhL2NsYXNzZXMvY29yZS1pbWFnZS5i
YmNsYXNzIGZvciBtb3JlIGRldGFpbHMuCiMgV2UgZGVmYXVsdCB0byBlbmFibGluZyB0aGUgZGVi
dWdnaW5nIHR3ZWFrcy4KRVhUUkFfSU1BR0VfRkVBVFVSRVMgPz0gImRlYnVnLXR3ZWFrcyIKCiMK
IyBBZGRpdGlvbmFsIGltYWdlIGZlYXR1cmVzCiMKIyBUaGUgZm9sbG93aW5nIGlzIGEgbGlzdCBv
ZiBhZGRpdGlvbmFsIGNsYXNzZXMgdG8gdXNlIHdoZW4gYnVpbGRpbmcgaW1hZ2VzIHdoaWNoCiMg
ZW5hYmxlIGV4dHJhIGZlYXR1cmVzLiBTb21lIGF2YWlsYWJsZSBvcHRpb25zIHdoaWNoIGNhbiBi
ZSBpbmNsdWRlZCBpbiB0aGlzIHZhcmlhYmxlCiMgYXJlOgojICAgLSAnYnVpbGRzdGF0cycgY29s
bGVjdCBidWlsZCBzdGF0aXN0aWNzCiMgICAtICdpbWFnZS1ta2xpYnMnIHRvIHJlZHVjZSBzaGFy
ZWQgbGlicmFyeSBmaWxlcyBzaXplIGZvciBhbiBpbWFnZQojICAgLSAnaW1hZ2UtcHJlbGluaycg
aW4gb3JkZXIgdG8gcHJlbGluayB0aGUgZmlsZXN5c3RlbSBpbWFnZQojICAgLSAnaW1hZ2Utc3dh
YicgdG8gcGVyZm9ybSBob3N0IHN5c3RlbSBpbnRydXNpb24gZGV0ZWN0aW9uCiMgTk9URTogaWYg
bGlzdGluZyBta2xpYnMgJiBwcmVsaW5rIGJvdGgsIHRoZW4gbWFrZSBzdXJlIG1rbGlicyBpcyBi
ZWZvcmUgcHJlbGluawojIE5PVEU6IG1rbGlicyBhbHNvIG5lZWRzIHRvIGJlIGV4cGxpY2l0bHkg
ZW5hYmxlZCBmb3IgYSBnaXZlbiBpbWFnZSwgc2VlIGxvY2FsLmNvbmYuZXh0ZW5kZWQKVVNFUl9D
TEFTU0VTID89ICJidWlsZHN0YXRzIGltYWdlLW1rbGlicyBpbWFnZS1wcmVsaW5rIgoKIwojIFJ1
bnRpbWUgdGVzdGluZyBvZiBpbWFnZXMKIwojIFRoZSBidWlsZCBzeXN0ZW0gY2FuIHRlc3QgYm9v
dGluZyB2aXJ0dWFsIG1hY2hpbmUgaW1hZ2VzIHVuZGVyIHFlbXUgKGFuIGVtdWxhdG9yKQojIGFm
dGVyIGFueSByb290IGZpbGVzeXN0ZW1zIGFyZSBjcmVhdGVkIGFuZCBydW4gdGVzdHMgYWdhaW5z
dCB0aG9zZSBpbWFnZXMuIFRvCiMgZW5hYmxlIHRoaXMgdW5jb21tZW50IHRoaXMgbGluZS4gU2Vl
IGNsYXNzZXMvdGVzdGltYWdlKC1hdXRvKS5iYmNsYXNzIGZvcgojIGZ1cnRoZXIgZGV0YWlscy4K
I1RFU1RfSU1BR0UgPSAiMSIKIwojIEludGVyYWN0aXZlIHNoZWxsIGNvbmZpZ3VyYXRpb24KIwoj
IFVuZGVyIGNlcnRhaW4gY2lyY3Vtc3RhbmNlcyB0aGUgc3lzdGVtIG1heSBuZWVkIGlucHV0IGZy
b20geW91IGFuZCB0byBkbyB0aGlzIGl0CiMgY2FuIGxhdW5jaCBhbiBpbnRlcmFjdGl2ZSBzaGVs
bC4gSXQgbmVlZHMgdG8gZG8gdGhpcyBzaW5jZSB0aGUgYnVpbGQgaXMKIyBtdWx0aXRocmVhZGVk
IGFuZCBuZWVkcyB0byBiZSBhYmxlIHRvIGhhbmRsZSB0aGUgY2FzZSB3aGVyZSBtb3JlIHRoYW4g
b25lIHBhcmFsbGVsCiMgcHJvY2VzcyBtYXkgcmVxdWlyZSB0aGUgdXNlcidzIGF0dGVudGlvbi4g
VGhlIGRlZmF1bHQgaXMgaXRlcmF0ZSBvdmVyIHRoZSBhdmFpbGFibGUKIyB0ZXJtaW5hbCB0eXBl
cyB0byBmaW5kIG9uZSB0aGF0IHdvcmtzLgojCiMgRXhhbXBsZXMgb2YgdGhlIG9jY2FzaW9ucyB0
aGlzIG1heSBoYXBwZW4gYXJlIHdoZW4gcmVzb2x2aW5nIHBhdGNoZXMgd2hpY2ggY2Fubm90CiMg
YmUgYXBwbGllZCwgdG8gdXNlIHRoZSBkZXZzaGVsbCBvciB0aGUga2VybmVsIG1lbnVjb25maWcK
IwojIFN1cHBvcnRlZCB2YWx1ZXMgYXJlIGF1dG8sIGdub21lLCB4ZmNlLCByeHZ0LCBzY3JlZW4s
IGtvbnNvbGUgKEtERSAzLnggb25seSksIG5vbmUKIyBOb3RlOiBjdXJyZW50bHksIEtvbnNvbGUg
c3VwcG9ydCBvbmx5IHdvcmtzIGZvciBLREUgMy54IGR1ZSB0byB0aGUgd2F5CiMgbmV3ZXIgS29u
c29sZSB2ZXJzaW9ucyBiZWhhdmUKI09FX1RFUk1JTkFMID0gImF1dG8iCiMgQnkgZGVmYXVsdCBk
aXNhYmxlIGludGVyYWN0aXZlIHBhdGNoIHJlc29sdXRpb24gKHRhc2tzIHdpbGwganVzdCBmYWls
IGluc3RlYWQpOgpQQVRDSFJFU09MVkUgPSAibm9vcCIKCiMKIyBEaXNrIFNwYWNlIE1vbml0b3Jp
bmcgZHVyaW5nIHRoZSBidWlsZAojCiMgTW9uaXRvciB0aGUgZGlzayBzcGFjZSBkdXJpbmcgdGhl
IGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRoYXQgMUdCIG9mIHNwYWNlIG9yIGxlc3MKIyB0aGFu
IDEwMEsgaW5vZGVzIGluIGFueSBrZXkgYnVpbGQgbG9jYXRpb24gKFRNUERJUiwgRExfRElSLCBT
U1RBVEVfRElSKSwgZ3JhY2VmdWxseQojIHNodXRkb3duIHRoZSBidWlsZC4gSWYgdGhlcmUgaXMg
bGVzcyB0aGF0IDEwME1CIG9yIDFLIGlub2RlcywgcGVyZm9ybSBhIGhhcmQgYWJvcnQKIyBvZiB0
aGUgYnVpbGQuIFRoZSByZWFzb24gZm9yIHRoaXMgaXMgdGhhdCBydW5uaW5nIGNvbXBsZXRlbHkg
b3V0IG9mIHNwYWNlIGNhbiBjb3JydXB0CiMgZmlsZXMgYW5kIGRhbWFnZXMgdGhlIGJ1aWxkIGlu
IHdheXMgd2hpY2ggbWF5IG5vdCBiZSBlYXNpbHkgcmVjb3ZlcmFibGUuCiMgSXQncyBuZWNlc2Fy
eSB0byBtb25pdG9yIC90bXAsIGlmIHRoZXJlIGlzIG5vIHNwYWNlIGxlZnQgdGhlIGJ1aWxkIHdp
bGwgZmFpbAojIHdpdGggdmVyeSBleG90aWMgZXJyb3JzLgpCQl9ESVNLTU9OX0RJUlMgPz89ICJc
CiAgICBTVE9QVEFTS1MsJHtUTVBESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRBU0tTLCR7RExfRElS
fSwxRywxMDBLIFwKICAgIFNUT1BUQVNLUywke1NTVEFURV9ESVJ9LDFHLDEwMEsgXAogICAgU1RP
UFRBU0tTLC90bXAsMTAwTSwxMDBLIFwKICAgIEFCT1JULCR7VE1QRElSfSwxMDBNLDFLIFwKICAg
IEFCT1JULCR7RExfRElSfSwxMDBNLDFLIFwKICAgIEFCT1JULCR7U1NUQVRFX0RJUn0sMTAwTSwx
SyBcCiAgICBBQk9SVCwvdG1wLDEwTSwxSyIKCiMKIyBTaGFyZWQtc3RhdGUgZmlsZXMgZnJvbSBv
dGhlciBsb2NhdGlvbnMKIwojIEFzIG1lbnRpb25lZCBhYm92ZSwgc2hhcmVkIHN0YXRlIGZpbGVz
IGFyZSBwcmVidWlsdCBjYWNoZSBkYXRhIG9iamVjdHMgd2hpY2ggY2FuCiMgdXNlZCB0byBhY2Nl
bGVyYXRlIGJ1aWxkIHRpbWUuIFRoaXMgdmFyaWFibGUgY2FuIGJlIHVzZWQgdG8gY29uZmlndXJl
IHRoZSBzeXN0ZW0KIyB0byBzZWFyY2ggb3RoZXIgbWlycm9yIGxvY2F0aW9ucyBmb3IgdGhlc2Ug
b2JqZWN0cyBiZWZvcmUgaXQgYnVpbGRzIHRoZSBkYXRhIGl0c2VsZi4KIwojIFRoaXMgY2FuIGJl
IGEgZmlsZXN5c3RlbSBkaXJlY3RvcnksIG9yIGEgcmVtb3RlIHVybCBzdWNoIGFzIGh0dHAgb3Ig
ZnRwLiBUaGVzZQojIHdvdWxkIGNvbnRhaW4gdGhlIHNzdGF0ZS1jYWNoZSByZXN1bHRzIGZyb20g
cHJldmlvdXMgYnVpbGRzIChwb3NzaWJseSBmcm9tIG90aGVyCiMgbWFjaGluZXMpLiBUaGlzIHZh
cmlhYmxlIHdvcmtzIGxpa2UgZmV0Y2hlciBNSVJST1JTL1BSRU1JUlJPUlMgYW5kIHBvaW50cyB0
byB0aGUKIyBjYWNoZSBsb2NhdGlvbnMgdG8gY2hlY2sgZm9yIHRoZSBzaGFyZWQgb2JqZWN0cy4K
IyBOT1RFOiBpZiB0aGUgbWlycm9yIHVzZXMgdGhlIHNhbWUgc3RydWN0dXJlIGFzIFNTVEFURV9E
SVIsIHlvdSBuZWVkIHRvIGFkZCBQQVRICiMgYXQgdGhlIGVuZCBhcyBzaG93biBpbiB0aGUgZXhh
bXBsZXMgYmVsb3cuIFRoaXMgd2lsbCBiZSBzdWJzdGl0dXRlZCB3aXRoIHRoZQojIGNvcnJlY3Qg
cGF0aCB3aXRoaW4gdGhlIGRpcmVjdG9yeSBzdHJ1Y3R1cmUuCiNTU1RBVEVfTUlSUk9SUyA/PSAi
XAojZmlsZTovLy4qIGh0dHA6Ly9zb21lc2VydmVyLnRsZC9zaGFyZS9zc3RhdGUvUEFUSDtkb3du
bG9hZGZpbGVuYW1lPVBBVEggXG4gXAojZmlsZTovLy4qIGZpbGU6Ly8vc29tZS9sb2NhbC9kaXIv
c3N0YXRlL1BBVEgiCgoKIwojIFFlbXUgY29uZmlndXJhdGlvbgojCiMgQnkgZGVmYXVsdCBxZW11
IHdpbGwgYnVpbGQgd2l0aCBhIGJ1aWx0aW4gVk5DIHNlcnZlciB3aGVyZSBncmFwaGljYWwgb3V0
cHV0IGNhbiBiZQojIHNlZW4uIFRoZSB0d28gbGluZXMgYmVsb3cgZW5hYmxlIHRoZSBTREwgYmFj
a2VuZCB0b28uIEJ5IGRlZmF1bHQgbGlic2RsLW5hdGl2ZSB3aWxsCiMgYmUgYnVpbHQsIGlmIHlv
dSB3YW50IHRvIHVzZSB5b3VyIGhvc3QncyBsaWJTREwgaW5zdGVhZCBvZiB0aGUgbWluaW1hbCBs
aWJzZGwgYnVpbHQKIyBieSBsaWJzZGwtbmF0aXZlIHRoZW4gdW5jb21tZW50IHRoZSBBU1NVTUVf
UFJPVklERUQgbGluZSBiZWxvdy4KUEFDS0FHRUNPTkZJR19hcHBlbmRfcG4tcWVtdS1uYXRpdmUg
PSAiIHNkbCIKUEFDS0FHRUNPTkZJR19hcHBlbmRfcG4tbmF0aXZlc2RrLXFlbXUgPSAiIHNkbCIK
I0FTU1VNRV9QUk9WSURFRCArPSAibGlic2RsLW5hdGl2ZSIKCiMgQ09ORl9WRVJTSU9OIGlzIGlu
Y3JlYXNlZCBlYWNoIHRpbWUgYnVpbGQvY29uZi8gY2hhbmdlcyBpbmNvbXBhdGlibHkgYW5kIGlz
IHVzZWQgdG8KIyB0cmFjayB0aGUgdmVyc2lvbiBvZiB0aGlzIGZpbGUgd2hlbiBpdCB3YXMgZ2Vu
ZXJhdGVkLiBUaGlzIGNhbiBzYWZlbHkgYmUgaWdub3JlZCBpZgojIHRoaXMgZG9lc24ndCBtZWFu
IGFueXRoaW5nIHRvIHlvdS4KQ09ORl9WRVJTSU9OID0gIjEiCg==

--_006_772b7fca373e4a9085660b8a79a36673sakurauscom_
Content-Type: application/x-tar; name="meta-test.tar"
Content-Description: meta-test.tar
Content-Disposition: attachment; filename="meta-test.tar"; size=10240;
	creation-date="Fri, 05 Oct 2018 23:22:38 GMT";
	modification-date="Fri, 05 Oct 2018 23:22:38 GMT"
Content-Transfer-Encoding: base64

bWV0YS10ZXN0LwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA3NzUAMDAwMTc1
MQAwMDAxNzUxADAwMDAwMDAwMDAwADEzMzU1NzYyNzcwADAxMjczMgAgNQAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAgAGd3aWxzb24AAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABt
ZXRhLXRlc3QvcmVjaXBlcy1rZXJuZWwvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDc3NQAwMDAxNzUx
ADAwMDE3NTEAMDAwMDAwMDAwMDAAMTMzNTA1MDI3NTMAMDE1NjI2ACA1AAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHVzdGFyICAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAABnd2lsc29uAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1l
dGEtdGVzdC9yZWNpcGVzLWtlcm5lbC9saW51eC8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDAwNzc1ADAwMDE3NTEA
MDAwMTc1MQAwMDAwMDAwMDAwMAAxMzM1MDUwMjc1MwAwMTY3NjUAIDUAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIgIABnd2lsc29uAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbWV0
YS10ZXN0L3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJhc3BiZXJyeXBpXzQuNC5iYmFwcGVu
ZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA2NjQAMDAwMTc1MQAw
MDAxNzUxADAwMDAwMDAwMzMxADEzMzU0NzUzNTE1ADAyNDU1MwAgMAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAgAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjIFNj
cmliZSBhZGRpdGlvbnMgdG8gS2VybmVsIGNvbmZpZ3VyYXRpb24KCkZJTEVTRVhUUkFQQVRIU19w
cmVwZW5kIDo9ICIke0ZJTEVfRElSTkFNRX0vZmlsZXM6IgpGSUxFU0VYVFJBUEFUSFNfcHJlcGVu
ZCA6PSAiJHtGSUxFX0RJUk5BTUV9LyR7UE59OiIKClNSQ19VUkkgKz0gImZpbGU6Ly9TY3JpYmUu
c2NjIgpTUkNfVVJJICs9ICJmaWxlOi8vbWNwMjUxeC5jLnBhdGNoIgoKAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1ldGEt
dGVzdC9yZWNpcGVzLWtlcm5lbC9saW51eC9maWxlcy8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDAwNzc1ADAwMDE3NTEAMDAw
MTc1MQAwMDAwMDAwMDAwMAAxMzM1NDc1MzE0MgAwMjAwNzMAIDUAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIgIABnd2lsc29uAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbWV0YS10
ZXN0L3JlY2lwZXMta2VybmVsL2xpbnV4L2ZpbGVzL1NjcmliZS5jZmcAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA2NjQAMDAwMTc1MQAwMDAx
NzUxADAwMDAwMDAwMzM1ADEzMzU0NzUzMDUwADAyMTc2MgAgMAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAgAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjIFNjcmli
ZSBhZGRpdGlvbnMgdG8ga2VybmVsIGNvbmZpZ3VyYXRpb24KCiMgRW5hYmxlIE1BWDk3NjgKI0NP
TkZJR19TT0NfQUxMX0NPREVDUz1tCiNDT05GSUdfQ09NUElMRV9URVNUPXkKQ09ORklHX1NORF9T
T0NfTUFYOTc2OD15CgojIEVuYWJsZSBNQVgxMTYwNgojSUlPPXkKQ09ORklHX01BWDEzNjM9bQoK
IyBFbmFibGUgRU1TIENQQy1VU0IKQ09ORklHX0NBTl9FTVNfVVNCPW0KCgAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1ldGEtdGVz
dC9yZWNpcGVzLWtlcm5lbC9saW51eC9maWxlcy9TY3JpYmUuc2NjAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDAwNjY0ADAwMDE3NTEAMDAwMTc1
MQAwMDAwMDAwMDEwNgAxMzIxNzIzMTU2MQAwMjE3NjMAIDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIgIABnd2lsc29uAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIyBTY3JpYmUg
YWRkaXRpb25zIHRvIGtlcm5lbCBjb25maWd1cmF0aW9uCmtjb25mIGhhcmR3YXJlIFNjcmliZS5j
ZmcKCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABtZXRhLXRlc3Qv
cmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcmFzcGJlcnJ5cGkvAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDc3NQAwMDAxNzUxADAwMDE3NTEA
MDAwMDAwMDAwMDAAMTMzNTA1MDI3NTMAMDIyNDY0ACA1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAHVzdGFyICAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AABnd2lsc29uAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1ldGEtdGVzdC9y
ZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC1yYXNwYmVycnlwaS9tY3AyNTF4LmMucGF0Y2gAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDAwNjY0ADAwMDE3NTEAMDAwMTc1MQAw
MDAwMDAwMjQyMAAxMzI2NTE0NzUyMwAwMjUxMzAAIDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIgIABnd2lsc29uAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALS0tICJrZXJuZWwt
c291cmNlL2RyaXZlcnMvbmV0L2Nhbi9zcGkgLW9sZC9tY3AyNTF4LmMiCTIwMTgtMDMtMjAgMDk6
NTE6NDUuMjYzMzk5MDAwIC0wNzAwCisrKyBrZXJuZWwtc291cmNlL2RyaXZlcnMvbmV0L2Nhbi9z
cGkvbWNwMjUxeC5jCTIwMTgtMDQtMTYgMDk6MjU6MDguMzcxMzE1NjI3IC0wNzAwCkBAIC04NDMs
NyArODQzLDcgQEAKIAkJaWYgKGNsZWFyX2ludGYpCiAJCQltY3AyNTF4X3dyaXRlX2JpdHMoc3Bp
LCBDQU5JTlRGLCBjbGVhcl9pbnRmLCAweDAwKTsKIAotCQlpZiAoZWZsYWcpCisJCWlmIChlZmxh
ZyAmIChFRkxHX1JYME9WUiB8IEVGTEdfUlgxT1ZSKSkKIAkJCW1jcDI1MXhfd3JpdGVfYml0cyhz
cGksIEVGTEcsIGVmbGFnLCAweDAwKTsKIAogCQkvKiBVcGRhdGUgY2FuIHN0YXRlICovCkBAIC05
NjEsNyArOTYxLDggQEAKIAkJZ290byBvcGVuX3VubG9jazsKIAl9CiAKLQlwcml2LT53cSA9IGNy
ZWF0ZV9mcmVlemFibGVfd29ya3F1ZXVlKCJtY3AyNTF4X3dxIik7CisJcHJpdi0+d3EgPSBhbGxv
Y193b3JrcXVldWUoIm1jcDI1MXhfd3EiLCBXUV9GUkVFWkFCTEUgfCBXUV9NRU1fUkVDTEFJTSwK
KwkJCQkgICAwKTsKIAlJTklUX1dPUksoJnByaXYtPnR4X3dvcmssIG1jcDI1MXhfdHhfd29ya19o
YW5kbGVyKTsKIAlJTklUX1dPUksoJnByaXYtPnJlc3RhcnRfd29yaywgbWNwMjUxeF9yZXN0YXJ0
X3dvcmtfaGFuZGxlcik7CiAKQEAgLTExNDQsOCArMTE0NSwxMSBAQAogCiAJLyogSGVyZSBpcyBP
SyB0byBub3QgbG9jayB0aGUgTUNQLCBubyBvbmUga25vd3MgYWJvdXQgaXQgeWV0ICovCiAJcmV0
ID0gbWNwMjUxeF9od19wcm9iZShzcGkpOwotCWlmIChyZXQpCisJaWYgKHJldCkgeworCQlpZiAo
cmV0ID09IC1FTk9ERVYpCisJCQlkZXZfZXJyKCZzcGktPmRldiwgIkNhbm5vdCBpbml0aWFsaXpl
IE1DUCV4LiBXcm9uZyB3aXJpbmc/XG4iLCBwcml2LT5tb2RlbCk7CiAJCWdvdG8gZXJyb3JfcHJv
YmU7CisJfQogCiAJbWNwMjUxeF9od19zbGVlcChzcGkpOwogCkBAIC0xMTU1LDYgKzExNTksNyBA
QAogCiAJZGV2bV9jYW5fbGVkX2luaXQobmV0KTsKIAorCW5ldGRldl9pbmZvKG5ldCwgIk1DUCV4
IHN1Y2Nlc3NmdWxseSBpbml0aWFsaXplZC5cbiIsIHByaXYtPm1vZGVsKTsKIAlyZXR1cm4gMDsK
IAogZXJyb3JfcHJvYmU6CkBAIC0xMTY3LDYgKzExNzIsNyBAQAogb3V0X2ZyZWU6CiAJZnJlZV9j
YW5kZXYobmV0KTsKIAorCWRldl9lcnIoJnNwaS0+ZGV2LCAiUHJvYmUgZmFpbGVkLCBlcnI9JWRc
biIsIC1yZXQpOwogCXJldHVybiByZXQ7CiB9CiAKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbWV0YS10ZXN0L2NvbmYv
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA3NzUAMDAwMTc1MQAwMDAxNzUxADAwMDAw
MDAwMDAwADEzMzU1NzYyNTM0ADAxMzY1NQAgNQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAB1c3RhciAgAGd3aWxzb24AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZ3dp
bHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABtZXRhLXRlc3QvY29uZi9s
YXllci5jb25mAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDY2NAAwMDAxNzUxADAwMDE3NTEAMDAwMDAw
MDA2NzcAMTMzNTU3NjI2NDIAMDE1NjUyACAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAHVzdGFyICAAZ3dpbHNvbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABnd2ls
c29uAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMgV2UgaGF2ZSBhIGNvbmYg
YW5kIGNsYXNzZXMgZGlyZWN0b3J5LCBhZGQgdG8gQkJQQVRICkJCUEFUSCAuPSAiOiR7TEFZRVJE
SVJ9IgoKIyBXZSBoYXZlIHJlY2lwZXMtKiBkaXJlY3RvcmllcywgYWRkIHRvIEJCRklMRVMKQkJG
SUxFUyArPSAiJHtMQVlFUkRJUn0vcmVjaXBlcy0qLyovKi5iYiBcCiAgICAgICAgICAgICR7TEFZ
RVJESVJ9L3JlY2lwZXMtKi8qLyovKi5iYiBcCiAgICAgICAgICAgICR7TEFZRVJESVJ9L3JlY2lw
ZXMtKi8qLyouYmJhcHBlbmQgXAogICAgICAgICAgICAke0xBWUVSRElSfS9yZWNpcGVzLSovKi8q
LyouYmJhcHBlbmQgXAogICAgICAgICAgICAiCgpCQkZJTEVfQ09MTEVDVElPTlMgKz0gImtlcm5l
bC10ZXN0IgpCQkZJTEVfUEFUVEVSTl9rZXJuZWwtdGVzdCA9ICJeJHtMQVlFUkRJUn0vIgpCQkZJ
TEVfUFJJT1JJVFlfa2VybmVsLXRlc3QgPSAiMTAiCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==

--_006_772b7fca373e4a9085660b8a79a36673sakurauscom_--
