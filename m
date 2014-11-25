Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22678E0091A; Tue, 25 Nov 2014 00:57:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B774E008F1
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 00:57:21 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAP8vD3e028462;
	Tue, 25 Nov 2014 19:27:13 +1030
Message-Id: <2df2d7aa3b39e3f653036d785fb7c24a779a7d2d@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "akuster808" <akuster808@gmail.com>, peterengcomau001@adam.com.au,
	yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <5473F884.2060509@gmail.com>
Date: Tue, 25 Nov 2014 19:27:13 +1030
MIME-Version: 1.0
Subject: Re: New error in 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Nov 2014 08:57:34 -0000
Content-Type: multipart/alternative;
	boundary="=_482a4756a37af34b3d2b07e02dc5c017"

--=_482a4756a37af34b3d2b07e02dc5c017
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

thank you. i have fixed the curl problem but a new problem has occured=
=0Awith the build. This problem did not appear in v1.6.1. The problem is=
:=0A=0A=09lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake=0Aatme=
l-qt5-demo-image -c populate_sdk  =0A=0A=09Loading cache: 100%=0A|######=
########################################################################=
########################################################################=
#####|=0AETA: 00:00:00  =0A=0A=09Loaded 2108 entries from dependency cac=
he.  =0A=0A=09NOTE: Resolving any missing task queue dependencies  =0A=
=0A=09Build Configuration:  =0A=0A=09BB_VERSION =3D "1.24.0"  =0A=0A=09B=
UILD_SYS =3D "x86_64-linux"  =0A=0A=09NATIVELSBSTRING =3D "Ubuntu-14.04"=
  =0A=0A=09TARGET_SYS =3D "arm-poky-linux-gnueabi"  =0A=0A=09MACHINE =3D=
 "sama5d3xek"  =0A=0A=09DISTRO =3D "poky"  =0A=0A=09DISTRO_VERSION =3D "=
1.7"  =0A=0A=09TUNE_FEATURES =3D "arm armv7a vfp thumb callconvention-ha=
rd cortexa5" =0A=0A=0A=09TARGET_FPU =3D "vfp"  =0A=0A=09meta-atmel =3D "=
my_branch:711809b0d91f816b10e70508986b3f43098000ba"  =0A=0A=09meta-qt5=
 =3D "my_branch:0732e184acef5e0200f46d7f95702774e5de1904"  =0A=0A=09meta=
  =0A=0A=09meta-yocto  =0A=0A=09meta-yocto-bsp =3D "dizzy:db7f4f31c915a5=
9c502cac4be905d23df5246b3d"  =0A=0A=09meta-oe  =0A=0A=09meta-python  =0A=
=0A=09meta-networking  =0A=0A=09meta-ruby =3D "my_branch:9efaed99125b1c4=
324663d9a1b2d3319c74e7278"  =0A=0A=09NOTE: Preparing runqueue  =0A=0A=09=
NOTE: Executing SetScene Tasks  =0A=0A=09NOTE: Executing RunQueue Tasks=
  =0A=0A=09ERROR: Function failed: do_configure (log file is located at=
=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-g=
nueabi/gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do_configure.5736)=0A=
 =0A=0A=09ERROR: Logfile of failure stored in:=0A/home/lachlan/poky/buil=
d-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugin=
s-hantro/1.0-r1/temp/log.do_configure.5736=0A =0A=0A=09Log data follows:=
  =0A=0A=09| DEBUG: Executing python function sysroot_cleansstate  =0A=
=0A=09| DEBUG: Python function sysroot_cleansstate finished  =0A=0A=09|=
 DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',=0A'common-l=
inux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',=0A'common'] =
 =0A=0A=09| DEBUG: Executing shell function autotools_preconfigure  =0A=
=0A=09| DEBUG: Shell function autotools_preconfigure finished  =0A=0A=09=
| DEBUG: Executing python function autotools_copy_aclocals  =0A=0A=09| D=
EBUG: Python function autotools_copy_aclocals finished  =0A=0A=09| DEBUG=
: Executing shell function do_configure  =0A=0A=09| automake (GNU automa=
ke) 1.14.1  =0A=0A=09| Copyright (C) 2013 Free Software Foundation, Inc.=
  =0A=0A=09| License GPLv2+: GNU GPL version 2 or later   =0A=0A=09| Thi=
