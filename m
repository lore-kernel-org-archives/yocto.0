Return-Path: <vinodmaverickr007@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 007F2E00804; Wed, 27 Aug 2014 21:39:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vinodmaverickr007[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68137E007F6
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 21:39:03 -0700 (PDT)
Received: by mail-la0-f49.google.com with SMTP id b17so262516lan.36
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 21:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wm4NHEhWhRPVcvOSQ5kwQYLCkrVb3qz8Yt0zaWclDRw=;
	b=slidb1LfQQlySgaMwmwZTSNDXO1Bz1oNFCEim4+QbOInOeAqBaAX57IR55safcojUX
	4+UVv4HWM9JntVFDhpM0RkKjujd861/ihlr/oxtdrNvzgNbx9zTZuUjFEKMu5JaA+kqP
	WMAEAhNaGIRDjiM6JKmdJFS6NtgdJ1cGQXiY/JLHMrg3zqMujBjATVNrGXzPgCtvNbeg
	YImsKPHbDk9F8XBBDcnyOT9F5kMrnXbSClOYzFPm56VcbjJJgEvXRdNdw9yaSFmFHUbv
	OqvlOxtnWyYAJCAxmQ0HckvEH2JCWp3CcDJF8zNO2YGQ/ytthg8ox3vhJdx0zVKI6aki
	aOTg==
MIME-Version: 1.0
X-Received: by 10.112.118.68 with SMTP id kk4mr1425818lbb.4.1409200741988;
	Wed, 27 Aug 2014 21:39:01 -0700 (PDT)
Received: by 10.25.160.19 with HTTP; Wed, 27 Aug 2014 21:39:01 -0700 (PDT)
Date: Thu, 28 Aug 2014 10:09:01 +0530
Message-ID: <CAGWLT1QbJ=0JRiwUnyHb2ud25cAokZuRq5REt+SoiYy9tHz3RQ@mail.gmail.com>
From: vinod kumar <vinodmaverickr007@gmail.com>
To: yocto@yoctoproject.org
Subject: Add the new driver in yocto
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
X-List-Received-Date: Thu, 28 Aug 2014 04:39:08 -0000
Content-Type: multipart/alternative; boundary=047d7bb03ee2a4bf490501a91dfa

--047d7bb03ee2a4bf490501a91dfa
Content-Type: text/plain; charset=UTF-8

Hi,

I am using yocto for wandboard. I have written one I2C driver for my I2C
device.

 *The procedure which I followed to add and build the driver in yocto is as*
:

1) Make the entry of my driver in Makefile and Kconfig in build directory.
2) Replace the defconfig (present in source directory) with .config
(present in build directory).
3) Add the driver information in device tree file.

Then I run the *bitbake linux-imx -c compile -f* to compile the kernel and
face some errors. So is there any way (like to add as a patch *(patch of
conf file and driver source code*) in some .bbappend file or something
equivalent to it) through which I can add and compile my driver successfully

*But during compilation I faced the below errors:*






















































