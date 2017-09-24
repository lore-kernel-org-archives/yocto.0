Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 992DEE00CBA; Sun, 24 Sep 2017 14:02:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2495CE00BB7
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:53 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2017 14:02:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="154935923"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga005.fm.intel.com with ESMTP; 24 Sep 2017 14:02:53 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id 5D40D58027A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:52 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:37 +0300
Message-Id: <1506287141-3998-2-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
Subject: [meta-java][PATCH 2/6] openjdk-7-common: provide packageconfig for giflib and krb5
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
X-List-Received-Date: Sun, 24 Sep 2017 21:02:54 -0000

Provide PACKAGECONFIG for giflib and krb5 to remove dependency
on meta-oe layer.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-core/openjdk/openjdk-7-common.inc | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-7-common.inc b/recipes-core/openjdk/openjdk-7-common.inc
index 1ac3154..6727224 100644
--- a/recipes-core/openjdk/openjdk-7-common.inc
+++ b/recipes-core/openjdk/openjdk-7-common.inc
@@ -26,10 +26,9 @@ PROVIDES += "${JDKPN}"
 DEPENDS = " \
     icedtea7-native zip-native ant-native \
     zlib libxslt-native \
-    jpeg libpng giflib \
+    jpeg libpng \
     gtk+ glib-2.0 \
-    cups fontconfig \
-    rhino krb5 \
+    cups fontconfig rhino \
     libxt libxinerama libxrender libxtst libxi \
     freetype alsa-lib libffi \
     attr \
@@ -59,6 +58,10 @@ export CACAO_CONFIGURE_ARGS = " \
 
 JAVA_HOME[unexport] = "1"
 
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[gif] = ",--disable-system-gif, giflib"
+PACKAGECONFIG[kerberos] = ",--disable-system-kerberos, krb5"
+
 EXTRA_OECONF = " \
     --enable-downloading=no \
     \
-- 
2.4.0


