Subject: Re: ERRORS while building customized yocto image for Raspberrypi #yocto
To: yocto@lists.yoctoproject.org
From: paruchuribhavyasree@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (124.123.172.29)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 26 Jul 2020 23:27:38 -0700
Message-ID: <JUHu.1595831258049261736.qBAW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JvmEaXoQWtdXY5vMz6SA"

--JvmEaXoQWtdXY5vMz6SA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'am trying to build Yocto image for a customized code, where the source c=
ode is in my local files, so here is my recipe :

--------------------------------------------------------------------------=
--------------------------------------------------------
DESCRIPTION =3D "GSM-ASTERISK-SPI"
HOMEPAGE =3D ""
SECTION =3D "GSM build for Asterisk"
PR =3D "r1"
LICENSE =3D "GNUC"
LICENSE =3D "GPLv3"
LIC_FILES_CHKSUM =3D "file://license;md5=3Dd41d8cd98f00b204e9800998ecf8427=
e"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"

DEPENDS =3D "asterisk"
SRCREV =3D "0.1"
SRC_URI =3D "file://gsm-${PV}.tar.gz"
SRC_URI =3D "file://license"

S =3D "${WORKDIR}"

inherit autotools

#PARALLEL_MAKE =3D ""
--------------------------------------------------------------------------=
--------------------------------------------------------

Here I am facing few errors in do_compile as mentioned below.

--------------------------------------------------------------------------=
---------------------------------------------------------
WARNING: Layer example should set LAYERSERIES_COMPAT_example in its conf/l=
ayer.conf file to list the core layer names it is compatible with.
WARNING: Layer example should set LAYERSERIES_COMPAT_example in its conf/l=
ayer.conf file to list the core layer names it is compatible with.
Loading cache: 100% |#####################################################=
######################################################| Time: 0:00:00
Loaded 2422 entries from dependency cache.
Parsing recipes: 100% |###################################################=
######################################################| Time: 0:00:00
Parsing of 1631 .bb files complete (1630 cached, 1 parsed). 2422 targets, =
116 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "1.46.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "arm-poky-linux-gnueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "raspberrypi3"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "3.1.1"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm vfp corte=
xa7 neon vfpv4 thumb callconvention-hard"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "hard"
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "dunfell:febbe2944c=
0c4a04b85fa98fdc261186115954d8"
meta-rpi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0 =3D "master:39cf54c3cb429f2c6e0a000e79f6f06b39e2fa8b"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "master:81ee0b68fa32bcd60e1226f612ec63b1e672f263"
meta-example=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:8=
148d045406cbb2b66a6848ea93371808d206323"
meta-telephony=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:9e50dbdd1ee=
672494758d29482444cf40a36d1ba"

Initialising tasks: 100% |################################################=
######################################################| Time: 0:00:00
Sstate summary: Wanted 33 Found 28 Missed 5 Current 634 (84% match, 99% co=
mplete)
NOTE: Executing Tasks
ERROR: gsm-1.0-r1 do_compile: oe_runmake failed
ERROR: gsm-1.0-r1 do_compile: Execution of '/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gs=
m/1.0-r1/temp/run.do_compile.9167' failed with exit code 1:
make: *** No targets specified and no makefile found.=C2=A0 Stop.
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/bhavya/dialtronics/yocto/worksp=
ace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gsm/1.0-r=
1/temp/log.do_compile.9167
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'c=
ommon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| make: *** No targets specified and no makefile found.=C2=A0 Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gsm/1.0-r1/temp/run.do_=
compile.9167' failed with exit code 1:
| make: *** No targets specified and no makefile found.=C2=A0 Stop.
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/re=
cipes-gsm/gsm/gsm_1.0.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2064 tasks of which 2063 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/recipes-gsm/gsm=
/gsm_1.0.bb:do_compile
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.
--------------------------------------------------------------------------=
-----------------------------------------------------

Should I involve anything when I am choosing the source code from local fi=
le? need help in solving this error

Thank you in Advance
bhavya

--JvmEaXoQWtdXY5vMz6SA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">Hi,</div>
<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">&nbsp;</div>
<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">I'am trying to=
 build Yocto image for a customized code, where the source code is in my lo=
