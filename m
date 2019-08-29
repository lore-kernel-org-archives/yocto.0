Return-Path: <simonkbaby@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A81E9E00DEF; Wed, 28 Aug 2019 23:14:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (simonkbaby[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C599CE00D38
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 23:14:33 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id j5so4575205ioj.8
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 23:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KJnFU92u26X8z77ROCVlWRRHXO90wpk30PlDvQsLUxQ=;
	b=ZN+bOpr4vZ1OkszV48lIILf9yve4Z6IPsRjXkTNuXP08HZTh+RMopQbYx3RyhlJIX7
	0nIpEF2/hPYbg5Xpnenq6d+c9G8Bgs/3FiyQYb0MOMkSYi7GE9RwIfMFEw23T53TmnyD
	3FtihiSShAREA1w6yBHYoJ9tRHcJuqDHb0NZeYJkH2IvjVMppU6E1OqOqDvpptv7L6GA
	UOrfqgoLh9jxNqIukwKusMHoM3t5O7Su29Ytko2fNnaSFcBnCyTwJLjPS1qAzwM1luzC
	z3GL1w8/W5WjvAFNMPEGIfbUIwn1owwLp4MaghJrDz3e7ChFdv8pobSHPoew3skFz8j7
	3pvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KJnFU92u26X8z77ROCVlWRRHXO90wpk30PlDvQsLUxQ=;
	b=uSJKoKxHFZghpj2k49b6U+tyaSk4PtMkYvLsVJFzqXXQy1AUJMk8jLljSDyGCrt6wk
	0k/slV1h4n2HdlUyBtBb6pMZGHO2/fOC+QtWUDKot/EzK1W2R5d28u9KDaUi6MXXhLU6
	ZCkx736nnFcJY2JawT9F3LIxiUCn3Mczh7pfEB33/XVij8b/bmihT0r5ODXngjKmANcn
	uPPUakFKG1AW+wM4YZNFW7DdiOMHhKrp5zn47CLDH6QCelCNgwu1/KwmSDoDSuwqS7/l
	UeFg4n/mp6+w2l0VPW4YbPFkviMEoXI7L22gpp3Vz2jpxZeuZziC6MrIwLLVpZ7AWuj3
	n06Q==
X-Gm-Message-State: APjAAAWRLNvR7Z29g3tk9ymFRaCJtbsPX8Oxe1VHIKxZxyHtn/o0D8A+
	VBnFQjEp3cDR42y9A1ctGiAw8Wmr396MUqDWbFwroM9s
X-Google-Smtp-Source: APXvYqxrS9C0H9Qb3zLEDU092N9QcizcuAJFiguDrSfJByBRPZHvqAeQLsPjklmjRYVONRLPCm5CqqRtgikzlRRQ0Ak=
X-Received: by 2002:a6b:4a11:: with SMTP id w17mr4918340iob.21.1567059272800; 
	Wed, 28 Aug 2019 23:14:32 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Wed, 28 Aug 2019 23:14:22 -0700
Message-ID: <CAEFUPH1VL9C_Dd4gcHrKnPU=i_rHcjVJbUbDAa8iR3BvuSuztw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Query on error log "no providers found in RDEPENDS"
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
X-List-Received-Date: Thu, 29 Aug 2019 06:14:34 -0000
Content-Type: multipart/alternative; boundary="0000000000004c1e0d05913b6b7e"

--0000000000004c1e0d05913b6b7e
Content-Type: text/plain; charset="UTF-8"

Hi,

I am new to this mail group. I have the below error while creating a
package, Can someone help to fix this issue.

@ubuntu:~/EVO_BUILD/741058_MGMT_Core_OPS/build_mpxls1046$ bitbake
datatransfer-mgr
Loading cache: 100%
|########################################################################################################################################################################|
Time: 0:00:01
Loaded 3343 entries from dependency cache.
Parsing recipes: 100%
|######################################################################################################################################################################|
Time: 0:00:04
Parsing of 2450 .bb files complete (2446 cached, 4 parsed). 3345 targets,
177 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "i686-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "aarch64-fsl-linux"
MACHINE              = "mpxls1046"
DISTRO               = "fsl-qoriq"
DISTRO_VERSION       = "2.4.4"
TUNE_FEATURES        = "aarch64"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp
meta-oe
meta-multimedia
meta-python
meta-networking
meta-gnome
meta-filesystems
meta-webserver
meta-perl
meta-virtualization
meta-security
meta-freescale
meta-freescale-distro
meta-qoriq-demos
meta-bsp-teledyne
meta-laird-cp
meta-microsys-layerscape =
"develop:25b4f49569fcf4417572f2a4081f21221a8d802b"

Initialising tasks: 100%
|###################################################################################################################################################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA Issue:
/usr/bin/DataTransferMgr contained in package datatransfer-mgr requires
libzipcpp.so()(64bit), but no providers found in RDEPENDS_datatransfer-mgr?
[file-rdeps]
ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: datatransfer-mgr-1.0-r1 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/build_mpxls1046/tmp/work/aarch64-fsl-linux/datatransfer-mgr/1.0-r1/temp/log.do_package_qa.22226
ERROR: Task
(/home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/sources/meta-bsp-teledyne/recipes-wireless/datatransfer-mgr/datatransfer-mgr_1.0.bb:do_package_qa)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 591 tasks of which 577 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/sources/meta-bsp-teledyne/recipes-wireless/datatransfer-mgr/datatransfer-mgr_1.0.bb:
do_package_qa
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

*my .bb file for zipcpp is below:*

#
# This file is the zipcpp recipe.
#

DEPENDS = "zeromq cppzmq"
SUMMARY = "ZeroMQ based IPC C++ library"
SECTION = "base"
LICENSE = "CLOSED"

SRC_URI = "git://git@elsvsapp02/TDY/ZIPCpp.git;protocol=ssh;branch=develop"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

LIB_ARTIFACT = "libzipcpp.so"
LIB_VERSION = "1"

do_install() {
    install -d ${D}${libdir}
    install -m 0755 ${S}/bin/${LIB_ARTIFACT}.${LIB_VERSION}
${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
    ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
${D}${libdir}/${LIB_ARTIFACT}
    install -d ${D}${includedir}
    install -m 0644 ${S}/include/zipc.h ${D}${includedir}
    install -m 0644 ${S}/include/logger.h ${D}${includedir}
    install -d ${D}${includedir}/fmt
    install -m 0644 ${S}/include/fmt/* ${D}${includedir}/fmt
}

#do_install_append() {
#    rm -r ${D}/usr/share
#}

#PACKAGES = "${PN}-dev"
FILES_${PN} += "${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}"
FILES_${PN} += "${libdir}/${LIB_ARTIFACT}"
#RDEPENDS_${PN} = "${LIB_ARTIFACT}.${LIB_VERSION}"
#RDEPENDS_${PN} = "${LIB_ARTIFACT}"


*and the .bb file for datatransfer-mgr is below.*

# Copyright (C) 2018 Teledyne Controls

DEPENDS = "zeromq cppzmq zipcpp protobuf json-c jsoncpp rapidjson"
DESCRIPTION = "Wireless Data Transfer Manager for Evo"
SECTION = "base"
PRIORITY = "optional"
LICENSE = "CLOSED"
PR = "r1"

SRC_URI = "git://git@elsvsapp02/GroundLink-Evo/DataTransferManager.git;protocol=ssh
"
SRC_URI = "file:///home/tdy/DataTransferManager/DataTransferManager.tgz"
SRCREV = "${AUTOREV}"

CDT_CONFIGURATION ?= "Release"
BUILD_ARTIFACT = "DataTransferMgr"

S = "${WORKDIR}/git/DataTransferManager-1.0"
S = "${WORKDIR}/DataTransferManager-1.0"

export STAGING_INCDIR
export STAGING_LIBDIR
export PV
export PR

#EXTRA_OEMAKE = "'CXX=${CXX}' 'RANLIB=${RANLIB}' 'AR=${AR}' \
#               'CXXFLAGS=${CXXFLAGS}' 'BUILDDIR=${S}' \
#               'STAGING_LIBDIR=${STAGING_LIBDIR}'"

EXTRA_OEMAKE += "'INCLUDE_DIR=${D}${includedir}' 'LIB_DIR=${D}${libdir}'"

do_compile() {
        cd Release
        oe_runmake
}

do_install() {
        mkdir -p ${D}${bindir}
        install -m 755 ${S}/Release/${BUILD_ARTIFACT} ${D}${bindir}
}

FILES_${PN} = "${bindir}/${BUILD_ARTIFACT}"
~



Rgds
Simon

--0000000000004c1e0d05913b6b7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>I am new to this mail group. I have the below er=
ror while creating a package, Can someone help to fix this issue.</div><div=
><br></div>@ubuntu:~/EVO_BUILD/741058_MGMT_Core_OPS/build_mpxls1046$ bitbak=
e datatransfer-mgr<br>Loading cache: 100% |################################=
###########################################################################=
#############################################################| Time: 0:00:0=
1<br>Loaded 3343 entries from dependency cache.<br>Parsing recipes: 100% |#=
###########################################################################=
###########################################################################=
###############| Time: 0:00:04<br>Parsing of 2450 .bb files complete (2446 =
cached, 4 parsed). 3345 targets, 177 skipped, 0 masked, 0 errors.<br>NOTE: =
Resolving any missing task queue dependencies<br><br>Build Configuration:<b=
r>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.36.0&quot;<br>B=
UILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i686-linux&quot=
;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&quot;<br>TARGE=
T_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64-fsl-linux&quot;<=
br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;mpxls1=
046&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;fsl-qoriq&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.4.4&=
quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64&quot;<b=
r>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>meta =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>meta-poky =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=
=A0 <br>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-mu=
ltimedia =C2=A0 =C2=A0 =C2=A0<br>meta-python =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<br>meta-networking =C2=A0 =C2=A0 =C2=A0<br>meta-gnome =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <br>meta-filesystems =C2=A0 =C2=A0 <br>meta-webserver =
=C2=A0 =C2=A0 =C2=A0 <br>meta-perl =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>meta-virtualization =C2=A0<br>meta-security =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>meta-freescale =C2=A0 =C2=A0 =C2=A0 <br>meta-freescale-distro <br>me=
ta-qoriq-demos =C2=A0 =C2=A0 <br>meta-bsp-teledyne =C2=A0 =C2=A0<br>meta-la=
ird-cp =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-microsys-layerscape =3D &quot;de=
velop:25b4f49569fcf4417572f2a4081f21221a8d802b&quot;<br><br>Initialising ta=
sks: 100% |################################################################=
###########################################################################=
########################| Time: 0:00:01<br>NOTE: Executing SetScene Tasks<b=
r>NOTE: Executing RunQueue Tasks<br><span style=3D"background-color:rgb(0,2=
55,0)">ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA Issue: /usr/bin/Dat=
aTransferMgr contained in package datatransfer-mgr requires libzipcpp.so()(=
64bit), but no providers found in RDEPENDS_datatransfer-mgr? [file-rdeps]<b=
r>ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA run found fatal errors. =
Please consider fixing them.</span><br>ERROR: datatransfer-mgr-1.0-r1 do_pa=
ckage_qa: Function failed: do_package_qa<br>ERROR: Logfile of failure store=
d in: /home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/build_mpxls1046/tmp/work/aar=
ch64-fsl-linux/datatransfer-mgr/1.0-r1/temp/log.do_package_qa.22226<br>ERRO=
R: Task (/home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/sources/meta-bsp-teledyne=
/recipes-wireless/datatransfer-mgr/datatransfer-mgr_1.0.bb:do_package_qa) f=
ailed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 591 task=
s of which 577 didn&#39;t need to be rerun and 1 failed.<br><br>Summary: 1 =
task failed:<br>=C2=A0 /home/tdy/EVO_BUILD/741058_MGMT_Core_OPS/sources/met=
a-bsp-teledyne/recipes-wireless/datatransfer-mgr/datatransfer-mgr_1.0.bb:do=
_package_qa<br>Summary: There were 3 ERROR messages shown, returning a non-=
zero exit code.<div><br></div><div><b>my .bb file for zipcpp is below:</b><=
/div><div><br></div><div>#<br># This file is the zipcpp recipe.<br>#<br><br=
>DEPENDS =3D &quot;zeromq cppzmq&quot;<br>SUMMARY =3D &quot;ZeroMQ based IP=
C C++ library&quot;<br>SECTION =3D &quot;base&quot;<br>LICENSE =3D &quot;CL=
OSED&quot;<br><br>SRC_URI =3D &quot;git://git@elsvsapp02/TDY/ZIPCpp.git;pro=
tocol=3Dssh;branch=3Ddevelop&quot;<br>SRCREV =3D &quot;${AUTOREV}&quot;<br>=
<br>S =3D &quot;${WORKDIR}/git&quot;<br><br>LIB_ARTIFACT =3D &quot;libzipcp=
p.so&quot;<br>LIB_VERSION =3D &quot;1&quot;<br><br>do_install() { <br>=C2=
=A0 =C2=A0 install -d ${D}${libdir}<br>=C2=A0 =C2=A0 install -m 0755 ${S}/b=
in/${LIB_ARTIFACT}.${LIB_VERSION} ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSI=
ON}<br>=C2=A0 =C2=A0 ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION} ${=
D}${libdir}/${LIB_ARTIFACT}<br>=C2=A0 =C2=A0 install -d ${D}${includedir}<b=
r>=C2=A0 =C2=A0 install -m 0644 ${S}/include/zipc.h ${D}${includedir}<br>=
=C2=A0 =C2=A0 install -m 0644 ${S}/include/logger.h ${D}${includedir}<br>=
=C2=A0 =C2=A0 install -d ${D}${includedir}/fmt<br>=C2=A0 =C2=A0 install -m =
0644 ${S}/include/fmt/* ${D}${includedir}/fmt <br>}<br><br>#do_install_appe=
nd() {<br># =C2=A0 =C2=A0rm -r ${D}/usr/share<br>#}<br><br>#PACKAGES =3D &q=
uot;${PN}-dev&quot;<br>FILES_${PN} +=3D &quot;${libdir}/${LIB_ARTIFACT}.${L=
IB_VERSION}&quot;<br>FILES_${PN} +=3D &quot;${libdir}/${LIB_ARTIFACT}&quot;=
<br>#RDEPENDS_${PN} =3D &quot;${LIB_ARTIFACT}.${LIB_VERSION}&quot;<br>#RDEP=
ENDS_${PN} =3D &quot;${LIB_ARTIFACT}&quot;<br><div><br></div><div><br></div=
><div><b>and the .bb file for datatransfer-mgr is below.</b></div><div><br>=
</div><div># Copyright (C) 2018 Teledyne Controls<br><br>DEPENDS =3D &quot;=
zeromq cppzmq zipcpp protobuf json-c jsoncpp rapidjson&quot;<br>DESCRIPTION=
 =3D &quot;Wireless Data Transfer Manager for Evo&quot;<br>SECTION =3D &quo=
t;base&quot;<br>PRIORITY =3D &quot;optional&quot;<br>LICENSE =3D &quot;CLOS=
ED&quot;<br>PR =3D &quot;r1&quot;<br><br>SRC_URI =3D &quot;git://git@elsvsa=
pp02/GroundLink-Evo/DataTransferManager.git;protocol=3Dssh &quot;<br>SRC_UR=
I =3D &quot;file:///home/tdy/DataTransferManager/DataTransferManager.tgz&qu=
ot;<br>SRCREV =3D &quot;${AUTOREV}&quot;<br><br>CDT_CONFIGURATION ?=3D &quo=
t;Release&quot;<br>BUILD_ARTIFACT =3D &quot;DataTransferMgr&quot;<br><br>S =
=3D &quot;${WORKDIR}/git/DataTransferManager-1.0&quot;<br>S =3D &quot;${WOR=
KDIR}/DataTransferManager-1.0&quot;<br><br>export STAGING_INCDIR<br>export =
STAGING_LIBDIR<br>export PV<br>export PR<br><br>#EXTRA_OEMAKE =3D &quot;&#3=
9;CXX=3D${CXX}&#39; &#39;RANLIB=3D${RANLIB}&#39; &#39;AR=3D${AR}&#39; \<br>=
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;CXXFLAGS=3D${CXXFLA=
GS}&#39; &#39;BUILDDIR=3D${S}&#39; \<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;STAGING_LIBDIR=3D${STAGING_LIBDIR}&#39;&quot;<br><br=
>EXTRA_OEMAKE +=3D &quot;&#39;INCLUDE_DIR=3D${D}${includedir}&#39; &#39;LIB=
_DIR=3D${D}${libdir}&#39;&quot;<br><br>do_compile() {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 cd Release<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake<br>}<br><br=
>do_install() {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${D}${bindir}<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 755 ${S}/Release/${BUILD_ARTIFACT} $=
{D}${bindir}<br>}<br><br>FILES_${PN} =3D &quot;${bindir}/${BUILD_ARTIFACT}&=
quot;<br>~=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br></=
div><div><br></div><div><br></div><div>Rgds</div><div>Simon</div></div></di=
v></div></div></div>

--0000000000004c1e0d05913b6b7e--
