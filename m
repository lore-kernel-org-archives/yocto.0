Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E4BBE0141F
	for <yocto@yoctoproject.org>; Sun,  6 May 2012 09:53:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 May 2012 09:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139511825"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by azsmga001.ch.intel.com with ESMTP; 06 May 2012 09:53:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sun,  6 May 2012 11:53:18 -0500
Message-Id: <5e27b16adb39b121587762b4f0d7aacb432329fc.1336321542.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336321542.git.tom.zanussi@intel.com>
References: <cover.1336321542.git.tom.zanussi@intel.com>
Subject: [PATCH 4/7][KERNEL] meta: add usb/ohci-hcd feature
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
X-List-Received-Date: Sun, 06 May 2012 16:53:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'ohci-hcd' feature that turns on the kernel options required to
support ohci (USB 1.x).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
new file mode 100644
index 0000000..59f6d5f
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_OHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/ohci-hcd.scc b/meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
new file mode 100644
index 0000000..cadcbdf
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for ohci (USB 1.x)"
+define KFEATURE_COMPATIBILITY board
+
+include base.scc
+
+kconf hardware ohci-hcd.cfg
-- 
1.7.0.4


