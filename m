Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.7094.1578073183604173366
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 09:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CF7yAyKT;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: jschuler16@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id a5so9053363wmb.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2020 09:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8DUTK1D50Epk5v+d629Q2gG3WqKjo+U7IlW7RhFipUk=;
        b=CF7yAyKTtYyc69JO23Se1Dkb9cXCFRdHh8Ryo0kU09bh036B/WTYtvd8s0VVYUCI//
         kJsINN/qPj1WjDfp8UTi8Up1D9kvJApz0qkC8fp8cgSompOP3ckFAfbtL4ppVOjTR5JV
         5lo5s+RJEExXK8ztM//zP3QvCIZy7sd0vb4L/OHjVg4vvTXULikDnIlzDSCnPQt0uc2W
         3q+fjvnGzNi+wBTFWfzAmqm20Cghixmbh1hPtThZg39VeE0d8i71LrfxfEWWcf3nbdTp
         XvzOiBzn6AEI4pLlznkYt6mDqyp6Fjk57xbuXnqfsImlLjGhYMUHibwneurC3i9NKtOa
         FuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8DUTK1D50Epk5v+d629Q2gG3WqKjo+U7IlW7RhFipUk=;
        b=QhEHLhTPRP05wSXzXGxLmpeOUUmncpyaX/nYkjzr2FuzvX502ry+CTBlJ4+SRF6u2E
         yWbAyqskMxd7+eX/VPMdpMcPUQ18DrY08qprLHS/Svd3R/3DPI7eiQ8Qcl5w4rH3FGYn
         s2U67cqBDj9NntTYlO4BsIEhXJVj9eaTFAvw9ZKjnm+m0JvPD/Ae6LFGPbgHx9YeeaGu
         GDIx0wvEiNM82ffKUXSsHMSxdq86mRq5N1lTcFdod8UgzAVNIrRG5GX6lDyH73ZRJgYC
         oF2fpz1S2FO4MQnFQR8wtbeL3/vAfICbzl0g+osa+PlAXEr0fEm/uEJ3mfRgI76k816z
         ov4w==
X-Gm-Message-State: APjAAAVBOg8s+s8UBI/vI1ZZFbtVIU5lLBx5Do/NKMO9MLTPsFjPq0Br
	m5wzGJv8yg7dHmUHp1dl306L9ePx+aSrh0WuRDgUpWgW
X-Google-Smtp-Source: APXvYqz0T5irAA6/CxQ3fRXdZ2ZN7w4Dd8mP+K3ixUBOkFvctq+RH1vwsO6P4gyKXV8qtdfXe66qjrB6ED/A9J9BC4I=
X-Received: by 2002:a1c:4144:: with SMTP id o65mr21311876wma.81.1578073181703;
 Fri, 03 Jan 2020 09:39:41 -0800 (PST)
MIME-Version: 1.0
From: "Jeff Schuler" <jschuler16@gmail.com>
Date: Fri, 3 Jan 2020 09:39:30 -0800
Message-ID: <CAB_3WH5Yg6iQ2-t9j7-2xHJBXyYBHeVJhY=qUTaWURFbi0uSng@mail.gmail.com>
Subject: First time reaching out, having issue building standalone out-of-tree kernel module - help?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006cd303059b3fcbab"

--0000000000006cd303059b3fcbab
Content-Type: text/plain; charset="UTF-8"

Hello!

I was not sure who or what to reach out to with this question, so I'm
hoping this lands in the hands of the correct person. I've been using Yocto
for many years for our ARM embedded system builds, and have recently
upgraded our kernel version from 4.18 to 5.1 (details below). I am working
on patching now, and getting our out-of-tree modules ported to build with
the 5.1 kernel source. I'm able to build the kernel using bitbake
virtual/kernel, and boot the kernel + dtb no problem, however, my kernel's
out-of-tree modules are having trouble building for reasons that I cannot
seem to figure out. I have a very simple kernel module, called a10id-kmod
that I'm trying to build. Forgive me if this is not the correct information
to send over, this is my first time seeking support and am not sure what to
send, happy to send any additional logs needed. The bitbake output shows
the following:

