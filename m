Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F037EE0125D
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 16:01:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Sep 2011 16:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,458,1312182000"; d="scan'208";a="56743914"
Received: from unknown (HELO cenodoxus.amr.corp.intel.com) ([10.255.15.60])
	by azsmga001.ch.intel.com with ESMTP; 28 Sep 2011 16:01:30 -0700
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Sep 2011 16:01:23 -0700
Message-Id: <cb0be1df6c4aecd3125affa9fb880780ea9c1999.1317250357.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1317250357.git.elizabeth.flanagan@intel.com>
References: <cover.1317250357.git.elizabeth.flanagan@intel.com>
Subject: [PATCH 1/1] poky.conf: Increment DISTRO_VERSION
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
X-List-Received-Date: Wed, 28 Sep 2011 23:01:31 -0000

From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>

With 1.1 release coming, it's time to increment the DISTRO_VERSION
and poky version.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 46b22f4..80d4e47 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
-DISTRO_NAME = "Yocto (Built by Poky 5.0)"
-DISTRO_VERSION = "1.0+snapshot-${DATE}"
+DISTRO_NAME = "Yocto (Built by Poky 6.0)"
+DISTRO_VERSION = "1.1+snapshot-${DATE}"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
 
-- 
1.7.1


