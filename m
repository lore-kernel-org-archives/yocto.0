Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723501"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:58 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 06/13] zephyr-kernel: drop v1.7
Date: Mon,  2 Dec 2019 19:08:42 +0800
Message-Id: <20191202110849.31494-6-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr-kernel-src.bbclass             | 10 -----
 .../zephyr-kernel/zephyr-kernel-src_1.7.bb    | 40 -------------------
 2 files changed, 50 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.7.bb

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index 4a0d554..af53e8e 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -8,12 +8,6 @@ SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=
           file://Makefile.toolchain.yocto "
 PV = "1.6.0"
 
-# FIXME: This points to 1.7.rc4
-SRCREV_1.7 = "3d2893cf85d51ceca04aa3bec2dd5fc77625ff81"
-SRC_URI_1.7 = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.7-branch\
-          file://Makefile.toolchain.yocto "
-PV_1.7 = "1.7.0"
-
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
@@ -23,10 +17,6 @@ python () {
     src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
     if src_pn == '1.6.0':
         return
-    elif src_pn == '1.7.0':
-        d.setVar('SRC_URI',d.getVar('SRC_URI_1.7', True))
-        d.setVar('SRCREV',d.getVar('SRCREV_1.7', True))
-        d.setVar('PV',d.getVar('PV_1.7', True))
     else:
         bb.error("Unsupported Zephyr kernel version requested")
 }
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.7.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.7.bb
deleted file mode 100644
index 63610f3..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.7.bb
+++ /dev/null
@@ -1,40 +0,0 @@
-
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
-
-SRCREV = "3d2893cf85d51ceca04aa3bec2dd5fc77625ff81"
-SRC_URI = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.7-branch"
-SRC_URI += "file://Makefile.toolchain.yocto"
-
-PV = "1.7.0"
-
-S = "${WORKDIR}/git"
-
-IMAGE_NO_MANIFEST = "1"
-INHIBIT_DEFAULT_DEPS = "1"
-
-do_compile[noexec] = "1"
-
-do_configure() {
-    cp ${WORKDIR}/Makefile.toolchain.yocto ${S}/scripts
-}
-
-do_compile () {
-}
-
-
-do_install () {
-    kerneldir=${D}/usr/src/zephyr
-    install -d $kerneldir
-    cp -r ${S}/* $kerneldir
-}
-
-PACKAGES = "${PN}"
-FILES_${PN} = "/usr/src/zephyr"
-
-SYSROOT_DIRS += "/usr/src/zephyr"
-
-#WARNING: zephyr-kernel-src-1.7.0-r0 do_package_qa: QA Issue:
-#   /usr/src/zephyr/scripts/checkpatch.pl contained in package zephyr-kernel-src
-#   requires /usr/bin/perl, but no providers found in RDEPENDS_zephyr-kernel-src?
-INSANE_SKIP_${PN} = "file-rdeps"
-- 
2.17.1

