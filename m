Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6FCDE00CD5; Sun, 24 Sep 2017 14:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AB0FE00BE8
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:54 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2017 14:02:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="903414228"
Received: from linux.intel.com ([10.54.29.200])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2017 14:02:54 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id 73F0758027A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:53 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:38 +0300
Message-Id: <1506287141-3998-3-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
Subject: [meta-java][PATCH 3/6] openjdk-8-cross: provide packageconfig for krb5
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
X-List-Received-Date: Sun, 24 Sep 2017 21:02:55 -0000

Provide PACKAGECONFIG for kerberos to remove dependency on
meta-oe layer.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-core/openjdk/openjdk-8-cross.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index ad3a44d..b46a118 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -18,7 +18,7 @@ PATCHES_URI_append = "\
 
 DEPENDS = "\
     openjdk-8-native zip-native ant-native libxslt \
-    jpeg libpng krb5 libffi fontconfig freetype \
+    jpeg libpng libffi fontconfig freetype \
 "
 
 PRIVATE_LIBS = "\
@@ -49,6 +49,7 @@ PACKAGECONFIG[zero] = "--with-jvm-variants=zero,,,"
 PACKAGECONFIG[shark] = "--with-jvm-variants=zeroshark,,llvm3.5,"
 
 PACKAGECONFIG[repack] = ",,,"
+PACKAGECONFIG[kerberos] = "--enable-system-kerberos,,krb5,"
 
 CACHED_CONFIGUREVARS = " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'ac_x_includes=${STAGING_INCDIR}', '', d)} \
-- 
2.4.0


