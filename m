Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07F2E008CA; Mon, 30 Jul 2018 09:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.223 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.154.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800D7E0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 09:41:24 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1413.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 30 Jul 2018 16:41:21 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 30 Jul 2018 09:25:56 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 30 Jul 2018 09:25:56 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel configuration problems
Thread-Index: AdQl83+2wf7UcfbhTUCg0nogyDuDZgBPzS+AADtL97UAAF1PBQ==
Date: Mon, 30 Jul 2018 16:25:56 +0000
Message-ID: <191f048b6dbd4d9e92da73a550a0bb1c@sakuraus.com>
References: <b33f8ef62bed47b3b9caee0478c376e8@sakuraus.com>,
	<77a6f381-cc24-44b4-8fb7-3916c66c6f68@windriver.com>,
	<0a4277451cdb45279304566123be0ab2@sakuraus.com>
In-Reply-To: <0a4277451cdb45279304566123be0ab2@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1532968876-531715-29214-383446-2
X-BESS-VER: 2018.9-r1807242345
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Envelope-From: GWilson@sakuraus.com
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.196812
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn'
	t match header 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, HTML_MESSAGE,
	BSF_BESS_OUTBOUND
X-BESS-Orig-Rcpt: yocto@yoctoproject.org
X-BESS-BRTS-Status: 1
Subject: Re: Kernel configuration problems
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
X-List-Received-Date: Mon, 30 Jul 2018 16:41:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_191f048b6dbd4d9e92da73a550a0bb1csakurauscom_"

--_000_191f048b6dbd4d9e92da73a550a0bb1csakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

My Mail system sent my reply before I got done with the dir tree. Here is t=
he completed tree:


Qt-5.9.6
     Yocto-mirror                                                     # Yoc=
to build mirror
     Yocto-build-RPi3                                              # Yocto =
build root
                build-raspberrypi                                   # build=
 directory
                sources                                                 # y=
octo sources
                       meta-sakura                                   # our =
recipes
                               recipes-kernel                        # dire=
ctory for kernel changes
                                       linux                               =
# directory that contains .bbappend
                                              files                        =
 # directory that contains .cfg & .scc files

Hope this all helps.

Thanks,
Greg


________________________________
From: Greg Wilson-Lindberg
Sent: Monday, July 30, 2018 9:21:03 AM
To: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel configuration problems


Hi Bruce,

The full build is a Qt Boot2Qt build, so it includes some Qt stuff that isn=
't part of Yocto, but the kernel is just the linux-raspberrypi kernel. The =
one kernel that I'm getting in the build is 4.4.


Here is the reported build configuration:


Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "b2qt"
DISTRO_VERSION    =3D "2.2.4"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
SDKMACHINE        =3D "x86_64"
meta
meta-poky         =3D "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
meta-raspberrypi  =3D "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
meta-oe
meta-python
meta-networking
meta-initramfs
meta-multimedia   =3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
meta-boot2qt
meta-raspberrypi-extras =3D "<unknown>:<unknown>"
meta-mingw        =3D "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
meta-qt5          =3D "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
meta-sakura       =3D "<unknown>:<unknown>"

I've attached both my .bbappend and my .scc & .cfg files. The .bbappend als=
o references a patch for another driver, but that is working correctly.


Just to be complete the path to the .bbappend & files directory is:


Qt-5.9.6

     Yocto-mirror                                                     # Yoc=
to build mirror

     Yocto-build-RPi3

________________________________
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Sent: Saturday, July 28, 2018 9:53:03 PM
To: Greg Wilson-Lindberg; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel configuration problems

On 7/27/2018 6:20 PM, Greg Wilson-Lindberg wrote:
> I'm trying to add a couple of drivers to the kernel in a Raspberry pi3
> build.
>
> I've got the passing of the config options working, but I'm getting
> warnings from the kernel build that the options are not being applied:
>
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> do_kernel_configcheck: [kernel config]: specified values did not make it
> into the kernel's final configuration:
>
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> Config: CONFIG_SND_SOC_MAX9768
> From:
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-sh=
ared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
> Actual value:
>
> Config 'SND_SOC_MAX9768' has the following conditionals:
> Dependency values are:
>
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From:
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-sh=
ared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=3Dm
> Actual value:     # CONFIG_MAX1363 is not set
>
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
>
>
> My problem is that I don't understand why the options are not being appli=
ed.
>
> For the MAX_9768, it depends on I2C=3Dy which is true. I've run the linux
> kernel menu config and when I get to the Sound SOC support none of the
> drivers that require I2C support (i.e. 'select SND_SOC_MAX9768 if I2C')
> are displayed. I don't see anything else that would disable them, the
> other drivers in the SOC Kconfig that don't depend on I2C or that depend
> on SPI_MASTER are displayed.
>
> The MAX1363 can be set in the menuconfig to 'm', but still won't set
> from the scc, cfg files.
>
> Any insight into what's going on here would be greatly appreciated.

