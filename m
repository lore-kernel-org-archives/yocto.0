Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9CB04C81174
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:53:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 07:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="626145069"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2010 07:53:06 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:53:06 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 12 Nov 2010 23:53:05 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:53:03 +0800
Thread-Topic: [PATCH 3/8] xf86-input-mouse: upgrade from 1.5.0 to 1.6.0
Thread-Index: AcuCffmiVRDgoatvSQaZ1giE5yiXDwAA6wdA
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4B@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 3/8] xf86-input-mouse: upgrade from 1.5.0 to 1.6.0
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
X-List-Received-Date: Fri, 12 Nov 2010 15:53:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...ut-mouse_1.5.0.bb =3D> xf86-input-mouse_1.6.0.bb} |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-mouse_1.5.0.bb =3D> x=
f86-input-mouse_1.6.0.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 9a5100f..7769528 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -143,7 +143,7 @@ PREFERRED_VERSION_libxcb ?=3D "1.6"
 PREFERRED_VERSION_libxcb-nativesdk ?=3D "1.6"
 PREFERRED_VERSION_libpciaccess ?=3D "0.11.0"
 PREFERRED_VERSION_xf86-input-evdev ?=3D "2.5.0"
-PREFERRED_VERSION_xf86-input-mouse ?=3D "1.5.0"
+PREFERRED_VERSION_xf86-input-mouse ?=3D "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?=3D "1.4.0"
 PREFERRED_VERSION_xf86-input-synaptics ?=3D "1.2.1"
 PREFERRED_VERSION_xf86-video-intel ?=3D "2.12.0"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.5.0.bb b/=
meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.5.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
--=20
1.7.0.4


