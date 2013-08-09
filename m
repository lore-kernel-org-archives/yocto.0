Return-Path: <Holger.Behrens@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF2AE015FD
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r79An9R9029105
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 03:49:09 -0700 (PDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:49:08 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:49 +0200
Message-ID: <1376045330-17216-7-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 7/8] packagegroup-core-boot-genivi: follow oe-core core-boot packagegroup changes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Aug 2013 10:49:11 -0000
Content-Type: text/plain

merged latest changes from oe-core:
    meta/recipes-core/packagegroups/packagegroup-core-boot.bb

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 .../packagegroups/packagegroup-core-boot-genivi.bb |   25 ++++++++++----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb b/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
index e180a53..9c09585 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
@@ -1,15 +1,20 @@
+#
+# Contains changes by Wind River Systems, 2013-08-08
+# Copyright (c) 2013 Wind River Systems, Inc.
 # Copyright (C) 2007 OpenedHand Ltd.
 #
+# derived from oe-core: meta/recipes-core/packagegroups/packagegroup-core-boot.bb
 
-DESCRIPTION = "packagegroup for OpenedHand Poky - minimal bootable image"
+SUMMARY = "Minimal boot requirements"
+DESCRIPTION = "The minimal set of packages required to boot the system"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PACKAGE_ARCH = "${MACHINE_ARCH}"
 DEPENDS = "virtual/kernel"
-PR = "r10"
+PR = "r11"
 
 inherit packagegroup
 
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
 #
 # Set by the machine configuration with packages essential for device bootup
 #
@@ -23,26 +28,22 @@ VIRTUAL-RUNTIME_init_manager ?= "sysvinit"
 VIRTUAL-RUNTIME_initscripts ?= "initscripts"
 VIRTUAL-RUNTIME_keymaps ?= "keymaps"
 
-PACKAGES = "\
-    packagegroup-core-boot-genivi \
-"
-
-RDEPENDS_packagegroup-core-boot-genivi = "\
+RDEPENDS_${PN} = "\
     base-files \
     base-passwd \
     busybox \
-    kmod \
-    ${VIRTUAL-RUNTIME_initscripts} \
     ${@base_contains("MACHINE_FEATURES", "keyboard", "${VIRTUAL-RUNTIME_keymaps}", "", d)} \
     netbase \
     ${VIRTUAL-RUNTIME_login_manager} \
     ${VIRTUAL-RUNTIME_init_manager} \
+    ${VIRTUAL-RUNTIME_initscripts} \
     ${VIRTUAL-RUNTIME_dev_manager} \
     ${VIRTUAL-RUNTIME_update-alternatives} \
     ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS} \
+    kmod \
     procps \
     util-linux-mount \
     "
 
-RRECOMMENDS_packagegroup-core-boot-genivi = "\
+RRECOMMENDS_${PN} = "\
     ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS}"
-- 
1.7.9.5


