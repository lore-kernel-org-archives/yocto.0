Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8BEB4C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:54:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Nov 2010 07:54:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="572956105"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 07:54:26 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:54:25 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 23:54:24 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:54:22 +0800
Thread-Topic: [PATCH 6/8] xwininfo: upgrade from 1.0.5 to 1.1.1
Thread-Index: AcuCfgILkkk+en+SRiurU8mHPwk4EwAA9ETA
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4E@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 6/8] xwininfo: upgrade from 1.0.5 to 1.1.1
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
X-List-Received-Date: Fri, 12 Nov 2010 15:54:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{xwininfo_1.0.5.bb =3D> xwininfo_1.1.0.bb}       |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xwininfo_1.0.5.bb =3D> xwininfo_1.1=
.0.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 7769528..2264a47 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -135,7 +135,7 @@ PREFERRED_VERSION_xtrans ?=3D "1.2.5"
 PREFERRED_VERSION_xtrans-native ?=3D "1.2.5"
 PREFERRED_VERSION_xtrans-nativesdk ?=3D "1.2.5"
 PREFERRED_VERSION_xvinfo ?=3D "1.0.2"
-PREFERRED_VERSION_xwininfo ?=3D "1.0.5"
+PREFERRED_VERSION_xwininfo ?=3D "1.1.0"
 PREFERRED_VERSION_mesa-dri ?=3D "7.8.2"
 PREFERRED_VERSION_libdrm ?=3D "2.4.21"
 PREFERRED_VERSION_xcb-proto ?=3D "1.6"
diff --git a/meta/recipes-graphics/xorg-app/xwininfo_1.0.5.bb b/meta/recipe=
s-graphics/xorg-app/xwininfo_1.1.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xwininfo_1.0.5.bb
rename to meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
--=20
1.7.0.4


