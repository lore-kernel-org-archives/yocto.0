Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89BC0E013B5
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:09:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Oct 2011 21:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,343,1315206000"; d="scan'208";a="62468274"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by azsmga001.ch.intel.com with ESMTP; 13 Oct 2011 21:09:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:41 -0500
Message-Id: <b7a382b72a09df6db7fe1bc8f527f0eb91b90e41.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
References: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318564650.git.tom.zanussi@intel.com>
References: <cover.1318564650.git.tom.zanussi@intel.com>
Subject: [PATCH 04/10] meta-crownbay: xserver-xorg renaming updates
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
X-List-Received-Date: Fri, 14 Oct 2011 04:09:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update crownbay and crownbay-noemgd to reflect the new xserver-xorg
naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |   14 +++++++++++---
 meta-crownbay/conf/machine/crownbay.conf        |   14 ++++++++++----
 2 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index c668f4a..bde9a5f 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -17,15 +17,23 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-vesa"
 
+PREFERRED_VERSION_xserver-xorg ?= "1.11.1"
+
 SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 457bdfc..7f0b9d6 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -17,9 +17,15 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \
            emgd-driver-bin \
            xf86-input-mouse \
            xf86-input-keyboard \
@@ -27,7 +33,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-synaptics \
            xf86-video-vesa"
 
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
-- 
1.7.0.4


