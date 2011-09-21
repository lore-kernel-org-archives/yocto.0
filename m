Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8E88E004E9
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:34:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Sep 2011 13:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="51974929"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by azsmga001.ch.intel.com with ESMTP; 21 Sep 2011 13:34:59 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:34:53 -0500
Message-Id: <b06469a71dee028cbfc7ac70fa4e62fe9f7f766a.1316616207.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1316616207.git.tom.zanussi@intel.com>
References: <cover.1316616207.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Wed, 21 Sep 2011 20:35:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch emenlow to the 3.0 kernel, lock it down, and update kernel
SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf             |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++++++
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 39930a0..9745531 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
+
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..40984f6
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "yocto/standard/emenlow"
+KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_emenlow ?= "493b09ef2c7124f977421a40955750743a5293d3"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
-- 
1.7.0.4


