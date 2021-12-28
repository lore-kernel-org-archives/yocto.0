Return-Path: <kkettinger@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF2BC433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 18:12:04 +0000 (UTC)
Subject: unparsed line #yocto
To: yocto@lists.yoctoproject.org
From: "Kevin Kettinger" <kkettinger@gmail.com>
X-Originating-Location: =?utf-8?b?S2FybHNydWhlLCBCYWRlbi1Xw7xydHRlbWJlcmcs?=
 =?utf-8?b?IERFICgxNDEuNzAuNDUuNSk=?=
X-Originating-Platform: Windows Firefox 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Dec 2021 10:12:01 -0800
Message-ID: <UgWJ.1640715121424616879.MnGk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BVHomIGVN6PZQLxWMhEa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 18:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55675

--BVHomIGVN6PZQLxWMhEa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

after including the meta-qt5 and meta-boot2qt layer from https://code.qt.io=
/cgit/yocto , and adding them to my bblayers.conf, bitbake breaks directly =
while parsing the recipes:
---------------------------------------------
ERROR: ParseError at /home/yocto/projects/faseroptik-dunfell/build/../layer=
s/meta-qt5/classes/cmake_qt5.bbclass:4: unparsed line: 'DEPENDS:prepend =3D=
 "${QTBASEDEPENDS} "'=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:-=
-:--

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
---------------------------------------------

If i restart bitbake, the offending file changes now and then, but just for=
 completion, here is the file:
---------------------------------------------
inherit cmake
inherit qmake5_paths

DEPENDS:prepend =3D "${QTBASEDEPENDS} "
QTBASEDEPENDS =3D "qtbase qtbase-native"
QTBASEDEPENDS:class-native =3D "qtbase-native"
QTBASEDEPENDS:class-nativesdk =3D "nativesdk-qtbase qtbase-native"

EXTRA_OECMAKE:prepend =3D " \
-DOE_QMAKE_PATH_PREFIX=3D${OE_QMAKE_PATH_PREFIX} \
-DOE_QMAKE_PATH_HEADERS=3D${OE_QMAKE_PATH_HEADERS} \
-DOE_QMAKE_PATH_LIBS=3D${OE_QMAKE_PATH_LIBS} \
-DOE_QMAKE_PATH_ARCHDATA=3D${OE_QMAKE_PATH_ARCHDATA} \
-DOE_QMAKE_PATH_DATA=3D${OE_QMAKE_PATH_DATA} \
-DOE_QMAKE_PATH_BINS=3D${OE_QMAKE_PATH_BINS} \
-DOE_QMAKE_PATH_LIBEXECS=3D${OE_QMAKE_PATH_LIBEXECS} \
-DOE_QMAKE_PATH_PLUGINS=3D${OE_QMAKE_PATH_PLUGINS} \
-DOE_QMAKE_PATH_QML=3D${OE_QMAKE_PATH_QML} \
-DOE_QMAKE_PATH_TRANSLATIONS=3D${OE_QMAKE_PATH_TRANSLATIONS} \
-DOE_QMAKE_PATH_DOCS=3D${OE_QMAKE_PATH_DOCS} \
-DOE_QMAKE_PATH_SETTINGS=3D${OE_QMAKE_PATH_SETTINGS} \
-DOE_QMAKE_PATH_EXAMPLES=3D${OE_QMAKE_PATH_EXAMPLES} \
-DOE_QMAKE_PATH_TESTS=3D${OE_QMAKE_PATH_TESTS} \
-DOE_QMAKE_PATH_HOST_PREFIX=3D${OE_QMAKE_PATH_HOST_PREFIX} \
-DOE_QMAKE_PATH_HOST_BINS=3D${OE_QMAKE_PATH_HOST_BINS} \
-DOE_QMAKE_PATH_HOST_DATA=3D${OE_QMAKE_PATH_HOST_DATA} \
-DOE_QMAKE_PATH_HOST_LIBS=3D${OE_QMAKE_PATH_HOST_LIBS} \
-DOE_QMAKE_PATH_EXTERNAL_HOST_BINS=3D${OE_QMAKE_PATH_EXTERNAL_HOST_BINS} \
-DOE_QMAKE_PATH_QT_HEADERS=3D${OE_QMAKE_PATH_QT_HEADERS} \
-DOE_QMAKE_PATH_QT_ARCHDATA=3D${OE_QMAKE_PATH_QT_ARCHDATA} \
-DOE_QMAKE_PATH_QT_DATA=3D${OE_QMAKE_PATH_QT_DATA} \
-DOE_QMAKE_PATH_QT_BINS=3D${OE_QMAKE_PATH_QT_BINS} \
-DOE_QMAKE_PATH_QT_TRANSLATIONS=3D${OE_QMAKE_PATH_QT_TRANSLATIONS} \
-DOE_QMAKE_PATH_QT_DOCS=3D${OE_QMAKE_PATH_QT_DOCS} \
-DOE_QMAKE_PATH_QT_SETTINGS=3D${OE_QMAKE_PATH_QT_SETTINGS} \
-DOE_QMAKE_PATH_QT_EXAMPLES=3D${OE_QMAKE_PATH_QT_EXAMPLES} \
-DOE_QMAKE_PATH_QT_TESTS=3D${OE_QMAKE_PATH_QT_TESTS} \
"
---------------------------------------------