cal files, so here is my recipe :</div>
<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">&nbsp;</div>
<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">--------------=
---------------------------------------------------------------------------=
-----------------------------------------</div>
<div dir=3D"ltr" style=3D"color: #1d2228; font-size: 16px;">
<div>DESCRIPTION =3D "GSM-ASTERISK-SPI"<br />HOMEPAGE =3D ""<br />SECTION =
=
=3D "GSM build for Asterisk"<br />PR =3D "r1"<br />LICENSE =3D "GNUC"<br /=
>LICENSE =3D "GPLv3"<br />LIC_FILES_CHKSUM =3D "file://license;md5=3Dd41d8c=
d98f00b204e9800998ecf8427e"<br /><br />FILESEXTRAPATHS_prepend :=3D "${THIS=
DIR}/${PN}-${PV}:"<br /><br />DEPENDS =3D "asterisk"<br />SRCREV =3D "0.1"<=
br />SRC_URI =3D "file://gsm-${PV}.tar.gz"<br />SRC_URI =3D "file://license=
"<br /><br />S =3D "${WORKDIR}"<br /><br />inherit autotools<br /><br />#PA=
RALLEL_MAKE =3D ""</div>
<div>---------------------------------------------------------------------=
-------------------------------------------------------------</div>
<div>&nbsp;</div>
<div dir=3D"ltr">Here I am facing few errors in do_compile as mentioned be=
low.</div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr">---------------------------------------------------------=
--------------------------------------------------------------------------<=
/div>
<div dir=3D"ltr">WARNING: Layer example should set LAYERSERIES_COMPAT_exam=
ple in its conf/layer.conf file to list the core layer names it is compatib=
le with.<br />WARNING: Layer example should set LAYERSERIES_COMPAT_example =
in its conf/layer.conf file to list the core layer names it is compatible w=
ith.<br />Loading cache: 100% |############################################=
###############################################################| Time: 0:00=
:00<br />Loaded 2422 entries from dependency cache.<br />Parsing recipes: 1=
00% |######################################################################=
###################################| Time: 0:00:00<br />Parsing of 1631 .bb=
 files complete (1630 cached, 1 parsed). 2422 targets, 116 skipped, 0 maske=
d, 0 errors.<br />NOTE: Resolving any missing task queue dependencies<br />=
<br />Build Configuration:<br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.46.0"<br />BUILD_SYS&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br />NATI=
VELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "universal"<br />TARGET_SYS&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-li=
nux-gnueabi"<br />MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "raspberrypi3"<br />DISTRO&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "p=
oky"<br />DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "3.1.1"<br=
 />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm vfp cor=
texa7 neon vfpv4 thumb callconvention-hard"<br />TARGET_FPU&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "hard"<br />meta&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;<br />meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; &nbsp;<br />meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D "dunfell:febbe2944c0c4a04b85fa98fdc261186115954d8"<br />meta-rpi&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "mas=
ter:39cf54c3cb429f2c6e0a000e79f6f06b39e2fa8b"<br />meta-oe&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:8=
1ee0b68fa32bcd60e1226f612ec63b1e672f263"<br />meta-example&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:8148d045406cbb2b66a6848ea933718=
08d206323"<br />meta-telephony&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "mas=
ter:9e50dbdd1ee672494758d29482444cf40a36d1ba"<br /><br />Initialising tasks=
: 100% |###################################################################=
###################################| Time: 0:00:00<br />Sstate summary: Wan=
ted 33 Found 28 Missed 5 Current 634 (84% match, 99% complete)<br />NOTE: E=
xecuting Tasks<br />ERROR: gsm-1.0-r1 do_compile: oe_runmake failed<br />ER=
ROR: gsm-1.0-r1 do_compile: Execution of '/home/bhavya/dialtronics/yocto/wo=
rkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gsm/1=
.0-r1/temp/run.do_compile.9167' failed with exit code 1:<br />make: *** No =
targets specified and no makefile found.&nbsp; Stop.<br />WARNING: exit cod=
e 1 from a shell command.<br /><br />ERROR: Logfile of failure stored in: /=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/gsm/1.0-r1/temp/log.do_compile.9167<br />Log dat=
a follows:<br />| DEBUG: Executing python function autotools_aclocals<br />=
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'co=
mmon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']<br=
 />| DEBUG: Python function autotools_aclocals finished<br />| DEBUG: Execu=
ting shell function do_compile<br />| NOTE: make -j 8<br />| make: *** No t=
argets specified and no makefile found.&nbsp; Stop.<br />| ERROR: oe_runmak=
e failed<br />| WARNING: exit code 1 from a shell command.<br />| ERROR: Ex=
ecution of '/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cor=
texa7t2hf-neon-vfpv4-poky-linux-gnueabi/gsm/1.0-r1/temp/run.do_compile.9167=
' failed with exit code 1:<br />| make: *** No targets specified and no mak=
efile found.&nbsp; Stop.<br />| WARNING: exit code 1 from a shell command.<=
br />|<br />ERROR: Task (/home/bhavya/dialtronics/yocto/poky-dunfell/meta-t=
elephony/recipes-gsm/gsm/gsm_1.0.bb:do_compile) failed with exit code '1'<b=
r />NOTE: Tasks Summary: Attempted 2064 tasks of which 2063 didn't need to =
be rerun and 1 failed.<br /><br />Summary: 1 task failed:<br />&nbsp; /home=
/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/recipes-gsm/gsm/gsm_1=
.0.bb:do_compile<br />Summary: There were 2 WARNING messages shown.<br />Su=
mmary: There were 2 ERROR messages shown, returning a non-zero exit code.<b=
r />-----------------------------------------------------------------------=
--------------------------------------------------------</div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr">Should I involve anything when I am choosing the source c=
ode from local file? need help in solving this error</div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr">Thank you in Advance</div>
<div dir=3D"ltr">bhavya</div>
</div>

--JvmEaXoQWtdXY5vMz6SA--
