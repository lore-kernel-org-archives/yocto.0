Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC4D0E00857; Wed, 12 Jul 2017 11:10:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.6.129.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic309-19.consmr.mail.bf2.yahoo.com
	(sonic309-19.consmr.mail.bf2.yahoo.com [74.6.129.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03123E00547
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 11:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1499883027; bh=rS/Udg4BCufEHT8OqvbXE5Nxz7kGm+q6Fk38MHOlpH4=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=gxVOU2cxZc6UZL5MbrqR9XeSUTOnBsod9wisjVyTlzI/MfB9CpLGxtwJF6yrclMXBm97W91nkEfloC5YYB9tKeKG2lNe+3ji7bWetcZziwQJQEh4GTnoFvrHkdjxAJiWzALw4oxtXooZrLQeN2pW+RrNY5/11oJ517KEx6gjVQ1fWmFTJSbqE+tA2NZbbp5c7/i0GJdNucC9TS9/7DbdJARBXmk3mRrrh5fyMCD4AQrtNAd3YYbpqcIeLt76A93RXH1Z86d4DLnNIMsIfjysKqAwLKtL32XoNZrySj8EDIBgNIpZXj6SGoFTRlDiBoJfTQXaG+Nr4vatVeFhw+30hg==
X-YMail-OSG: EnZVyVsVM1lc64JVfzr_ZN2uCSVue7Amns7twDW5nQP8sArK79qOW7E4CkgekOP
	RHi6PnC_dvMNeBotSY6sv0Kf_1Z_MRNCUnlILdblwrf54JyaoUS5zoVknhaMFheCuR0BdsygH0Rf
	l7CoV0U4SSVEpdoAxQmBSsvqd7Awkuj3bDaiGXmtg8Pqmru1ubMMNmQkirGAhNKUegX422FQadxN
	OF7J409N4ZCJe3PRV2uC3FPPnlW8R8kQWksdyNTU6HXvBndNPCBUned4zkkcYTlb2bjsys3pcZQ_
	d.Xn4pAjdHX0IjRy.kQUOQ_jgg71C1eVFgyTs_4wGKohJLIgPbsmNZRPOSHf_B.PpR143dulouOA
	GZOPz972V7AWndJbirloMpGy0hzQpKzNmr3cu7_hOAxIxJacRS3R2FoesLyPois68_._ko6fdLIZ
	bk44_fw14PDTAyXSa3DkH2EsOF3J9MecnHVvWl0fo1GOzO1v57AQMBET9cxJb.OIzWMHpDphVYoo
	QwG3Y0F5A2aiaEMFKBgo7cLEywQycNNDY_S2H9fa95gMqsgKpR9TSfFIciu_zzkhcytQ2mq3ZVE8
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 12 Jul 2017 18:10:27 +0000
Date: Wed, 12 Jul 2017 18:10:26 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <516344662.4122571.1499883026470@mail.yahoo.com>
MIME-Version: 1.0
References: <516344662.4122571.1499883026470.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10014 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0
Subject: RPi fails when build is with deb packages works okay with rpm packages.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Jul 2017 18:10:30 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4122570_1492965264.1499883026469"

------=_Part_4122570_1492965264.1499883026469
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,Does anyone know if recipes are available for=20
gcc-arm-none-eabi & binutils-arm-none-eabi?

My build works okay when I use package_rpm and fails with package_deb.
My bblayers.conf & local.conf are at=20
https://github.com/develone/raspberrypi2_yocto/tree/master/poky2.2/raspberr=
ypi2/conf_files
Any and all help is appreciated.


Parsing recipes: 100% |##########################################| Time: 0:=
00:46
~/wkg/yocto/RaspberryPi2/poky/build$ diff conf/local.conf ~/wkg/raspberrypi=
2_yocto/poky2.2/raspberrypi2/conf_files/local.conf=20
124c124
< PACKAGE_CLASSES ?=3D "package_deb"
---
> PACKAGE_CLASSES ?=3D "package_rpm"

Parsing of 1931 .bb files complete (0 cached, 1931 parsed). 2616 targets, 1=
70 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.32.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux=
"
NATIVELSBSTRING=C2=A0=C2=A0 =3D "Ubuntu-16.04"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm-poky-linux-gn=
ueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ra=
spberrypi2"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "2.2"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7ve vfp thumb neon vfpv4=
 callconvention-hard cortexa7"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "hard"
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=20
meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "morty:5aa481dfedfd089f0d6e8a3bae1b841=
34d5dff4c"
meta-raspberrypi=C2=A0 =3D "master:6bd1bfe472ea491c0edeb7c854d1c0cc5192afeb=
"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-multimedia=C2=A0=C2=A0=20
meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "morty:5aa481dfedf=
d089f0d6e8a3bae1b84134d5dff4c"
meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:1edcce7791b4cee9a515=
c1f11b351753a4f8b12e"

Initialising tasks: 100% |#######################################| Time: 0:=
00:19
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks

ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Comman=
d '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/x86_64-linux/=
usr/bin/apt-get=C2=A0 install --force-yes --allow-unauthenticated opencv xc=
hat gsl packagegroup-base-extended psplash-raspberrypi libftdi1-2 libgtk-3.=
0 apt geany libmad0 texinfo pv minicom cmake libmtp9 python-pip ghostscript=
 packagegroup-core-sdk python-imaging git dpkg tcl v4l-utils yasm packagegr=
oup-core-ssh-dropbear rsync linux-firmware lame gtkmm packagegroup-core-x11=
-base packagegroup-core-x11-sato iproute2 gperf liba52-0 iputils vlc packag=
egroup-core-boot packagegroup-core-standalone-sdk-target packagegroup-core-=
x11-sato-games tk xterm squashfs-tools gnuplot tar chkconfig openjpeg tree =
man libgtk-2.0' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
=C2=A0packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but=
 it is not going to be installed
=C2=A0vlc : Depends: libgl-mesa (>=3D 12.0.1) but it is not going to be ins=
talled
E: Unable to correct problems, you have held broken packages.

ERROR: core-image-sato-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/vidal/wkg/yocto/RaspberryPi2/pok=
y/build/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/tem=
p/log.do_rootfs.2105
ERROR: Task (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-sato/imag=
es/core-image-sato.bb:do_rootfs) failed with exit code '1'



Thanks in advance.

Cheers,

=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_4122570_1492965264.1499883026469
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:13px"><div id=3D"yui_3_16_0_ym19_1_1499882753199_4622" dir=3D"ltr">He=
llo All,</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1499882753199_4935">=
Does anyone know if recipes are available for <br></div><div dir=3D"ltr" id=
=3D"yui_3_16_0_ym19_1_1499882753199_4906">gcc-arm-none-eabi &amp; binutils-=
arm-none-eabi?</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1499882753199_=
4925"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1499882753199_4934=
"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1499882753199_4905">My=
 build works okay when I use package_rpm and fails with package_deb.<br id=
=3D"yui_3_16_0_ym19_1_1499882753199_4807">My bblayers.conf &amp; local.conf=
 are at <br id=3D"yui_3_16_0_ym19_1_1499882753199_4808">https://github.com/=
develone/raspberrypi2_yocto/tree/master/poky2.2/raspberrypi2/conf_files<br =
id=3D"yui_3_16_0_ym19_1_1499882753199_4809">Any and all help is appreciated=
.<br id=3D"yui_3_16_0_ym19_1_1499882753199_4810"><br id=3D"yui_3_16_0_ym19_=
1_1499882753199_4811"><br id=3D"yui_3_16_0_ym19_1_1499882753199_4812">Parsi=
ng recipes: 100% |##########################################| Time: 0:00:46=
<br id=3D"yui_3_16_0_ym19_1_1499882753199_4813">~/wkg/yocto/RaspberryPi2/po=
ky/build$ diff conf/local.conf ~/wkg/raspberrypi2_yocto/poky2.2/raspberrypi=
2/conf_files/local.conf <br id=3D"yui_3_16_0_ym19_1_1499882753199_4814">124=
c124<br id=3D"yui_3_16_0_ym19_1_1499882753199_4815">&lt; PACKAGE_CLASSES ?=
=3D "package_deb"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4816">---<br id=
=3D"yui_3_16_0_ym19_1_1499882753199_4817">&gt; PACKAGE_CLASSES ?=3D "packag=
e_rpm"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4818"><br id=3D"yui_3_16_0_=
ym19_1_1499882753199_4819">Parsing of 1931 .bb files complete (0 cached, 19=
31 parsed). 2616 targets, 170 skipped, 0 masked, 0 errors.<br id=3D"yui_3_1=
6_0_ym19_1_1499882753199_4820">NOTE: Resolving any missing task queue depen=
dencies<br id=3D"yui_3_16_0_ym19_1_1499882753199_4821"><br id=3D"yui_3_16_0=
_ym19_1_1499882753199_4822">Build Configuration:<br id=3D"yui_3_16_0_ym19_1=
_1499882753199_4823">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "1.32.0"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4824">BUILD_SYS&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br id=3D"yui_=
3_16_0_ym19_1_1499882753199_4825">NATIVELSBSTRING&nbsp;&nbsp; =3D "Ubuntu-1=
6.04"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4826">TARGET_SYS&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br id=3D"yui_3_=
16_0_ym19_1_1499882753199_4827">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D "raspberrypi2"<br id=3D"yui_3_16_0_ym19_1_1499=
882753199_4828">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; =3D "poky"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4829">DIS=
TRO_VERSION&nbsp;&nbsp;&nbsp; =3D "2.2"<br id=3D"yui_3_16_0_ym19_1_14998827=
53199_4830">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm armv7ve vfp thum=
b neon vfpv4 callconvention-hard cortexa7"<br id=3D"yui_3_16_0_ym19_1_14998=
82753199_4831">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "ha=
rd"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4832">meta&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br id=3D"yui_3_=
16_0_ym19_1_1499882753199_4833">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; <br id=3D"yui_3_16_0_ym19_1_1499882753199_4834">meta-yocto-b=
sp&nbsp;&nbsp;&nbsp; =3D "morty:5aa481dfedfd089f0d6e8a3bae1b84134d5dff4c"<b=
r id=3D"yui_3_16_0_ym19_1_1499882753199_4835">meta-raspberrypi&nbsp; =3D "m=
aster:6bd1bfe472ea491c0edeb7c854d1c0cc5192afeb"<br id=3D"yui_3_16_0_ym19_1_=
1499882753199_4836">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; <br id=3D"yui_3_16_0_ym19_1_1499882753199_4837">meta-python&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br id=3D"yui_3_16_0_ym19_1_1499882753199=
_4838">meta-multimedia&nbsp;&nbsp; <br id=3D"yui_3_16_0_ym19_1_149988275319=
9_4839">meta-gnome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "morty:5aa=
481dfedfd089f0d6e8a3bae1b84134d5dff4c"<br id=3D"yui_3_16_0_ym19_1_149988275=
3199_4840">meta-browser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:1edcce779=
1b4cee9a515c1f11b351753a4f8b12e"<br id=3D"yui_3_16_0_ym19_1_1499882753199_4=
841"><br id=3D"yui_3_16_0_ym19_1_1499882753199_4842">Initialising tasks: 10=
0% |#######################################| Time: 0:00:19<br id=3D"yui_3_1=
6_0_ym19_1_1499882753199_4843">NOTE: Executing SetScene Tasks<br id=3D"yui_=
3_16_0_ym19_1_1499882753199_4844">NOTE: Executing RunQueue Tasks<br id=3D"y=
ui_3_16_0_ym19_1_1499882753199_4845"><br id=3D"yui_3_16_0_ym19_1_1499882753=
199_4846">ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packag=
es. Command '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/x86=
_64-linux/usr/bin/apt-get&nbsp; install --force-yes --allow-unauthenticated=
 opencv xchat gsl packagegroup-base-extended psplash-raspberrypi libftdi1-2=
 libgtk-3.0 apt geany libmad0 texinfo pv minicom cmake libmtp9 python-pip g=
hostscript packagegroup-core-sdk python-imaging git dpkg tcl v4l-utils yasm=
 packagegroup-core-ssh-dropbear rsync linux-firmware lame gtkmm packagegrou=
p-core-x11-base packagegroup-core-x11-sato iproute2 gperf liba52-0 iputils =
vlc packagegroup-core-boot packagegroup-core-standalone-sdk-target packageg=
roup-core-x11-sato-games tk xterm squashfs-tools gnuplot tar chkconfig open=
jpeg tree man libgtk-2.0' returned 100:<br id=3D"yui_3_16_0_ym19_1_14998827=
53199_4847">Reading package lists...<br id=3D"yui_3_16_0_ym19_1_14998827531=
99_4848">Building dependency tree...<br id=3D"yui_3_16_0_ym19_1_14998827531=
99_4849">Reading state information...<br id=3D"yui_3_16_0_ym19_1_1499882753=
199_4850">Some packages could not be installed. This may mean that you have=
<br id=3D"yui_3_16_0_ym19_1_1499882753199_4851">requested an impossible sit=
uation or if you are using the unstable<br id=3D"yui_3_16_0_ym19_1_14998827=
53199_4852">distribution that some required packages have not yet been crea=
ted<br id=3D"yui_3_16_0_ym19_1_1499882753199_4853">or been moved out of Inc=
oming.<br id=3D"yui_3_16_0_ym19_1_1499882753199_4854">The following informa=
tion may help to resolve the situation:<br id=3D"yui_3_16_0_ym19_1_14998827=
53199_4855"><br id=3D"yui_3_16_0_ym19_1_1499882753199_4856">The following p=
ackages have unmet dependencies:<br id=3D"yui_3_16_0_ym19_1_1499882753199_4=
857">&nbsp;packagegroup-core-x11-base : Depends: packagegroup-core-x11-util=
s but it is not going to be installed<br id=3D"yui_3_16_0_ym19_1_1499882753=
199_4858">&nbsp;vlc : Depends: libgl-mesa (&gt;=3D 12.0.1) but it is not go=
ing to be installed<br id=3D"yui_3_16_0_ym19_1_1499882753199_4859">E: Unabl=
e to correct problems, you have held broken packages.<br id=3D"yui_3_16_0_y=
m19_1_1499882753199_4860"><br id=3D"yui_3_16_0_ym19_1_1499882753199_4861">E=
RROR: core-image-sato-1.0-r0 do_rootfs: Function failed: do_rootfs<br id=3D=
"yui_3_16_0_ym19_1_1499882753199_4862">ERROR: Logfile of failure stored in:=
 /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/raspberrypi2-poky-l=
inux-gnueabi/core-image-sato/1.0-r0/temp/log.do_rootfs.2105<br id=3D"yui_3_=
16_0_ym19_1_1499882753199_4863">ERROR: Task (/home/vidal/wkg/yocto/Raspberr=
yPi2/poky/meta/recipes-sato/images/core-image-sato.bb:do_rootfs) failed wit=
h exit code '1'<br id=3D"yui_3_16_0_ym19_1_1499882753199_4864"><br id=3D"yu=
i_3_16_0_ym19_1_1499882753199_4865"><br id=3D"yui_3_16_0_ym19_1_14998827531=
99_4866"><br id=3D"yui_3_16_0_ym19_1_1499882753199_4867">Thanks in advance.=
<br id=3D"yui_3_16_0_ym19_1_1499882753199_4868"><br id=3D"yui_3_16_0_ym19_1=
_1499882753199_4869">Cheers,<br id=3D"yui_3_16_0_ym19_1_1499882753199_4870"=
><br></div><div id=3D"yui_3_16_0_ym19_1_1499882753199_4509">&nbsp;</div><di=
v class=3D"signature" id=3D"yui_3_16_0_ym19_1_1499882753199_4607">Edward Vi=
dal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div></body></html=
>

------=_Part_4122570_1492965264.1499883026469--
