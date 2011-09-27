Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 044D9E006D3
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 20:59:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Sep 2011 20:59:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,447,1312182000"; d="scan'208";a="67759365"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by fmsmga001.fm.intel.com with ESMTP; 26 Sep 2011 20:59:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 26 Sep 2011 22:57:45 -0500
Message-Id: <ac16720e8a1f3b69de822a147f96a8196246b736.1317095647.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9639c9ceb8b412d861920c9585f9ca6297e290f3.1317095647.git.tom.zanussi@intel.com>
References: <9639c9ceb8b412d861920c9585f9ca6297e290f3.1317095647.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317095647.git.tom.zanussi@intel.com>
References: <cover.1317095647.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-crownbay: remove emgd-1.6
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
X-List-Received-Date: Tue, 27 Sep 2011 03:59:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd-1.6 is now obsoleted by emgd-1.8, so remove support for it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |    2 +-
 .../xorg-xserver/emgd-driver-bin_1.6.bb            |   25 --------------------
 2 files changed, 1 insertions(+), 26 deletions(-)
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
index 88e8a55..8dc43ea 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
@@ -6,7 +6,7 @@ see the README in meta-crownbay/ for instructions on the (simple) manual \
 steps necessary to make the necessary binaries available to this recipe.  \
 Please do that before building an image."
 LICENSE = "Intel-binary-only"
-PR = "r1"
+PR = "r7"
 
 LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
 
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
deleted file mode 100644
index e69de29..0000000
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb
deleted file mode 100644
index 4d5d1e2..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-SUMMARY = "EMGD 1.6 xserver binaries"
-DESCRIPTION = "EMGD 1.6 includes some userspace binaries that use non-free licensing.  Intel Open Source Technology Center unfortunately has no power to change that, but tries to make their use as painless as possible.  Please see the README in meta-crownbay/ for instructions on the (simple) manual steps necessary to make the necessary binaries available to this recipe.  Please do that before building an image."
-
-LICENSE = "Intel-binary-only"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
-PR = "r0"
-
-FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.6"
-
-FILES_${PN} = "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/drivers"
-
-SRC_URI = "file://lib \
-           file://License.txt"
-
-S = "${WORKDIR}"
-
-do_install () {
-	install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/modules/drivers
-
-	cp -PR	${S}/lib/lib*					${D}${libdir}
-	install -m 0755	${S}/lib/xorg/modules/drivers/*		${D}${libdir}/xorg/modules/drivers/
-	install -m 0755	${S}/lib/dri/*				${D}${libdir}/dri/
-}
-
-LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