s is free software: you are free to change and redistribute it.=0A =0A=
=0A=09| There is NO WARRANTY, to the extent permitted by law.  =0A=0A=09=
|  =0A=0A=09| Written by Tom Tromey   =0A=0A=09| and Alexandre Duret-Lut=
z .  =0A=0A=09| AUTOV is 1.14  =0A=0A=09| NOTE: Executing ACLOCAL=3D"acl=
ocal=0A--system-acdir=3D/home/lachlan/poky/build-atmel/tmp/work/cortexa5=
t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/acl=
ocal-copy/=0A--automake-acdir=3D/home/lachlan/poky/build-atmel/tmp/sysro=
ots/x86_64-linux/usr/share/aclocal-1.14"=0Aautoreconf --verbose --instal=
l --force --exclude=3Dautopoint -I=0A/home/lachlan/poky/build-atmel/tmp/=
work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0=
-r1/gst-hantro-g1-1.0/m4/=0A =0A=0A=09| autoreconf: Entering directory `=
'  =0A=0A=09| autoreconf: configure.ac: not using Gettext  =0A=0A=09| a=
utoreconf: running: aclocal=0A--system-acdir=3D/home/lachlan/poky/build-=
atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-=
hantro/1.0-r1/build/aclocal-copy/=0A--automake-acdir=3D/home/lachlan/pok=
y/build-atmel/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.14=0A-I=0A/h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A-I=0A/home/=
lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gs=
treamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force -I m4 -=
I common/m4  =0A=0A=09| autoreconf: configure.ac: tracing  =0A=0A=09| au=
toreconf: running: libtoolize --copy --force  =0A=0A=09| libtoolize: put=
ting auxiliary files in `.'.  =0A=0A=09| libtoolize: copying file `./ltm=
ain.sh'  =0A=0A=09| libtoolize: putting macros in `m4'.  =0A=0A=09| libt=
oolize: copying file `m4/libtool.m4'  =0A=0A=09| libtoolize: copying fil=
e `m4/ltoptions.m4'  =0A=0A=09| libtoolize: copying file `m4/ltsugar.m4'=
  =0A=0A=09| libtoolize: copying file `m4/ltversion.m4'  =0A=0A=09| libt=
oolize: copying file `m4/lt~obsolete.m4'  =0A=0A=09| libtoolize: Remembe=
r to add `LT_INIT' to configure.ac.  =0A=0A=09| libtoolize: Consider add=
ing `AC_CONFIG_MACRO_DIR([m4])' to=0Aconfigure.ac and  =0A=0A=09| libtoo=
lize: rerunning libtoolize, to keep the correct libtool=0Amacros in-tree=
  =0A=0A=09| autoreconf: running:=0A/home/lachlan/poky/build-atmel/tmp/=
sysroots/x86_64-linux/usr/bin/autoconf=0A--include=3D/home/lachlan/poky/=
build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-pl=
ugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force  =0A=0A=09| autoreco=
nf: running:=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/=
usr/bin/autoheader=0A--include=3D/home/lachlan/poky/build-atmel/tmp/work=
/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/=
gst-hantro-g1-1.0/m4/=0A--force  =0A=0A=09| autoreconf: running: automak=
e --add-missing --copy --force-missing=0A =0A=0A=09| Makefile.am: error:=
 required file './AUTHORS' not found  =0A=0A=09| autoreconf: automake fa=
iled with exit status: 1  =0A=0A=09| ERROR: autoreconf execution failed.=
  =0A=0A=09| WARNING: exit code 1 from a shell command.  =0A=0A=09| ERRO=
R: Function failed: do_configure (log file is located at=0A/home/lachlan=
/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer=
1.0-plugins-hantro/1.0-r1/temp/log.do_configure.5736)=0A =0A=0A=09ERROR:=
 Task 602=0A(/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1=
0-plugins/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_configure) failed wi=
th exit code '1'  =0A=0A=09NOTE: Tasks Summary: Attempted 3741 tasks of=
 which 3738 didn't need=0Ato be rerun and 1 failed.  =0A=0A=09Waiting fo=
r 0 running tasks to finish:  =0A=0A=09Summary: 1 task failed:  =0A=0A=
=09=0A/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0-plug=
ins/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_configure  =0A=0A=09Summary=
: There was 1 ERROR message shown, returning a non-zero exit=0Acode. =
 =0A=0A=09lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ =C2=A0 =0A____=
