Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A6BEE01414
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 May 2012 20:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="139459016"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2012 20:35:27 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:20 -0500
Message-Id: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1336015630.git.tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
Subject: [PATCH 1/5][KERNEL] meta: add usb/host/base feature
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
X-List-Received-Date: Thu, 03 May 2012 03:35:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a feature to enable 'base' support for USB, mainly to be included
by derived features such as ehch, xhci, etc.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/usb/host/base.cfg |    3 +++
 meta/cfg/kernel-cache/features/usb/host/base.scc |    4 ++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
 create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc

diff --git a/meta/cfg/kernel-cache/features/usb/host/base.cfg b/meta/cfg/kernel-cache/features/usb/host/base.cfg
new file mode 100644
index 0000000..dec6a47
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/host/base.cfg
@@ -0,0 +1,3 @@
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+
diff --git a/meta/cfg/kernel-cache/features/usb/host/base.scc b/meta/cfg/kernel-cache/features/usb/host/base.scc
new file mode 100644
index 0000000..3c93475
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/usb/host/base.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable core options for USB support"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware base.cfg
-- 
1.7.0.4


