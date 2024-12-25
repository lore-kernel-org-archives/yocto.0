Return-Path: <satej.ganji@voidstarindia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9220E7718B
	for <webhook@archiver.kernel.org>; Wed, 25 Dec 2024 09:48:33 +0000 (UTC)
Subject: Re: [yocto] gstreamer1.0-plugins-good 1.24 fails with qt6 option
To: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>, yocto@lists.yoctoproject.org
From: satej.ganji@voidstarindia.com
X-Originating-Location: Nagpur, Maharashtra, IN (115.246.33.179)
X-Originating-Platform: Linux Firefox 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Dec 2024 01:48:33 -0800
References: <2VJy.1729496180835487035.xwWs@lists.yoctoproject.org>
In-Reply-To: <2VJy.1729496180835487035.xwWs@lists.yoctoproject.org>
Message-ID: <26765.1735120113192077531@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5CRYpRmLRmK6Wy23SXYj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Dec 2024 09:48:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64481

--5CRYpRmLRmK6Wy23SXYj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2024 at 01:06 PM, Aleksandar Nikolic wrote:

>=20
> Greetings,
>=20
> (Note that this is not a bug on master or anything)
>=20
> I need the qml6glsing plugin so I tried the patch from [1] (see [2] for
> the patch I have in my local repo). While the patch works for the 1.22.5
> version (I've tested this), the build fails if the patch is applied on th=
e
> current version on master, which is at the time of writing 1.24.6. The
> error I am getting is in [3]. I haven't yet looked in details, at first i=
t
> looks like the build uses hosts paths when looking for headers (e.g.
> I/usr/include/6.9.0 -I/usr/include/6.9.0/QtCore). If someone has
> experienced a similar issue or have further info on gstreamer, please
> reply.
>=20
> Cheers
> Aleksandar
>=20
> [1] gstreamer1.0-plugins-good: Provide Qt6 option for qmlgl - Patchwork
> (yoctoproject.org) (
> https://patchwork.yoctoproject.org/project/oe-core/patch/20231004160911.3=
030063-1-cordlandwehr@kde.org/#13895
> )
>=20
> [2]
> ---
> a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.24.6.bb
> +++
> b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.24.6.bb
> @@ -33,7 +33,7 @@ X11DEPENDS =3D "virtual/libx11 libsm libxrender libxfix=
es
> libxdamage"
> X11ENABLEOPTS =3D "-Dximagesrc=3Denabled -Dximagesrc-xshm=3Denabled
> -Dximagesrc-xfixes=3Denabled -Dximagesrc-xdamage=3Denabled"
> X11DISABLEOPTS =3D "-Dximagesrc=3Ddisabled -Dximagesrc-xshm=3Ddisabled
> -Dximagesrc-xfixes=3Ddisabled -Dximagesrc-xdamage=3Ddisabled"
> -QT5WAYLANDDEPENDS =3D "${@bb.utils.contains("DISTRO_FEATURES", "wayland"=
,
> "qtwayland", "", d)}"
> +QTWAYLANDDEPENDS =3D "${@bb.utils.contains("DISTRO_FEATURES", "wayland",
> "qtwayland", "", d)}"
> PACKAGECONFIG[amrnb] =C2=A0 =C2=A0 =C2=A0=3D
> "-Damrnb=3Denabled,-Damrnb=3Ddisabled,opencore-amr"
> PACKAGECONFIG[amrwb] =C2=A0 =C2=A0 =C2=A0=3D
> "-Damrwbdec=3Denabled,-Damrwbdec=3Ddisabled,opencore-amr"
> @@ -52,7 +52,8 @@ PACKAGECONFIG[libpng] =C2=A0 =C2=A0 =3D
> "-Dpng=3Denabled,-Dpng=3Ddisabled,libpng"
> PACKAGECONFIG[libv4l2] =C2=A0 =C2=A0=3D
> "-Dv4l2-libv4l2=3Denabled,-Dv4l2-libv4l2=3Ddisabled,v4l-utils"
> PACKAGECONFIG[mpg123] =C2=A0 =C2=A0 =3D "-Dmpg123=3Denabled,-Dmpg123=3Ddi=
sabled,mpg123"
> PACKAGECONFIG[pulseaudio] =3D "-Dpulse=3Denabled,-Dpulse=3Ddisabled,pulse=
audio"
> -PACKAGECONFIG[qt5] =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "-Dqt5=3Denabled,-Dqt5=
=3Ddisabled,qtbase
> qtdeclarative qtbase-native qttools-native ${QT5WAYLANDDEPENDS}"
> +PACKAGECONFIG[qt5] =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "-Dqt5=3Denabled,-Dqt5=
=3Ddisabled,qtbase
> qtdeclarative qtbase-native qttools-native ${QTWAYLANDDEPENDS}"
> +PACKAGECONFIG[qt6] =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "-Dqt6=3Denabled,-Dqt6=
=3Ddisabled,qtbase
> qtdeclarative qtbase-native qttools-native ${QTWAYLANDDEPENDS}"
> PACKAGECONFIG[soup2] =C2=A0 =C2=A0 =C2=A0=3D "-Dsoup=3Denabled,,libsoup-2=
.4,,,soup3"
> PACKAGECONFIG[soup3] =C2=A0 =C2=A0 =C2=A0=3D "-Dsoup=3Denabled,,libsoup,,=
,soup2"
> PACKAGECONFIG[speex] =C2=A0 =C2=A0 =C2=A0=3D "-Dspeex=3Denabled,-Dspeex=
=3Ddisabled,speex"
> @@ -63,6 +64,13 @@ PACKAGECONFIG[vpx] =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D
> "-Dvpx=3Denabled,-Dvpx=3Ddisabled,libvpx"
> PACKAGECONFIG[wavpack] =C2=A0 =C2=A0=3D "-Dwavpack=3Denabled,-Dwavpack=3D=
disabled,wavpack"
>=20
> PACKAGECONFIG[x11] =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D
> "${X11ENABLEOPTS},${X11DISABLEOPTS},${X11DEPENDS}"
> +PACKAGECONFIG:append =3D "qt6"
> +
> +do_configure:prepend() {
> + =C2=A0 =C2=A0# provide path to qtwaylandscanner
> + =C2=A0 =C2=A0export PATH=3D${PATH}:${STAGING_DIR_NATIVE}${libexecdir}
> +}
> +
> EXTRA_OEMESON +=3D " \
> -Ddoc=3Ddisabled \
> -Daalib=3Ddisabled \
>=20
> [3]
> | x86_64-poky-linux-g++ -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmat=
h=3Dsse
> -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
> -Wformat-security -Werror=3Dformat-security
> --sysroot=3D/data/home/oganikol/projects/oss/git/poky/build-master/tmp/wo=
rk/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot
> -Iext/qt6/libgstqml6.so.p -Iext/qt6 -I../gst-plugins-good-1.24.6/ext/qt6
> -I. -I../gst-plugins-good-1.24.6 -I../gst-plugins-good-1.24.6/gst-libs
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/gs=
treamer-1.0
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/gl=
ib-2.0
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/lib/glib-2=
.0/include
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/or=
c-0.4
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/lib/gstrea=
mer-1.0/include
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/li=
bdrm
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
Core
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/lib/mkspec=
s/linux-g++
> -I/usr/include/6.9.0 -I/usr/include/6.9.0/QtCore
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
Gui
> -I/usr/include/6.9.0/QtGui
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
Qml
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
QmlIntegration
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
Network
> -I/usr/include/6.9.0/QtQml
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
Quick
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
QmlMeta
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
QmlWorkerScript
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
QmlModels
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
OpenGL
> -I/usr/include/6.9.0/QtQuick
> -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-6=
4-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/Qt=
WaylandClient
> -fdiagnostics-color=3Dalways -D_GLIBCXX_ASSERTIONS=3D1 -D_FILE_OFFSET_BIT=
S=3D64
> -Wall -Winvalid-pch -std=3Dc++17 -Wmissing-declarations -Wredundant-decls
> -Wwrite-strings -Winit-self -Wmissing-include-dirs -Wno-multichar -Wvla
> -Wpointer-arith -O2 -g -fcanon-prefix-map
> -fmacro-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/gst-plugin=
s-good-1.24.6=3D/usr/src/debug/gstreamer1.0-plugins-good/1.24.6
> -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/gst-plugin=
s-good-1.24.6=3D/usr/src/debug/gstreamer1.0-plugins-good/1.24.6
> -fmacro-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/build=3D/u=
sr/src/debug/gstreamer1.0-plugins-good/1.24.6
> -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/build=3D/u=
sr/src/debug/gstreamer1.0-plugins-good/1.24.6
> -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sys=
root=3D
> -fmacro-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sys=
root=3D
> -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sys=
root-native=3D
> -fmacro-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build-mast=
er/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sys=
root-native=3D
> -pipe -fvisibility-inlines-hidden -fPIC -pthread -DQT_WAYLANDCLIENT_LIB
> -DQT_QUICK_LIB -DQT_QMLMETA_LIB -DQT_QMLWORKERSCRIPT_LIB
> -DQT_QMLMODELS_LIB -DQT_OPENGL_LIB -DQT_QML_LIB -DQT_QMLINTEGRATION_LIB
> -DQT_NETWORK_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DHAVE_CONFIG_H
> -DHAVE_QT_QPA_HEADER
> '-DQT_QPA_HEADER=3D<6.9.0/QtGui/qpa/qplatformnativeinterface.h>'
> -DHAVE_QT_X11 -DHAVE_QT_WAYLAND -DHAVE_QT_EGLFS -MD -MQ
> ext/qt6/libgstqml6.so.p/gstqsg6material.cc.o -MF
> ext/qt6/libgstqml6.so.p/gstqsg6material.cc.o.d -o
> ext/qt6/libgstqml6.so.p/gstqsg6material.cc.o -c
> ../gst-plugins-good-1.24.6/ext/qt6/gstqsg6material.cc
> | cc1plus: warning: /usr/include/6.9.0: No such file or directory
> [-Wmissing-include-dirs]
> | cc1plus: warning: /usr/include/6.9.0/QtCore: No such file or directory
> [-Wmissing-include-dirs]
> | cc1plus: warning: /usr/include/6.9.0/QtGui: No such file or directory
> [-Wmissing-include-dirs]
> | cc1plus: warning: /usr/include/6.9.0/QtQml: No such file or directory
> [-Wmissing-include-dirs]
> | cc1plus: warning: /usr/include/6.9.0/QtQuick: No such file or directory
> [-Wmissing-include-dirs]
> | ../gst-plugins-good-1.24.6/ext/qt6/gstqsg6material.cc:32:10: fatal
> error: private/qrhi_p.h: No such file or directory
> | =C2=A0 =C2=A032 | #include <private/qrhi_p.h>
> | =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~=
~~~~
> | compilation terminated.
>=20
>=20

