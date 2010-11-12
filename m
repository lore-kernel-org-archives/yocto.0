Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4293A4C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:55:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Nov 2010 07:55:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="572956650"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 07:55:34 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:55:33 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 23:55:32 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:55:30 +0800
Thread-Topic: [PATCH 8/8] xauth: upgrade from 1.0.4 to 1.0.5
Thread-Index: AcuCffnxI1VSnShgQ8WG02OpO4BCnQABADwA
Message-ID: <33AB447FBD802F4E932063B962385B353030AE51@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 8/8] xauth: upgrade from 1.0.4 to 1.0.5
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
X-List-Received-Date: Fri, 12 Nov 2010 15:55:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-app/{xauth_1.0.4.bb =3D> xauth_1.0.5.bb}    |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xauth_1.0.4.bb =3D> xauth_1.0.5.bb}=
 (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index b343fcb..64dbadd 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -98,7 +98,7 @@ PREFERRED_VERSION_util-macros-native ?=3D "1.10.0"
 PREFERRED_VERSION_videoproto ?=3D "2.3.0"
 PREFERRED_VERSION_windowswmproto ?=3D "1.0.4"
 PREFERRED_VERSION_x11perf ?=3D "1.5"
-PREFERRED_VERSION_xauth ?=3D "1.0.4"
+PREFERRED_VERSION_xauth ?=3D "1.0.5"
 PREFERRED_VERSION_xcmiscproto ?=3D "1.2.0"
 PREFERRED_VERSION_xcmiscproto-native ?=3D "1.2.0"
 PREFERRED_VERSION_xcmiscproto-nativesdk ?=3D "1.2.0"
diff --git a/meta/recipes-graphics/xorg-app/xauth_1.0.4.bb b/meta/recipes-g=
raphics/xorg-app/xauth_1.0.5.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xauth_1.0.4.bb
rename to meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
--=20
1.7.0.4


