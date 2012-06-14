Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20035E0144B
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:28:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jun 2012 13:28:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165794394"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2012 13:28:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	kishore.k.bodke
Date: Thu, 14 Jun 2012 15:28:28 -0500
Message-Id: <e1f26f8f7ec67ca230258e1790aacc812dc76bf7.1339705524.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1339705524.git.tom.zanussi@intel.com>
References: <cover.1339705524.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: update conf/layer.conf BBPATH/BBFILES for meta-intel layer
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
X-List-Received-Date: Thu, 14 Jun 2012 20:28:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Silence the warning:

WARNING: BBPATH references the current directory

as mentioned in [YOCTO #1465].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/layer.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index a5db163..bc31236 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/common/recipes-*/*/*.bb \
             ${LAYERDIR}/common/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "intel"
-- 
1.7.0.4


