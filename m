Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEF5E006B5
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 10:58:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2011 10:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89035076"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 10:58:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com,
	elizabeth.flanagan@intel.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 21 Dec 2011 10:58:14 -0800
Message-Id: <7efa92333bfb6fb2eb58f1403b9e61ebd7455522.1324493490.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
Subject: [PATCH 6/9] distro: Add POKY_DEFAULT_EXTRA_R* variables
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
X-List-Received-Date: Wed, 21 Dec 2011 18:58:50 -0000

Allow the reuse of poky.conf by distro definitions wanting to remove
content by introducting POKY_DEFAULT_EXTRA_R*. These are appended
to the corresponding DISTRO_EXTRA_R* variables and can be overriden
by distro configs that "require poky.conf".

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 80d4e47..43945be 100644
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
+DISTRO_EXTRA_RDEPENDS += ${POKY_DEFAULT_EXTRA_RDEPENDS}
+DISTRO_EXTRA_RRECOMMENDS += ${POKY_DEFAULT_EXTRA_RRECOMMENDS}
 
 POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
 DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
-- 
1.7.6.4


