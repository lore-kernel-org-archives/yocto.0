Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C566BE0140E
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 May 2012 20:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136422089"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 02 May 2012 20:35:30 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:22 -0500
Message-Id: <2e75ed62b6bfcc587d4b140121ac0f52cff69818.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
References: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336015630.git.tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
Subject: [PATCH 3/5][KERNEL] meta: add usb/ehci-hcd feature
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
X-List-Received-Date: Thu, 03 May 2012 03:35:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'ehci-hcd' feature that turns on the kernel options required to
support ehci (USB 2.0).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../features/usb/ehci-hcd/ehci-hcd.cfg             |    1 +
 .../features/usb/ehci-hcd/ehci-hcd.scc             |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
new file mode 100644
index 0000000..7322dc2
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_EHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc b/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
new file mode 100644
index 0000000..6ed0944
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for ehci (USB 2.0)"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware ehci-hcd.cfg
+
+include features/usb/host/base.scc
-- 
1.7.0.4


