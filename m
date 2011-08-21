Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B818E01213
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 16:15:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2011 16:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="40060264"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.14.3])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2011 16:15:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sun, 21 Aug 2011 16:15:22 -0700
Message-Id: <2c26733e6b34de9080a5ed8798581fa9d90c2bf6.1313968374.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313968374.git.sgw@linux.intel.com>
References: <cover.1313968374.git.sgw@linux.intel.com>
In-Reply-To: <cover.1313968374.git.sgw@linux.intel.com>
References: <cover.1313968374.git.sgw@linux.intel.com>
Subject: [PATCH 1/1] meta-tlk: initial creation
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
X-List-Received-Date: Sun, 21 Aug 2011 23:15:29 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Call this layer whatever you want, but when enabled it turns on BSP configuration
items specific to autobuild/official binary images. Once this is enabled the uptime
of any BSP will be limted to the value in the .cfg. It is currently at 2 minutes
as an example, but it should be extended to a number of days going forward.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

meta-tlk: Rename and changed to 10 day limit

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-tlk/README                                    |    6 ++++++
 meta-tlk/conf/layer.conf                           |    6 ++++++
 .../linux/linux-yocto/time-limited-kernel.cfg      |    3 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++++
 4 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-tlk/README
 create mode 100644 meta-tlk/conf/layer.conf
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-tlk/README b/meta-tlk/README
new file mode 100644
index 0000000..5ff4d3b
--- /dev/null
+++ b/meta-tlk/README
@@ -0,0 +1,6 @@
+meta-autobuilder
+===============
+
+Contains recipe modifications required to produce the official 
+yocto autobuild BSPs.
+
diff --git a/meta-tlk/conf/layer.conf b/meta-tlk/conf/layer.conf
new file mode 100644
index 0000000..9af646f
--- /dev/null
+++ b/meta-tlk/conf/layer.conf
@@ -0,0 +1,6 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a packages directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg b/meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg
new file mode 100644
index 0000000..44f4bea
--- /dev/null
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg
@@ -0,0 +1,3 @@
+CONFIG_UPTIME_LIMITED_KERNEL=y
+CONFIG_UPTIME_LIMIT_DURATION=14400
+CONFIG_UPTIME_LIMIT_KERNEL_REBOOT=y
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..58a6541
--- /dev/null
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# enable the time limited kernel configuration options
+SRC_URI += "file://time-limited-kernel.cfg"
-- 
1.7.6


