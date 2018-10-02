Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB64DE00994; Tue,  2 Oct 2018 14:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.237 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 908 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Oct 2018 14:37:34 PDT
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.150.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A987E00718
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2018 14:37:34 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 02 Oct 2018 21:37:31 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 2 Oct 2018 14:22:22 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 2 Oct 2018 14:22:22 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: changing kernel config in Morty build
Thread-Index: AQHUWpOFhG/9utVvSUu/b9KkDUPU4g==
Date: Tue, 2 Oct 2018 21:22:22 +0000
Message-ID: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1538516251-298552-15959-76745-1
X-BESS-VER: 2018.12-r1810012240
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.200886
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: changing kernel config in Morty build
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
X-List-Received-Date: Tue, 02 Oct 2018 21:37:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_286078d59ba1400fb6646b0e6057add6sakurauscom_"

--_000_286078d59ba1400fb6646b0e6057add6sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to change some kernel configuration flags in a raspberrypi3 Mort=
y build and I get warnings that it isn't working.


Here is the build info and warnings:


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

Initialising tasks: 100% |#################################################=
###########################################################################=
#################| Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 do_kernel_conf=
igcheck: [kernel config]: specified values did not make it into the kernel'=
s final configuration:

---------- CONFIG_SND_SOC_MAX9768 -----------------
Config: CONFIG_SND_SOC_MAX9768
From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
Actual value:

Config 'SND_SOC_MAX9768' has the following conditionals:

Dependency values are:


---------- CONFIG_MAX1363 -----------------
Config: CONFIG_MAX1363
From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_MAX1363=3Dm
Actual value:     # CONFIG_MAX1363 is not set

Config 'MAX1363' has the following conditionals:
  I2C (value: "y")
Dependency values are:
  I2C [y]

---------- CONFIG_CAN_EMS_USB -----------------
Config: CONFIG_CAN_EMS_USB
From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_CAN_EMS_USB=3Dm
Actual value:     # CONFIG_CAN_EMS_USB is not set

Config 'CAN_EMS_USB' has the following conditionals:
  (none)
Dependency values are:


Here is my linux-raspberrypi_4.4.bbappend for the kernel:

# Scribe additions to Kernel configuration

FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/files:"
FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"

SRC_URI +=3D "file://Scribe.scc"
SRC_URI +=3D "file://mcp251x.c.patch"



The Scribe.scc file:

# Scribe additions to kernel configuration
kconf hardware Scribe.cfg



And the Scribe.cfg file:

# Scribe additions to kernel configuration

# Enable MAX9768
#CONFIG_SOC_ALL_CODECS=3Dm
#CONFIG_COMPILE_TEST=3Dy
CONFIG_SND_SOC_MAX9768=3Dy

# Enable MAX11606
#IIO=3Dy
CONFIG_MAX1363=3Dm

# Enable EMS CPC-USB
CONFIG_CAN_EMS_USB=3Dm


Here is my directory tree:

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
# directory that contains linux-raspberrypi_4.4.bbappend
                                              files                        =
 # directory that contains .scc & .cfg files

As seen above none of the changes are accepted although there is nothing th=
at blocks any of them.

Any help understanding this would be greatly appreciated.

Regards,

Greg Wilson-Lindberg

