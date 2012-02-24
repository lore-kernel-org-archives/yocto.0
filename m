Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C59AE0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:39:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2012 01:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="114413580"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.5])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2012 01:38:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2012 09:38:26 +0000
Message-Id: <31254c911f308e8ea4c6c33fbfe0d85bd3b28666.1330076070.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1330076070.git.paul.eggleton@linux.intel.com>
References: <cover.1330076070.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1330076070.git.paul.eggleton@linux.intel.com>
References: <cover.1330076070.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] meta-intel: replace "include" with "require"
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
X-List-Received-Date: Fri, 24 Feb 2012 09:39:52 -0000

We want a failure to occur if the files specified in these statements
can't be found (e.g. when there is a misconfiguration), so use require
instead of include.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf    |    2 +-
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    4 ++--
 meta-crownbay/conf/machine/crownbay.conf        |    4 ++--
 meta-emenlow/conf/machine/emenlow.conf          |    4 ++--
 meta-fishriver/conf/machine/fishriver.conf      |    2 +-
 meta-fri2/conf/machine/fri2-noemgd.conf         |    4 ++--
 meta-fri2/conf/machine/fri2.conf                |    4 ++--
 meta-n450/conf/machine/n450.conf                |    4 ++--
 meta-romley/conf/machine/romley.conf            |    2 +-
 meta-sys940x/conf/machine/sys940x-noemgd.conf   |    4 ++--
 meta-sys940x/conf/machine/sys940x.conf          |    4 ++--
 11 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index ec84347..3bd5cf8 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Cedartrail systems
 # i.e. Cedarview processor + Tiger Point Chipset
 
-include conf/machine/include/tune-atom.inc
+require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 80fc2a6..2c80bd8 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 15bfd52..2c1ef3d 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index cf43d4f..78020ba 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for eMenlow based systems, like the
 # Webs-2120 box.
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index b43282e..aa066db 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Fish River Island systems
 # i.e. Z530/E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
+require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 911a449..a0eb8a0 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Fish River Island II systems
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index c69aa40..3947736 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Fish River Island II systems
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 6ffdce9..dac63ed 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -3,8 +3,8 @@
 
 #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 7b6014c..aa334c0 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -5,7 +5,7 @@
 # i.e. Sandy Bridge + Patsburg Chipset
 
 require conf/machine/include/tune-x86_64.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-sys940x/conf/machine/sys940x-noemgd.conf b/meta-sys940x/conf/machine/sys940x-noemgd.conf
index 8a1c20f..537e419 100644
--- a/meta-sys940x/conf/machine/sys940x-noemgd.conf
+++ b/meta-sys940x/conf/machine/sys940x-noemgd.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Inforce SYS940X systems
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios"
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index ceb6e0f..2315564 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -4,8 +4,8 @@
 #@DESCRIPTION: Machine configuration for Inforce SYS940x systems
 # i.e. E660 + EG20T
 
-include conf/machine/include/tune-atom.inc
-include conf/machine/include/ia32-base.inc
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
 
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios"
-- 
1.7.5.4


