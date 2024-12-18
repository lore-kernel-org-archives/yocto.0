Return-Path: <thejas.raj@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB20E77183
	for <webhook@archiver.kernel.org>; Wed, 18 Dec 2024 04:03:32 +0000 (UTC)
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #mickledore #qt #cmake
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: thejas.raj@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Dec 2024 20:03:29 -0800
References: <1de6dead-1277-42fe-8898-d4a13c62edd4@gmail.com>
In-Reply-To: <1de6dead-1277-42fe-8898-d4a13c62edd4@gmail.com>
Message-ID: <13203.1734494609149462818@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4WVaicM0qGHepOFu46pw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2024 04:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64464

--4WVaicM0qGHepOFu46pw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is what I got :

PACKAGECONFIG=3D"=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 accessibility=
=C2=A0=C2=A0=C2=A0=C2=A0 dbus=C2=A0=C2=A0=C2=A0=C2=A0 fontconfig=C2=A0=C2=
=A0=C2=A0=C2=A0 glib=C2=A0=C2=A0=C2=A0=C2=A0 gui=C2=A0=C2=A0=C2=A0=C2=A0 ha=
rfbuzz=C2=A0=C2=A0=C2=A0=C2=A0 icu=C2=A0=C2=A0=C2=A0=C2=A0 jpeg=C2=A0=C2=A0=
=C2=A0=C2=A0 libinput=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 openssl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 png=C2=A0=C2=A0=C2=A0=C2=A0 udev=C2=
=A0=C2=A0=C2=A0=C2=A0 widgets=C2=A0=C2=A0=C2=A0=C2=A0 xkbcommon=C2=A0=C2=A0=
=C2=A0=C2=A0 zlib=C2=A0=C2=A0=C2=A0=C2=A0 zstd=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vulkan=C2=A0=C2=
=A0=C2=A0=C2=A0 kms gbm gles2 eglfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 examples"
PACKAGECONFIG:class-native=3D"=C2=A0=C2=A0=C2=A0 gui widgets jpeg png dbus =
no-opengl openssl zlib zstd "
PACKAGECONFIG:class-nativesdk=3D"=C2=A0=C2=A0=C2=A0 gui widgets jpeg png db=
us no-opengl openssl zlib zstd "
PACKAGECONFIG:pn-wayland=3D"no-egl"
PACKAGECONFIG_CONFARGS=3D" -DFEATURE_accessibility=3DON -DFEATURE_brotli=3D=
OFF -DFEATURE_cups=3DOFF -DFEATURE_dbus=3DON -DFEATURE_developer_build=3DOF=
F -DFEATURE_directfb=3DOFF -DFEATURE_eglfs=3DON -DFEATURE_eglfs_egldevice=
=3DOFF -DQT_BUILD_EXAMPLES=3DON -DFEATURE_fontconfig=3DON -DFEATURE_gbm=3DO=
N -DFEATURE_opengl_desktop=3DOFF -DFEATURE_opengles2=3DON -DFEATURE_glib=3D=
ON -DFEATURE_gssapi=3DOFF -DFEATURE_gtk3=3DOFF -DFEATURE_gui=3DON -DFEATURE=
_harfbuzz=3DON -DFEATURE_icu=3DON -DFEATURE_journald=3DOFF -DFEATURE_jpeg=
=3DON -DFEATURE_kms=3DON -DFEATURE_libinput=3DON -DFEATURE_libproxy=3DOFF -=
DFEATURE_linuxfb=3DOFF -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=3DOFF -DFEATURE=
_lttng=3DOFF -DFEATURE_mtdev=3DOFF -DFEATURE_openssl_runtime=3DON -DFEATURE=
_optimize_size=3DOFF -DFEATURE_png=3DON -DFEATURE_sql_mysql=3DOFF -DFEATURE=
_sql_odbc=3DOFF -DFEATURE_sql_psql=3DOFF -DFEATURE_sql_sqlite=3DOFF -DBUILD=
_SHARED_LIBS=3DON -DQT_BUILD_TESTS=3DOFF -DFEATURE_tslib=3DOFF -DFEATURE_li=
budev=3DON -DFEATURE_vulkan=3DON -DFEATURE_widgets=3DON -DFEATURE_xcb=3DOFF=
 -DFEATURE_xkbcommon=3DON -DFEATURE_system_zlib=3DON -DFEATURE_zstd=3DON"
PACKAGECONFIG_DEFAULT=3D"=C2=A0=C2=A0=C2=A0 accessibility=C2=A0=C2=A0=C2=A0=
=C2=A0 dbus=C2=A0=C2=A0=C2=A0=C2=A0 fontconfig=C2=A0=C2=A0=C2=A0=C2=A0 glib=
=C2=A0=C2=A0=C2=A0=C2=A0 gui=C2=A0=C2=A0=C2=A0=C2=A0 harfbuzz=C2=A0=C2=A0=
=C2=A0=C2=A0 icu=C2=A0=C2=A0=C2=A0=C2=A0 jpeg=C2=A0=C2=A0=C2=A0=C2=A0 libin=
put=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 openssl=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 png=C2=A0=C2=A0=C2=A0=C2=A0 udev=C2=A0=C2=A0=C2=A0=C2=
=A0 widgets=C2=A0=C2=A0=C2=A0=C2=A0 xkbcommon=C2=A0=C2=A0=C2=A0=C2=A0 zlib=
=C2=A0=C2=A0=C2=A0=C2=A0 zstd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
PACKAGECONFIG_DISTRO=3D""
PACKAGECONFIG_FONTS=3D""
PACKAGECONFIG_GRAPHICS=3D"=C2=A0=C2=A0=C2=A0 vulkan=C2=A0=C2=A0=C2=A0=C2=A0=
 kms gbm gles2 eglfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
