Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D25FE01423
	for <yocto@yoctoproject.org>; Sun,  6 May 2012 09:53:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 May 2012 09:53:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="96972110"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by AZSMGA002.ch.intel.com with ESMTP; 06 May 2012 09:53:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sun,  6 May 2012 11:53:19 -0500
Message-Id: <9a92eff62b98533a9cf93154cbe7a5b256e93485.1336321542.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336321542.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336321542.git.tom.zanussi@intel.com>
References: <cover.1336321542.git.tom.zanussi@intel.com>
Subject: [PATCH 5/7][KERNEL] meta: add usb/uhci-hcd feature
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
X-List-Received-Date: Sun, 06 May 2012 16:53:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'uhci-hcd' feature that turns on the kernel options required to
support uhci (USB 1.x).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg |    1 +
 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc

diff --git a/meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
new file mode 100644
index 0000000..9c9d8c2
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
@@ -0,0 +1 @@
+CONFIG_USB_UHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/features/usb/uhci-hcd.scc b/meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
new file mode 100644
index 0000000..aaf3c2b
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for uhci (USB 1.x)"
+define KFEATURE_COMPATIBILITY board
+
+include base.scc
+
+kconf hardware uhci-hcd.cfg
-- 
1.7.0.4


