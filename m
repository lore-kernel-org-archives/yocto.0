Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7D0E4C804DC
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 15:49:07 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EKn28x013373;
	Tue, 14 Jun 2011 13:49:04 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: dvhart@linux.intel.com, tom.zanussi@intel.com, saul.wold@intel.com
Date: Tue, 14 Jun 2011 16:47:20 -0400
Message-Id: <1308084441-6399-2-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
References: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH] meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
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
X-List-Received-Date: Tue, 14 Jun 2011 20:49:07 -0000

The linux-yocto recipes have been renamed to include explicit
version numbers. The meta-intel bbappends must be updated to
follow the new naming convention.

As a consequence of the recipe renames any SRCREV specificiations
that were part of a machine.conf have been moved to the corresponding
bbappend file. This allows the 2.6.34 and 2.6.37 SRCREVs to co-exist.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 ------
 meta-crownbay/conf/machine/crownbay.conf           |    8 +-------
 .../linux/linux-yocto-stable_git.bbappend          |    9 ---------
 .../linux/linux-yocto_2.6.34.bbappend              |   15 +++++++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   15 +++++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    9 ---------
 meta-emenlow/conf/machine/emenlow.conf             |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |    3 ---
 .../linux/linux-yocto_2.6.34.bbappend              |    6 ++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    6 ++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 ---
 meta-fishriver/conf/machine/fishriver.conf         |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |    5 -----
 .../linux/linux-yocto_2.6.34.bbappend              |    8 ++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    7 +++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 ---
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 --
 .../linux/linux-yocto-stable_git.bbappend          |    5 -----
 .../linux/linux-yocto_2.6.34.bbappend              |    5 +++++
 .../linux/linux-yocto_2.6.37.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    6 ------
 .../linux/linux-yocto-stable_git.bbappend          |   10 ----------
 .../linux/linux-yocto_2.6.34.bbappend              |   10 ++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   10 ++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 ----------
 meta-sugarbay/conf/machine/sugarbay.conf           |    3 ---
 .../linux/linux-yocto_2.6.37.bbappend              |    7 +++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 -----
 28 files changed, 98 insertions(+), 98 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 1916b2f..cc0b2eb 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -34,9 +34,3 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "88ea187941f262518b3b8194e042f0270fdf27c4"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
-
-SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 6634102..baf3310 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -14,7 +14,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
-PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
@@ -38,9 +38,3 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-
-SRCREV_machine_pn-linux-yocto_crownbay ?= "88ea187941f262518b3b8194e042f0270fdf27c4"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
-
-SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index 570f8d4..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay  = "crownbay"
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd  = "crownbay"
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..6f3694b
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
+
+RCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..1a62b38
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,15 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_crownbay ?= "88ea187941f262518b3b8194e042f0270fdf27c4"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
+
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "88ea187941f262518b3b8194e042f0270fdf27c4"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index cdae000..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 8fe9dd3..b0b7d5e 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -38,9 +38,3 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-
-SRCREV_machine_pn-linux-yocto_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
-SRCREV_meta_pn-linux-yocto_emenlow ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
-
-SRCREV_machine_pn-linux-yocto-stable_emenlow = "a29743c0a1398798fbc02c0799c8605d91514e14"
-SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index 77a665d..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "emenlow"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..160b3aa
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "emenlow"
+
+SRCREV_machine_pn-linux-yocto_emenlow = "a29743c0a1398798fbc02c0799c8605d91514e14"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..6be0227
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "yocto/standard/emenlow"
+
+SRCREV_machine_pn-linux-yocto_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index 05307b7..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "yocto/standard/emenlow"
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 9621f62..e692cac 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -34,9 +34,3 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-
-SRCREV_machine_pn-linux-yocto_fishriver ?= "697d84759be192403a8a87ab269196c67a0c2c88"
-SRCREV_meta_pn-linux-yocto_fishriver ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
-
-SRCREV_machine_pn-linux-yocto-stable_fishriver ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_fishriver ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index 29399ba..0000000
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_fishriver = "fishriver"
-KMACHINE_fishriver  = "fishriver"
-
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..622d97a
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "fishriver"
+
+SRCREV_machine_pn-linux-yocto-stable_fishriver ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto-stable_fishriver ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
+
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..4fab9e0
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "yocto/standard/fishriver"
+
+SRCREV_machine_pn-linux-yocto_fishriver ?= "697d84759be192403a8a87ab269196c67a0c2c88"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
+
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index eec65d8..0000000
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_fishriver = "fishriver"
-KMACHINE_fishriver  = "yocto/standard/fishriver"
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index fee6930..3f8591a 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -42,5 +42,3 @@ PREFERRED_VERSION_grub ?= "1.98"
 
 TARGET_CC_ARCH = "-m64"
 
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "2058f5a373c7ce4a94f8252df322704fc475de97"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index bd6bada..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-KMACHINE_jasperforest  = "jasperforest"
-
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..bd6bada
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+KMACHINE_jasperforest  = "jasperforest"
+
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..d937d80
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+
+KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
+
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "2058f5a373c7ce4a94f8252df322704fc475de97"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index abceb18..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-
-KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
-
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index 18d4999..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-KMACHINE_n450 = "atom-pc"
-COMPATIBLE_MACHINE_n450 = "n450"
-
-# The n450 is a single core hypterthreaded CPU
-KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
-
-# We use the atom-pc machine SRCREV and the default meta SRCREV
-#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
-#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..18d4999
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+KMACHINE_n450 = "atom-pc"
+COMPATIBLE_MACHINE_n450 = "n450"
+
+# The n450 is a single core hypterthreaded CPU
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+# We use the atom-pc machine SRCREV and the default meta SRCREV
+#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
+#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..d52a90a
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
+COMPATIBLE_MACHINE_n450 = "n450"
+
+# The n450 is a single core hypterthreaded CPU
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+# We use the atom-pc machine SRCREV and the default meta SRCREV
+#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
+#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index d52a90a..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
-COMPATIBLE_MACHINE_n450 = "n450"
-
-# The n450 is a single core hypterthreaded CPU
-KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
-
-# We use the atom-pc machine SRCREV and the default meta SRCREV
-#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
-#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index cca50a9..ebc6dbc 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -44,6 +44,3 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
 TARGET_CC_ARCH = "-m64"
 
 PREFERRED_VERSION_grub ?= "1.98"
-
-SRCREV_machine_pn-linux-yocto_sugarbay ?= "5021040d4d881cd0f4a741c6342a290a3af7d021"
-SRCREV_meta_pn-linux-yocto_sugarbay ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..0d5556c
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
+
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "5021040d4d881cd0f4a741c6342a290a3af7d021"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index 72d00ec..0000000
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_sugarbay = "sugarbay"
-KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
-
-- 
1.7.0.4


