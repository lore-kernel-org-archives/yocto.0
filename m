Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98268E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 15:07:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 May 2012 15:07:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="137170694"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2012 15:07:52 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Fri,  4 May 2012 17:07:31 -0500
Message-Id: <71d8929ff51f27808e52e22152c2df9af94a26cd.1336167660.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336167660.git.tom.zanussi@intel.com>
References: <cover.1336167660.git.tom.zanussi@intel.com>
Subject: [PATCH 2/7][KERNEL] meta: add usb/xhci-hcd feature
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
X-List-Received-Date: Fri, 04 May 2012 22:07:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'xhci-hcd' feature that turns on the kernel options required to
support xhci (USB 3.0).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc |    4 ++++
 2 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
new file mode 100644
index 0000000..ae4294b
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_XHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/xhci-hcd.scc b/meta/cfg/kernel-cache/features/usb/xhci-hcd.scc
new file mode 100644
index 0000000..e9af080
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/xhci-hcd.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable options for xhci (USB 3.0)"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware xhci-hcd.cfg
-- 
1.7.0.4


