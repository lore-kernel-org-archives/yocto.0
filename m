Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F3E84C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:47:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 07:47:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="856887442"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 07:47:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:47:39 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 23:47:39 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:47:37 +0800
Thread-Topic: [PATCH 1/8] xmodmap: upgrade from 1.0.4 to 1.0.5
Thread-Index: AcuCfgIHlt0EpltFRrOKg5R8RWEPygAApLrw
Message-ID: <33AB447FBD802F4E932063B962385B353030AE49@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 1/8] xmodmap: upgrade from 1.0.4 to 1.0.5
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
X-List-Received-Date: Fri, 12 Nov 2010 15:47:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{xmodmap_1.0.4.bb =3D> xmodmap_1.0.5.bb}         |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xmodmap_1.0.4.bb =3D> xmodmap_1.0.5=
.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 8083df2..182720e 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -119,7 +119,7 @@ PREFERRED_VERSION_xf86vidmodeproto ?=3D "2.3"
 PREFERRED_VERSION_xhost ?=3D "1.0.3"
 PREFERRED_VERSION_xinit ?=3D "1.2.1"
 PREFERRED_VERSION_xineramaproto ?=3D "1.2"
-PREFERRED_VERSION_xmodmap ?=3D "1.0.4"
+PREFERRED_VERSION_xmodmap ?=3D "1.0.5"
 PREFERRED_VERSION_xorg-cf-files ?=3D "1.0.3"
 PREFERRED_VERSION_xprop ?=3D "1.1.0"
 PREFERRED_VERSION_xproto ?=3D "7.0.17"
diff --git a/meta/recipes-graphics/xorg-app/xmodmap_1.0.4.bb b/meta/recipes=
-graphics/xorg-app/xmodmap_1.0.5.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xmodmap_1.0.4.bb
rename to meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
--=20
1.7.0.4


