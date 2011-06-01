Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 021724C8086F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 12:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="8027653"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2011 12:58:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:55:59 -0500
Message-Id: <ffa242a8fb4b3bdd300bb5fd70cd24b51bc6bc31.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
References: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-crownbay: add common to BBFILES
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
X-List-Received-Date: Wed, 01 Jun 2011 19:58:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add common to BBFILES so crownbay can find recipes it needs from
there.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/layer.conf |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index d15579d..4ffeb2c 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -3,7 +3,9 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend \
+	${LAYERDIR}/../common/recipes-*/*/*.bb \
+	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS_append_crownbay += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
-- 
1.7.0.4


