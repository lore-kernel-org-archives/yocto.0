Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B99DE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2012 14:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147944608"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2012 14:50:16 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:28 -0500
Message-Id: <f9adeb6cab4808a9cbc1c83ce29b5450bc8b5953.1337981719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 03/22] meta-intel: new libva-1.0.15 recipe
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
X-List-Received-Date: Fri, 25 May 2012 21:50:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This upgrades libva to libva-1.0.15.  Intel-specific changes have been
split out into intel-driver-1.0.15, contained in a separate recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/libva/libva_1.0.15.bb |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb

diff --git a/common/recipes-multimedia/libva/libva_1.0.15.bb b/common/recipes-multimedia/libva/libva_1.0.15.bb
new file mode 100644
index 0000000..e60a4b6
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva_1.0.15.bb
@@ -0,0 +1,8 @@
+require libva.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI = "http://cgit.freedesktop.org/vaapi/libva/snapshot/libva-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "ad8a94ba87ff0563a533c3c142816794"
+SRC_URI[sha256sum] = "7cc24ae9c947aa13904255244810d3637b03d41e2b6f4b643db3b97412cacd37"
-- 
1.7.0.4


