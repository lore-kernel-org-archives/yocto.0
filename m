Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E471E013DB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:46:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Sep 2012 15:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,451,1344236400"; d="scan'208";a="208202851"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.166])
	by orsmga002.jf.intel.com with ESMTP; 19 Sep 2012 15:46:21 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 15:46:55 -0700
Message-Id: <18fcddb5acd36f328312adb04b8b9b1235d31d06.1348094339.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1348094339.git.kishore.k.bodke@intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/3] [meta-intel] meta-crystalforest: Add Calgary Corpus recipe.
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
X-List-Received-Date: Wed, 19 Sep 2012 22:46:24 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add a new recipe Calgary Corpus for Crystal Forest BSP
for testing the lossless compression algorithms.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../calgary-corpus/calgary-corpus.bb               |   27 ++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 meta-crystalforest/recipes-corpus/calgary-corpus/calgary-corpus.bb

diff --git a/meta-crystalforest/recipes-corpus/calgary-corpus/calgary-corpus.bb b/meta-crystalforest/recipes-corpus/calgary-corpus/calgary-corpus.bb
new file mode 100644
index 0000000..fbcbda2
--- /dev/null
+++ b/meta-crystalforest/recipes-corpus/calgary-corpus/calgary-corpus.bb
@@ -0,0 +1,27 @@
+SUMMARY = "Set of files for testing losless compression algorithms"
+DESCRIPTION = "Set of files for testing losless compression algorithms"
+HOMEPAGE = "http://corpus.canterbury.ac.nz"
+SECTION = "misc"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+S = "${WORKDIR}/corpus"
+
+SRC_URI = "http://corpus.canterbury.ac.nz/resources/calgary.tar.gz"
+
+SRC_URI[md5sum] = "651d06b35d3d39522157cf8dc4a3d01c"
+SRC_URI[sha256sum] = "e109eebdc19c5cee533c58bd6a49a4be3a77cc52f84ba234a089148a4f2093b7"
+
+do_unpack () {
+	
+	mkdir -p ${S}
+	tar -xf ${DL_DIR}/calgary.tar.gz -C ${WORKDIR}/corpus
+}
+
+FILES_${PN} = "/lib/firmware/*" 
+
+do_install () {
+
+	install -d ${D}/lib/firmware
+	install -m 664 ${S}/* ${D}/lib/firmware
+}
-- 
1.7.9.5


