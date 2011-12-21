Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE1F6E0137F
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:04:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 01:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="88022988"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by azsmga001.ch.intel.com with ESMTP; 21 Dec 2011 01:03:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:52 -0800
Message-Id: <64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
Subject: [PATCH 6/9] distro: Factor out poky-common.inc from poky.conf
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
X-List-Received-Date: Wed, 21 Dec 2011 09:04:01 -0000

Prepare to add additional poky distro variants by factoring out
assignments common to all poky* distros into poky-common.inc. Things
like the naming schemes, mirrors, etc. are common, while dependencies
and other things impacting image generation should be distro specific.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-common.inc |   55 ++++++++++++++++++++++++++++++++
 meta-yocto/conf/distro/poky.conf       |   53 +-----------------------------
 2 files changed, 57 insertions(+), 51 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-common.inc

diff --git a/meta-yocto/conf/distro/poky-common.inc b/meta-yocto/conf/distro/poky-common.inc
new file mode 100644
index 0000000..de41673
--- /dev/null
+++ b/meta-yocto/conf/distro/poky-common.inc
@@ -0,0 +1,55 @@
+DISTRO = ""
+DISTRO_NAME = "Yocto (Built by Poky 6.0)"
+DISTRO_VERSION = "1.1+snapshot-${DATE}"
+SDK_VENDOR = "-pokysdk"
+SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
+
+MAINTAINER = "Poky <poky@yoctoproject.org>"
+
+TARGET_VENDOR = "-poky"
+
+LOCALCONF_VERSION = "1"
+
+DISTRO_FEATURES_append = ""
+
+SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
+SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
+
+EXTRAOPKGCONFIG = "poky-feed-config-opkg"
+
+DISTRO_EXTRA_RDEPENDS += "task-core-boot"
+
+POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
+DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
+DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
+DISTRO_EXTRA_RDEPENDS_append_qemuppc = " ${POKYQEMUDEPS}"
+DISTRO_EXTRA_RDEPENDS_append_qemux86 = " ${POKYQEMUDEPS}"
+DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
+
+TCLIBCAPPEND = ""
+
+QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
+# Other QEMU_TARGETS "mips64 mips64el sh4"
+
+PREMIRRORS ?= "\
+bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
+cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
+git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
+hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
+osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
+p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
+svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
+svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"
+
+MIRRORS =+ "\
+ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
+http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
+https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
+
+# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
+# fetch from the network (and warn you if not). To disable the test set
+# the variable to be empty.
+CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
+                          https://eula-downloads.yoctoproject.org/index.php \
+                          http://bugzilla.yoctoproject.org/report.cgi"
+
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 80d4e47..fe72107 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,14 +1,6 @@
-DISTRO = "poky"
-DISTRO_NAME = "Yocto (Built by Poky 6.0)"
-DISTRO_VERSION = "1.1+snapshot-${DATE}"
-SDK_VENDOR = "-pokysdk"
-SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
-
-MAINTAINER = "Poky <poky@yoctoproject.org>"
+require poky-common.inc
 
-TARGET_VENDOR = "-poky"
-
-LOCALCONF_VERSION = "1"
+DISTRO = "poky"
 
 DISTRO_FEATURES_append = " largefile opengl"
 
@@ -19,45 +11,4 @@ PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.0%"
 PREFERRED_VERSION_linux-yocto_qemumips ?= "3.0%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
 
-SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
-SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-
-EXTRAOPKGCONFIG = "poky-feed-config-opkg"
-
-DISTRO_EXTRA_RDEPENDS += "task-core-boot"
 DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
-
-POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
-DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemuppc = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemux86 = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
-
-TCLIBCAPPEND = ""
-
-QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
-# Other QEMU_TARGETS "mips64 mips64el sh4"
-
-PREMIRRORS ?= "\
-bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
-osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
-svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"
-
-MIRRORS =+ "\
-ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
-http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
-https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
-
-# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
-# fetch from the network (and warn you if not). To disable the test set
-# the variable to be empty.
-CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
-                          https://eula-downloads.yoctoproject.org/index.php \
-                          http://bugzilla.yoctoproject.org/report.cgi"
-
-- 
1.7.6.4


