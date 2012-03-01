Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22155E01415
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116734476"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:52 -0800
Message-Id: <607c67a37d0c27ba5c2c412696c023a9f3182514.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
Subject: [PATCH 2/6] Remove boot-live cfg duplication from BSPs
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:46 -0000

From: Darren Hart <dvhart@linux.intel.com>

Several BSPs duplicated the boot-live fragment in their BSP
specific config. Remove the duplication and add CONFIG_RD_GZIP
and CONFIG_BLK_DEV_SR to the boot-live fragment.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Acked-by: Tom Zanussi <tzanussi@intel.com>
---
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----------
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----------
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----------
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----------
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |    5 -----
 meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +++
 7 files changed, 3 insertions(+), 55 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
index 1cc14b1..32cd9e5 100755
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
@@ -46,13 +46,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index e93c0b8..b101419 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -42,13 +42,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
index b9704c5..b1e72bd 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
@@ -40,13 +40,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
index e93c0b8..b101419 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
@@ -42,13 +42,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index e93c0b8..b101419 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -42,13 +42,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
index 3d45fe8..b101419 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
@@ -42,8 +42,3 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
-
-CONFIG_RD_GZIP=y
-
-# Needed for booting (and using) CD images
-CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/cfg/boot-live.cfg b/meta/cfg/kernel-cache/cfg/boot-live.cfg
index 8ff7674..a102052 100644
--- a/meta/cfg/kernel-cache/cfg/boot-live.cfg
+++ b/meta/cfg/kernel-cache/cfg/boot-live.cfg
@@ -2,5 +2,8 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_VFAT_FS=y
+CONFIG_RD_GZIP=y
+# Needed for booting (and using) CD images
 CONFIG_BLK_DEV_IDECD=y
 CONFIG_ISO9660_FS=y
+CONFIG_BLK_DEV_SR=y
-- 
1.7.6.5


