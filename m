Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60C99E00BE8; Sun, 24 Sep 2017 14:02:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF23E00B8B
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:52 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 24 Sep 2017 14:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="131893243"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga004.jf.intel.com with ESMTP; 24 Sep 2017 14:02:51 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id 47E4758027A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:51 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:36 +0300
Message-Id: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [meta-java][PATCH 1/6] icedtea7-native: provide packageconfig for giflib
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 24 Sep 2017 21:02:53 -0000

Provide PACKAGECONFIG for giflib to remove dependency on
meta-oe layer.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-core/icedtea/icedtea7-native.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/icedtea/icedtea7-native.inc b/recipes-core/icedtea/icedtea7-native.inc
index 55cb7e7..7b2f497 100644
--- a/recipes-core/icedtea/icedtea7-native.inc
+++ b/recipes-core/icedtea/icedtea7-native.inc
@@ -5,7 +5,7 @@ INC_PR = "r1"
 
 DEPENDS = "virtual/javac-native virtual/java-native classpath-native \
            rhino-native ant-native libxslt-native attr-native \
-           giflib-native jpeg-native libpng-native \
+           jpeg-native libpng-native \
            glib-2.0-native freetype-native zlib-native \
            fontconfig-native zip-native \
 	   unzip-native make-native util-linux-native\
@@ -13,6 +13,7 @@ DEPENDS = "virtual/javac-native virtual/java-native classpath-native \
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[x11] = ",--disable-headful,libx11-native xproto-native libxt-native libxext-native libxrender-native"
+PACKAGECONFIG[gif] = ",--disable-system-gif, giflib-native"
 
 OEMAKE_BUILD_HEADLESS_ONLY = "${@bb.utils.contains('PACKAGECONFIG', 'x11', '', 'BUILD_HEADLESS_ONLY=1', d)}"
 CFLAGS_append = "${@bb.utils.contains('PACKAGECONFIG', 'x11', '', ' -DHEADLESS=true', d)}"
-- 
2.4.0