Hello Aleksandar Nikolic,

A few days ago, I was trying to enable the QML plugin for Qt6, and I faced =
the same error regarding the missing header file, specifically qrhi_p.h. Up=
on investigation, I found that the header file was indeed present.

After further debugging, I discovered that the pkg-config for QtGui did not=
 search all the required paths. To resolve this issue, I added the path to =
the header file in the Bitbake recipe as an extra Meson option, which resol=
ved the problem.

Here=E2=80=99s the modification I made:

In the file *gstreamer1.0-plugins-good_1.24.6.bb* , I added the following l=
ine to provide the include path for the header file:
*EXTRA_OEMESON +=3D "-Dcpp_args=3D-I ${STAGING_DIR_NATIVE} /usr/include/QtG=
ui/6.8.0/QtGui"*

I hope this helps!

Thanks and Regards
Satej Ganji

--5CRYpRmLRmK6Wy23SXYj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon, Oct 21, 2024 at 01:06 PM, Aleksandar Nikolic wrote:</div>
<div>
<blockquote>
<div>Greetings,</div>
<div>&nbsp;</div>
<div>(Note that this is not a bug on master or anything)</div>
<div>&nbsp;</div>
<div>I need the qml6glsing plugin so I tried the patch from [1] (see [2] fo=
r the patch I have in my local repo). While the patch works for the 1.22.5 =
version (I've tested this), the build fails if the patch is applied on the =
current version on master, which is at the time of writing 1.24.6. The erro=
r I am getting is in [3]. I haven't yet looked in details, at first it look=
s like the build uses hosts paths when looking for headers (e.g. I/usr/incl=
ude/6.9.0 -I/usr/include/6.9.0/QtCore). If someone has experienced a simila=
r issue or have further info on gstreamer, please reply.</div>
<div>&nbsp;</div>
<div>Cheers</div>
<div>Aleksandar</div>
<div>&nbsp;</div>
<div>[1]&nbsp;<a href=3D"https://patchwork.yoctoproject.org/project/oe-core=
/patch/20231004160911.3030063-1-cordlandwehr@kde.org/#13895">gstreamer1.0-p=
lugins-good: Provide Qt6 option for qmlgl - Patchwork (yoctoproject.org)</a=
></div>
<div>&nbsp;</div>
<div>[2]</div>
<div>
<div>--- a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.24=
.6.bb<br />+++ b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-goo=
d_1.24.6.bb<br />@@ -33,7 +33,7 @@ X11DEPENDS =3D "virtual/libx11 libsm lib=
xrender libxfixes libxdamage"<br />&nbsp;X11ENABLEOPTS =3D "-Dximagesrc=3De=
nabled -Dximagesrc-xshm=3Denabled -Dximagesrc-xfixes=3Denabled -Dximagesrc-=
xdamage=3Denabled"<br />&nbsp;X11DISABLEOPTS =3D "-Dximagesrc=3Ddisabled -D=
ximagesrc-xshm=3Ddisabled -Dximagesrc-xfixes=3Ddisabled -Dximagesrc-xdamage=
=3Ddisabled"</div>
<div>-QT5WAYLANDDEPENDS =3D "${@bb.utils.contains("DISTRO_FEATURES", "wayla=
nd", "qtwayland", "", d)}"<br />+QTWAYLANDDEPENDS =3D "${@bb.utils.contains=
("DISTRO_FEATURES", "wayland", "qtwayland", "", d)}"</div>
<div>&nbsp;PACKAGECONFIG[amrnb] &nbsp; &nbsp; &nbsp;=3D "-Damrnb=3Denabled,=
-Damrnb=3Ddisabled,opencore-amr"<br />&nbsp;PACKAGECONFIG[amrwb] &nbsp; &nb=
sp; &nbsp;=3D "-Damrwbdec=3Denabled,-Damrwbdec=3Ddisabled,opencore-amr"<br =
/>@@ -52,7 +52,8 @@ PACKAGECONFIG[libpng] &nbsp; &nbsp; =3D "-Dpng=3Denable=
d,-Dpng=3Ddisabled,libpng"<br />&nbsp;PACKAGECONFIG[libv4l2] &nbsp; &nbsp;=
=3D "-Dv4l2-libv4l2=3Denabled,-Dv4l2-libv4l2=3Ddisabled,v4l-utils"<br />&nb=
sp;PACKAGECONFIG[mpg123] &nbsp; &nbsp; =3D "-Dmpg123=3Denabled,-Dmpg123=3Dd=
isabled,mpg123"<br />&nbsp;PACKAGECONFIG[pulseaudio] =3D "-Dpulse=3Denabled=
,-Dpulse=3Ddisabled,pulseaudio"<br />-PACKAGECONFIG[qt5] &nbsp; &nbsp; &nbs=
p; &nbsp;=3D "-Dqt5=3Denabled,-Dqt5=3Ddisabled,qtbase qtdeclarative qtbase-=
native qttools-native ${QT5WAYLANDDEPENDS}"<br />+PACKAGECONFIG[qt5] &nbsp;=
 &nbsp; &nbsp; &nbsp;=3D "-Dqt5=3Denabled,-Dqt5=3Ddisabled,qtbase qtdeclara=
