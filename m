Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA115E009C9; Wed, 27 Jul 2016 13:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70689E009CA
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 13:45:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jul 2016 13:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,431,1464678000"; d="scan'208";a="1025121656"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga002.jf.intel.com with ESMTP; 27 Jul 2016 13:45:06 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Jul 2016 13:45:55 -0700
Message-Id: <1469652355-27486-3-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469652355-27486-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1469652355-27486-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [meta-qt4][krogoth 2/2] qt4-native: inhibit strip for debug packages
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
X-List-Received-Date: Wed, 27 Jul 2016 20:45:21 -0000

[YOCTO #10038]

Apply the same patch from qt4-4.8.7.inc to qt4-native.
This will avoid "already-stripped" QA warnings

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 recipes-qt4/qt4/qt4-native.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 2aae86a..658b992 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -15,6 +15,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0001-qlibraryinfo-allow-to-set-qt.conf-from-the-outside-u.patch \
            file://0002-qkbdtty_qws-fix-build-with-old-kernel-headers.patch \
            file://0003-webkit2-set-OUTPUT_DIR-value-if-empty.patch \
+	   file://0015-configure-add-nostrip-for-debug-packages.patch  \
            file://0021-configure-make-qt4-native-work-with-long-building-pa.patch \
 	   file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
 	   file://gcc-6.patch \
-- 
2.7.4


