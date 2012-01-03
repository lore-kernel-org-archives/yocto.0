Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43665E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 08:18:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52838437"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.127])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2012 08:18:34 -0800
Message-Id: <892bc85cdff9d609ff0ef12f9654ac6c9e314161.1325607441.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
Subject: [CONSOLIDATED PULL (meta-yocto) 3/4] distro: Add POKY_DEFAULT_EXTRA_R* variables
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
X-List-Received-Date: Tue, 03 Jan 2012 16:18:39 -0000

From: Darren Hart <dvhart@linux.intel.com>

Allow the reuse of poky.conf by distro definitions wanting to remove
content by introducting POKY_DEFAULT_EXTRA_R*. These are appended
to the corresponding DISTRO_EXTRA_R* variables and can be overriden
by distro configs that "require poky.conf".

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 80d4e47..86f9bf6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -24,8 +24,12 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 
-DISTRO_EXTRA_RDEPENDS += "task-core-boot"
-DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
+# Override these in poky based distros to modify DISTRO_EXTRA_R*
+POKY_DEFAULT_EXTRA_RDEPENDS = "task-core-boot"
+POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
+
+DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
+DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
 POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
 DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
-- 
1.7.6.4


