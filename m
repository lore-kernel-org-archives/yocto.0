Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40654E00723
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:27 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Nov 2011 14:44:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="78555045"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2011 14:44:26 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:17 -0600
Message-Id: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 01/17] meta-intel: remove virtual/xserver-xf86 references
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These are now deprecated (in favor of just virtual/xserver), so remove
them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    1 -
 meta-crownbay/conf/machine/crownbay.conf         |    1 -
 meta-emenlow/conf/machine/emenlow.conf           |    1 -
 meta-fishriver/conf/machine/fishriver.conf       |    1 -
 meta-fri2/conf/machine/fri2-noemgd.conf          |    1 -
 meta-fri2/conf/machine/fri2.conf                 |    1 -
 meta-jasperforest/conf/machine/jasperforest.conf |    1 -
 meta-n450/conf/machine/n450.conf                 |    1 -
 meta-romley/conf/machine/romley.conf             |    1 -
 meta-sugarbay/conf/machine/sugarbay.conf         |    1 -
 10 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index f61c75a..aa9e732 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index defa4e5..9315e82 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 774ef08..06cba37 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -20,7 +20,6 @@ PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
-PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
 PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
 XSERVER ?= "xserver-psb \
            xserver-psb-extension-dri \
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 79bf349..8cc43f8 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 089861f..d70e06f 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 6029cee..80fa43b 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 17468de..c668c64 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 431a6c5..b28f57f 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -16,7 +16,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 2dcb5db..3d41db5 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 3ea9ca3..0b4541f 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -18,7 +18,6 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-dri \
            xserver-xorg-extension-dri2 \
-- 
1.7.0.4


