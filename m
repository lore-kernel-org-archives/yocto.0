Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE062E013D0
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2011 19:34:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Oct 2011 19:34:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,349,1315206000"; d="scan'208";a="62808921"
Received: from unknown (HELO [10.255.15.126]) ([10.255.15.126])
	by azsmga001.ch.intel.com with ESMTP; 14 Oct 2011 19:34:46 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Oct 2011 21:34:40 -0500
Message-ID: <1318646080.2368.6.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-emenlow: upgrade clutter .bbappend
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
X-List-Received-Date: Sat, 15 Oct 2011 02:34:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Upgrade clutter bbappend to match upgrade in oe-core.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../clutter/clutter-1.6_1.6.14.bbappend            |    4 ----
 .../clutter/clutter-1.6_1.6.18.bbappend            |    4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)
 delete mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend

diff --git a/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
deleted file mode 100644
index 71677ad..0000000
--- a/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
-
diff --git a/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
new file mode 100644
index 0000000..71677ad
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
@@ -0,0 +1,4 @@
+DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
+EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
+PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
+
-- 
1.7.0.4




