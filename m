Return-Path: <andrei.adrianx.dinu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7440CE0152B
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 05:55:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jul 2013 05:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,735,1367996400"; d="scan'208";a="375228918"
Received: from adinu-vostro-460.rb.intel.com ([10.237.105.146])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2013 05:55:04 -0700
From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2013 15:55:37 +0300
Message-Id: <1374670537-30657-1-git-send-email-andrei.adrianx.dinu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] libcap-ng - new recipe needed for meta-security
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
X-List-Received-Date: Wed, 24 Jul 2013 12:55:06 -0000

A script from the meta-security layer had a missing
dependency that prevented it to work correctly.

Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---
 meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb |   12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb

diff --git a/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb b/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb
new file mode 100644
index 0000000..a377ddd
--- /dev/null
+++ b/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb
@@ -0,0 +1,12 @@
+DESCRIPTION = "The libcap-ng library is intended to make programming with posix capabilities much easier than the traditional libcap library."
+HOMEPAGE = "http://people.redhat.com/sgrubb/libcap-ng/index.html"
+LICENSE = "GPL-2.0"
+DEPENDS = "libcap"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/${PN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
+SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
+
+inherit autotools
-- 
1.7.9.5


