Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC558E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:46:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Sep 2012 15:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,451,1344236400"; d="scan'208";a="194743939"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.166])
	by azsmga001.ch.intel.com with ESMTP; 19 Sep 2012 15:46:32 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 15:46:57 -0700
Message-Id: <3c259d65d5503d566558b9eb04651a5e2e565545.1348094339.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <18fcddb5acd36f328312adb04b8b9b1235d31d06.1348094339.git.kishore.k.bodke@intel.com>
References: <18fcddb5acd36f328312adb04b8b9b1235d31d06.1348094339.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1348094339.git.kishore.k.bodke@intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
Subject: [PATCH 3/3] [meta-intel] meta-crystalforest: Add Silesia Corpus recipe.
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
X-List-Received-Date: Wed, 19 Sep 2012 22:47:00 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add a new recipe Silesia Corpus for testing with another
Data Compression algorithm for Crystal Forest BSP.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../silesia-corpus/silesia-corpus.bb               |   32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 meta-crystalforest/recipes-corpus/silesia-corpus/silesia-corpus.bb

diff --git a/meta-crystalforest/recipes-corpus/silesia-corpus/silesia-corpus.bb b/meta-crystalforest/recipes-corpus/silesia-corpus/silesia-corpus.bb
new file mode 100644
index 0000000..73058eb
--- /dev/null
+++ b/meta-crystalforest/recipes-corpus/silesia-corpus/silesia-corpus.bb
@@ -0,0 +1,32 @@
+SUMMARY = "The Data Compression Resource on the Internet"
+DESCRIPTION = "The intention of the Silesia corpus is to provide a data set of files \
+		that covers the typical data types used nowadays. \
+		The sizes of the files are between 6 MB and 51 MB."
+
+HOMEPAGE = "http://www.data-compression.info/index.htm"
+SECTION = "misc"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+PR="r0"
+
+S = "${WORKDIR}/silesia-corpus"
+
+SRC_URI = "http://sun.aei.polsl.pl/~sdeor/corpus/silesia.zip"
+
+SRC_URI[md5sum] = "c240c17d6805fb8a0bde763f1b94cd99"
+SRC_URI[sha256sum] = "0626e25f45c0ffb5dc801f13b7c82a3b75743ba07e3a71835a41e3d9f63c77af"
+
+do_unpack () {
+ 	 mkdir -p ${S}
+	cp ${DL_DIR}/silesia.zip ${S}
+	cd ${S} && unzip silesia.zip
+}
+
+do_install () {
+
+	install -d 			${D}${base_libdir}/firmware
+	install -m 664 ${S}/* 		${D}${base_libdir}/firmware
+}
+
+FILES_${PN} = "/lib/firmware/*"
-- 
1.7.9.5