tive qtbase-native qttools-native ${QTWAYLANDDEPENDS}"<br />+PACKAGECONFIG[=
qt6] &nbsp; &nbsp; &nbsp; &nbsp;=3D "-Dqt6=3Denabled,-Dqt6=3Ddisabled,qtbas=
e qtdeclarative qtbase-native qttools-native ${QTWAYLANDDEPENDS}"<br />&nbs=
p;PACKAGECONFIG[soup2] &nbsp; &nbsp; &nbsp;=3D "-Dsoup=3Denabled,,libsoup-2=
.4,,,soup3"<br />&nbsp;PACKAGECONFIG[soup3] &nbsp; &nbsp; &nbsp;=3D "-Dsoup=
=3Denabled,,libsoup,,,soup2"<br />&nbsp;PACKAGECONFIG[speex] &nbsp; &nbsp; =
&nbsp;=3D "-Dspeex=3Denabled,-Dspeex=3Ddisabled,speex"<br />@@ -63,6 +64,13=
 @@ PACKAGECONFIG[vpx] &nbsp; &nbsp; &nbsp; &nbsp;=3D "-Dvpx=3Denabled,-Dvp=
x=3Ddisabled,libvpx"<br />&nbsp;PACKAGECONFIG[wavpack] &nbsp; &nbsp;=3D "-D=
wavpack=3Denabled,-Dwavpack=3Ddisabled,wavpack"<br />&nbsp;PACKAGECONFIG[x1=
1] &nbsp; &nbsp; &nbsp; &nbsp;=3D "${X11ENABLEOPTS},${X11DISABLEOPTS},${X11=
DEPENDS}"</div>
<div>+PACKAGECONFIG:append =3D "qt6"<br />+<br />+do_configure:prepend() {<=
br />+ &nbsp; &nbsp;# provide path to qtwaylandscanner<br />+ &nbsp; &nbsp;=
export PATH=3D${PATH}:${STAGING_DIR_NATIVE}${libexecdir}<br />+}<br />+<br =
/>&nbsp;EXTRA_OEMESON +=3D " \<br />&nbsp; &nbsp; &nbsp;-Ddoc=3Ddisabled \<=
br />&nbsp; &nbsp; &nbsp;-Daalib=3Ddisabled \</div>
<div>&nbsp;</div>
<div>
<div>[3]</div>
<div>| x86_64-poky-linux-g++ -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfp=
math=3Dsse -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wfo=
rmat-security -Werror=3Dformat-security --sysroot=3D/data/home/oganikol/pro=
jects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-p=
lugins-good/1.24.6/recipe-sysroot -Iext/qt6/libgstqml6.so.p -Iext/qt6 -I../=
gst-plugins-good-1.24.6/ext/qt6 -I. -I../gst-plugins-good-1.24.6 -I../gst-p=
lugins-good-1.24.6/gst-libs -I/data/home/oganikol/projects/oss/git/poky/bui=
ld-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/rec=
ipe-sysroot/usr/include/gstreamer-1.0 -I/data/home/oganikol/projects/oss/gi=
t/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/=
1.24.6/recipe-sysroot/usr/include/glib-2.0 -I/data/home/oganikol/projects/o=
ss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-=
good/1.24.6/recipe-sysroot/usr/lib/glib-2.0/include -I/data/home/oganikol/p=
rojects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0=
-plugins-good/1.24.6/recipe-sysroot/usr/include/orc-0.4 -I/data/home/oganik=
ol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreame=
r1.0-plugins-good/1.24.6/recipe-sysroot/usr/lib/gstreamer-1.0/include -I/da=
ta/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-=
linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/libdrm -I=
/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-po=
ky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtCore=
 -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64=