*vinod@vinod:~/vvdn/VSTI_PoSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/git$
bitbake linux-imx -c compile -fLoading cache: 100%
|############################################################################################|
ETA:  00:00:00Loaded 1820 entries from dependency cache.NOTE: Resolving any
missing task queue dependenciesBuild Configuration:BB_VERSION        =
"1.22.0"BUILD_SYS         = "x86_64-linux"NATIVELSBSTRING   =
"Ubuntu-12.04"TARGET_SYS        = "arm-poky-linux-gnueabi"MACHINE
= "imx6qsabresd"DISTRO            = "poky"DISTRO_VERSION    =
"1.6.1"TUNE_FEATURES     = "armv7a vfp neon callconvention-hard
cortexa9"TARGET_FPU        = "vfp-neon"meta              meta-yocto
= "(nobranch):8e05d5e3fe04face623c4f9fb08b12f13c22edab"meta-oe           =
"(nobranch):ee24939c4c70b63a9fb7e93a58889a3231d3d367"meta-fsl-arm      =
"(nobranch):d91871446d6baee8397522c4fa10d45985aa8645"meta-fsl-arm-extra =
"(nobranch):456c27085a70bb1385a4c2e28ba80ac74d6f533e"meta-fsl-demos    =
"(nobranch):27fdb2f2642ecd55d5633bde880dd4c37acd0d42"NOTE: Preparing
runqueueNOTE: Tainting hash to force rebuild of task
/home/vinod/vvdn/VSTI_PoSX/yocto_src/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb
<http://linux-imx_3.10.17.bb>, do_compileNOTE: Executing SetScene
TasksNOTE: Executing RunQueue TasksERROR: Function failed: do_compile (log
file is located at
/home/vinod/vvdn/VSTI_PoSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_compile.28793)ERROR:
Logfile of failure stored in:
/home/vinod/vvdn/VSTI_PoSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_compile.28793Log
data follows:| DEBUG: Executing shell function do_compile| NOTE: make -j 4
uImage CC=arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm
LD=arm-poky-linux-gnueabi-ld.bfd   LOADADDR=0x10008000|   HOSTCC
scripts/basic/fixdep|   HOSTCC  scripts/kconfig/conf.o|   HOSTCC
scripts/kconfig/zconf.tab.o|   HOSTLD  scripts/kconfig/conf|
scripts/kconfig/conf --silentoldconfig Kconfig| ***| *** Configuration file
".config" not found!| ***| *** Please run some configurator (e.g. "make
oldconfig" or| *** "make menuconfig" or "make xconfig").| ***| make[2]: ***
[silentoldconfig] Error 1| make[1]: *** [silentoldconfig] Error 2| make:
*** No rule to make target `include/config/auto.conf', needed by
`include/config/kernel.release'.  Stop.| ERROR: oe_runmake failed| WARNING:
exit code 1 from a shell command.| ERROR: Function failed: do_compile (log
file is located at
/home/vinod/vvdn/VSTI_PoSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_compile.28793)ERROR:
Task 4
(/home/vinod/vvdn/VSTI_PoSX/yocto_src/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb
<http://linux-imx_3.10.17.bb>, do_compile) failed with exit code '1'NOTE:
Tasks Summary: Attempted 247 tasks of which 246 didn't need to be rerun and
1 failed.Summary: 1 task failed:
/home/vinod/vvdn/VSTI_PoSX/yocto_src/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb
<http://linux-imx_3.10.17.bb>, do_compileSummary: There was 1 ERROR message
shown, returning a non-zero exit code.*

--047d7bb03ee2a4bf490501a91dfa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br><br></div>I am u=
sing yocto for wandboard. I have written one I2C driver for my I2C device.<=
br><br></div>=C2=A0<b>The procedure which I followed to add and build the d=
river in yocto is as</b>:<br>
<br></div><span style=3D"color:rgb(0,0,255)">1) Make the entry of my driver=
 in Makefile and Kconfig in build directory.<br></span></div><div><span sty=
le=3D"color:rgb(0,0,255)">2) Replace the defconfig (present in source direc=
tory) with .config (present in build directory).<br>
</span></div><span style=3D"color:rgb(0,0,255)">3) Add the driver informati=
on in device tree file. </span><br><br></div>Then<span style=3D"color:rgb(2=
55,0,0)"> <span style=3D"color:rgb(0,0,0)">I run the</span> <b>bitbake linu=
x-imx -c compile -f</b></span> to compile the kernel and face some errors. =
So is there any way (like to add as a patch <i>(patch of conf file and driv=
er source code</i>) in some .bbappend file or something equivalent to it) t=
hrough which I can add and compile my driver successfully<br>
<br></div><span style=3D"color:rgb(0,0,255)"><i><b>But during compilation I=
 faced the below errors:</b></i></span><br><br><i>vinod@vinod:~/vvdn/VSTI_P=
oSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10=
.17-r0/git$ bitbake linux-imx -c compile -f<br>
Loading cache: 100% |######################################################=
######################################| ETA:=C2=A0 00:00:00<br>Loaded 1820 =
entries from dependency cache.<br>NOTE: Resolving any missing task queue de=
pendencies<br>
<br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.22.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=
 =3D &quot;Ubuntu-12.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;imx6qsabresd&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.6.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;armv7a vfp neon callconvention-hard cortexa9&quot;<br>TARGET_FPU=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;(nobranch):8e05d5e3fe04face623c4f9fb08b12f13c22edab&quot;<br>meta-oe=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobran=
ch):ee24939c4c70b63a9fb7e93a58889a3231d3d367&quot;<br>meta-fsl-arm=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):d91871446d6baee8397522c4fa10d459=
85aa8645&quot;<br>
meta-fsl-arm-extra =3D &quot;(nobranch):456c27085a70bb1385a4c2e28ba80ac74d6=
f533e&quot;<br>meta-fsl-demos=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):27fdb2=
f2642ecd55d5633bde880dd4c37acd0d42&quot;<br><br>NOTE: Preparing runqueue<br=
>NOTE: Tainting hash to force rebuild of task /home/vinod/vvdn/VSTI_PoSX/yo=
cto_src/sources/meta-fsl-arm/recipes-kernel/linux/<a href=3D"http://linux-i=
mx_3.10.17.bb">linux-imx_3.10.17.bb</a>, do_compile<br>
NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: =
Function failed: do_compile (log file is located at /home/vinod/vvdn/VSTI_P=
oSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10=
.17-r0/temp/log.do_compile.28793)<br>
ERROR: Logfile of failure stored in: /home/vinod/vvdn/VSTI_PoSX/yocto_src/b=
uild/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log=
.do_compile.28793<br>Log data follows:<br>| DEBUG: Executing shell function=
 do_compile<br>
| NOTE: make -j 4 uImage CC=3Darm-poky-linux-gnueabi-gcc=C2=A0 -mno-thumb-i=
nterwork -marm LD=3Darm-poky-linux-gnueabi-ld.bfd=C2=A0=C2=A0 LOADADDR=3D0x=
10008000<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep<br>|=C2=A0=C2=
=A0 HOSTCC=C2=A0 scripts/kconfig/conf.o<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 scrip=
ts/kconfig/zconf.tab.o<br>
|=C2=A0=C2=A0 HOSTLD=C2=A0 scripts/kconfig/conf<br>| scripts/kconfig/conf -=
-silentoldconfig Kconfig<br>| ***<br>| *** Configuration file &quot;.config=
&quot; not found!<br>| ***<br>| *** Please run some configurator (e.g. &quo=
t;make oldconfig&quot; or<br>
| *** &quot;make menuconfig&quot; or &quot;make xconfig&quot;).<br>| ***<br=
>| make[2]: *** [silentoldconfig] Error 1<br>| make[1]: *** [silentoldconfi=
g] Error 2<br>| make: *** No rule to make target `include/config/auto.conf&=
#39;, needed by `include/config/kernel.release&#39;.=C2=A0 Stop.<br>
| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a shell command.<=
br>| ERROR: Function failed: do_compile (log file is located at /home/vinod=
/vvdn/VSTI_PoSX/yocto_src/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/li=
nux-imx/3.10.17-r0/temp/log.do_compile.28793)<br>
ERROR: Task 4 (/home/vinod/vvdn/VSTI_PoSX/yocto_src/sources/meta-fsl-arm/re=
cipes-kernel/linux/<a href=3D"http://linux-imx_3.10.17.bb">linux-imx_3.10.1=
7.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summ=
ary: Attempted 247 tasks of which 246 didn&#39;t need to be rerun and 1 fai=
led.<br>
<br>Summary: 1 task failed:<br>=C2=A0 /home/vinod/vvdn/VSTI_PoSX/yocto_src/=
sources/meta-fsl-arm/recipes-kernel/linux/<a href=3D"http://linux-imx_3.10.=
17.bb">linux-imx_3.10.17.bb</a>, do_compile<br>Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.</i><br>
<br><br></div><br></div>

--047d7bb03ee2a4bf490501a91dfa--