bitbake -c compile a10id-kmod
> Loading cache: 100%
> |#############################################################################################################################################################################|
> ETA:  00:00:00
> Loaded 2352 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "sensor-chevy"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0.3"
> TUNE_FEATURES     = "arm armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "HEAD:e08994ce953ff5ab49b260e7763a40bfad4285ca"
> meta-oe
> meta-python
> meta-filesystems
> meta-networking   = "HEAD:2ea8d7f54a061e902657c4f8ea1f7f7c25c6c4e1"
> meta-custom     =
> "schuler/a200-kernel-5.1:71b47d97e2412192ba5027090513b457a8c0e835"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (log file is located at
> /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.do_compile.12208)
> ERROR: Logfile of failure stored in:
> /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.do_compile.12208
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 27 -e MAKEFLAGS=
> KERNEL_SRC=/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
> KERNEL_PATH=/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
> KERNEL_VERSION=5.1.0 CC=arm-poky-linux-gnueabi-gcc   -fuse-ld=bfd
> LD=arm-poky-linux-gnueabi-ld.bfd   AR=arm-poky-linux-gnueabi-ar
>  O=/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts
> | make -C
> /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
> M=/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/soc/platforms/sensor-common/host/a10_id
>  modules
> | make[1]: Entering directory
> `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source'
> | make[2]: Entering directory
> `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'
> |   CC [M]
>  /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/soc/platforms/sensor-common/host/a10_id/a10-id.o
>
>
>
>
> *|   Building modules, stage 2.|   MODPOST 1 modules| /bin/sh: 1:
> scripts/mod/modpost: not found| make[3]: *** [__modpost] Error 127|
> make[2]: *** [modules] Error 2*
> | make[2]: Leaving directory
> `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'
> | make[1]: *** [sub-make] Error 2
> | make[1]: Leaving directory
> `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at
> /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.do_compile.12208)
> ERROR: Task 5
> (/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod/
> a10id-kmod_0.1.1.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 261 tasks of which 252 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod/
> a10id-kmod_0.1.1.bb, do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>

I'm using the jethro poky branch,
commit e08994ce953ff5ab49b260e7763a40bfad4285ca and meta-openembedded
branch jethro as well, commit 2ea8d7f54a061e902657c4f8ea1f7f7c25c6c4e1

When building with the 4.18 kernel, this .ko module builds just fine...and
doesn't have this scripts/mod/modpost not found issue.

Here's some more info if it helps. These are the relevant kernel module
recipe files:

jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod$
> cat a10id-kmod.inc
> SUMMARY = "A Linux kernel module for A10ID reading"
> HOMEPAGE = "https://google.com"
> LICENSE = "MIT & GPLv2"
>
> inherit module
> inherit no-mirror
>
> SRC_URI = "git://git@github.com/MyOrganization/bn-bsp.git;protocol=ssh"
>
> S = "${WORKDIR}/git/soc/platforms/sensor-common/host/a10_id"
> LIC_FILES_CHKSUM =
> "file://${S}/a10-id.c;beginline=1;endline=21;md5=75828e2af878241ad612f8a8ad1310f9"
>
> COMPATIBLE_MACHINE = "(sensor-adi|sensor-chevy)"
> jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod$
> cat a10id-kmod_0.1.1.bb
> require a10id-kmod.inc
> SRCREV = "58076f4e91376df74da7509cc397b71b084f77a4"
>

And the kernel recipe:

jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/linux$
> cat linux-socfpga_5.1.bb
> require recipes-kernel/linux/linux-socfpga.inc
>
> ### Branch socfpga-5.1 GITSHA CHECKSUM
> LIC_FILES_CHKSUM =
> "file://${S}/COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"
>
> ### Tied to socfpga-5.1 at this  GITSHA:
> SOCFPGA_KERNEL_BRANCH ?= "socfpga-${PV}"
> SRCREV ?= "5c21be71d13b64bc4cce9b1bd8411d41d15b1a6a"
>
> SRC_URI = "\
>     git://
> github.com/altera-opensource/linux-socfpga.git;protocol=https;branch=${SOCFPGA_KERNEL_BRANCH}
> <http://github.com/altera-opensource/linux-socfpga.git;protocol=https;branch=$%7BSOCFPGA_KERNEL_BRANCH%7D>
>  \
>     file://${MACHINE}/defconfig \
>     file://${MACHINE}/${DTS_FILE} \
> "
>

Can anyone advise as to what might be the issue? Just being pointed in the
correct direction would be a major help to me!

HAPPY NEW YEAR :-)

Cheers,
J

--0000000000006cd303059b3fcbab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>I was not sure who or what to re=
ach out to with this question, so I&#39;m hoping this lands in the hands of=
 the correct person. I&#39;ve been using Yocto for many years for our ARM e=
mbedded system builds, and have recently upgraded our kernel version from 4=
.18 to 5.1 (details below). I am working on patching now, and getting our o=
ut-of-tree modules ported to build with the 5.1 kernel source. I&#39;m able=
 to build the kernel using bitbake virtual/kernel, and boot the kernel=C2=
