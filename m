Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBB6E0137F
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:03:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 01:03:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="88837764"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 01:03:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:51 -0800
Message-Id: <2ad76233b10f9e4a61a6ecb5490f92fecdc1f1e1.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
Subject: [PATCH 5/9] task-core-boot: Allow DISTRO to disable keymaps
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
X-List-Received-Date: Wed, 21 Dec 2011 09:04:00 -0000

NOTE: I'm looking for a better way to do this.

keymaps pulls in gettext, which can't build without wide character support.

Rather than have to add a -tiny variant of every MACHINE to drop "keyboard" from
the MACHINE_FEATURES, just enable the DISTRO to define what gets added to
RDEPENDS_task-core-boot when MACHINE_FEATURES includes keyboard. By default,
keep "keymaps", but use DISTRO_KEYMAPS if it is set (to "" for example).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-core/tasks/task-core-boot.bb |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/tasks/task-core-boot.bb b/meta/recipes-core/tasks/task-core-boot.bb
index 05c280d..e097836 100644
--- a/meta/recipes-core/tasks/task-core-boot.bb
+++ b/meta/recipes-core/tasks/task-core-boot.bb
@@ -17,6 +17,11 @@ PR = "r9"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= ""
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
 
+#
+# Set by the distro configuration to empty if not supported
+#
+DISTRO_KEYMAPS ?= "keymaps"
+
 # Distro can override dev_manager provider
 VIRTUAL-RUNTIME_dev_manager ?= "udev"
 # Distro can override login_manager provider
@@ -37,7 +42,7 @@ RDEPENDS_task-core-boot = "\
     base-passwd \
     busybox \
     ${VIRTUAL-RUNTIME_initscripts} \
-    ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "", d)} \
+    ${@base_contains("MACHINE_FEATURES", "keyboard", "${DISTRO_KEYMAPS}", "", d)} \
     modutils-initscripts \
     netbase \
     ${VIRTUAL-RUNTIME_login_manager} \
-- 
1.7.6.4