_____________________________________=0AThank you for any insight into t=
he problem.=0ALachlan=0A=0A----- Original Message -----=0AFrom: "akuster=
808" =0ATo:, =0ACc:=0ASent:Mon, 24 Nov 2014 19:33:24 -0800=0ASubject:Re:=
 [yocto] New error in 1.7=0A=0A There was an issue with the curl package=
 over the weekend. It was =0A corrected early this morning (PST). Do you=
 have the changes? if not,=0A=0A please refresh your cloned source.=0A=
=0A regards,=0A Armin=0A=0A On 11/24/2014 07:16 PM, peterengcomau001@ada=
m.com.au wrote:=0A > I have just downloaded poky 1.7 and am rebuilding t=
he image. I get=0Aan=0A > error that I did not when doing this in 1.6.1=
=0A >=0A > lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake=0A >=
 atmel-qt5-demo-image -c populate_sdk=0A >=0A > Build Configuration:=0A=
 > BB_VERSION =3D "1.24.0"=0A > BUILD_SYS =3D "x86_64-linux"=0A > NATIVE=
LSBSTRING =3D "Ubuntu-14.04"=0A > TARGET_SYS =3D "arm-poky-linux-gnueabi=
"=0A > MACHINE =3D "sama5d3xek"=0A > DISTRO =3D "poky"=0A > DISTRO_VERSI=
ON =3D "1.7"=0A > TUNE_FEATURES =3D "arm armv7a vfp thumb callconvention=
-hard=0Acortexa5"=0A > TARGET_FPU =3D "vfp"=0A > meta-atmel =3D "my_bran=
ch:711809b0d91f816b10e70508986b3f43098000ba"=0A > meta-qt5 =3D "my_branc=
h:0732e184acef5e0200f46d7f95702774e5de1904"=0A > meta=0A > meta-yocto=0A=
 > meta-yocto-bsp =3D "dizzy:9bfb78bff606700176909abaa5cf8a332292738a"=
=0A > meta-oe=0A > meta-python=0A > meta-networking=0A > meta-ruby =3D "=
my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"=0A >=0A > NOTE: Prep=
aring runqueue=0A > NOTE: Executing SetScene Tasks=0A > NOTE: Executing=
 RunQueue Tasks=0A > ERROR: Command Error: exit status: 1 Output:=0A > A=
pplying patch CVE-2014-3613.patch=0A > patching file lib/cookie.c=0A > p=
atching file tests/data/test1105=0A > patching file tests/data/test31=0A=
 > Hunk #1 FAILED at 49 (different line endings).=0A > 1 out of 2 hunks=
 FAILED -- rejects in file tests/data/test31=0A > patching file tests/da=
ta/test8=0A > Patch CVE-2014-3613.patch does not apply (enforce with -f)=
=0A > ERROR: Function failed: patch_do_patch=0A > ERROR: Logfile of fail=
ure stored in:=0A >=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2=
hf-vfp-poky-linux-gnueabi/curl/7.37.1-r0/temp/log.do_patch.31221=0A > ER=
ROR: Task 1666=0A > (/home/lachlan/poky/meta/recipes-support/curl/curl_7=
37.1.bb,=0Ado_patch)=0A > failed with exit code '1'=0A > NOTE: Tasks Su=
mmary: Attempted 2914 tasks of which 2912 didn't=0Aneed to=0A > be rerun=
 and 1 failed.=0A > Waiting for 0 running tasks to finish:=0A >=0A > Sum=
mary: 1 task failed:=0A > /home/lachlan/poky/meta/recipes-support/curl/c=
url_7.37.1.bb,=0Ado_patch=0A > Summary: There were 2 ERROR messages show=
n, returning a non-zero=0Aexit code.=0A >=0A > any thoughts as to what t=
his probleb could be.=0A > _____________________________________________=
______________=0A >=0A > I also have problems with the ADT cross compile=
r installer in V1.7=0A > compared with 1.6.1. where it wont install the=
 rootfs as follows:=0A >=0A >=0A########################################=
#################################=0A > # Welcome to Yocto Application De=
velopement Tools (ADT) Installer=0A > #=0A > # Host Machine: x86_64=0A >=
 # OS info: 3.13.0-39-generic=0A > # Yocto ADT version to be installed:=
=0A > # supported target architectures: x86 x86_64 arm ppc mips=0A > # s=
upported target root_fs images: minimal minimal-dev sato=0Asato-dev=0A >=
 sato-sdk lsb lsb-dev lsb-sdk=0A >=0A###################################=
