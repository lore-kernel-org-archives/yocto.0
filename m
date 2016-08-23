Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 395C5E00E43; Tue, 23 Aug 2016 09:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 09:08:30 PDT
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB77E00D48
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 09:08:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 23 Aug 2016 09:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,566,1464678000"; d="scan'208";a="1045962281"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2016 09:07:27 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.ger.corp.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 61D726A4006
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 09:07:09 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 19:06:42 +0300
Message-Id: <1471968402-7948-2-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1471968402-7948-1-git-send-email-maxin.john@intel.com>
References: <1471968402-7948-1-git-send-email-maxin.john@intel.com>
Subject: [meta-qt4][PATCH v2 2/2] packagegroup-core-qt4e: updates based on tslib dependency
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
X-List-Received-Date: Tue, 23 Aug 2016 16:08:33 -0000

Since tslib dependency is optional, update the location of
qt4-embedded-plugin-mousedriver-tslib which depends on it.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-qt4/packagegroups/packagegroup-core-qt4e.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb b/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
index eb5fa1f..588e99b 100644
--- a/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
+++ b/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
@@ -7,7 +7,7 @@ COMPATIBLE_HOST_mips64 = "null"
 
 inherit packagegroup
 
-TOUCH = ' ${@bb.utils.contains("MACHINE_FEATURES", "touchscreen", "tslib tslib-calibrate tslib-tests", "",d)}'
+TOUCH = ' ${@bb.utils.contains("MACHINE_FEATURES", "touchscreen", "tslib tslib-calibrate tslib-tests qt4-embedded-plugin-mousedriver-tslib", "",d)}'
 
 RDEPENDS_${PN} = " \
 	qt4-embedded \
@@ -35,7 +35,6 @@ RDEPENDS_${PN} = " \
 	qt4-embedded-plugin-imageformat-mng \
 	qt4-embedded-plugin-imageformat-svg \
 	qt4-embedded-plugin-imageformat-tiff \
-	qt4-embedded-plugin-mousedriver-tslib \
 	qt4-embedded-plugin-script-dbus \
 	qt4-embedded-plugin-sqldriver-sqlite \
 	${TOUCH} \
-- 
2.4.0