--_000_286078d59ba1400fb6646b0e6057add6sakurauscom_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I'm trying to change some kernel configuration flags in a raspberrypi3&n=
bsp;Morty build and I get warnings that it isn't working.</p>
<p><br>
</p>
<p>Here is the build info and warnings:</p>
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
<div>Initialising tasks: 100% |############################################=
###########################################################################=
######################| Time: 0:00:00</div>
<div>NOTE: Executing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div>
<div>WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067-r0 d=
o_kernel_configcheck: [kernel config]: specified values did not make it int=
o the kernel's final configuration:</div>
<div><br>
</div>
<div>---------- CONFIG_SND_SOC_MAX9768 -----------------</div>
<div>Config: CONFIG_SND_SOC_MAX9768</div>
<div>From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tm=
p/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</d=
iv>
<div>Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;</div>
<div><br>
</div>
<div>Config 'SND_SOC_MAX9768' has the following conditionals:&nbsp;</div>
<div>&nbsp;&nbsp;</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp;</div>
<div><br>
</div>
<div>---------- CONFIG_MAX1363 -----------------</div>
<div>Config: CONFIG_MAX1363</div>
<div>From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tm=
p/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</d=
iv>
<div>Requested value:&nbsp; CONFIG_MAX1363=3Dm</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set</div>
<div><br>
</div>
<div>Config 'MAX1363' has the following conditionals:&nbsp;</div>
<div>&nbsp; I2C (value: &quot;y&quot;)</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp; I2C [y]</div>
<div><br>
</div>
<div>---------- CONFIG_CAN_EMS_USB -----------------</div>
<div>Config: CONFIG_CAN_EMS_USB</div>
<div>From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tm=
p/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</d=
iv>
<div>Requested value:&nbsp; CONFIG_CAN_EMS_USB=3Dm</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_CAN_EMS_USB is not set</div>
<div><br>
</div>
<div>Config 'CAN_EMS_USB' has the following conditionals:&nbsp;</div>
<div>&nbsp; (none)</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp;</div>
<div><br>
</div>
<div>Here is my <span style=3D"font-family: Calibri, Arial, Helvetica, sans=
-serif; font-size: 16px; white-space: pre;">
linux-raspberrypi_4.4</span>.bbappend for the kernel:</div>
<div>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre># Scribe additions to Kernel configuration=0A=
=0A=
FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/files:&quot;=0A=
FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/${PN}:&quot;=0A=
=0A=
SRC_URI &#43;=3D &quot;file://Scribe.scc&quot;=0A=
SRC_URI &#43;=3D &quot;file://mcp251x.c.patch&quot;=0A=
</pre>
<pre><br></pre>
<pre>The Scribe.scc file:</pre>
<pre><div style=3D"color: #000000;background-color: #ffffff; font-style: no=
rmal; font-weight: normal; text-decoration: none;"><pre># Scribe additions =
to kernel configuration=0A=
kconf hardware Scribe.cfg=0A=
</pre><pre><br></pre><pre>And the Scribe.cfg file:</pre><pre><div style=3D"=
color: #000000;background-color: #ffffff; font-style: normal; font-weight: =
normal; text-decoration: none;"><pre># Scribe additions to kernel configura=
tion=0A=
=0A=
# Enable MAX9768=0A=
#CONFIG_SOC_ALL_CODECS=3Dm=0A=
#CONFIG_COMPILE_TEST=3Dy=0A=
CONFIG_SND_SOC_MAX9768=3Dy=0A=
=0A=
# Enable MAX11606=0A=
#IIO=3Dy=0A=
CONFIG_MAX1363=3Dm=0A=
=0A=
# Enable EMS CPC-USB=0A=
CONFIG_CAN_EMS_USB=3Dm=0A=
</pre><pre><span style=3D"font-family: Calibri, Arial, Helvetica, sans-seri=
f; font-size: 12pt;">Here is my directory tree:</span></pre><pre><span styl=
e=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt;">=
Qt-5.9.6</span></pre><pre><div style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"><fo=
nt face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span style=3D"fo=
nt-size: 12pt; font-family: Calibri, Arial, Helvetica, sans-serif;">&nbsp; =
&nbsp; &nbsp;Yocto-mirror&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Yocto buil=
d mirror</span></font></div><div style=3D"font-family: Calibri, Arial, Helv=
etica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"><=
font face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span style=3D"=
font-size: 12pt;">&nbsp; &nbsp; &nbsp;Yocto-build-RPi3&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Yocto bu=
ild&nbsp;root</span></font></div><div style=3D"font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0p=
x;"><font face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span styl=
e=3D"font-size: 12pt;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; build-raspberrypi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# bu=
ild directory</span></font></div><div style=3D"font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0p=
x;"><font face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span styl=
e=3D"font-size: 12pt;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; sources&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# yocto sources</span></font></div><div =
style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16p=
x; margin-top: 0px; margin-bottom: 0px;"><font face=3D"Calibri,Arial,Helvet=
ica,sans-serif" size=3D"2"><span style=3D"font-size: 12pt;">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;meta-sa=
kura&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# our recipes</span><=
/font></div><div style=3D"font-family: Calibri, Arial, Helvetica, sans-seri=
f; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"><font face=3D"Cal=
ibri,Arial,Helvetica,sans-serif" size=3D"2"><span style=3D"font-size: 12pt;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;recipes-kernel&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # directory fo=
r kernel changes</span></font></div><div style=3D"font-family: Calibri, Ari=
al, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom:=
 0px;"><font face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span s=
tyle=3D"font-size: 16px;"><span style=3D"font-size: 12pt;">&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;linux&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;# directory that contains linux-raspberrypi_4.4</span><span s=
tyle=3D"font-size: 12pt;">.bbappend</span></span></font></div><div style=3D=
"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margi=
n-top: 0px; margin-bottom: 0px;"><font face=3D"Calibri,Arial,Helvetica,sans=
-serif" size=3D"2"><span style=3D"font-size: 12pt;">&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; files&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;# directory that contains .scc &amp; .cfg files</span></font></div>=
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;"><span style=3D"font-family: C=
alibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 12pt;"><br></span></div><div st=
yle=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px;=
 margin-top: 0px; margin-bottom: 0px;"><span style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe U=
I Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android E=
moji&quot;, EmojiSymbols; font-size: 12pt;">As seen above none of the chang=
es are accepted although there is nothing that blocks any of them.</span><f=
ont face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D"2"><span style=3D"f=
ont-size: 16px;"><br></span></font></div></pre></div></pre><pre><span style=
=3D"font-size: 12pt;">Any help understanding this would be greatly apprecia=
ted.</span></pre><pre>Regards,</pre><pre>Greg Wilson-Lindberg</pre></div></=
pre>
</div>
</div>
<p></p>
</div>
</body>
</html>

--_000_286078d59ba1400fb6646b0e6057add6sakurauscom_--
