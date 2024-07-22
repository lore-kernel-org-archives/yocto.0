Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2720DC3DA59
	for <webhook@archiver.kernel.org>; Mon, 22 Jul 2024 06:40:53 +0000 (UTC)
Subject: Add qtbase and qtwayland to core-image-minimal
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 21 Jul 2024 23:40:47 -0700
Message-ID: <z6d3.1721630447110602383.yp5L@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3t0GxtAMrq08p5ghkUxj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 06:40:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63546

--3t0GxtAMrq08p5ghkUxj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I have built a yocto for RK3568 (scarthgap) with core-image-minmal. I have =
LCD in my custom carrier board , I have enabled wayland & weston by adding =
the below lines in local.conf.

# For weston
DISTRO_FEATURES:remove =3D "x11 "
DISTRO_FEATURES:append =3D " wayland pam"
IMAGE_INSTALL:append =3D " wayland weston weston-init weston-examples rockc=
hip-libmali"

After this I could successfully see display . Now I need to add Qt into the=
 source , can anyone suggest me to include QT without having any conflict w=
ith Wayland / Weston.=C2=A0 I am getting the below error in my case.

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
--
| QPA backends:
| =C2=A0 DirectFB ............................... no
| =C2=A0 EGLFS .................................. no
| =C2=A0 LinuxFB ................................ no
| =C2=A0 VNC .................................... yes
| Qt Sql:
| =C2=A0 SQL item models ........................ yes
| Qt Widgets:
| =C2=A0 GTK+ ................................... no
| =C2=A0 Styles ................................. Fusion Windows
| Qt PrintSupport:
| =C2=A0 CUPS ................................... no
| Qt Sql Drivers:
| =C2=A0 DB2 (IBM) .............................. no
| =C2=A0 InterBase .............................. no
| =C2=A0 MySql .................................. no
| =C2=A0 OCI (Oracle) ........................... no
| =C2=A0 ODBC ................................... no
| =C2=A0 PostgreSQL ............................. no
| =C2=A0 SQLite2 ................................ no
| =C2=A0 SQLite ................................. no
| =C2=A0 =C2=A0 Using system provided SQLite ......... no
| =C2=A0 TDS (Sybase) ........................... no
| Qt Testlib:
| =C2=A0 Tester for item models ................. yes
|
| Note: -hostbindir is not a subdirectory of -hostprefix.
| Note: -hostlibdir is not a subdirectory of -hostprefix.
| Note: -hostdatadir is not a subdirectory of -hostprefix.
|
| WARNING: No QPA platform plugin enabled! This will
| produce a Qt that cannot run GUI applications.
| See "Platform backends" in the output of --help.
|
| ERROR: Feature 'opengl-desktop' was enabled, but the pre-condition '(conf=
ig.win32 && !config.winrt && !features.opengles2 && (config.msvc || libs.op=
engl))
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 || (!config.watchos && !config.win32 && !config.wasm && l=
ibs.opengl)' failed.
|
| ERROR: The OpenGL functionality tests failed!
| You might need to modify the include and library search paths by editing =
QMAKE_INCDIR_OPENGL[_ES2],
| QMAKE_LIBDIR_OPENGL[_ES2] and QMAKE_LIBS_OPENGL[_ES2] in the mkspec for y=
our platform.
| WARNING: exit code 3 from a shell command.
ERROR: Task (/home/poornesh/Mindteck_work/flexicare/yocto_RK3568_scarthgap/=
sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb:do_configure) failed with exi=
t code '1'

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------

Thanks in Advance

--3t0GxtAMrq08p5ghkUxj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Greetings !</div>
<div>&nbsp;</div>
<div>I have built a yocto for RK3568 (scarthgap) with core-image-minmal. I =
have LCD in my custom carrier board , I have enabled wayland &amp; weston b=
y adding the below lines in local.conf.</div>
<div>&nbsp;</div>
<div># For weston<br />DISTRO_FEATURES:remove =3D "x11 "<br />DISTRO_FEATUR=
ES:append =3D " wayland pam"<br />IMAGE_INSTALL:append =3D " wayland weston=
 weston-init weston-examples rockchip-libmali"</div>
<div>&nbsp;</div>
<div>After this I could successfully see display . Now I need to add Qt int=
o the source , can anyone suggest me to include QT without having any confl=
ict with Wayland / Weston.&nbsp; I am getting the below error in my case.</=
div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>----------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------<br />| QPA backends:<br />| &nbsp; DirectFB .......................=
........ no<br />| &nbsp; EGLFS .................................. no<br />=
| &nbsp; LinuxFB ................................ no<br />| &nbsp; VNC ....=
................................ yes<br />| Qt Sql:<br />| &nbsp; SQL item =
models ........................ yes<br />| Qt Widgets:<br />| &nbsp; GTK+ .=
.................................. no<br />| &nbsp; Styles ................=
................. Fusion Windows<br />| Qt PrintSupport:<br />| &nbsp; CUPS=
 ................................... no<br />| Qt Sql Drivers:<br />| &nbsp=
; DB2 (IBM) .............................. no<br />| &nbsp; InterBase .....=
......................... no<br />| &nbsp; MySql ..........................=
........ no<br />| &nbsp; OCI (Oracle) ........................... no<br />=
| &nbsp; ODBC ................................... no<br />| &nbsp; PostgreS=
QL ............................. no<br />| &nbsp; SQLite2 .................=
............... no<br />| &nbsp; SQLite ................................. n=
o<br />| &nbsp; &nbsp; Using system provided SQLite ......... no<br />| &nb=
sp; TDS (Sybase) ........................... no<br />| Qt Testlib:<br />| &=
nbsp; Tester for item models ................. yes<br />|&nbsp;<br />| Note=
: -hostbindir is not a subdirectory of -hostprefix.<br />| Note: -hostlibdi=
r is not a subdirectory of -hostprefix.<br />| Note: -hostdatadir is not a =
subdirectory of -hostprefix.<br />|&nbsp;<br />| WARNING: No QPA platform p=
lugin enabled! This will<br />| produce a Qt that cannot run GUI applicatio=
ns.<br />| See "Platform backends" in the output of --help.<br />|&nbsp;<br=
 />| ERROR: Feature 'opengl-desktop' was enabled, but the pre-condition '(c=
onfig.win32 &amp;&amp; !config.winrt &amp;&amp; !features.opengles2 &amp;&a=
mp; (config.msvc || libs.opengl))<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; || (!config.watcho=
s &amp;&amp; !config.win32 &amp;&amp; !config.wasm &amp;&amp; libs.opengl)'=
 failed.<br />|&nbsp;<br />| ERROR: The OpenGL functionality tests failed!<=
br />| You might need to modify the include and library search paths by edi=
ting QMAKE_INCDIR_OPENGL[_ES2],<br />| QMAKE_LIBDIR_OPENGL[_ES2] and QMAKE_=
LIBS_OPENGL[_ES2] in the mkspec for your platform.<br />| WARNING: exit cod=
e 3 from a shell command.<br />ERROR: Task (/home/poornesh/Mindteck_work/fl=
exicare/yocto_RK3568_scarthgap/sources/meta-qt5/recipes-qt/qt5/qtbase_git.b=
b:do_configure) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>----------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------------</div>
<div>&nbsp;</div>
<div>Thanks in Advance<br />&nbsp;<br /><br /></div>

--3t0GxtAMrq08p5ghkUxj--

