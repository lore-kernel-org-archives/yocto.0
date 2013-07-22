Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBCBFE0154F
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 15:01:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Jul 2013 15:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,721,1367996400"; d="scan'208";a="335223212"
Received: from qana.jf.intel.com ([10.7.201.146])
	by azsmga001.ch.intel.com with ESMTP; 22 Jul 2013 15:01:44 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 0694E5F825B8; Mon, 22 Jul 2013 15:00:12 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Jul 2013 15:00:11 -0700
Message-Id: <1374530411-3608-1-git-send-email-elizabeth.flanagan@intel.com>
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
X-List-Received-Date: Mon, 22 Jul 2013 22:01:52 -0000

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


