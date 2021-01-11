Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
 by mx.groups.io with SMTP id smtpd.web08.31066.1610355511112098389
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 00:58:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PaPjR2MZ;
 spf=pass (domain: gmail.com, ip: 209.85.161.53, mailfrom: daniela.marinela.bistrean@gmail.com)
Received: by mail-oo1-f53.google.com with SMTP id j8so3943272oon.3;
        Mon, 11 Jan 2021 00:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=16rtUS93sRA7HPbhrfeC0JkFzVs6qlJuHGmUDyAiY1I=;
        b=PaPjR2MZ72fVuRtVWMPEOtZkbk2sqwF7jRISYF2BPpV3KP7YBlN4Su/pFLdVtSWM30
         iwsZ+33S4WfTQI2pb8lN6wh3y7A0o6g3VT0/vMKHmLiUbJxh+t5b3HFjCxCNDIsG17V9
         NEbmSckIfQbfgocO2Ma7FrxzPe4+zDX9LUcbUlRcCSLqQ0ngEMISnfHNavyBcF4B2fX9
         wIq3hkjWnh0XXAn4eI0NUCDk9zMp7XEsTeXJlzXUAz9+rR75HFopKkb25D4qal54FBuG
         WKjlzNbXV6RTRo1tOrrAZDS+WSjiyihdrWpV/lrHxCpMVkkSdoleDniAgdxOKaoa3WL8
         Yxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=16rtUS93sRA7HPbhrfeC0JkFzVs6qlJuHGmUDyAiY1I=;
        b=A0d87/rh1WlZ/tgCL7lwBRxhctc3S8A0Ty0GDo4AKfJC/Js0Hbz25u/kii97mmHixn
         LTKNjssHFNpsQXbNsalyryDjAAjJ9hwvja6NevkWUINPUGPF/cqGWMisbUY+JNw3e/FK
         WOwtcNZUnz3DctkHOAJRuKxsQU7EBk8j6pfFnBt9xS+1vZI+H6q7RE+7whAD3GIDbmBL
         mHx/VAjtxFQCAvNcCFvtVq2nQ4j+zWeRT+t/WzbgO+9fuwLkqfDL/gTUfYnAOJ2KtwGr
         STDfJb63FjqcHXzjHp1e/ToIiFkBjNwrU3hqsmJy+IoTg52vAYGATezbAgvTglptDx3a
         DeeQ==
X-Gm-Message-State: AOAM5318SiRstSXfsscMpKBz+LDviXsdtgy8xw9sXdtQBxBbVvExM/KH
	qDBU+vcC4TrxBzff+xZ+XbKdv2S0pwOtqX4x+REyl4NTml3UiHMy
X-Google-Smtp-Source: ABdhPJxlQ//77BdsGZVn1Oavj8DtRfJkD+3WmLBR0KmSEKDs84SHsuhOU0vZAri9zXujqWbn746f5bUohFy2uE4zohc=
X-Received: by 2002:a4a:db78:: with SMTP id o24mr11345602ood.69.1610355510322;
 Mon, 11 Jan 2021 00:58:30 -0800 (PST)
MIME-Version: 1.0
From: daniela.marinela.bistrean@gmail.com
Date: Mon, 11 Jan 2021 10:58:20 +0200
Message-ID: <CAA7auRTsQqBhdOfD_aYNg2Xb6ZfMxHRiWTNxR7SwEQiZ-oVbxA@mail.gmail.com>
Subject: Python3-native illegal instruction on poky dunfell
To: yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000027a75505b89c1c63"

--00000000000027a75505b89c1c63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello community,

