Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9414E005BB
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Oct 2011 22:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,337,1315206000"; d="scan'208";a="61887717"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by azsmga001.ch.intel.com with ESMTP; 12 Oct 2011 22:07:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:17 -0500
Message-Id: <b43acbf6a2c6777b828b9d94f7f1bd8c9fbb09d0.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
References: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318481569.git.tom.zanussi@intel.com>
References: <cover.1318481569.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update crownbay and crownbay-noemgd to reflect the new xserver-xorg
naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf        |    8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index c668f4a..3b90136 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
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
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 457bdfc..41e94cb 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            emgd-driver-bin \
            xf86-input-mouse \
            xf86-input-keyboard \
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-synaptics \
            xf86-video-vesa"
 
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
-- 
1.7.0.4