######################################=0A >=0A > Systemwide installation=
 Installation will occur under=0A/opt/poky/1.7=0A >=0A >=0A############=
################################################################=0A > #=
 Your system installation configurations from adt_installer.conf=0A >=0A=
########################################################################=
####=0A > # Cross toolchains: arm=0A > # Install Qemu: Y=0A > # Install=
 NFS utilities: Y=0A >=0A >=0A##########################################=
####################################=0A > # Your rootfs image(s) and tar=
get sysroot selections from=0Aadt_installer.conf=0A >=0A################=
##############################################################=0A > # Ta=
rget architecture: arm=0A > # Target machine: qemuarm=0A > # Root_fs ima=
ges: minimal sato-sdk=0A > # Target sysroot image: sato-sdk=0A > # Targe=
t sysroot loc: /home/lachlan/test-yocto/qemuarm=0A >=0A#################=
###########################################################=0A >=0A > Su=
ccessfully installed selected native ADT!=0A > Installing target sysroot=
 for arch: arm, rootfs type: sato-sdk,=0A > location: /home/lachlan/test=
-yocto/qemuarm=0A >=0A > Target sysroot location: /home/lachlan/test-yoc=
to/qemuarm, already=0A > exists! If you continue installation, this fold=
er will be=0Are-created.=0A > Creating directory /home/lachlan/test-yoct=
o/qemuarm...=0A > Extracting rootfs: core-image-sato-sdk-qemuarm.tar.bz2=
, using=0Apseudo...=0A > tar (child): ./download_image/core-image-sato-s=
dk-qemuarm.tar.bz2:=0A > Cannot open: No such file or directory=0A > tar=
 (child): Error is not recoverable: exiting now=0A > tar: Child returned=
 status 2=0A > tar: Error is not recoverable: exiting now=0A >=0A > Is t=
here anyway to overcome this or is it best to go back to 1.6.1=0A >=0A >=
 Thanks=0A > Lachlab=0A > ---- Message sent via Adam Internet WebMail -=
=0Ahttp://www.adam.com.au/=0A >=0A >=0A -- =0A _________________________=
______________________=0A yocto mailing list=0A yocto@yoctoproject.org=
=0A https://lists.yoctoproject.org/listinfo/yocto=0A---- Message sent vi=
a Adam Internet WebMail - http://www.adam.com.au/

--=_482a4756a37af34b3d2b07e02dc5c017
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>thank you. i have fixed the curl problem but a new problem h=
as occured with the build. This problem did not appear in v1.6.1. The pr=
oblem is:<br /><br /><p style=3D"margin-bottom:0in;line-height:100%;">la=
chlan@lachlan-SVP13215PXB:~/poky/build-atmel$=0Abitbake atmel-qt5-demo-i=
mage -c populate_sdk =0A</p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;">Loading cache: 100%=0A|#########################################=
########################################################################=
##########################################|=0AETA:  00:00:00 =0A</p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;">Loaded 2108 entries=0Afr=
om dependency cache. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;">NOTE: Resolving any=0Amissing task queue dependencies =0A</p>=0A=
<p style=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;">Build Configuration:=0A</p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;">BB_VERSION        =3D=0A=
"1.24.0" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">BUIL=
D_SYS         =3D=0A"x86_64-linux" =0A</p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;">NATIVELSBSTRING   =3D=0A"Ubuntu-14.04" =0A</p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;">TARGET_SYS        =3D=0A=
"arm-poky-linux-gnueabi" =0A</p>=0A<p style=3D"margin-bottom:0in;line-he=
ight:100%;">MACHINE           =3D=0A"sama5d3xek" =0A</p>=0A<p style=3D"m=
argin-bottom:0in;line-height:100%;">DISTRO            =3D=0A"poky" =0A</=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">DISTRO_VERSION   =
 =3D=0A"1.7" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
TUNE_FEATURES     =3D=0A"arm armv7a vfp thumb callconvention-hard cortex=
a5" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">TARGET_FP=
U        =3D=0A"vfp" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;">meta-atmel        =3D=0A"my_branch:711809b0d91f816b10e70508986b3=
f43098000ba" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
meta-qt5          =3D=0A"my_branch:0732e184acef5e0200f46d7f95702774e5de1=
904" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">meta   =
           =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">me=
