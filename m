Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E056CE0072B
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 14:50:00 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2011 14:50:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="44978380"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2011 14:50:00 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 14:50:06 -0800
Message-Id: <0a9adcbec9243c3e8d37113d441c9804d6d02a5b.1323296855.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323296855.git.dvhart@linux.intel.com>
References: <cover.1323296855.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323296855.git.dvhart@linux.intel.com>
References: <cover.1323296855.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] Add EFI scc and cfg files
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
X-List-Received-Date: Wed, 07 Dec 2011 22:50:01 -0000

Basic EFI support only requires CONFIG_EFI=y, this is sufficient for
some boards, and desirable for small configs. This is done with efi.scc.

Additional support for CONFIG_EFI_VARS, CONFIG_EFI_PARTITION, and CONFIG_FB_EFI
is provided via efi-ext.scc (extended) as this pulls in the block layer,
framebuffer support, and virtual terminals.

I'd like EFI_VARS to be part of the base config, but I have received
reports of it failing in some situations. Keeping it separate ensures
basic boot can work with the fragments as defined.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/cfg/efi-ext.cfg |   14 ++++++++++++++
 meta/cfg/kernel-cache/cfg/efi-ext.scc |    2 ++
 meta/cfg/kernel-cache/cfg/efi.cfg     |    8 ++++++++
 meta/cfg/kernel-cache/cfg/efi.scc     |    1 +
 4 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.scc
 create mode 100644 meta/cfg/kernel-cache/cfg/efi.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/efi.scc

diff --git a/meta/cfg/kernel-cache/cfg/efi-ext.cfg b/meta/cfg/kernel-cache/cfg/efi-ext.cfg
new file mode 100644
index 0000000..6371da2
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/efi-ext.cfg
@@ -0,0 +1,14 @@
+# Extended EFI support
+
+# Dependencies
+# efi.cfg
+CONFIG_FB=y
+CONFIG_VT=y
+CONFIG_BLOCK=y
+CONFIG_PARTITION_ADVANCED=y
+
+# Add support for optional EFI features
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_FB_EFI=y
+CONFIG_EFI_VARS=y
+CONFIG_EFI_PARTITION=y
diff --git a/meta/cfg/kernel-cache/cfg/efi-ext.scc b/meta/cfg/kernel-cache/cfg/efi-ext.scc
new file mode 100644
index 0000000..4d827d6
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/efi-ext.scc
@@ -0,0 +1,2 @@
+kconf hardware efi.cfg
+kconf hardware efi-ext.cfg
diff --git a/meta/cfg/kernel-cache/cfg/efi.cfg b/meta/cfg/kernel-cache/cfg/efi.cfg
new file mode 100644
index 0000000..7f1a062
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/efi.cfg
@@ -0,0 +1,8 @@
+# EFI Support
+
+# Dependencies
+CONFIG_PCI=y
+CONFIG_ACPI=y
+
+# Enable basic EFI support
+CONFIG_EFI=y
diff --git a/meta/cfg/kernel-cache/cfg/efi.scc b/meta/cfg/kernel-cache/cfg/efi.scc
new file mode 100644
index 0000000..2e42dd6
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/efi.scc
@@ -0,0 +1 @@
+kconf hardware efi.cfg
-- 
1.7.6.4


