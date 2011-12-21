Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BB07E00748
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 23:37:12 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Dec 2011 23:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87998619"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2011 23:37:11 -0800
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Tue, 20 Dec 2011 23:37:03 -0800
Message-Id: <6bd4afcd3f351bb92e2573d487b135c965fce0aa.1324452915.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324452915.git.nitin.a.kamble@intel.com>
References: <cover.1324452915.git.nitin.a.kamble@intel.com>
Subject: [bernard 1/1] binutils-2.21: fix building on suse 11.4
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
X-List-Received-Date: Wed, 21 Dec 2011 07:37:12 -0000

From: Nitin Kamble <nitin@yocto-hm1.jf.intel.com>

x86_64 opensuse 11.4 has bintuils version 2.21, and when this
binutils_2.21 recipe is built for x86_64 target then, the invocation
of distro gcc fails with errors like this:

| /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x86_64-suse-linux/bin/as: symbol lookup error: /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x86_64-suse-linux/bin/as: undefined symbol: concat
| make[2]: *** [sysinfo.o] Error 1

The issue rootcaused as incompatible LD_LIBRARY_PATH while running the distro gcc.

This commit fixes the issue by clearing the LD_LIBRARY_PATH for distro gcc (CC_FOR_BUILD)

This Fixes bug: [YOCTO #1833]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../binutils/binutils-cross-canadian_2.21.bb       |    2 +-
 .../binutils/binutils-crosssdk_2.21.bb             |    2 +-
 meta/recipes-devtools/binutils/binutils.inc        |    2 +-
 meta/recipes-devtools/binutils/binutils_2.21.bb    |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
index 7dad2a6..e91e7dc 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
@@ -1,3 +1,3 @@
 require binutils_${PV}.bb
 require binutils-cross-canadian.inc
-PR = "r0"
+PR = "r1"
diff --git a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb b/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
index 0d6efff..21289cd 100644
--- a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
+++ b/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
@@ -4,7 +4,7 @@ inherit crosssdk
 
 PROVIDES = "virtual/${TARGET_PREFIX}binutils-crosssdk"
 
-PR = "r0"
+PR = "r1"
 
 do_configure_prepend () {
 	sed -i 's#/usr/local/lib /lib /usr/lib#${SDKPATHNATIVE}/lib ${SDKPATHNATIVE}/usr/lib /usr/local/lib /lib /usr/lib#' ${S}/ld/configure.tgt
diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-devtools/binutils/binutils.inc
index d9e859e..1178e0c 100644
--- a/meta/recipes-devtools/binutils/binutils.inc
+++ b/meta/recipes-devtools/binutils/binutils.inc
@@ -71,7 +71,7 @@ export RANLIB_FOR_TARGET = "${TARGET_PREFIX}ranlib"
 export CC_FOR_HOST = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
 export CXX_FOR_HOST = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
 
-export CC_FOR_BUILD = "${BUILD_CC}"
+export CC_FOR_BUILD = "LD_LIBRARY_PATH= ${BUILD_CC}"
 export CPP_FOR_BUILD = "${BUILD_CPP}"
 export CFLAGS_FOR_BUILD = "${BUILD_CFLAGS}"
 
diff --git a/meta/recipes-devtools/binutils/binutils_2.21.bb b/meta/recipes-devtools/binutils/binutils_2.21.bb
index 270c720..f34b69d 100644
--- a/meta/recipes-devtools/binutils/binutils_2.21.bb
+++ b/meta/recipes-devtools/binutils/binutils_2.21.bb
@@ -1,6 +1,6 @@
 require binutils.inc
 
-PR = "r0"
+PR = "r1"
 
 LIC_FILES_CHKSUM="\
     file://src-release;endline=17;md5=4830a9ef968f3b18dd5e9f2c00db2d35\
-- 
1.7.6.4


