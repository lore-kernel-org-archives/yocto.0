Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37DB0E013CB
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:25:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Oct 2011 16:25:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,411,1315206000"; d="scan'208";a="67383518"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 26 Oct 2011 16:25:51 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:31 -0700
Message-Id: <9a822879f487777536cf56f8c329fd03f0586a14.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 7/7] Updated the romley.conf and removed linux-yocto_2.6.37.bbappend file. Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
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
X-List-Received-Date: Wed, 26 Oct 2011 23:25:52 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

---
 MAINTAINERS                                        |    4 ++++
 meta-romley/conf/machine/romley.conf               |    4 +---
 .../linux/linux-yocto_2.6.37.bbappend              |    7 -------
 3 files changed, 5 insertions(+), 10 deletions(-)
 delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/MAINTAINERS b/MAINTAINERS
index fda48ad..54559dd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -61,3 +61,7 @@ SUGARBAY
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	meta-sugarbay/
 
+ROMLEY
+M:      Kishore Bodke <kishore.k.bodke@intel.com>
+F:      meta-romley/
+
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 1035d82..38bd17a 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -32,9 +32,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-synaptics \
 	   xf86-video-mga \
-           xf86-video-intel \
-           mesa-dri \
-           mesa-dri-driver-i965"
+           mesa-dri"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index 4e0af5a..0000000
--- a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_romley = "romley"
-KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
-
-SRCREV_machine_pn-linux-yocto_romley ?= "7f495be2ccaa209bf505b8a8899cea64cfd968bb"
-SRCREV_meta_pn-linux-yocto_romley ?= "d5d3c6480d61f83503ccef7fbcd765f7aca8b71b"
-- 
1.7.5.4


