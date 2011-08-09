Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BED1E011F9
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 07:38:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Aug 2011 07:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,343,1309762800"; d="scan'208";a="37320262"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2011 07:38:16 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2011 09:37:22 -0500
Message-Id: <58f707b29e20c2f1712da2e0c1eedc78ea7de6c8.1312900412.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <45da8fa294f29787ba25d5fde50130068860864b.1312900412.git.tom.zanussi@intel.com>
References: <45da8fa294f29787ba25d5fde50130068860864b.1312900412.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312900412.git.tom.zanussi@intel.com>
References: <cover.1312900412.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] meta-fishriver: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Tue, 09 Aug 2011 14:38:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch fishriver to the 3.0 kernel, lock it down, and update kernel
SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf         |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++++
 2 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index c59e81d..a44d896 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
+
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..e96751e
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "yocto/standard/fishriver"
+
+SRCREV_machine_pn-linux-yocto_fishriver ?= "e556c2a9403cef5688b55283b1d2bd4ca704dc59"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "76b3679beff6c640388a609ccf87f46bb7bf0f2b"
-- 
1.7.0.4


