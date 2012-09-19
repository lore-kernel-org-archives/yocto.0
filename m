Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88360E013F7
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:46:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Sep 2012 15:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,451,1344236400"; d="scan'208";a="195050117"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.166])
	by orsmga001.jf.intel.com with ESMTP; 19 Sep 2012 15:46:26 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 15:46:56 -0700
Message-Id: <0a688885b93413082076671b7168aaf1056bc9e7.1348094339.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <18fcddb5acd36f328312adb04b8b9b1235d31d06.1348094339.git.kishore.k.bodke@intel.com>
References: <18fcddb5acd36f328312adb04b8b9b1235d31d06.1348094339.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1348094339.git.kishore.k.bodke@intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/3] [meta-intel] meta-crystalforest: Add Canterbury Cropus recipe.
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
X-List-Received-Date: Wed, 19 Sep 2012 22:46:26 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add a new recipe for Crystal Forest BSP for testing
the lossless compresstion algorithms with Canterbury Corpus.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../canterbury-corpus/canterbury-corpus.bb         |   40 ++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 meta-crystalforest/recipes-corpus/canterbury-corpus/canterbury-corpus.bb

diff --git a/meta-crystalforest/recipes-corpus/canterbury-corpus/canterbury-corpus.bb b/meta-crystalforest/recipes-corpus/canterbury-corpus/canterbury-corpus.bb
new file mode 100644
index 0000000..6dfdef2
--- /dev/null
+++ b/meta-crystalforest/recipes-corpus/canterbury-corpus/canterbury-corpus.bb
@@ -0,0 +1,40 @@
+SUMMARY = "Intel Quick Assist Driver - Canterbury Corpus"
+DESCRIPTION = "Set of files for testing losless compression algorithms \
+		for Intel Crystal Forest BSP Quick Assist Technology Software Package"
+
+HOMEPAGE = "http://corpus.canterbury.ac.nz"
+SECTION = "misc"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+PR = "r0"
+
+S = "${WORKDIR}/canterbury-corpus"
+
+SRC_URI = "http://corpus.canterbury.ac.nz/resources/cantrbry.tar.gz"
+
+SRC_URI[md5sum] = "442e56cfffdf460d25b0b91650a55908"
+SRC_URI[sha256sum] = "f140e8a5b73d3f53198555a63bfb827889394a42f20825df33c810c3d5e3f8fb"
+
+WARN_QA += "arch"
+
+ERROR_QA = ""
+
+do_package_qa[noexec] = "1"
+
+do_unpack () {
+
+	mkdir -p ${S}
+	tar -xf ${DL_DIR}/cantrbry.tar.gz -C ${S}
+
+}
+
+FILES_${PN} = "/lib/firmware/*"
+
+do_install () {
+
+	install -d ${D}${base_libdir}/firmware
+	install -m 644 ${S}/* ${D}${base_libdir}/firmware
+
+}
-- 
1.7.9.5


