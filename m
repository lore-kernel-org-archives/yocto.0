Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D60F4C811B2
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:56:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Nov 2010 07:56:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="856889425"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 07:55:59 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:54:56 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 12 Nov 2010 23:54:56 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:54:54 +0800
Thread-Topic: [PATCH 7/8] xset: upgrade from 1.1.0 to 1.2.1
Thread-Index: AcuCffq3K5Re6w/xRFiSbgxNjKAzZgAA+5vA
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4F@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 7/8] xset: upgrade from 1.1.0 to 1.2.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Nov 2010 15:56:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-app/xset/disable-xkb.patch                |   20 +++++++++++++---=
----
 .../xorg-app/{xset_1.1.0.bb =3D> xset_1.2.1.bb}      |    0
 3 files changed, 14 insertions(+), 8 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xset_1.1.0.bb =3D> xset_1.2.1.bb} (=
100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 2264a47..b343fcb 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -130,7 +130,7 @@ PREFERRED_VERSION_xrandr ?=3D "1.3.2"
 PREFERRED_VERSION_xrdb ?=3D "1.0.5"
 PREFERRED_VERSION_xserver-kdrive ?=3D "1.7.99.2"
 PREFERRED_VERSION_xserver-xf86-dri-lite ?=3D "1.8.99.904"
-PREFERRED_VERSION_xset ?=3D "1.1.0"
+PREFERRED_VERSION_xset ?=3D "1.2.1"
 PREFERRED_VERSION_xtrans ?=3D "1.2.5"
 PREFERRED_VERSION_xtrans-native ?=3D "1.2.5"
 PREFERRED_VERSION_xtrans-nativesdk ?=3D "1.2.5"
diff --git a/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch b/meta/r=
ecipes-graphics/xorg-app/xset/disable-xkb.patch
index 6060fbb..2e728cf 100644
--- a/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch
+++ b/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch
@@ -1,18 +1,24 @@
---- xset-1.0.1/configure.ac.orig	2006-03-08 19:46:59.000000000 +0100
-+++ xset-1.0.1/configure.ac	2006-03-08 19:47:40.000000000 +0100
-@@ -42,11 +42,15 @@
+add "-disable-xkb" option
+
+Rebase for 1.2.1 by: Yu Ke <ke.yu@intel.com>
+
+diff --git a/configure.ac b/configure.ac
+index 81c3ae4..26601bf 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -52,11 +52,15 @@ PKG_CHECK_MODULES(SET_XEXT, xext,
  	AC_CHECK_HEADERS([X11/extensions/dpms.h X11/extensions/MITMisc.h],,,[#in=
clude <X11/Xlib.h>])
  	CPPFLAGS=3D"$SAVE_CPPFLAGS"],[echo "not found"])
 =20
 +AC_ARG_ENABLE(xkb, AC_HELP_STRING([--disable-xkb], [Disable XKB support])=
,
-+        XKB=3D"$enableval", XKB=3D"yes")
++		XKB=3D"$enableval", XKB=3D"yes")
 +if test "x$XKB" =3D "xyes" ; then
- PKG_CHECK_MODULES(SET_XKB, x11,=20
+ PKG_CHECK_MODULES(SET_XKB, x11,
  	[SAVE_CPPFLAGS=3D"$CPPFLAGS"
  	CPPFLAGS=3D"$CPPFLAGS $SET_XKB_CFLAGS $SET_X11_CFLAGS"
  	AC_CHECK_HEADERS([X11/XKBlib.h],,,[#include <X11/Xlib.h>])
  	CPPFLAGS=3D"$SAVE_CPPFLAGS"],[echo "not found"])
 +fi
 =20
- PKG_CHECK_MODULES(SET_XF86MISC, xxf86misc,=20
- 	[SAVE_CPPFLAGS=3D"$CPPFLAGS"
+ AC_ARG_WITH(xf86misc, AC_HELP_STRING([--without-xf86misc],[Disable xf86mi=
sc support.]),
+                 [USE_XF86MISC=3D"$withval"], [USE_XF86MISC=3D"yes"])
diff --git a/meta/recipes-graphics/xorg-app/xset_1.1.0.bb b/meta/recipes-gr=
aphics/xorg-app/xset_1.2.1.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xset_1.1.0.bb
rename to meta/recipes-graphics/xorg-app/xset_1.2.1.bb
--=20
1.7.0.4