I can help with this ... but first, is this a configuration that I can
build myself ? i.e. what branch, what layers and what extra configs
would I need ?

Bruce

>
> Regards,
>
> cid:image001.png@01D35D7D.179A7510
>
> *Greg Wilson-Lindberg *
>
> *Principal Firmware Engineer | Sakura Finetek USA, Inc. *
>
> **
>
> 1750 W 214^th Street | Torrance, CA 90501 | U.S.A.
>
> T: +1 310 783 5075
>
> F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>
>
> www.sakuraus.com<http://www.sakuraus.com>
>
> cid:image002.png@01D35D7D.179A7510
>
>
>
> cid:image003.png@01D35D7D.179A7510
>
> ------------------------------------------------------------------------
>
> Confidentiality Notice: This e-mail transmission may contain
> confidential or legally privileged information that is intended only for
> the individual or entity named in the e-mail address. If you are not the
> intended recipient, you are hereby notified that any disclosure,
> copying, distribution, or reliance upon the contents of this e-mail is
> strictly prohibited. If you have received this e-mail transmission in
> error, please reply to the sender, so that Sakura Finetek USA, Inc. can
> arrange for proper delivery, and then please delete the message from
> your inbox. Thank you.
>
>
>

--_000_191f048b6dbd4d9e92da73a550a0bb1csakurauscom_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Bruce,</p>
<p>My Mail system sent my reply before I got done with the dir tree. Here i=
s the completed tree:</p>
<p><br>
</p>
<p></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
Qt-5.9.6</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp;Yocto-mirror&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Yoc=
to build mirror</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp;Yocto-build-RPi3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Yocto build&nbsp;root</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; build-raspberrypi&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# build directory</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; sources&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;# yocto sources</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;meta-sakura&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# our =
recipes</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;recipes-kernel&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # directory for =
kernel changes</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;linux&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;# directory that contains .bbappend</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; files&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;# directory that contains .cfg &amp; .scc fi=
les</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
Hope this all helps.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
Greg</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Greg Wilson-Lindberg<=
br>
<b>Sent:</b> Monday, July 30, 2018 9:21:03 AM<br>
<b>To:</b> Bruce Ashfield; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel configuration problems</font>
<div>&nbsp;</div>
</div>
<div>
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
<p>Hi Bruce,</p>
<p>The full build is a Qt Boot2Qt build, so it includes some Qt stuff that =
isn't part of Yocto, but the kernel is just the linux-raspberrypi kernel. T=
he one kernel that I'm getting in the build is 4.4.</p>
<p><br>
</p>
<p>Here is the reported build configuration:</p>
<p><br>
</p>
<p></p>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;1.32.0&quot;</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;x86_64-linux&quot=
;</div>
<div>NATIVELSBSTRING&nbsp; &nbsp;=3D &quot;universal&quot;</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;arm-poky-linux-gnueabi=
&quot;</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;raspberrypi3=
&quot;</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;b2qt&quot;</=
div>
<div>DISTRO_VERSION&nbsp; &nbsp; =3D &quot;2.2.4&quot;</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp;=3D &quot;arm armv7ve vfp thumb neon =
vfpv4 callconvention-hard cortexa7&quot;</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;hard&quot;</div>
<div>SDKMACHINE&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64&quot;</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;HEAD:df76669bdd70=
aa0d903c4211dde731221c7e756d&quot;</div>
<div>meta-raspberrypi&nbsp; =3D &quot;HEAD:2a192261a914892019f4f428d7462bb3=
c585ebac&quot;</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-networking&nbsp; &nbsp;</div>
<div>meta-initramfs&nbsp; &nbsp;&nbsp;</div>
<div>meta-multimedia&nbsp; &nbsp;=3D &quot;HEAD:b40116cf457b88a2db14b86fda9=
627fb34d56ae6&quot;</div>
<div>meta-boot2qt&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-raspberrypi-extras =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot=
;</div>
<div>meta-mingw&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:1c2e155111dce9442=
3cc227ea69f7f50f316c78e&quot;</div>
<div>meta-qt5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:49e9d9a73b5c=
6e3d6eab88dc0005305e85b1a62d&quot;</div>
<div>meta-sakura&nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&lt;unknown&gt;:&lt;un=
known&gt;&quot;</div>
<div><br>
</div>
I've attached both my .bbappend and my .scc &amp; .cfg files. The .bbappend=
 also references a patch for another driver, but that is working correctly.
