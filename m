Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDD9E00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 10:46:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 10:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102067735"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 10:46:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 10:45:31 -0800
Message-Id: <8ea769ff408f8228617b2f9b7a332f04eea72b67.1328121321.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <8b67c8fb5aadfcb82de8035972efed50c67c0382.1328121321.git.dvhart@linux.intel.com>
References: <8b67c8fb5aadfcb82de8035972efed50c67c0382.1328121321.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1328121321.git.dvhart@linux.intel.com>
References: <cover.1328121321.git.dvhart@linux.intel.com>
Subject: [PATCH 2/2] Remove boot-live cfg duplication from BSPs
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
X-List-Received-Date: Wed, 01 Feb 2012 18:46:04 -0000

Several BSPs duplicated the boot-live fragment in their BSP
specific config. Remove the duplication and add CONFIG_RD_GZIP
and CONFIG_BLK_DEV_SR to the boot-live fragment.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
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


