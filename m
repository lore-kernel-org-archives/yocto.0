Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B7FBE01421
	for <yocto@yoctoproject.org>; Sun,  6 May 2012 09:53:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 May 2012 09:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="137572913"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 06 May 2012 09:53:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sun,  6 May 2012 11:53:17 -0500
Message-Id: <b1aa595d1cd9dda0e5e39ccf7a70d8e7023e7502.1336321542.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336321542.git.tom.zanussi@intel.com>
References: <cover.1336321542.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Sun, 06 May 2012 16:53:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'ehci-hcd' feature that turns on the kernel options required to
support ehci (USB 2.0).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
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
index 0000000..ec2b06c
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for ehci (USB 2.0)"
+define KFEATURE_COMPATIBILITY board
+
+include base.scc
+
+kconf hardware ehci-hcd.cfg
-- 
1.7.0.4


