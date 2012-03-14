Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23632E013BF
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 01:27:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2012 01:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128793152"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.62])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2012 01:27:32 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Mar 2012 16:27:15 +0800
Message-Id: <50f58e5b24baf92b358cd08e6175fd8621ebc34e.1331713200.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331713200.git.lianhao.lu@intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
Subject: [PATCH 1/1] poky.conf: Prefer lttng-ust instead of lttng2-ust.
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
X-List-Received-Date: Wed, 14 Mar 2012 08:27:33 -0000

Fixed bug [YOCTO #2062].

This patch set the PREFERRED_VERVION of lttng-ust to use lttng-ust,
instead of the lttng2-ust.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e4d7c1d..cff4611 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -19,6 +19,9 @@ PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.2%"
 PREFERRED_VERSION_linux-yocto_qemumips ?= "3.2%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.2%"
 
+# Using the older version of lttng, instead of lttng-2
+PREFERRED_VERSION_lttng-ust ?= "0.16"
+
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
-- 
1.7.0.4


