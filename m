Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3133E0143C
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 15:01:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Jul 2013 15:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,721,1367996400"; d="scan'208";a="271764583"
Received: from qana.jf.intel.com ([10.7.201.146])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Jul 2013 15:01:21 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 64A895F825C9; Mon, 22 Jul 2013 14:50:51 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Jul 2013 14:50:49 -0700
Message-Id: <1374529849-3336-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] poky.conf: Change SDK_NAME to include machine
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Jul 2013 22:01:48 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

When building for multiple arches, you can tromp all over the toolchain
that lives in the deploy directory as the naming is not granular enough.

This patch adds MACHINE to the SDK_NAME so that:

poky-eglibc-arm-toolchain-gmae-1.4+snapshot-20130717.sh

becomes:

poky-eglibc-qemuarm-x86_64-arm-toolchain-gmae-1.4+snapshot-20130717.sh
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7be7d92..4005c1a 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
 
-SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
+SDK_NAME = "${DISTRO}-${TCLIBC}-${MACHINE}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
-- 
1.8.1.2


