Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 148AA4C803E4
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 14:20:24 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2011 12:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; d="scan'208";a="37179398"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2011 12:20:23 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2011 14:20:20 -0500
Message-Id: <7c582716d500dd81d9b66492c11d6f884f513c3b.1312312425.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1312312425.git.tom.zanussi@intel.com>
References: <cover.1312312425.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-crownbay: fix BBFILES in crownbay layer.conf
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
X-List-Received-Date: Tue, 02 Aug 2011 19:20:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The BBFILES append in crownbay's layer.conf is too broad and causes
the wrong init-install.sh to be picked up, causing a bad grub install.
Narrow down the BBFILES to include only what is actually needed.

Fixes [YOCTO #1257].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/layer.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index 9c3794b..9b71700 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -4,8 +4,8 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend \
-	${LAYERDIR}/../common/recipes-*/*/*.bb \
-	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
+	${LAYERDIR}/../common/recipes-graphics/*/*.bb \
+	${LAYERDIR}/../common/recipes-graphics/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
-- 
1.7.0.4


