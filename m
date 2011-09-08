Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EEA0E012B5
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 12:27:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Sep 2011 12:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="46553814"
Received: from unknown (HELO localhost) ([10.255.14.214])
	by orsmga001.jf.intel.com with ESMTP; 08 Sep 2011 12:27:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  8 Sep 2011 14:27:43 -0500
Message-Id: <be9fcfde6bd96aab43de9e29f36e28a6423d7d4a.1315509303.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1315509303.git.tom.zanussi@intel.com>
References: <cover.1315509303.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel/common: create a grub2 version initramfs-live-install
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
X-List-Received-Date: Thu, 08 Sep 2011 19:27:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

x86_64 compatibility was removed from the oe-core
initramfs-live-install because it didn't work well with grub 0.97.
The meta-intel x86-64 machines still need to use
initramfs-live-install so we need an x86_64-compatible recipe.

More fixes for [YOCTO #1428].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../initrdscripts/initramfs-live-install_2.0.bb    |   24 ++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_2.0.bb

diff --git a/common/recipes-core/initrdscripts/initramfs-live-install_2.0.bb b/common/recipes-core/initrdscripts/initramfs-live-install_2.0.bb
new file mode 100644
index 0000000..da8a64d
--- /dev/null
+++ b/common/recipes-core/initrdscripts/initramfs-live-install_2.0.bb
@@ -0,0 +1,24 @@
+DESCRIPTION = "A live image init script"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+SRC_URI = "file://init-install.sh"
+
+PR = "r0"
+
+RDEPENDS="grub parted e2fsprogs-mke2fs"
+
+do_install() {
+        install -m 0755 ${WORKDIR}/init-install.sh ${D}/install.sh
+}
+
+# While this package maybe an allarch due to it being a 
+# simple script, reality is that it is Host specific based
+# on the COMPATIBLE_HOST below, which needs to take precedence
+#inherit allarch
+INHIBIT_DEFAULT_DEPS = "1"
+
+FILES_${PN} = " /install.sh "
+
+# Alternatives to grub need adding for other arch support
+# consistent with grub 1.98 (grub 2)
+COMPATIBLE_HOST = "x86_64.*-linux"
-- 
1.7.0.4


