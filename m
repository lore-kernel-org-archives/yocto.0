Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1BFFE0053F; Thu,  4 Oct 2018 13:38:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.223 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.154.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68701E003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 13:38:32 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1413.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Thu, 04 Oct 2018 20:38:29 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 4 Oct 2018 13:38:19 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 4 Oct 2018 13:38:19 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: changing kernel config in Morty build
Thread-Index: AQHUWpOFhG/9utVvSUu/b9KkDUPU4qUPjkQg
Date: Thu, 4 Oct 2018 20:38:19 +0000
Message-ID: <16551d421c7747ab9ae52856a668d750@sakuraus.com>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
In-Reply-To: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1538685508-531715-954-19554-1
X-BESS-VER: 2018.13-r1810030000
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.201046
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
X-List-Received-Date: Thu, 04 Oct 2018 20:38:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_16551d421c7747ab9ae52856a668d750sakurauscom_"

--_000_16551d421c7747ab9ae52856a668d750sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Does anybody else have any idea about what is going on here?

Yocto is seeing my request to change the kernel config, suggests that the c=
hange is acceptable, but then doesn't make it.

Thanks in advance for any insight,

Greg

From: Greg Wilson-Lindberg
Sent: Tuesday, October 02, 2018 02:22 PM
To: yocto@yoctoproject.org
Subject: changing kernel config in Morty build


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


Here is my
linux-raspberrypi_4.4.bbappend for the kernel:

# Scribe additions to Kernel configuration



FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/files:"

FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"



SRC_URI +=3D "file://Scribe.scc<file:///\\Scribe.scc>"

SRC_URI +=3D "file://mcp251x.c.patch<file:///\\mcp251x.c.patch>"



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

--_000_16551d421c7747ab9ae52856a668d750sakurauscom_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:black;
	font-weight:normal;
	font-style:normal;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Does anybody else have any idea about wha=
t is going on here?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Yocto is seeing my request to change the =
kernel config, suggests that the change is acceptable, but then doesn't mak=
e it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Thanks in advance for any insight,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Greg<o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Greg Wilson-Lindberg
<br>
<b>Sent:</b> Tuesday, October 02, 2018 02:22 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> changing kernel config in Morty build<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
'm trying to change some kernel configuration flags in a raspberrypi3&nbsp;=
Morty build and I get warnings that it isn't working.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
ere is the build info and warnings:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Build Configuration:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;1.32.0&q=
uot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;x86=
_64-linux&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">NATIVELSBSTRING&nbsp; &nbsp;=3D &quot;universal&quot;<o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;arm-poky=
-linux-gnueabi&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quo=
t;raspberrypi3&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quo=
t;b2qt&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">DISTRO_VERSION&nbsp; &nbsp; =3D &quot;2.2.4&quot;<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">TUNE_FEATURES&nbsp; &nbsp; &nbsp;=3D &quot;arm armv7ve v=
fp thumb neon vfpv4 callconvention-hard cortexa7&quot;<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;hard&quo=
t;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">SDKMACHINE&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64&q=
uot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbs=
p;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;HEA=
D:df76669bdd70aa0d903c4211dde731221c7e756d&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-raspberrypi&nbsp; =3D &quot;HEAD:2a192261a914892019=
f4f428d7462bb3c585ebac&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-python&nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-networking&nbsp; &nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-initramfs&nbsp; &nbsp;&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-multimedia&nbsp; &nbsp;=3D &quot;HEAD:b40116cf457b8=
8a2db14b86fda9627fb34d56ae6&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-boot2qt&nbsp; &nbsp; &nbsp;&nbsp;<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-raspberrypi-extras =3D &quot;&lt;unknown&gt;:&lt;un=
known&gt;&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-mingw&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:1c2=
e155111dce94423cc227ea69f7f50f316c78e&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-qt5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEA=
D:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">meta-sakura&nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&lt;unkn=
own&gt;:&lt;unknown&gt;&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Initialising tasks: 100% |##############################=
###########################################################################=
####################################| Time: 0:00:00<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">NOTE: Executing SetScene Tasks<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">NOTE: Executing RunQueue Tasks<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;0=
4c8e47067-r0 do_kernel_configcheck: [kernel config]: specified values did n=
ot make it into the kernel's final configuration:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">---------- CONFIG_SND_SOC_MAX9768 -----------------<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config: CONFIG_SND_SOC_MAX9768<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-r=
aspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs=
/Scribe.cfg<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Actual value:&nbsp; &nbsp; &nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config 'SND_SOC_MAX9768' has the following conditionals:=
&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp;&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Dependency values are:&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">---------- CONFIG_MAX1363 -----------------<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config: CONFIG_MAX1363<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-r=
aspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs=
/Scribe.cfg<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Requested value:&nbsp; CONFIG_MAX1363=3Dm<o:p></o:p></sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not=
 set<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config 'MAX1363' has the following conditionals:&nbsp;<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp; I2C (value: &quot;y&quot;)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Dependency values are:&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp; I2C [y]<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">---------- CONFIG_CAN_EMS_USB -----------------<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config: CONFIG_CAN_EMS_USB<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-r=
aspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs=
/Scribe.cfg<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Requested value:&nbsp; CONFIG_CAN_EMS_USB=3Dm<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_CAN_EMS_USB is=
 not set<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Config 'CAN_EMS_USB' has the following conditionals:&nbs=
p;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp; (none)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Dependency values are:&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Here is my
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">linux-raspberrypi_4.4.bbappend for the kernel:<o:p></o:p=
></span></p>
</div>
<div>
<div>
<pre style=3D"background:white"><span style=3D"color:black"># Scribe additi=
ons to Kernel configuration<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILESEXTRAPATHS=
_prepend :=3D &quot;${FILE_DIRNAME}/files:&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILESEXTRAPATHS=
_prepend :=3D &quot;${FILE_DIRNAME}/${PN}:&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI &#43;=
=3D &quot;<a href=3D"file:///\\Scribe.scc">file://Scribe.scc</a>&quot;<o:p>=
</o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI &#43;=
=3D &quot;<a href=3D"file:///\\mcp251x.c.patch">file://mcp251x.c.patch</a>&=
quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">The Scribe.scc =
file:<o:p></o:p></span></pre>
<div>
<pre style=3D"background:white"><span style=3D"color:black"># Scribe additi=
ons to kernel configuration<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">kconf hardware =
Scribe.cfg<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">And the Scribe.=
cfg file:<o:p></o:p></span></pre>
<div>
<pre style=3D"background:white"><span style=3D"color:black"># Scribe additi=
ons to kernel configuration<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># Enable MAX976=
8<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#CONFIG_SOC_ALL=
_CODECS=3Dm<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#CONFIG_COMPILE=
_TEST=3Dy<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">CONFIG_SND_SOC_=
MAX9768=3Dy<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># Enable MAX116=
06<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#IIO=3Dy<o:p></=
o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">CONFIG_MAX1363=
=3Dm<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># Enable EMS CP=
C-USB<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">CONFIG_CAN_EMS_=
USB=3Dm<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">Here is my directory tree:</sp=
an><span style=3D"color:black"><o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">Qt-5.9.6</span><span style=3D"=
color:black"><o:p></o:p></span></pre>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp;Yocto-mirr=
or&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Yocto build mirror<o:p></o:p></sp=
an></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp;Yocto-buil=
d-RPi3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; # Yocto build&nbsp;root<o:p></o:p></span></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; build-raspberrypi&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;# build directory<o:p></o:p></span></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; sources&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# yocto sources<o:=
p></o:p></span></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;meta-sakura&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# our recipes<o:p></o:p></span></pre=
>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;recipes-kernel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; # directory for kernel changes<o:p></o:p></spa=
n></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;linux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
# directory that contains linux-raspberrypi_4.4.bbappend<o:p></o:p></span><=
/pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; files&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;# directory that contains .scc &amp; .cfg files<o:p></o:p></span></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></pre>
</div>
<div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:black">As seen above none of the chan=
ges are accepted although there is nothing that blocks any of them.<o:p></o=
:p></span></pre>
</div>
</div>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;color:black=
">Any help understanding this would be greatly appreciated.</span><span sty=
le=3D"color:black"><o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">Regards,<o:p></=
o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">Greg Wilson-Lin=
dberg<o:p></o:p></span></pre>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_16551d421c7747ab9ae52856a668d750sakurauscom_--
