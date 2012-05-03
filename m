Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1175BE01415
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 May 2012 20:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="161253087"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by fmsmga002.fm.intel.com with ESMTP; 02 May 2012 20:35:29 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:21 -0500
Message-Id: <ea7f2e1549dce960f9e59e87a0bc7e92734aa152.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
References: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336015630.git.tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
Subject: [PATCH 2/5][KERNEL] meta: add usb/xhci-hcd feature
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
X-List-Received-Date: Thu, 03 May 2012 03:35:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'xhci-hcd' feature that turns on the kernel options required to
support xhci (USB 3.0).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../features/usb/xhci-hcd/xhci-hcd.cfg             |    1 +
 .../features/usb/xhci-hcd/xhci-hcd.scc             |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
new file mode 100644
index 0000000..ae4294b
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_XHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc b/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc
new file mode 100644
index 0000000..e9251af
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for xhci (USB 3.0)"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware xhci-hcd.cfg
+
+include features/usb/host/base.scc
-- 
1.7.0.4


