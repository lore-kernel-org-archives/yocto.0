Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5427E013B7
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:09:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Oct 2011 21:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,344,1315206000"; d="scan'208";a="73523110"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2011 21:09:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:43 -0500
Message-Id: <2927c76d6c30a11fe81e8e421c718dfb90731e23.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
References: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318564650.git.tom.zanussi@intel.com>
References: <cover.1318564650.git.tom.zanussi@intel.com>
Subject: [PATCH 06/10] meta-fri2: xserver-xorg renaming updates
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
X-List-Received-Date: Fri, 14 Oct 2011 04:09:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update fri2 and fri2-noemgd to reflect the new xserver-xorg naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    8 +++++---
 meta-fri2/conf/machine/fri2.conf        |    8 ++++----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index b02e037..98e92c5 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -17,15 +17,17 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-vesa"
 
+PREFERRED_VERSION_xserver-xorg ?= "1.11.1"
+
 SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index eab4b50..363518d 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -17,16 +17,16 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
            emgd-driver-bin"
 
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
-- 
1.7.0.4