=A0+ dtb=C2=A0no problem, however, my kernel&#39;s out-of-tree modules are =
having trouble building for reasons that I cannot seem to figure out. I hav=
e a very simple kernel module, called a10id-kmod that I&#39;m trying to bui=
ld. Forgive me if this is not the correct information to send over, this is=
 my first time seeking support and am not sure what to send, happy to send =
any additional logs needed. The bitbake output shows the following:=C2=A0</=
div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">bitbak=
e -c compile a10id-kmod<br>Loading cache: 100% |###########################=
###########################################################################=
#######################################################################| ET=
A: =C2=A000:00:00<br>Loaded 2352 entries from dependency cache.<br>NOTE: Re=
solving any missing task queue dependencies<br><br>Build Configuration:<br>=
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.28.0&quot;<br>BUILD_SYS =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=
 =C2=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;sensor-chevy&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0=3D=
 &quot;2.0.3&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp =
neon&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot=
;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;HEAD:e=
08994ce953ff5ab49b260e7763a40bfad4285ca&quot;<br>meta-oe =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>meta-python =C2=A0 =C2=A0 =C2=A0<br>meta-filesystems =
=C2=A0<br>meta-networking =C2=A0 =3D &quot;HEAD:2ea8d7f54a061e902657c4f8ea1=
f7f7c25c6c4e1&quot;<br>meta-custom =C2=A0 =C2=A0 =3D &quot;schuler/a200-ker=
nel-5.1:71b47d97e2412192ba5027090513b457a8c0e835&quot;<br><br>NOTE: Prepari=
ng RunQueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue T=
asks<br>ERROR: oe_runmake failed<br>ERROR: Function failed: do_compile (log=
 file is located at /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/=
builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1=
.1-r0/temp/log.do_compile.12208)<br>ERROR: Logfile of failure stored in: /h=
ome/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tm=
p/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.do_comp=
ile.12208<br>Log data follows:<br>| DEBUG: Executing shell function do_comp=
ile<br>| NOTE: make -j 27 -e MAKEFLAGS=3D KERNEL_SRC=3D/home/jschuler/bn-bs=
p/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sens=
or-chevy/kernel-source KERNEL_PATH=3D/home/jschuler/bn-bsp/host/build/yocto=
/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-so=
urce KERNEL_VERSION=3D5.1.0 CC=3Darm-poky-linux-gnueabi-gcc =C2=A0 -fuse-ld=
=3Dbfd LD=3Darm-poky-linux-gnueabi-ld.bfd =C2=A0 AR=3Darm-poky-linux-gnueab=
i-ar =C2=A0O=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/build=
s/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts<br>| mak=
e -C /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-c=
hevy/tmp/work-shared/sensor-chevy/kernel-source M=3D/home/jschuler/bn-bsp/h=
ost/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-p=
oky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/soc/platforms/sensor-common/host/=
a10_id =C2=A0modules<br>| make[1]: Entering directory `/home/jschuler/bn-bs=
p/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sens=
or-chevy/kernel-source&#39;<br>| make[2]: Entering directory `/home/jschule=
r/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shar=
ed/sensor-chevy/kernel-build-artifacts&#39;<br>| =C2=A0 CC [M] =C2=A0/home/=
jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chevy/tmp/wo=
rk/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/soc/platforms/se=
nsor-common/host/a10_id/a10-id.o<br><b>| =C2=A0 Building modules, stage 2.<=
br>| =C2=A0 MODPOST 1 modules<br>| /bin/sh: 1: scripts/mod/modpost: not fou=
nd<br>| make[3]: *** [__modpost] Error 127<br>| make[2]: *** [modules] Erro=
r 2</b><br>| make[2]: Leaving directory `/home/jschuler/bn-bsp/host/build/y=
octo/poky-jethro-2.0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kerne=
l-build-artifacts&#39;<br>| make[1]: *** [sub-make] Error 2<br>| make[1]: L=
eaving directory `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/bu=
ilds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source&#39;<br>| make=
: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| ERROR: Function fail=
ed: do_compile (log file is located at /home/jschuler/bn-bsp/host/build/yoc=
to/poky-jethro-2.0/builds/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnu=
eabi/a10id-kmod/0.1.1-r0/temp/log.do_compile.12208)<br>ERROR: Task 5 (/home=
/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kerne=
l/a10id-kmod/<a href=3D"http://a10id-kmod_0.1.1.bb/" target=3D"_blank">a10i=
d-kmod_0.1.1.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE:=
 Tasks Summary: Attempted 261 tasks of which 252 didn&#39;t need to be reru=
n and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/jschuler/bn-=
bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod/=
<a href=3D"http://a10id-kmod_0.1.1.bb/" target=3D"_blank">a10id-kmod_0.1.1.=
bb</a>, do_compile<br>Summary: There were 2 ERROR messages shown, returning=
 a non-zero exit code.<br></blockquote><div><br></div><div>I&#39;m using th=
e jethro poky branch, commit=C2=A0e08994ce953ff5ab49b260e7763a40bfad4285ca =
and meta-openembedded branch jethro as well, commit=C2=A02ea8d7f54a061e9026=
57c4f8ea1f7f7c25c6c4e1</div><div><br></div><div>When building with the 4.18=
 kernel, this .ko module builds just fine...and doesn&#39;t have this scrip=
ts/mod/modpost not found issue.</div><div><br></div><div>Here&#39;s some mo=
re info if it helps. These are the relevant kernel module recipe files:</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">jschuler=
@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/=
a10id-kmod$ cat a10id-kmod.inc<br>SUMMARY =3D &quot;A Linux kernel module f=
or A10ID reading&quot;<br>HOMEPAGE =3D &quot;<a href=3D"https://google.com/=
" target=3D"_blank">https://google.com</a>&quot;<br>LICENSE =3D &quot;MIT &=
amp; GPLv2&quot;<br><br>inherit module<br>inherit no-mirror<br><br>SRC_URI =
=3D &quot;git://<a href=3D"http://git@github.com/MyOrganization/bn-bsp.git;=
protocol=3Dssh" target=3D"_blank">git@github.com/MyOrganization/bn-bsp.git;=
protocol=3Dssh</a>&quot;<br><br>S =3D &quot;${WORKDIR}/git/soc/platforms/se=
nsor-common/host/a10_id&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://${S}/a10=
-id.c;beginline=3D1;endline=3D21;md5=3D75828e2af878241ad612f8a8ad1310f9&quo=
t;<br><br>COMPATIBLE_MACHINE =3D &quot;(sensor-adi|sensor-chevy)&quot;<br>j=
schuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-=
kernel/a10id-kmod$ cat=C2=A0<a href=3D"http://a10id-kmod_0.1.1.bb/" target=
=3D"_blank">a10id-kmod_0.1.1.bb</a><br>require a10id-kmod.inc<br>SRCREV =3D=
 &quot;58076f4e91376df74da7509cc397b71b084f77a4&quot;<br></blockquote><div>=
<br></div><div>And the kernel recipe:</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">jschuler@kuro:~/bn-bsp/host/build/yocto/po=
ky-jethro-2.0/meta-custom/recipes-kernel/linux$ cat=C2=A0<a href=3D"http://=
linux-socfpga_5.1.bb/" target=3D"_blank">linux-socfpga_5.1.bb</a><br>requir=
e recipes-kernel/linux/linux-socfpga.inc<br><br>### Branch socfpga-5.1 GITS=
HA CHECKSUM<br>LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=3Dbbea815=
ee2795b2f4230826c0c6b8814&quot;<br><br>### Tied to socfpga-5.1 at this =C2=
=A0GITSHA:<br>SOCFPGA_KERNEL_BRANCH ?=3D &quot;socfpga-${PV}&quot;<br>SRCRE=
V ?=3D &quot;5c21be71d13b64bc4cce9b1bd8411d41d15b1a6a&quot;<br><br>SRC_URI =
=3D &quot;\<br>=C2=A0 =C2=A0 git://<a href=3D"http://github.com/altera-open=
source/linux-socfpga.git;protocol=3Dhttps;branch=3D$%7BSOCFPGA_KERNEL_BRANC=
H%7D" target=3D"_blank">github.com/altera-opensource/linux-socfpga.git;prot=
ocol=3Dhttps;branch=3D${SOCFPGA_KERNEL_BRANCH}</a>=C2=A0\<br>=C2=A0 =C2=A0 =
file://${MACHINE}/defconfig \<br>=C2=A0 =C2=A0 file://${MACHINE}/${DTS_FILE=
} \<br>&quot;<br></blockquote><div><br></div><div>Can anyone advise as to w=
hat might be the issue? Just being pointed in the correct direction would b=
e a major help to me!</div><div><br></div><div>HAPPY NEW YEAR :-)</div><div=
><br></div><div>Cheers,</div><div>J</div></div>

--0000000000006cd303059b3fcbab--