ta-yocto        =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;">meta-yocto-bsp    =3D=0A"dizzy:db7f4f31c915a59c502cac4be905d23df5246b=
3d" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">meta-oe =
          =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">met=
a-python       =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;=
">meta-networking   =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;">meta-ruby         =3D=0A"my_branch:9efaed99125b1c4324663d9a1b2d33=
19c74e7278" =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
br /></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">NOTE: Prepa=
ring=0Arunqueue =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;">NOTE: Executing=0ASetScene Tasks =0A</p>=0A<p style=3D"margin-bottom:=
0in;line-height:100%;">NOTE: Executing=0ARunQueue Tasks =0A</p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;">ERROR: Function=0Afailed: do_=
configure (log file is located at=0A/home/lachlan/poky/build-atmel/tmp/w=
ork/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-=
r1/temp/log.do_configure.5736)=0A</p>=0A<p style=3D"margin-bottom:0in;li=
ne-height:100%;">ERROR: Logfile of=0Afailure stored in:=0A/home/lachlan/=
poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1=
0-plugins-hantro/1.0-r1/temp/log.do_configure.5736=0A</p>=0A<p style=3D=
"margin-bottom:0in;line-height:100%;">Log data follows: =0A</p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;">| DEBUG: Executing=0Apython f=
unction sysroot_cleansstate =0A</p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;">| DEBUG: Python=0Afunction sysroot_cleansstate finished=
 =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| DEBUG: SIT=
