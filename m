Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACFACE00CF9; Sun, 24 Sep 2017 14:02:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50BE7E00CD5
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2017 14:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="1175364708"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga001.jf.intel.com with ESMTP; 24 Sep 2017 14:02:55 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id 8BB4158027A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:54 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:39 +0300
Message-Id: <1506287141-3998-4-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
Subject: [meta-java][PATCH 4/6] openjdk-8-native: provide packageconfig for giflib
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
X-List-Received-Date: Sun, 24 Sep 2017 21:02:57 -0000

provide PACKAGECONFIG for giflib to remove dependency on
meta-oe layer.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-core/openjdk/openjdk-8-native.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/openjdk-8-native.inc b/recipes-core/openjdk/openjdk-8-native.inc
index fd97eff..68e1725 100644
--- a/recipes-core/openjdk/openjdk-8-native.inc
+++ b/recipes-core/openjdk/openjdk-8-native.inc
@@ -2,7 +2,7 @@ JDK_DIR = "openjdk-8-native"
 DEPENDS = "\
     icedtea7-native ant-native \
     libxslt-native attr-native \
-    giflib-native jpeg-native libpng-native \
+    jpeg-native libpng-native \
     glib-2.0-native freetype-native fontconfig-native \
     zlib-native zip-native \
     unzip-native make-native \
@@ -14,6 +14,7 @@ PACKAGECONFIG[x11] = "--with-x,,libx11-native xproto-native libxt-native libxext
 PACKAGECONFIG[cups] = "--with-cups,,cups"
 PACKAGECONFIG[alsa] = "--with-alsa,,alsa-lib-native"
 PACKAGECONFIG[jce] = "--enable-unlimited-crypto,,"
+PACKAGECONFIG[gif] = "--with-giflib,,giflib-native"
 
 EXTRA_OECONF_append = "\
     --with-jobs=${@java_get_parallel_make(d)} \
-- 
2.4.0