PACKAGECONFIG_KDE=3D""
PACKAGECONFIG_SYSTEM=3D""
PACKAGECONFIG_X11=3D""

--4WVaicM0qGHepOFu46pw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>This is what I got :&nbsp;</div>
<div>&nbsp;</div>
<div><span data-teams=3D"true">PACKAGECONFIG=3D"&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; accessibility&nbsp;&nbsp;&nbsp;&nbsp; dbus&nbsp;&nbsp;&nbsp=
;&nbsp; fontconfig&nbsp;&nbsp;&nbsp;&nbsp; glib&nbsp;&nbsp;&nbsp;&nbsp; gui=
&nbsp;&nbsp;&nbsp;&nbsp; harfbuzz&nbsp;&nbsp;&nbsp;&nbsp; icu&nbsp;&nbsp;&n=
bsp;&nbsp; jpeg&nbsp;&nbsp;&nbsp;&nbsp; libinput&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; openssl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; png&nbsp;=
&nbsp;&nbsp;&nbsp; udev&nbsp;&nbsp;&nbsp;&nbsp; widgets&nbsp;&nbsp;&nbsp;&n=
bsp; xkbcommon&nbsp;&nbsp;&nbsp;&nbsp; zlib&nbsp;&nbsp;&nbsp;&nbsp; zstd&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; vulkan&nbsp;&nbsp;&nbsp;&nbsp; kms gbm gles2 eglfs&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; examples"<br />PACKAGECONFIG:class-native=3D"&nbsp=
;&nbsp;&nbsp; gui widgets jpeg png dbus no-opengl openssl zlib zstd "<br />=
PACKAGECONFIG:class-nativesdk=3D"&nbsp;&nbsp;&nbsp; gui widgets jpeg png db=
us no-opengl openssl zlib zstd "<br />PACKAGECONFIG:pn-wayland=3D"no-egl"<b=
r />PACKAGECONFIG_CONFARGS=3D" -DFEATURE_accessibility=3DON -DFEATURE_brotl=
i=3DOFF -DFEATURE_cups=3DOFF -DFEATURE_dbus=3DON -DFEATURE_developer_build=
=3DOFF -DFEATURE_directfb=3DOFF -DFEATURE_eglfs=3DON -DFEATURE_eglfs_egldev=
ice=3DOFF -DQT_BUILD_EXAMPLES=3DON -DFEATURE_fontconfig=3DON -DFEATURE_gbm=
=3DON -DFEATURE_opengl_desktop=3DOFF -DFEATURE_opengles2=3DON -DFEATURE_gli=
b=3DON -DFEATURE_gssapi=3DOFF -DFEATURE_gtk3=3DOFF -DFEATURE_gui=3DON -DFEA=
TURE_harfbuzz=3DON -DFEATURE_icu=3DON -DFEATURE_journald=3DOFF -DFEATURE_jp=
eg=3DON -DFEATURE_kms=3DON -DFEATURE_libinput=3DON -DFEATURE_libproxy=3DOFF=
 -DFEATURE_linuxfb=3DOFF -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=3DOFF -DFEATU=
RE_lttng=3DOFF -DFEATURE_mtdev=3DOFF -DFEATURE_openssl_runtime=3DON -DFEATU=
RE_optimize_size=3DOFF -DFEATURE_png=3DON -DFEATURE_sql_mysql=3DOFF -DFEATU=
RE_sql_odbc=3DOFF -DFEATURE_sql_psql=3DOFF -DFEATURE_sql_sqlite=3DOFF -DBUI=
LD_SHARED_LIBS=3DON -DQT_BUILD_TESTS=3DOFF -DFEATURE_tslib=3DOFF -DFEATURE_=
libudev=3DON -DFEATURE_vulkan=3DON -DFEATURE_widgets=3DON -DFEATURE_xcb=3DO=
FF -DFEATURE_xkbcommon=3DON -DFEATURE_system_zlib=3DON -DFEATURE_zstd=3DON"=
<br />PACKAGECONFIG_DEFAULT=3D"&nbsp;&nbsp;&nbsp; accessibility&nbsp;&nbsp;=
&nbsp;&nbsp; dbus&nbsp;&nbsp;&nbsp;&nbsp; fontconfig&nbsp;&nbsp;&nbsp;&nbsp=
; glib&nbsp;&nbsp;&nbsp;&nbsp; gui&nbsp;&nbsp;&nbsp;&nbsp; harfbuzz&nbsp;&n=
bsp;&nbsp;&nbsp; icu&nbsp;&nbsp;&nbsp;&nbsp; jpeg&nbsp;&nbsp;&nbsp;&nbsp; l=
ibinput&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openssl&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; png&nbsp;&nbsp;&nbsp;&nbsp; udev&nbsp;&nbsp;&nbsp;=
&nbsp; widgets&nbsp;&nbsp;&nbsp;&nbsp; xkbcommon&nbsp;&nbsp;&nbsp;&nbsp; zl=
ib&nbsp;&nbsp;&nbsp;&nbsp; zstd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br />PACKAG=
ECONFIG_DISTRO=3D""<br />PACKAGECONFIG_FONTS=3D""<br />PACKAGECONFIG_GRAPHI=
CS=3D"&nbsp;&nbsp;&nbsp; vulkan&nbsp;&nbsp;&nbsp;&nbsp; kms gbm gles2 eglfs=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br />PACKAGECONFIG_KDE=3D""<br />PACKAGECO=
NFIG_SYSTEM=3D""<br />PACKAGECONFIG_X11=3D""</span></div>

--4WVaicM0qGHepOFu46pw--

