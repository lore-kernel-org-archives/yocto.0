Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4806FE01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:45:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2012 11:45:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133803442"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2012 11:45:32 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:19 -0600
Message-Id: <87f409827684e39484900a20531c8a14c0cb91e6.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
References: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1330975070.git.tom.zanussi@linux.intel.com>
References: <cover.1330975070.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 5/5] meta-emenlow: add SRC_URI checksums to libva
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
X-List-Received-Date: Mon, 05 Mar 2012 19:45:33 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add md5 and sha256 checksums to the recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../recipes-graphics/libva/libva_0.31.0.bb         |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb b/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
index 449a44f..cfdc71e 100644
--- a/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
+++ b/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
@@ -30,6 +30,9 @@ SRC_URI = "https://launchpad.net/~gma500/+archive/ppa/+files/libva_0.31.0-1+sds9
 	file://392_compat.dso.patch \
 	file://libdrm-poulsbo.patch"
 
+SRC_URI[md5sum] = "860f13e5a9d09511d7c6807b880e758b"
+SRC_URI[sha256sum] = "306468f87b9e13fdb3b6f0c6e2159b20198b33eed9eda4c31d7381a88911554f"
+
 export LDFLAGS="-Wl,-z,defs"
 
 EXTRA_OECONF = "--disable-i965-driver"
-- 
1.7.1