-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/lib/mkspecs=
/linux-g++ -I/usr/include/6.9.0 -I/usr/include/6.9.0/QtCore -I/data/home/og=
anikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstr=
eamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtGui -I/usr/includ=
e/6.9.0/QtGui -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/=
work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/us=
r/include/QtQml -I/data/home/oganikol/projects/oss/git/poky/build-master/tm=
p/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/=
usr/include/QtQmlIntegration -I/data/home/oganikol/projects/oss/git/poky/bu=
ild-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/re=
cipe-sysroot/usr/include/QtNetwork -I/usr/include/6.9.0/QtQml -I/data/home/=
oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gs=
treamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtQuick -I/data/h=
ome/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linu=
x/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtQmlMeta -I/=
data/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-pok=
y-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtQmlWo=
rkerScript -I/data/home/oganikol/projects/oss/git/poky/build-master/tmp/wor=
k/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysroot/usr/i=
nclude/QtQmlModels -I/data/home/oganikol/projects/oss/git/poky/build-master=
/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/recipe-sysro=
ot/usr/include/QtOpenGL -I/usr/include/6.9.0/QtQuick -I/data/home/oganikol/=
projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.=
0-plugins-good/1.24.6/recipe-sysroot/usr/include/QtWaylandClient -fdiagnost=
ics-color=3Dalways -D_GLIBCXX_ASSERTIONS=3D1 -D_FILE_OFFSET_BITS=3D64 -Wall=
 -Winvalid-pch -std=3Dc++17 -Wmissing-declarations -Wredundant-decls -Wwrit=
