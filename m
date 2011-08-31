Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBAD8E01245
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 11:32:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Aug 2011 11:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44095033"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.178])
	by orsmga001.jf.intel.com with ESMTP; 31 Aug 2011 11:32:40 -0700
From: Jessica Zhang <jessica.zhang@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2011 12:03:07 -0700
Message-Id: <d59103e3ecc843181ffc60d8bbdc49fe4d11dea3.1314817176.git.jessica.zhang@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1314817176.git.jessica.zhang@intel.com>
References: <cover.1314817176.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1314817176.git.jessica.zhang@intel.com>
References: <cover.1314817176.git.jessica.zhang@intel.com>
Subject: [PATCH 2/2] [YOCTO #1396] Fix powerpc term and provide more template for different arches
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
X-List-Received-Date: Wed, 31 Aug 2011 18:32:41 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer.conf     |   15 ++++++++++++++-
 1 files changed, 14 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index 0c93237..2038b09 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -27,7 +27,7 @@ YOCTOADT_REPO="http://adtrepo.yoctoproject.org/$YOCTOADT_VERSION"
 
 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for
-# valid values are: powerpc, mips, arm, x86, x86_64 with space separation between entries
+# valid values are: arm, x86, x86_64, ppc, mips with space separation between entries
 YOCTOADT_TARGETS="arm x86"
 # Whether install qemu or not, valid entries are: Y/N
 YOCTOADT_QEMU="Y"
@@ -50,3 +50,16 @@ YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm"
 #YOCTOADT_ROOTFS_x86="sato-sdk"
 #YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sato-sdk"
 #YOCTOADT_TARGET_SYSROOT_LOC_x86="$HOME/test-yocto/x86"
+
+#Here's some template of other arches, which you need to change the value in ""
+#YOCTOADT_TARGET_SYSROOT_IMAGE_x86_64=""
+#YOCTOADT_TARGET_SYSROOT_LOC_x86_64=""
+#YOCTOADT_ROOTFS_x86_64=""
+
+#YOCTOADT_TARGET_SYSROOT_IMAGE_ppc=""
+#YOCTOADT_TARGET_SYSROOT_LOC_ppc=""
+#YOCTOADT_ROOTFS_ppc=""
+
+#YOCTOADT_TARGET_SYSROOT_IMAGE_mips=""
+#YOCTOADT_TARGET_SYSROOT_LOC_mips=""
+#YOCTOADT_ROOTFS_mips=""
-- 
1.7.0.4


