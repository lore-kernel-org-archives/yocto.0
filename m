Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C4DFF4C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:53:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Nov 2010 07:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="572955740"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 07:53:01 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:52:38 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:52:38 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 12 Nov 2010 23:52:37 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:52:35 +0800
Thread-Topic: [PATCH 2/8] xf86-input-evdev: upgrade from 2.4.0 to 2.5.0
Thread-Index: AcuCffo9ZsmVtvz3SjeRc/NkvrvY2AAA5luw
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4A@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 2/8] xf86-input-evdev: upgrade from 2.4.0 to 2.5.0
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
X-List-Received-Date: Fri, 12 Nov 2010 15:53:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...ut-evdev_2.4.0.bb =3D> xf86-input-evdev_2.5.0.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-evdev_2.4.0.bb =3D> x=
f86-input-evdev_2.5.0.bb} (94%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 182720e..9a5100f 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -142,7 +142,7 @@ PREFERRED_VERSION_xcb-proto ?=3D "1.6"
 PREFERRED_VERSION_libxcb ?=3D "1.6"
 PREFERRED_VERSION_libxcb-nativesdk ?=3D "1.6"
 PREFERRED_VERSION_libpciaccess ?=3D "0.11.0"
-PREFERRED_VERSION_xf86-input-evdev ?=3D "2.4.0"
+PREFERRED_VERSION_xf86-input-evdev ?=3D "2.5.0"
 PREFERRED_VERSION_xf86-input-mouse ?=3D "1.5.0"
 PREFERRED_VERSION_xf86-input-keyboard ?=3D "1.4.0"
 PREFERRED_VERSION_xf86-input-synaptics ?=3D "1.2.1"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.4.0.bb b/=
meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
similarity index 94%
rename from meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.4.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
index fad47fb..49bfb30 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.4.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
@@ -4,4 +4,4 @@ DESCRIPTION =3D "X.Org X server -- evdev input driver"
=20
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Debf4ad82cd33b1432eacb1798a43c09=
2"
=20
-PR =3D "r1"
+PR =3D "r0"
--=20
1.7.0.4