e-strings -Winit-self -Wmissing-include-dirs -Wno-multichar -Wvla -Wpointer=
-arith -O2 -g -fcanon-prefix-map -fmacro-prefix-map=3D/data/home/oganikol/p=
rojects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0=
-plugins-good/1.24.6/gst-plugins-good-1.24.6=3D/usr/src/debug/gstreamer1.0-=
plugins-good/1.24.6 -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/g=
it/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good=
/1.24.6/gst-plugins-good-1.24.6=3D/usr/src/debug/gstreamer1.0-plugins-good/=
1.24.6 -fmacro-prefix-map=3D/data/home/oganikol/projects/oss/git/poky/build=
-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good/1.24.6/build=
=3D/usr/src/debug/gstreamer1.0-plugins-good/1.24.6 -fdebug-prefix-map=3D/da=
ta/home/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-=
linux/gstreamer1.0-plugins-good/1.24.6/build=3D/usr/src/debug/gstreamer1.0-=
plugins-good/1.24.6 -fdebug-prefix-map=3D/data/home/oganikol/projects/oss/g=
it/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugins-good=
/1.24.6/recipe-sysroot=3D -fmacro-prefix-map=3D/data/home/oganikol/projects=
/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-plugin=
s-good/1.24.6/recipe-sysroot=3D -fdebug-prefix-map=3D/data/home/oganikol/pr=
ojects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/gstreamer1.0-=
plugins-good/1.24.6/recipe-sysroot-native=3D -fmacro-prefix-map=3D/data/hom=
e/oganikol/projects/oss/git/poky/build-master/tmp/work/core2-64-poky-linux/=
gstreamer1.0-plugins-good/1.24.6/recipe-sysroot-native=3D -pipe -fvisibilit=
y-inlines-hidden -fPIC -pthread -DQT_WAYLANDCLIENT_LIB -DQT_QUICK_LIB -DQT_=
QMLMETA_LIB -DQT_QMLWORKERSCRIPT_LIB -DQT_QMLMODELS_LIB -DQT_OPENGL_LIB -DQ=
T_QML_LIB -DQT_QMLINTEGRATION_LIB -DQT_NETWORK_LIB -DQT_GUI_LIB -DQT_CORE_L=
IB -DHAVE_CONFIG_H -DHAVE_QT_QPA_HEADER '-DQT_QPA_HEADER=3D&lt;6.9.0/QtGui/=
qpa/qplatformnativeinterface.h&gt;' -DHAVE_QT_X11 -DHAVE_QT_WAYLAND -DHAVE_=
QT_EGLFS -MD -MQ ext/qt6/libgstqml6.so.p/gstqsg6material.cc.o -MF ext/qt6/l=
ibgstqml6.so.p/gstqsg6material.cc.o.d -o ext/qt6/libgstqml6.so.p/gstqsg6mat=
erial.cc.o -c ../gst-plugins-good-1.24.6/ext/qt6/gstqsg6material.cc<br />| =
cc1plus: warning: /usr/include/6.9.0: No such file or directory [-Wmissing-=
include-dirs]<br />| cc1plus: warning: /usr/include/6.9.0/QtCore: No such f=
ile or directory [-Wmissing-include-dirs]<br />| cc1plus: warning: /usr/inc=
lude/6.9.0/QtGui: No such file or directory [-Wmissing-include-dirs]<br />|=
 cc1plus: warning: /usr/include/6.9.0/QtQml: No such file or directory [-Wm=
issing-include-dirs]<br />| cc1plus: warning: /usr/include/6.9.0/QtQuick: N=
o such file or directory [-Wmissing-include-dirs]<br />| ../gst-plugins-goo=
d-1.24.6/ext/qt6/gstqsg6material.cc:32:10: fatal error: private/qrhi_p.h: N=
o such file or directory<br />| &nbsp; &nbsp;32 | #include &lt;private/qrhi=
_p.h&gt;<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~=
~~~~~~~~~~~~~~~~<br />| compilation terminated.</div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>
</div>
<div>
<p>Hello Aleksandar Nikolic,</p>
<p>A few days ago, I was trying to enable the QML plugin for Qt6, and I fac=
ed the same error regarding the missing header file, specifically <code>qrh=
i_p.h</code>. Upon investigation, I found that the header file was indeed p=
resent.</p>
<p>After further debugging, I discovered that the pkg-config for QtGui did =
not search all the required paths. To resolve this issue, I added the path =
to the header file in the Bitbake recipe as an extra Meson option, which re=
solved the problem.</p>
<p>Here&rsquo;s the modification I made:</p>
<p>In the file <strong>gstreamer1.0-plugins-good_1.24.6.bb</strong> , I add=
ed the following line to provide the include path for the header file:<br /=
><strong>EXTRA_OEMESON +=3D <span class=3D"hljs-string">"-Dcpp_args=3D-I<sp=
an class=3D"hljs-variable">${STAGING_DIR_NATIVE}</span>/usr/include/QtGui/6=
.8.0/QtGui"</span></strong><br /><br />I hope this helps!<br /><br />Thanks=
 and Regards<br />Satej Ganji</p>
</div>

--5CRYpRmLRmK6Wy23SXYj--