<p></p>
<p><br>
</p>
<p>Just to be complete the path to the .bbappend &amp; files directory is:<=
/p>
<p><br>
</p>
<p>Qt-5.9.6</p>
<p>&nbsp; &nbsp; &nbsp;Yocto-mirror&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# =
Yocto build mirror</p>
<p>&nbsp; &nbsp; &nbsp;Yocto-build-RPi3</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Bruce Ashfield &lt;=
bruce.ashfield@windriver.com&gt;<br>
<b>Sent:</b> Saturday, July 28, 2018 9:53:03 PM<br>
<b>To:</b> Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel configuration problems</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 7/27/2018 6:20 PM, Greg Wilson-Lindberg wrote:<=
br>
&gt; I'm trying to add a couple of drivers to the kernel in a Raspberry pi3=
 <br>
&gt; build.<br>
&gt; <br>
&gt; I've got the passing of the config options working, but&nbsp;I'm getti=
ng <br>
&gt; warnings from the kernel build that the options are not being applied:=
<br>
&gt; <br>
&gt; WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067-r0 <=
br>
&gt; do_kernel_configcheck: [kernel config]: specified values did not make =
it <br>
&gt; into the kernel's final configuration:<br>
&gt; <br>
&gt; ---------- CONFIG_SND_SOC_MAX9768 -----------------<br>
&gt; Config: CONFIG_SND_SOC_MAX9768<br>
&gt; From: <br>
&gt; /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work=
-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt; Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt; Actual value:<br>
&gt; <br>
&gt; Config 'SND_SOC_MAX9768' has the following conditionals:<br>
&gt; Dependency values are:<br>
&gt; <br>
&gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt; Config: CONFIG_MAX1363<br>
&gt; From: <br>
&gt; /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work=
-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt; Requested value:&nbsp; CONFIG_MAX1363=3Dm<br>
&gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<br>
&gt; <br>
&gt; Config 'MAX1363' has the following conditionals:<br>
&gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt; Dependency values are:<br>
&gt;&nbsp; &nbsp; I2C [y]<br>
&gt; <br>
&gt; <br>
&gt; My problem is that I don't understand why the options are not being ap=
plied.<br>
&gt; <br>
&gt; For the MAX_9768, it depends on I2C=3Dy which is true. I've run the li=
nux <br>
&gt; kernel menu config and when I get to the Sound SOC support none of the=
 <br>
&gt; drivers that require I2C support (i.e. 'select SND_SOC_MAX9768 if I2C'=
) <br>
&gt; are displayed. I don't see anything else that would disable them, the =
<br>
&gt; other drivers in the SOC Kconfig that don't depend on I2C or that depe=
nd <br>
&gt; on SPI_MASTER are displayed.<br>
&gt; <br>
&gt; The MAX1363 can be set in the menuconfig to 'm', but still won't set <=
br>
&gt; from the scc,&nbsp;cfg files.<br>
&gt; <br>
&gt; Any insight&nbsp;into what's going on here would be greatly appreciate=
d.<br>
<br>
I can help with this ... but first, is this a configuration that I can<br>
build myself ? i.e. what branch, what layers and what extra configs<br>
would I need ?<br>
<br>
Bruce<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; cid:image001.png@01D35D7D.179A7510<br>
&gt; <br>
&gt; *Greg Wilson-Lindberg *<br>
&gt; <br>
&gt; *Principal Firmware Engineer | Sakura Finetek USA, Inc. *<br>
&gt; <br>
&gt; **<br>
&gt; <br>
&gt; 1750 W 214^th Street | Torrance, CA 90501 | U.S.A.<br>
&gt; <br>
&gt; T: &#43;1 310 783 5075<br>
&gt; <br>
&gt; F: &#43;1 310 618 6902 | E: gwilson@sakuraus.com&lt;mailto:gwilson@sak=
uraus.com&gt;<br>
&gt; <br>
&gt; www.sakuraus.com&lt;<a href=3D"http://www.sakuraus.com">http://www.sak=
uraus.com</a>&gt;<br>
&gt; <br>
&gt; cid:image002.png@01D35D7D.179A7510<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
&gt; <br>
&gt; cid:image003.png@01D35D7D.179A7510<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; <br>
&gt; Confidentiality Notice: This e-mail transmission may contain <br>
&gt; confidential or legally privileged information that is intended only f=
or <br>
&gt; the individual or entity named in the e-mail address. If you are not t=
he <br>
&gt; intended recipient, you are hereby notified that any disclosure, <br>
&gt; copying, distribution, or reliance upon the contents of this e-mail is=
 <br>
&gt; strictly prohibited. If you have received this e-mail transmission in =
<br>
&gt; error, please reply to the sender, so that Sakura Finetek USA, Inc. ca=
n <br>
&gt; arrange for proper delivery, and then please delete the message from <=
br>
&gt; your inbox. Thank you.<br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font></div>
</body>
</html>

--_000_191f048b6dbd4d9e92da73a550a0bb1csakurauscom_--