I am trying to build core-image-minimal using poky only, on the dunfell
branch. On certain machines the build fails unexpectedly with the following
error:
Build Configuration:
BB_VERSION           =3D "1.46.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "qemux86-64"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "3.1.4"
TUNE_FEATURES        =3D "m64 core2"
TARGET_FPU           =3D ""
meta
meta-poky
meta-yocto-bsp       =3D "dunfell:cd3abf42dae2310ecaa8a97b2c08378a9f6e1282"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
###############|
Time: 0:00:11
Sstate summary: Wanted 1025 Found 0 Missed 1025 Current 126 (0% match, 10%
complete)
NOTE: Executing Tasks
ERROR: python3-setuptools-native-45.2.0-r0 do_compile: 'python3 setup.py
build ' execution failed.
ERROR: python3-setuptools-native-45.2.0-r0 do_compile: Execution of
'/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setuptool=
s-native/45.2.0-r0/temp/run.do_compile.141'
failed with exit code 1:
Illegal instruction (core dumped)
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in:
/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setuptools=
-native/45.2.0-r0/temp/log.do_compile.141
Log data follows:
| DEBUG: Executing shell function do_compile
| Illegal instruction (core dumped)
| ERROR: 'python3 setup.py build ' execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setuptool=
s-native/45.2.0-r0/temp/run.do_compile.141'
failed with exit code 1:
| Illegal instruction (core dumped)
| WARNING: exit code 1 from a shell command.
|
ERROR: Task
(virtual:native:/home/builder/src/poky/meta/recipes-devtools/python/python3=
-setuptools_45.2.0.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 576 tasks of which 572 didn't need to be
rerun and 1 failed.

The do_compile task executes the following:
do_compile() {
    distutils3_do_compile
}

distutils3_do_compile() {
        cd
/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptoo=
ls-native/45.2.0-r0/setuptools-45.2.0
        NO_FETCH_BUILD=3D1 \

STAGING_INCDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux=
/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/include
\

STAGING_LIBDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux=
/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/lib
\

/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptoo=
ls-native/45.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3
/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptoo=
ls-native/45.2.0-r0/setuptools-45.2.0/setup.py
\
        build
--build-base=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/p=
ython3-setuptools-native/45.2.0-r0/build
 || \
        bbfatal_log "'python3 setup.py build ' execution failed."
}

On this particular machine the build fails even when it is tried out from
within a container. The configuration of this machine is:
Distributor ID: Ubuntu
Description: Ubuntu 18.04.5 LTS
Release: 18.04
Codename: bionic

Linux vm 5.4.0-54-generic #60~18.04.1-Ubuntu SMP Fri Nov 6 17:25:16 UTC
2020 x86_64 x86_64 x86_64 GNU/Linux

4 x Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz

The python3-native binary generated by Yocto works and I can run it on the
host. I have identified that setup.py file of python3-setuptools-native
recipe, part of do_compile fails with illegal instruction when trying to
import setuptools. On other machines the build has no issues. The machine
with issues is under a VPN and a proxy (company's machine).

Do you have any hint as why this might happen?

Thank you and looking forward to your feedback,
Daniela-M=C4=83rinela Bistrean

--00000000000027a75505b89c1c63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello community,<div><br></div><div>I am trying to build c=
ore-image-minimal using poky only, on the dunfell branch. On certain machin=
es the build fails unexpectedly with the following error:</div><div>Build C=
onfiguration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.=
46.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;univers=
al&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-=
poky-linux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;qemux86-64&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;3.1.4&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;m64 core2&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=
meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;dunfell:cd3abf42dae2310ecaa8a97b2c08378a9f6e128=
2&quot;<br><br>Initialising tasks: 100% |##################################=
###########################################################################=
#######################################################| Time: 0:00:11<br>S=
state summary: Wanted 1025 Found 0 Missed 1025 Current 126 (0% match, 10% c=
omplete)<br>NOTE: Executing Tasks<br>ERROR: python3-setuptools-native-45.2.=
0-r0 do_compile: &#39;python3 setup.py build &#39; execution failed.<br>ERR=
OR: python3-setuptools-native-45.2.0-r0 do_compile: Execution of &#39;/home=
/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setuptools-nati=
ve/45.2.0-r0/temp/run.do_compile.141&#39; failed with exit code 1:<br>Illeg=
al instruction (core dumped)<br>WARNING: exit code 1 from a shell command.<=
br><br>ERROR: Logfile of failure stored in: /home/builder/src/build_yocto-t=
est/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/temp/log.do_c=
ompile.141<br>Log data follows:<br>| DEBUG: Executing shell function do_com=
pile<br>| Illegal instruction (core dumped)<br>| ERROR: &#39;python3 setup.=
py build &#39; execution failed.<br>| WARNING: exit code 1 from a shell com=
mand.<br>| ERROR: Execution of &#39;/home/builder/src/build_yocto-test/tmp/=
work/x86_64-linux/python3-setuptools-native/45.2.0-r0/temp/run.do_compile.1=
41&#39; failed with exit code 1:<br>| Illegal instruction (core dumped)<br>=
| WARNING: exit code 1 from a shell command.<br>|<br>ERROR: Task (virtual:n=
ative:/home/builder/src/poky/meta/recipes-devtools/python/python3-setuptool=
s_45.2.0.bb:do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Su=
mmary: Attempted 576 tasks of which 572 didn&#39;t need to be rerun and 1 f=
ailed.<br><br>The do_compile task executes the following:</div><div>do_comp=
ile() {<br>=C2=A0 =C2=A0 distutils3_do_compile<br>}<br><br>distutils3_do_co=
mpile() {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cd /home/builder/src/build_sw.sys.=
icp21/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/setuptools-=
45.2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 NO_FETCH_BUILD=3D1 \<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 STAGING_INCDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/wo=
rk/x86_64-linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/u=
sr/include \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 STAGING_LIBDIR=3D/home/builder/=
src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-native/45.2=
.0-r0/recipe-sysroot-native/usr/lib \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/=
builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-nat=
ive/45.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3 /home/bu=
ilder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-nativ=
e/45.2.0-r0/setuptools-45.2.0/setup.py \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bui=
ld --build-base=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linu=
x/python3-setuptools-native/45.2.0-r0/build =C2=A0|| \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bbfatal_log &quot;&#39;python3 setup.py build &#39; execution fa=
iled.&quot;<br>}<br><br><div>On this particular machine the build fails eve=
n when it is tried out from within a container. The configuration of this m=
achine is:</div><div>Distributor ID: Ubuntu<br>Description: Ubuntu 18.04.5 =
LTS<br>Release: 18.04<br>Codename: bionic<br></div><div><br></div><div>Linu=
x vm 5.4.0-54-generic #60~18.04.1-Ubuntu SMP Fri Nov 6 17:25:16 UTC 2020 x8=
6_64 x86_64 x86_64 GNU/Linux<br></div><div><br></div><div>4 x Intel(R) Core=
(TM) i5-8350U CPU @ 1.70GHz</div><div><br></div><div>The python3-native bin=
ary generated by Yocto works and I can run it on the host. I have identifie=
d that setup.py file of python3-setuptools-native recipe, part of do_compil=
e fails with illegal instruction when trying to import setuptools. On other=
 machines the build has no issues. The machine with issues is under a VPN a=
nd a proxy (company&#39;s machine).<br></div><div><br></div><div>Do you hav=
e any hint as why this might happen?</div><div><br></div><div>Thank you and=
 looking forward to your feedback,</div><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-size:12.8px"><span styl=
e=3D"font-size:12.8px">Daniela-M=C4=83rinela Bistrean</span></div></div></d=
iv></div></div></div></div>

--00000000000027a75505b89c1c63--