E files=0A['endian-little', 'bit-32', 'arm-common', 'common-linux',=0A'c=
ommon-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common'] =0A</p>=0A<p s=
tyle=3D"margin-bottom:0in;line-height:100%;">| DEBUG: Executing=0Ashell=
 function autotools_preconfigure =0A</p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;">| DEBUG: Shell=0Afunction autotools_preconfigure fin=
ished =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| DEBUG=
: Executing=0Apython function autotools_copy_aclocals =0A</p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;">| DEBUG: Python=0Afunction auto=
tools_copy_aclocals finished =0A</p>=0A<p style=3D"margin-bottom:0in;lin=
e-height:100%;">| DEBUG: Executing=0Ashell function do_configure =0A</p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;">| automake (GNU=0Aau=
tomake) 1.14.1 =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;=
">| Copyright (C) 2013=0AFree Software Foundation, Inc. =0A</p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;">| License GPLv2+:=0AGNU GPL v=
ersion 2 or later &lt;http://gnu.org/licenses/gpl-2.0.html&gt;=0A</p>=0A=
<p style=3D"margin-bottom:0in;line-height:100%;">| This is free=0Asoftwa=
re: you are free to change and redistribute it. =0A</p>=0A<p style=3D"ma=
rgin-bottom:0in;line-height:100%;">| There is NO=0AWARRANTY, to the exte=
nt permitted by law. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;">| =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| W=
ritten by Tom=0ATromey &lt;tromey@redhat.com&gt; =0A</p>=0A<p style=3D"m=
argin-bottom:0in;line-height:100%;">|        and=0AAlexandre Duret-Lutz=
 &lt;adl@gnu.org&gt;. =0A</p>=0A<p style=3D"margin-bottom:0in;line-heigh=
t:100%;">| AUTOV is 1.14 =0A</p>=0A<p style=3D"margin-bottom:0in;line-he=
ight:100%;">| NOTE: Executing=0AACLOCAL=3D"aclocal=0A--system-acdir=3D/h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/=0A--automake-ac=
dir=3D/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/share=
/aclocal-1.14"=0Aautoreconf --verbose --install --force --exclude=3Dauto=
point -I=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=
=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| autoreconf:=
=0AEntering directory `.' =0A</p>=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;">| autoreconf:=0Aconfigure.ac: not using Gettext =0A</p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;">| autoreconf:=0Arunning:=
 aclocal=0A--system-acdir=3D/home/lachlan/poky/build-atmel/tmp/work/cort=
exa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build=
/aclocal-copy/=0A--automake-acdir=3D/home/lachlan/poky/build-atmel/tmp/s=
ysroots/x86_64-linux/usr/share/aclocal-1.14=0A-I=0A/home/lachlan/poky/bu=
ild-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plug=
ins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A-I=0A/home/lachlan/poky/build-=
atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-=
hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force -I m4 -I common/m4 =0A</p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;">| autoreconf:=0Aconf=
igure.ac: tracing =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;">| autoreconf:=0Arunning: libtoolize --copy --force =0A</p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;">| libtoolize:=0Aputting auxil=
iary files in `.'. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:1=
00%;">| libtoolize:=0Acopying file `./ltmain.sh' =0A</p>=0A<p style=3D"m=
argin-bottom:0in;line-height:100%;">| libtoolize:=0Aputting macros in `m=
4'. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| libtool=
ize:=0Acopying file `m4/libtool.m4' =0A</p>=0A<p style=3D"margin-bottom:=
0in;line-height:100%;">| libtoolize:=0Acopying file `m4/ltoptions.m4'=
 =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| libtoolize=
:=0Acopying file `m4/ltsugar.m4' =0A</p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;">| libtoolize:=0Acopying file `m4/ltversion.m4' =0A</=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| libtoolize:=0Aco=
pying file `m4/lt~obsolete.m4' =0A</p>=0A<p style=3D"margin-bottom:0in;l=
ine-height:100%;">| libtoolize:=0ARemember to add `LT_INIT' to configure=
ac. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| libtoo=
lize:=0AConsider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.ac and=
 =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| libtoolize=
:=0Arerunning libtoolize, to keep the correct libtool macros in-tree.=
 =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">| autoreconf=
:=0Arunning:=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/=
usr/bin/autoconf=0A--include=3D/home/lachlan/poky/build-atmel/tmp/work/c=
ortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gs=
t-hantro-g1-1.0/m4/=0A--force =0A</p>=0A<p style=3D"margin-bottom:0in;li=
ne-height:100%;">| autoreconf:=0Arunning:=0A/home/lachlan/poky/build-atm=
el/tmp/sysroots/x86_64-linux/usr/bin/autoheader=0A--include=3D/home/lach=
lan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstrea=
mer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force =0A</p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;">| autoreconf:=0Arunning:=
 automake --add-missing --copy --force-missing =0A</p>=0A<p style=3D"mar=
gin-bottom:0in;line-height:100%;">| Makefile.am:=0Aerror: required file=
 './AUTHORS' not found =0A</p>=0A<p style=3D"margin-bottom:0in;line-heig=
ht:100%;">| autoreconf:=0Aautomake failed with exit status: 1 =0A</p>=0A=
<p style=3D"margin-bottom:0in;line-height:100%;">| ERROR: autoreconf=0Ae=
xecution failed. =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100=
%;">| WARNING: exit code=0A1 from a shell command. =0A</p>=0A<p style=3D=
"margin-bottom:0in;line-height:100%;">| ERROR: Function=0Afailed: do_con=
figure (log file is located at=0A/home/lachlan/poky/build-atmel/tmp/work=
/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/=
temp/log.do_configure.5736)=0A</p>=0A<p style=3D"margin-bottom:0in;line-=
height:100%;">ERROR: Task 602=0A(/home/lachlan/poky/meta-atmel/recipes-m=
ultimedia/gstreamer1.0-plugins/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_=
configure) failed with exit code '1' =0A</p>=0A<p style=3D"margin-bottom=
:0in;line-height:100%;">NOTE: Tasks Summary:=0AAttempted 3741 tasks of w=
hich 3738 didn't need to be rerun and 1=0Afailed. =0A</p>=0A<p style=3D"=
margin-bottom:0in;line-height:100%;">Waiting for 0=0Arunning tasks to fi=
nish: =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br /><=
/p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">Summary: 1 task=
=0Afailed: =0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
 =0A/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0-plugin=
s/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_configure =0A</p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;">Summary: There was 1=0AERROR me=
ssage shown, returning a non-zero exit code. =0A</p>=0A<p style=3D"margi=
n-bottom:0in;line-height:100%;">lachlan@lachlan-SVP13215PXB:~/poky/build=
-atmel$=0A</p>=C2=A0=0A=0A<br />________________________________________=
_<br />Thank you for any insight into the problem.<br />Lachlan<br /><br=
 /><blockquote><br />----- Original Message -----<br /><div style=3D"wid=
th:100%;background:rgb(228,228,228);"><div style=3D"font-weight:bold;">F=
rom:</div> "akuster808" &lt;akuster808@gmail.com&gt;</div><br /><div sty=
le=3D"font-weight:bold;">To:</div>&lt;peterengcomau001@adam.com.au&gt;,=
 &lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font-weight:bold;">Cc=
