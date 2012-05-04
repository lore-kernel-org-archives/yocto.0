Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E29CE00746
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 15:08:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 15:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="96571990"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by AZSMGA002.ch.intel.com with ESMTP; 04 May 2012 15:07:55 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Fri,  4 May 2012 17:07:32 -0500
Message-Id: <47d430c295a427aed1ecedd7158bec7c28624da4.1336167660.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336167660.git.tom.zanussi@intel.com>
References: <cover.1336167660.git.tom.zanussi@intel.com>
Subject: [PATCH 3/7][KERNEL] meta: add usb/ehci-hcd feature
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
X-List-Received-Date: Fri, 04 May 2012 22:08:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'ehci-hcd' feature that turns on the kernel options required to
support ehci (USB 2.0).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    4 ++++
 2 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
new file mode 100644
index 0000000..7322dc2
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_EHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc b/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
new file mode 100644
index 0000000..eafc580
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable options for ehci (USB 2.0)"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware ehci-hcd.cfg
-- 
1.7.0.4


