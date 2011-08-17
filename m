Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49EC7E01223
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Aug 2011 09:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="42362383"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2011 09:51:14 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:05 -0500
Message-Id: <871a54443c1599bd9ce419f70fa5240ef89c445c.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598804.git.tom.zanussi@intel.com>
References: <cover.1313598804.git.tom.zanussi@intel.com>
Subject: [PATCH 04/12] meta-crownbay: make the use of emgd-driver-bin COMMERCIAL
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:04 -0000

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


