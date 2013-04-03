Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D736E0147D
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 15:14:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2013 15:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,403,1363158000"; d="scan'208";a="289011104"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2013 15:14:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed,  3 Apr 2013 15:16:25 -0700
Message-Id: <9df95d49188bacbe180bfac67edfaa682d542ed3.1365027385.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] [poky-extras] linux-yocto*3.8: Add bbappend for linux-yocto 3.8 recipes
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
X-List-Received-Date: Wed, 03 Apr 2013 22:14:09 -0000

Enable meta-kernel-dev support for the 3.8 kernels.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.8.bbappend              |   25 ++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |   25 ++++++++++++++++++++
 2 files changed, 50 insertions(+), 0 deletions(-)
 create mode 100644 meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
 create mode 100644 meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
new file mode 100644
index 0000000..18eab0d
--- /dev/null
+++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
@@ -0,0 +1,25 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+COMPATIBLE_MACHINE = "${MACHINE}"
+
+# Note: put these in your local.conf to avoid multi-kernel build errors
+# PREFERRED_VERSION_linux-yocto-rt_${MACHINE} = "3.8%"
+
+# KMACHINE is the branch to build
+# KMACHINE_<MACHINE> ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
+
+# KERNEL_FEATURES are features to be added to the kernel, and must
+# point to configurations stored on the 'meta' branch of the kernel
+# that is being built.
+# KERNEL_FEATURES ?= <FOO>
+
+# It is often nice to have a local clone of the kernel repos, to
+# allow patches to be staged, branches created, etc. Modify
+
+# KSRC_linux_yocto_3_8 to point to your local clone as appropriate.
+# KSRC_linux_yocto_3_8 ?= "/path/to/local/linux-yocto-3.8.git/"
+#SRC_URI = "git://${KSRC_linux_yocto_3_8};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
+SRCREV_machine_${MACHINE}="${AUTOREV}"
+SRCREV_meta="${AUTOREV}"
+LOCALCOUNT = "0"
diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..9e61e33
--- /dev/null
+++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,25 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+COMPATIBLE_MACHINE = "${MACHINE}"
+
+# Note: put these in your local.conf to avoid multi-kernel build errors
+# PREFERRED_VERSION_linux-yocto_${MACHINE} = "3.8%"
+
+# KMACHINE is the branch to build
+# KMACHINE_<MACHINE> ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
+
+# KERNEL_FEATURES are features to be added to the kernel, and must
+# point to configurations stored on the 'meta' branch of the kernel
+# that is being built.
+# KERNEL_FEATURES ?= <FOO>
+
+# It is often nice to have a local clone of the kernel repos, to
+# allow patches to be staged, branches created, etc. Modify
+
+# KSRC_linux_yocto_3_8 to point to your local clone as appropriate.
+# KSRC_linux_yocto_3_8 ?= "/path/to/local/linux-yocto-3.8.git/"
+# SRC_URI = "git://${KSRC_linux_yocto_3_8};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
+SRCREV_machine_${MACHINE}="${AUTOREV}"
+SRCREV_meta="${AUTOREV}"
+LOCALCOUNT = "0"
-- 
1.7.5.4