:</div><br /><div style=3D"font-weight:bold;">Sent:</div>Mon, 24 Nov 201=
4 19:33:24 -0800<br /><div style=3D"font-weight:bold;">Subject:</div>Re:=
 [yocto] New error in 1.7<br /><br /><br />=0AThere was an issue with th=
e curl package over the weekend. It was <br />=0Acorrected early this mo=
rning (PST). Do you have the changes? if not, <br />=0Aplease refresh yo=
ur cloned source.<br /><br />=0Aregards,<br />=0AArmin<br /><br />=0AOn=
 11/24/2014 07:16 PM, peterengcomau001@adam.com.au wrote:<br />=0A&gt; I=
 have just downloaded poky 1.7 and am rebuilding the image. I get an<br=
 />=0A&gt; error that I did not when doing this in 1.6.1<br />=0A&gt;<br=
 />=0A&gt; lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake<br />=
=0A&gt; atmel-qt5-demo-image -c populate_sdk<br />=0A&gt;<br />=0A&gt; B=
uild Configuration:<br />=0A&gt; BB_VERSION        =3D "1.24.0"<br />=0A=
&gt; BUILD_SYS         =3D "x86_64-linux"<br />=0A&gt; NATIVELSBSTRING =
  =3D "Ubuntu-14.04"<br />=0A&gt; TARGET_SYS        =3D "arm-poky-linux-=
gnueabi"<br />=0A&gt; MACHINE           =3D "sama5d3xek"<br />=0A&gt; DI=
STRO            =3D "poky"<br />=0A&gt; DISTRO_VERSION    =3D "1.7"<br /=
>=0A&gt; TUNE_FEATURES     =3D "arm armv7a vfp thumb callconvention-hard=
 cortexa5"<br />=0A&gt; TARGET_FPU        =3D "vfp"<br />=0A&gt; meta-at=
mel        =3D "my_branch:711809b0d91f816b10e70508986b3f43098000ba"<br /=
>=0A&gt; meta-qt5          =3D "my_branch:0732e184acef5e0200f46d7f957027=
74e5de1904"<br />=0A&gt; meta<br />=0A&gt; meta-yocto<br />=0A&gt; meta-=
yocto-bsp    =3D "dizzy:9bfb78bff606700176909abaa5cf8a332292738a"<br />=
=0A&gt; meta-oe<br />=0A&gt; meta-python<br />=0A&gt; meta-networking<br=
 />=0A&gt; meta-ruby         =3D "my_branch:9efaed99125b1c4324663d9a1b2d=
3319c74e7278"<br />=0A&gt;<br />=0A&gt; NOTE: Preparing runqueue<br />=
=0A&gt; NOTE: Executing SetScene Tasks<br />=0A&gt; NOTE: Executing RunQ=
ueue Tasks<br />=0A&gt; ERROR: Command Error: exit status: 1  Output:<br=
 />=0A&gt; Applying patch CVE-2014-3613.patch<br />=0A&gt; patching file=
 lib/cookie.c<br />=0A&gt; patching file tests/data/test1105<br />=0A&gt=
; patching file tests/data/test31<br />=0A&gt; Hunk #1 FAILED at 49 (dif=
ferent line endings).<br />=0A&gt; 1 out of 2 hunks FAILED -- rejects in=
 file tests/data/test31<br />=0A&gt; patching file tests/data/test8<br /=
>=0A&gt; Patch CVE-2014-3613.patch does not apply (enforce with -f)<br /=
>=0A&gt; ERROR: Function failed: patch_do_patch<br />=0A&gt; ERROR: Logf=
ile of failure stored in:<br />=0A&gt; /home/lachlan/poky/build-atmel/tm=
p/work/cortexa5t2hf-vfp-poky-linux-gnueabi/curl/7.37.1-r0/temp/log.do_pa=
tch.31221<br />=0A&gt; ERROR: Task 1666<br />=0A&gt; (/home/lachlan/poky=
/meta/recipes-support/curl/curl_7.37.1.bb, do_patch)<br />=0A&gt; failed=
 with exit code '1'<br />=0A&gt; NOTE: Tasks Summary: Attempted 2914 tas=
