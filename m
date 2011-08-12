Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 925CBE01207
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:33:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Aug 2011 12:34:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,364,1309762800"; d="scan'208";a="37941420"
Received: from unknown (HELO localhost) ([10.255.14.198])
	by azsmga001.ch.intel.com with ESMTP; 12 Aug 2011 12:34:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 12 Aug 2011 14:33:50 -0500
Message-Id: <a1f110becb45ffabb141f7981cfba928db2f692b.1313172146.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <bbf43b0c5f15b04eba02debf43d19ed1899423ab.1313172146.git.tom.zanussi@intel.com>
References: <bbf43b0c5f15b04eba02debf43d19ed1899423ab.1313172146.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313172146.git.tom.zanussi@intel.com>
References: <cover.1313172146.git.tom.zanussi@intel.com>
Subject: [PATCH 4/6] meta-crownbay: make the use of emgd-driver-bin COMMERCIAL
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
X-List-Received-Date: Fri, 12 Aug 2011 19:33:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The emgd-driver-bin recipe now automatically downloads and installs
EMGD using the new click-through-free tarball, but since the binaries
still fall under a non-free license, we need to prevent it from being
accidentally installed in an image.

We therefore make sure it's labeled in the crownbay layer with
'COMMERCIAL_LICENSE'.  In order to build a crownbay image, the user
now needs to add a 'COMMERCIAL_LICENSE = ""' line to local.conf.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/layer.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index 9b71700..d4877d6 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -10,3 +10,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay = "6"
+
+COMMERCIAL_LICENSE += "emgd-driver-bin"
-- 
1.7.0.4


