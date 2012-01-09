Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83015E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 12:34:52 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2012 12:34:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94530098"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO localhost)
	([10.7.199.149])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2012 12:34:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon,  9 Jan 2012 12:34:26 -0800
Message-Id: <a198c87b40eaac206b9e59e66a122ef7efa870b2.1326141205.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-intel] phub-util-mac: Add PCH EG20T (Topcliff) MAC address utility
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
X-List-Received-Date: Mon, 09 Jan 2012 20:34:52 -0000

phub-util-mac builds topcliff_mac_util which can be used to
read and write the MAC address for the Intel Platform Controller Hub
EG20T (Topcliff) gigabit ethernet interface.

This is particularly useful for boards without a MAC address pre-configured.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-bsp/phub-util-mac/phub-util-mac_0.0.bb |   21 ++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-bsp/phub-util-mac/phub-util-mac_0.0.bb

diff --git a/common/recipes-bsp/phub-util-mac/phub-util-mac_0.0.bb b/common/recipes-bsp/phub-util-mac/phub-util-mac_0.0.bb
new file mode 100644
index 0000000..85cd8a7
--- /dev/null
+++ b/common/recipes-bsp/phub-util-mac/phub-util-mac_0.0.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "Topcliff MAC address Utility."
+SECTION = "bsp"
+DEPENDS = ""
+HOMEPAGE = ""
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e2643b73e47fa4b29cdfad24ee42bed6"
+PR = "r0"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/generalembedded/Downloads/Utility/phub_util_mac.tar.bz2"
+SRC_URI[md5sum] = "f148f0a515ffa264ca5723df48cb7011"
+
+S = "${WORKDIR}/phub_util_mac/src/"
+
+do_configure () {
+	:
+} 
+
+do_install () {
+	install -d ${D}/${bindir}
+	install -m 0755 ${S}/topcliff_mac_util ${D}/${bindir}
+}
-- 
1.7.6.4