The exact same layer with the exact same commit & files is working fine on =
the original boot2qt environment, but not on my environment.

My bblayers.conf looks like this:
---------------------------------------------
LCONF_VERSION =3D "7"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
${TOPDIR}/../layers/meta-toradex-nxp \
${TOPDIR}/../layers/meta-freescale \
${TOPDIR}/../layers/meta-freescale-3rdparty \
${TOPDIR}/../layers/meta-toradex-tegra \
${TOPDIR}/../layers/meta-toradex-bsp-common \
${TOPDIR}/../layers/meta-openembedded/meta-oe \
${TOPDIR}/../layers/meta-openembedded/meta-filesystems \
${TOPDIR}/../layers/meta-openembedded/meta-gnome \
${TOPDIR}/../layers/meta-openembedded/meta-xfce \
${TOPDIR}/../layers/meta-openembedded/meta-initramfs \
${TOPDIR}/../layers/meta-openembedded/meta-networking \
${TOPDIR}/../layers/meta-openembedded/meta-multimedia \
${TOPDIR}/../layers/meta-openembedded/meta-python \
${TOPDIR}/../layers/meta-freescale-distro \
${TOPDIR}/../layers/meta-toradex-demos \
${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt \
${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt-distro \
${TOPDIR}/../layers/meta-qt5 \
${TOPDIR}/../layers/meta-toradex-distro \
${TOPDIR}/../layers/meta-yocto/meta-poky \
${TOPDIR}/../layers/openembedded-core/meta \
${TOPDIR}/../layers/meta-mender/meta-mender-core \
${TOPDIR}/../layers/meta-mender-community/meta-mender-toradex-nxp \
${TOPDIR}/../layers/meta-mender/meta-mender-demo \
"
---------------------------------------------

On the working boot2qt environment poky 3.1.11 is used, i'm using poky 3.1.=
8.

Is there anything i can do to track this issue down? bitbake -v doesn't rep=
ort more infos.

I appreciate any help here, thank you.

Best regards,
Kevin

--BVHomIGVN6PZQLxWMhEa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />after including the meta-qt5 and meta-boot2qt layer from =
<a href=3D"https://code.qt.io/cgit/yocto" target=3D"_blank" rel=3D"noopener=
">https://code.qt.io/cgit/yocto</a>, and adding them to my bblayers.conf, b=
itbake breaks directly while parsing the recipes:<br />--------------------=
-------------------------<br />ERROR: ParseError at /home/yocto/projects/fa=
seroptik-dunfell/build/../layers/meta-qt5/classes/cmake_qt5.bbclass:4: unpa=
rsed line: 'DEPENDS:prepend =3D "${QTBASEDEPENDS} "'&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; | ETA:&nbsp; --:--:--<br /><br />Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.<br />------------------------=
---------------------<br /><br />If i restart bitbake, the offending file c=
hanges now and then, but just for completion, here is the file:<br />------=
---------------------------------------<br />inherit cmake<br />inherit qma=
ke5_paths<br /><br />DEPENDS:prepend =3D "${QTBASEDEPENDS} "<br />QTBASEDEP=
ENDS =3D "qtbase qtbase-native"<br />QTBASEDEPENDS:class-native =3D "qtbase=
-native"<br />QTBASEDEPENDS:class-nativesdk =3D "nativesdk-qtbase qtbase-na=
tive"<br /><br />EXTRA_OECMAKE:prepend =3D " \<br />&nbsp;&nbsp;&nbsp; -DOE=
_QMAKE_PATH_PREFIX=3D${OE_QMAKE_PATH_PREFIX} \<br />&nbsp;&nbsp;&nbsp; -DOE=
_QMAKE_PATH_HEADERS=3D${OE_QMAKE_PATH_HEADERS} \<br />&nbsp;&nbsp;&nbsp; -D=
OE_QMAKE_PATH_LIBS=3D${OE_QMAKE_PATH_LIBS} \<br />&nbsp;&nbsp;&nbsp; -DOE_Q=
MAKE_PATH_ARCHDATA=3D${OE_QMAKE_PATH_ARCHDATA} \<br />&nbsp;&nbsp;&nbsp; -D=
OE_QMAKE_PATH_DATA=3D${OE_QMAKE_PATH_DATA} \<br />&nbsp;&nbsp;&nbsp; -DOE_Q=
MAKE_PATH_BINS=3D${OE_QMAKE_PATH_BINS} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE=
_PATH_LIBEXECS=3D${OE_QMAKE_PATH_LIBEXECS} \<br />&nbsp;&nbsp;&nbsp; -DOE_Q=
MAKE_PATH_PLUGINS=3D${OE_QMAKE_PATH_PLUGINS} \<br />&nbsp;&nbsp;&nbsp; -DOE=
_QMAKE_PATH_QML=3D${OE_QMAKE_PATH_QML} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE=
_PATH_TRANSLATIONS=3D${OE_QMAKE_PATH_TRANSLATIONS} \<br />&nbsp;&nbsp;&nbsp=
; -DOE_QMAKE_PATH_DOCS=3D${OE_QMAKE_PATH_DOCS} \<br />&nbsp;&nbsp;&nbsp; -D=
OE_QMAKE_PATH_SETTINGS=3D${OE_QMAKE_PATH_SETTINGS} \<br />&nbsp;&nbsp;&nbsp=
; -DOE_QMAKE_PATH_EXAMPLES=3D${OE_QMAKE_PATH_EXAMPLES} \<br />&nbsp;&nbsp;&=
nbsp; -DOE_QMAKE_PATH_TESTS=3D${OE_QMAKE_PATH_TESTS} \<br />&nbsp;&nbsp;&nb=
sp; -DOE_QMAKE_PATH_HOST_PREFIX=3D${OE_QMAKE_PATH_HOST_PREFIX} \<br />&nbsp=
;&nbsp;&nbsp; -DOE_QMAKE_PATH_HOST_BINS=3D${OE_QMAKE_PATH_HOST_BINS} \<br /=
>&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_HOST_DATA=3D${OE_QMAKE_PATH_HOST_DATA} =
\<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_HOST_LIBS=3D${OE_QMAKE_PATH_HOST_=
LIBS} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_EXTERNAL_HOST_BINS=3D${OE_Q=
MAKE_PATH_EXTERNAL_HOST_BINS} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_QT_=
HEADERS=3D${OE_QMAKE_PATH_QT_HEADERS} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_=
PATH_QT_ARCHDATA=3D${OE_QMAKE_PATH_QT_ARCHDATA} \<br />&nbsp;&nbsp;&nbsp; -=
DOE_QMAKE_PATH_QT_DATA=3D${OE_QMAKE_PATH_QT_DATA} \<br />&nbsp;&nbsp;&nbsp;=
 -DOE_QMAKE_PATH_QT_BINS=3D${OE_QMAKE_PATH_QT_BINS} \<br />&nbsp;&nbsp;&nbs=
p; -DOE_QMAKE_PATH_QT_TRANSLATIONS=3D${OE_QMAKE_PATH_QT_TRANSLATIONS} \<br =
/>&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_QT_DOCS=3D${OE_QMAKE_PATH_QT_DOCS} \<b=
r />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_QT_SETTINGS=3D${OE_QMAKE_PATH_QT_SET=
TINGS} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_QT_EXAMPLES=3D${OE_QMAKE_P=
ATH_QT_EXAMPLES} \<br />&nbsp;&nbsp;&nbsp; -DOE_QMAKE_PATH_QT_TESTS=3D${OE_=
QMAKE_PATH_QT_TESTS} \<br />"<br />----------------------------------------=
-----<br /><br />The exact same layer with the exact same commit &amp; file=
s is working fine on the original boot2qt environment, but not on my enviro=
nment.<br /><br />My bblayers.conf looks like this:<br />------------------=
---------------------------<br />LCONF_VERSION =3D "7"<br /><br />BBPATH =
=3D "${TOPDIR}"<br />BBFILES ?=3D ""<br /><br />BBLAYERS ?=3D " \<br />&nbs=
p; ${TOPDIR}/../layers/meta-toradex-nxp \<br />&nbsp; ${TOPDIR}/../layers/m=
eta-freescale \<br />&nbsp; ${TOPDIR}/../layers/meta-freescale-3rdparty \<b=
r />&nbsp; ${TOPDIR}/../layers/meta-toradex-tegra \<br />&nbsp; ${TOPDIR}/.=
./layers/meta-toradex-bsp-common \<br />&nbsp; ${TOPDIR}/../layers/meta-ope=
nembedded/meta-oe \<br />&nbsp; ${TOPDIR}/../layers/meta-openembedded/meta-=
filesystems \<br />&nbsp; ${TOPDIR}/../layers/meta-openembedded/meta-gnome =
\<br />&nbsp; ${TOPDIR}/../layers/meta-openembedded/meta-xfce \<br />&nbsp;=
 ${TOPDIR}/../layers/meta-openembedded/meta-initramfs \<br />&nbsp; ${TOPDI=
R}/../layers/meta-openembedded/meta-networking \<br />&nbsp; ${TOPDIR}/../l=
ayers/meta-openembedded/meta-multimedia \<br />&nbsp; ${TOPDIR}/../layers/m=
eta-openembedded/meta-python \<br />&nbsp; ${TOPDIR}/../layers/meta-freesca=
le-distro \<br />&nbsp; ${TOPDIR}/../layers/meta-toradex-demos \<br />&nbsp=
; ${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt \<br />&nbsp; ${TOPDIR}/../=
layers/meta-boot2qt/meta-boot2qt-distro \<br />&nbsp; ${TOPDIR}/../layers/m=
eta-qt5 \<br />&nbsp; ${TOPDIR}/../layers/meta-toradex-distro \<br />&nbsp;=
 ${TOPDIR}/../layers/meta-yocto/meta-poky \<br />&nbsp; ${TOPDIR}/../layers=
/openembedded-core/meta \<br />&nbsp; ${TOPDIR}/../layers/meta-mender/meta-=
mender-core \<br />&nbsp; ${TOPDIR}/../layers/meta-mender-community/meta-me=
nder-toradex-nxp \<br />&nbsp; ${TOPDIR}/../layers/meta-mender/meta-mender-=
demo \<br />&nbsp; "<br />---------------------------------------------<br =
/><br />On the working boot2qt environment poky 3.1.11 is used, i'm using p=
oky 3.1.8.<br /><br />Is there anything i can do to track this issue down? =
bitbake -v doesn't report more infos.<br /><br />I appreciate any help here=
, thank you.<br /><br />Best regards,<br />Kevin

--BVHomIGVN6PZQLxWMhEa--

