Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2AB4E01424
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2012 12:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139887736"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2012 12:42:15 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:46 -0500
Message-Id: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 01/22] meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
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
X-List-Received-Date: Sat, 12 May 2012 19:42:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add root hub transaction translator support for supporting companion
ohci/uhci controllers , which is safe even if the ehci controller
doesn't have companion controllers.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
index 7322dc2..b977248 100644
--- a/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
+++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
@@ -1 +1,2 @@
 CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_ROOT_HUB_TT=y
-- 
1.7.0.4


