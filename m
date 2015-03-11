Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 660A1E00754; Wed, 11 Mar 2015 14:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9CDEE0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 14:28:36 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2015 14:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,384,1422950400"; d="scan'208";a="539583196"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 11 Mar 2015 14:27:57 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.65])
	by linux.intel.com (Postfix) with ESMTP id D0B63300001;
	Wed, 11 Mar 2015 14:28:18 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Mar 2015 23:28:13 +0200
Message-Id: <1426109293-4970-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] Get rid of do_shared_workdir task
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
X-List-Received-Date: Wed, 11 Mar 2015 21:28:38 -0000

Merged do_shared_workdir into kernel_do_compile

This change should fix race condition between do_compilemodules
and do_shared_workdir. Race occurs when do_compilemodules changes
include/generated/ directory content while do_shared_workdir
tries to copy it.

Fixes [YOCTO #7321]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta/classes/kernel-yocto.bbclass                | 2 +-
 meta/classes/kernel.bbclass                      | 5 ++---
 meta/classes/module-base.bbclass                 | 2 +-
 meta/recipes-kernel/linux/kernel-devsrc.bb       | 2 +-
 meta/recipes-kernel/linux/linux-dummy.bb         | 5 -----
 meta/recipes-kernel/lttng/lttng-modules_2.6.0.bb | 2 +-
 meta/recipes-kernel/perf/perf.bb                 | 2 +-
 7 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 8db4899..27a027d 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -1,5 +1,5 @@
 # remove tasks that modify the source tree in case externalsrc is inherited
-SRCTREECOVEREDTASKS += "do_kernel_link_vmlinux do_kernel_configme do_validate_branches do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch do_unpack do_patch"
+SRCTREECOVEREDTASKS += "do_kernel_link_vmlinux do_kernel_configme do_validate_branches do_kernel_configcheck do_kernel_checkout do_fetch do_unpack do_patch"
 
 # returns local (absolute) path names for all valid patches in the
 # src_uri
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 125ed88..7914242 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -192,6 +192,7 @@ kernel_do_compile() {
 	if test "${KERNEL_IMAGETYPE_FOR_MAKE}.gz" = "${KERNEL_IMAGETYPE}"; then
 		gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
 	fi
+	shared_workdir
 }
 
 do_compile_kernelmodules() {
@@ -234,8 +235,6 @@ kernel_do_install() {
 }
 do_install[prefuncs] += "package_get_auto_pr"
 
-addtask shared_workdir after do_compile before do_install
-
 emit_depmod_pkgdata() {
 	# Stash data for depmod
 	install -d ${PKGDESTWORK}/kernel-depmod/
@@ -245,7 +244,7 @@ emit_depmod_pkgdata() {
 
 PACKAGEFUNCS += "emit_depmod_pkgdata"
 
-do_shared_workdir () {
+shared_workdir () {
 	cd ${B}
 
 	kerneldir=${STAGING_KERNEL_BUILDDIR}
diff --git a/meta/classes/module-base.bbclass b/meta/classes/module-base.bbclass
index 3eb2e92..31ab95f 100644
--- a/meta/classes/module-base.bbclass
+++ b/meta/classes/module-base.bbclass
@@ -15,7 +15,7 @@ KERNEL_OBJECT_SUFFIX = ".ko"
 # kernel modules are generally machine specific
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
-do_configure[depends] += "virtual/kernel:do_shared_workdir"
+do_configure[depends] += "virtual/kernel:kernel_do_compile"
 
 # Function to ensure the kernel scripts are created. Expected to
 # be called before do_compile. See module.bbclass for an exmaple.
diff --git a/meta/recipes-kernel/linux/kernel-devsrc.bb b/meta/recipes-kernel/linux/kernel-devsrc.bb
index e36de1b..f2a1d7c 100644
--- a/meta/recipes-kernel/linux/kernel-devsrc.bb
+++ b/meta/recipes-kernel/linux/kernel-devsrc.bb
@@ -16,7 +16,7 @@ inherit module-base
 # We need the kernel to be staged (unpacked, patched and configured) before
 # we can grab the source and make the source package. We also need the bits from
 # ${B} not to change while we install, so virtual/kernel must finish do_compile.
-do_install[depends] += "virtual/kernel:do_shared_workdir"
+do_install[depends] += "virtual/kernel:kernel_do_compile"
 # Need the source, not just the output of populate_sysroot
 do_install[depends] += "virtual/kernel:do_compile"
 
diff --git a/meta/recipes-kernel/linux/linux-dummy.bb b/meta/recipes-kernel/linux/linux-dummy.bb
index cc0e4e6..8f4ddc4 100644
--- a/meta/recipes-kernel/linux/linux-dummy.bb
+++ b/meta/recipes-kernel/linux/linux-dummy.bb
@@ -33,10 +33,6 @@ do_compile () {
 	:
 }
 
-do_shared_workdir () {
-	:
-}
-
 do_install() {
 	:
 }
@@ -51,4 +47,3 @@ do_deploy() {
 
 addtask bundle_initramfs after do_install before do_deploy
 addtask deploy after do_install
-addtask shared_workdir after do_compile before do_install
diff --git a/meta/recipes-kernel/lttng/lttng-modules_2.6.0.bb b/meta/recipes-kernel/lttng/lttng-modules_2.6.0.bb
index d0039b3..9d07ae4 100644
--- a/meta/recipes-kernel/lttng/lttng-modules_2.6.0.bb
+++ b/meta/recipes-kernel/lttng/lttng-modules_2.6.0.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=1412caf5a1aa90d6a48588a4794c0eac \
                     file://lgpl-2.1.txt;md5=243b725d71bb5df4a1e5920b344b86ad"
 
 DEPENDS = "virtual/kernel"
-do_configure[depends] += "virtual/kernel:do_shared_workdir"
+do_configure[depends] += "virtual/kernel:kernel_do_compile"
 
 inherit module
 
diff --git a/meta/recipes-kernel/perf/perf.bb b/meta/recipes-kernel/perf/perf.bb
index f69d177..59d6be2 100644
--- a/meta/recipes-kernel/perf/perf.bb
+++ b/meta/recipes-kernel/perf/perf.bb
@@ -32,7 +32,7 @@ DEPENDS = " \
     bison flex \
 "
 
-do_configure[depends] += "virtual/kernel:do_shared_workdir"
+do_configure[depends] += "virtual/kernel:kernel_do_compile"
 
 PROVIDES = "virtual/perf"
 
-- 
2.1.4