ks of which 2912 didn't need to<br />=0A&gt; be rerun and 1 failed.<br /=
>=0A&gt; Waiting for 0 running tasks to finish:<br />=0A&gt;<br />=0A&gt=
; Summary: 1 task failed:<br />=0A&gt;    /home/lachlan/poky/meta/recipe=
s-support/curl/curl_7.37.1.bb, do_patch<br />=0A&gt; Summary: There were=
 2 ERROR messages shown, returning a non-zero exit code.<br />=0A&gt;<br=
 />=0A&gt; any thoughts as to what this probleb could be.<br />=0A&gt; _=
__________________________________________________________<br />=0A&gt;<=
br />=0A&gt; I also have problems with the ADT cross compiler installer=
 in V1.7<br />=0A&gt; compared with 1.6.1. where it wont install the roo=
tfs as follows:<br />=0A&gt;<br />=0A&gt; ##############################=
###########################################<br />=0A&gt; # Welcome to Yo=
cto Application Developement Tools (ADT) Installer<br />=0A&gt; #<br />=
=0A&gt; # Host Machine:                x86_64<br />=0A&gt; # OS info:  =
              3.13.0-39-generic<br />=0A&gt; # Yocto ADT version to be i=
nstalled:<br />=0A&gt; # supported target architectures:    x86 x86_64 a=
rm ppc mips<br />=0A&gt; # supported target root_fs images:    minimal m=
inimal-dev sato sato-dev<br />=0A&gt; sato-sdk lsb lsb-dev lsb-sdk<br />=
=0A&gt; ################################################################=
#########<br />=0A&gt;<br />=0A&gt; Systemwide installation. Installatio=
n will occur under /opt/poky/1.7<br />=0A&gt;<br />=0A&gt; #############=
###############################################################<br />=0A=
&gt; # Your system installation configurations from adt_installer.conf<b=
r />=0A&gt; ############################################################=
################<br />=0A&gt; # Cross toolchains:        arm<br />=0A&gt=
; # Install Qemu:            Y<br />=0A&gt; # Install NFS utilities:   =
 Y<br />=0A&gt;<br />=0A&gt; ###########################################=
###################################<br />=0A&gt; # Your rootfs image(s)=
 and target sysroot selections from adt_installer.conf<br />=0A&gt; ####=
########################################################################=
##<br />=0A&gt; # Target architecture:        arm<br />=0A&gt; # Target=
 machine:        qemuarm<br />=0A&gt; # Root_fs images:        minimal s=
ato-sdk<br />=0A&gt; # Target sysroot image:        sato-sdk<br />=0A&gt=
; # Target sysroot loc:        /home/lachlan/test-yocto/qemuarm<br />=0A=
&gt; ###################################################################=
#########<br />=0A&gt;<br />=0A&gt; Successfully installed selected nati=
ve ADT!<br />=0A&gt; Installing target sysroot for arch: arm, rootfs typ=
e: sato-sdk,<br />=0A&gt; location: /home/lachlan/test-yocto/qemuarm<br=
 />=0A&gt;<br />=0A&gt; Target sysroot location: /home/lachlan/test-yoct=
o/qemuarm, already<br />=0A&gt; exists! If you continue installation, th=
is folder will be re-created.<br />=0A&gt; Creating directory /home/lach=
lan/test-yocto/qemuarm...<br />=0A&gt; Extracting rootfs: core-image-sat=
o-sdk-qemuarm.tar.bz2, using pseudo...<br />=0A&gt; tar (child): ./downl=
oad_image/core-image-sato-sdk-qemuarm.tar.bz2:<br />=0A&gt; Cannot open:=
 No such file or directory<br />=0A&gt; tar (child): Error is not recove=
rable: exiting now<br />=0A&gt; tar: Child returned status 2<br />=0A&gt=
; tar: Error is not recoverable: exiting now<br />=0A&gt;<br />=0A&gt; I=
s there anyway to overcome this or is it best to go back to 1.6.1<br />=
=0A&gt;<br />=0A&gt; Thanks<br />=0A&gt; Lachlab<br />=0A&gt; ---- Messa=
ge sent via Adam Internet WebMail - http://www.adam.com.au/<br />=0A&gt;=
<br />=0A&gt;<br />=0A-- <br />=0A______________________________________=
_________<br />=0Ayocto mailing list<br />=0Ayocto@yoctoproject.org<br /=
>=0Ahttps://lists.yoctoproject.org/listinfo/yocto<br /></blockquote>----=
 Message sent via Adam Internet WebMail  - http://www.adam.com.au/</body=
></html>

--=_482a4756a37af34b3d2b07e02dc5c017--
