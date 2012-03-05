Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24AF5E013C3
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:46:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2012 11:46:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="114767390"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2012 11:45:25 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:16 -0600
Message-Id: <274d4e578a73cc4ed96f617ba951c4f312d537c2.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
References: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1330975070.git.tom.zanussi@linux.intel.com>
References: <cover.1330975070.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 2/5] meta-emenlow: add SRC_URI checksums to xserver-psb
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
X-List-Received-Date: Mon, 05 Mar 2012 19:46:26 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add md5 and sha256 checksums to the recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
index 7fd19cb..6b946d6 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
@@ -1,4 +1,7 @@
 require recipes-graphics/xorg-xserver/xserver-xorg.inc
 require xserver-psb-${PV}.inc
 
+SRC_URI[md5sum] = "cafc4e2d4ef6cf6e47f3e7dffeb3346a"
+SRC_URI[sha256sum] = "a89f13b166b412930fe418ff50032dd2cde8bb181d8b47b5ca6f848d218fdcf2"
+
 PE = "1"
-- 
1.7.1


