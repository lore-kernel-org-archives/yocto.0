Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A2CE005A0
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 14:58:23 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Nov 2011 14:58:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,490,1315206000"; d="scan'208";a="35593112"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Nov 2011 14:58:22 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 10 Nov 2011 16:59:49 -0600
Message-Id: <eb5b35766f8c3438a65a6ad8b856092f7090090b.1320965782.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1320965782.git.tom.zanussi@intel.com>
References: <cover.1320965782.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: fix mesa-dri multiple-providers warning
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
X-List-Received-Date: Thu, 10 Nov 2011 22:58:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

commit 8e14cee (xserver-xorg: Add mesa-dri to depends instead of
virtual/libgl) caused meta-emenlow to start failing with:

NOTE: multiple providers are available for mesa-dri (mesa-dri, xpsb-glx)
NOTE: consider defining a PREFERRED_PROVIDER entry to match mesa-dri

This adds a PREFERRED_PROVIDER for mesa-dri and fixes the problem.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 57a96c3..774ef08 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -21,6 +21,7 @@ PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
 PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
+PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
 XSERVER ?= "xserver-psb \
            xserver-psb-extension-dri \
            xserver-psb-extension-dri2 \
-- 
1.7.0.4


