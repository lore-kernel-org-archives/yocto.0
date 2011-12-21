Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 120E6E006B5
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 10:58:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2011 10:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104752375"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2011 10:58:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com,
	elizabeth.flanagan@intel.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 21 Dec 2011 10:58:13 -0800
Message-Id: <08c9b5e5635b1322b2c1bc0c6e13f4ce5743c999.1324493490.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
Subject: [PATCH 5/9] task-core-boot: Allow DISTRO to disable keymaps via VIRTUAL-RUNTIME_keymaps
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
X-List-Received-Date: Wed, 21 Dec 2011 18:58:53 -0000

keymaps pulls in gettext, which can't build without wide character support.

Rather than have to add a -tiny variant of every MACHINE to drop "keyboard" from
the MACHINE_FEATURES, just enable the DISTRO to define what gets added to
RDEPENDS_task-core-boot when MACHINE_FEATURES includes keyboard via the
VIRTUAL-RUNTIME_keymaps variable. By default, keep "keymaps".

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-core/tasks/task-core-boot.bb |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/tasks/task-core-boot.bb b/meta/recipes-core/tasks/task-core-boot.bb
index 05c280d..6487436 100644
--- a/meta/recipes-core/tasks/task-core-boot.bb
+++ b/meta/recipes-core/tasks/task-core-boot.bb
@@ -17,14 +17,12 @@ PR = "r9"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= ""
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
 
-# Distro can override dev_manager provider
+# Distro can override the following VIRTUAL-RUNTIME providers:
 VIRTUAL-RUNTIME_dev_manager ?= "udev"
-# Distro can override login_manager provider
 VIRTUAL-RUNTIME_login_manager ?= "tinylogin"
-# Distro can override init_manager provider
 VIRTUAL-RUNTIME_init_manager ?= "sysvinit"
-# Distro can override initscripts provider
 VIRTUAL-RUNTIME_initscripts ?= "initscripts"
+VIRTUAL-RUNTIME_keymaps ?= "keymaps"
 
 PACKAGES = "\
     task-core-boot \
@@ -37,7 +35,7 @@ RDEPENDS_task-core-boot = "\
     base-passwd \
     busybox \
     ${VIRTUAL-RUNTIME_initscripts} \
-    ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "", d)} \
+    ${@base_contains("MACHINE_FEATURES", "keyboard", "${VIRTUAL-RUNTIME_keymaps}", "", d)} \
     modutils-initscripts \
     netbase \
     ${VIRTUAL-RUNTIME_login_manager} \
-- 
1.7.6.4


