Return-Path: <jovanbosic95@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6623C54EBD
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 07:43:23 +0000 (UTC)
Subject: Re: gn native do compile fails
To: yocto@lists.yoctoproject.org
From: jovanbosic95@gmail.com
X-Originating-Location: Novi Sad, Vojvodina, RS (46.163.59.26)
X-Originating-Platform: Linux Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Jan 2023 23:43:14 -0800
References: <CAMKF1spzfc8f1_T9BT6cpzhUUXLAqoqpVG38RO3-fwcx-NOLfQ@mail.gmail.com>
In-Reply-To: <CAMKF1spzfc8f1_T9BT6cpzhUUXLAqoqpVG38RO3-fwcx-NOLfQ@mail.gmail.com>
Message-ID: <2751.1673595794834528629@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zmQSXsMX6X3MY5oI2SAZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 07:43:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58973

--zmQSXsMX6X3MY5oI2SAZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is my gn-native_106.0.5.249.119.bb:

# gn-native contains the GN binary used to configure Chromium.
# It is not released separately, and each Chromium release is only expected=
 to
# work with the GN version provided with it.

require chromium.inc

inherit native

S =3D "${WORKDIR}/chromium-${PV}"

# bootstrap.py --no_clean hardcodes the build location to out_bootstrap.
# Omitting --no_clean causes the script to create a temporary directory wit=
h a
# random name outside the build directory, so we choose the lesser of the t=
wo
# evils.
B =3D "${S}/out_bootstrap"

SRC_URI +=3D " \
file://0001-Pass-no-static-libstdc-to-gen.py.patch \
"

# The build system expects the linker to be invoked via the compiler. If we=
 use
# the default value for BUILD_LD, it will fail because it does not recogniz=
e
# some of the arguments passed to it.
BUILD_LD =3D "${CXX}"

# Use LLVM's ar rather than binutils'. Depending on the optimizations enabl=
ed
# in the build ar(1) may not be enough.
BUILD_AR =3D "llvm-ar"

DEPENDS =3D "clang-native ninja-native libcxx-native"
DEPENDS:append:runtime-llvm =3D " compiler-rt-native libcxx-native"
# Use libcxx headers for native parts
CXXFLAGS:append:runtime-llvm =3D " -isysroot=3D${STAGING_DIR_NATIVE} -stdli=
b=3Dlibc++"
# Use libgcc for native parts
LDFLAGS:append:runtime-llvm =3D " -rtlib=3Dlibgcc -unwindlib=3Dlibgcc -stdl=
ib=3Dlibc++ -lc++abi -rpath ${STAGING_LIBDIR_NATIVE}"

do_configure[noexec] =3D "1"

do_compile() {
python3 ${S}/tools/gn/bootstrap/bootstrap.py --skip-generate-buildfiles
}

do_install() {
install -d ${D}${bindir}
install -m 0755 ${S}/out/Release/gn ${D}${bindir}/gn
}

INSANE_SKIP:${PN} +=3D "already-stripped"

I have libcxx-native in dependencies and I have installed C++ runtime but I=
 am seeing the same error.

--zmQSXsMX6X3MY5oI2SAZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is my gn-native_106.0.5.249.119.bb:<br /><br />
<div># gn-native contains the GN binary used to configure Chromium.</div>
<div># It is not released separately, and each Chromium release is only exp=
ected to</div>
<div># work with the GN version provided with it.</div>
<div>&nbsp;</div>
<div>require chromium.inc</div>
<div>&nbsp;</div>
<div>inherit native</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}/chromium-${PV}"</div>
<div>&nbsp;</div>
<div># bootstrap.py --no_clean hardcodes the build location to out_bootstra=
p.</div>
<div># Omitting --no_clean causes the script to create a temporary director=
y with a</div>
<div># random name outside the build directory, so we choose the lesser of =
the two</div>
<div># evils.</div>
<div>B =3D "${S}/out_bootstrap"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; file://0001-Pass-no-static-libstdc-to-gen.=
py.patch \</div>
<div>"</div>
<div>&nbsp;</div>
<div># The build system expects the linker to be invoked via the compiler. =
If we use</div>
<div># the default value for BUILD_LD, it will fail because it does not rec=
ognize</div>
<div># some of the arguments passed to it.</div>
<div>BUILD_LD =3D "${CXX}"</div>
<div>&nbsp;</div>
<div># Use LLVM's ar rather than binutils'. Depending on the optimizations =
enabled</div>
<div># in the build ar(1) may not be enough.</div>
<div>BUILD_AR =3D "llvm-ar"</div>
<div>&nbsp;</div>
<div>DEPENDS =3D "clang-native ninja-native libcxx-native"</div>
<div>DEPENDS:append:runtime-llvm =3D " compiler-rt-native libcxx-native"</d=
iv>
<div># Use libcxx headers for native parts</div>
<div>CXXFLAGS:append:runtime-llvm =3D " -isysroot=3D${STAGING_DIR_NATIVE} -=
stdlib=3Dlibc++"</div>
<div># Use libgcc for native parts</div>
<div>LDFLAGS:append:runtime-llvm =3D " -rtlib=3Dlibgcc -unwindlib=3Dlibgcc =
-stdlib=3Dlibc++ -lc++abi -rpath ${STAGING_LIBDIR_NATIVE}"</div>
<div>&nbsp;</div>
<div>do_configure[noexec] =3D "1"</div>
<div>&nbsp;</div>
<div>do_compile() {</div>
<div><span style=3D"white-space: pre;"> </span>python3 ${S}/tools/gn/bootst=
rap/bootstrap.py --skip-generate-buildfiles</div>
<div>}</div>
<div>&nbsp;</div>
<div>do_install() {</div>
<div><span style=3D"white-space: pre;"> </span>install -d ${D}${bindir}</di=
v>
<div><span style=3D"white-space: pre;"> </span>install -m 0755 ${S}/out/Rel=
ease/gn ${D}${bindir}/gn</div>
<div>}</div>
<div>&nbsp;</div>
<div>INSANE_SKIP:${PN} +=3D "already-stripped"<br /><br />I have&nbsp;<span=
 style=3D"white-space: pre-wrap;">libcxx-native in </span><span style=3D"wh=
ite-space: pre-wrap;">dependencies and I have installed </span><span style=
=3D"white-space: pre-wrap;">C++ runtime but I am seeing the same error.</sp=
an></div>

--zmQSXsMX6X3MY5oI2SAZ--

