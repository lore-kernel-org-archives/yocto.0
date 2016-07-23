Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B77AE00D35; Sat, 23 Jul 2016 15:18:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 372ECE00D19
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 15:18:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 23 Jul 2016 15:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,411,1464678000"; d="scan'208";a="1022657296"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga002.jf.intel.com with ESMTP; 23 Jul 2016 15:18:27 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Jul 2016 15:19:08 -0700
Message-Id: <1469312349-9657-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][master][PATCH 1/2] qt4-native: fix build for gcc-6
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
X-List-Received-Date: Sat, 23 Jul 2016 22:18:32 -0000

Apply patches from qt4-4.8.7.inc to qt4-native as well.
(Now that Fedora-24 host is gcc-6)

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 recipes-qt4/qt4/qt4-native.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index dac267b..02fd784 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -16,6 +16,8 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0002-qkbdtty_qws-fix-build-with-old-kernel-headers.patch \
            file://0003-webkit2-set-OUTPUT_DIR-value-if-empty.patch \
            file://0021-configure-make-qt4-native-work-with-long-building-pa.patch \
+	   file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
+	   file://gcc-6.patch \
            file://g++.conf \
            file://linux.conf \
 	"
@@ -25,6 +27,9 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
+# workaround for class std::auto_ptr' is deprecated with gcc-6
+CXXFLAGS += "-std=gnu++98 -Wno-deprecated"
+
 EXTRA_OECONF = "-prefix ${prefix} \
                 -bindir ${bindir} \
                 -libdir ${libdir} \
-- 
2.7.4


