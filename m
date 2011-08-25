Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7817AE0123A
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 11:19:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Aug 2011 11:19:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="42259278"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.178])
	by orsmga001.jf.intel.com with ESMTP; 25 Aug 2011 11:19:52 -0700
From: Jessica Zhang <jessica.zhang@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 11:49:12 -0700
Message-Id: <4746db79dc98951e69e0bd902324eda13bf937eb.1314297940.git.jessica.zhang@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1314297940.git.jessica.zhang@intel.com>
References: <cover.1314297940.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1314297940.git.jessica.zhang@intel.com>
References: <cover.1314297940.git.jessica.zhang@intel.com>
Subject: [PATCH 1/1] [YOCTO #1396] Fix adt-installer for consistent naming for powerpc and add all arch template for installation
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
X-List-Received-Date: Thu, 25 Aug 2011 18:19:52 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer.conf     |   17 +++++++++++++++--
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index 0c93237..e31f9af 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -27,7 +27,7 @@ YOCTOADT_REPO="http://adtrepo.yoctoproject.org/$YOCTOADT_VERSION"
 
 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for
-# valid values are: powerpc, mips, arm, x86, x86_64 with space separation between entries
+# valid values are: arm, x86, x86_64, powerpc, mips with space separation between entries
 YOCTOADT_TARGETS="arm x86"
 # Whether install qemu or not, valid entries are: Y/N
 YOCTOADT_QEMU="Y"
@@ -40,7 +40,7 @@ YOCTOADT_NFS_UTIL="Y"
 
 #The followings are for setting up specific target architecture
 #YOCTOADT_ROOTFS_$arch is for specifying what root filesystem image files you want to download from the repository. The valid values to replace $arch are: arm, x86, x86_64, powerpc, mips.  The valid image files are: minimal, minimal-dev, sato, sato-dev, sato-sdk,lsb, lsb-dev, lsb-sdk.  If you want to download multiple images, the entries are space separated
-YOCTOADT_ROOTFS_arm="minimal sato-sdk"
+YOCTOADT_ROOTFS_arm="minimal"
 #Specify which root filesystem file to use to extract as target sysroot.  Please ensure the entry is in the list of downloaded root filesystem files that specified above in YOCTOADT_ROOTFS_$arch
 YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
 #The location where the target sysroot will be setup
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
+#YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc=""
+#YOCTOADT_TARGET_SYSROOT_LOC_powerpc=""
+#YOCTOADT_ROOTFS_powerpc=""
+
+#YOCTOADT_TARGET_SYSROOT_IMAGE_mips=""
+#YOCTOADT_TARGET_SYSROOT_LOC_mips=""
+#YOCTOADT_ROOTFS_mips=""
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 870931e..c7de0e2 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -105,7 +105,7 @@ $OPKG_INSTALL_NATIVE_CMD libtool-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
 
 for native_target_type in $YOCTOADT_TARGETS; do
-  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/ppc/powerpc/'  -e 's/x86$/i586/'`
+  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
   echo_info "Installing cross toolchain for $native_target_type ..."
   echo_info "Installing binutils for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index 2781e77..1de21d7 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -32,7 +32,7 @@ OPKG_LIBDIR="/var/lib"
 # List all supported root fs types and target types,
 # it will be used in user configuration validity checking
 YOCTOADT_SUPPORTED_ROOTFS="minimal minimal-dev sato sato-dev sato-sdk lsb lsb-dev lsb-sdk"
-YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm ppc mips"
+YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
 # Different host (32 bit or 64 bit) will have different opkg
 # configuration files
 YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i686.conf"
-- 
1.7.0.4


