Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF47E0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:02:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2012 07:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190281182"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 07:01:56 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Sun, 29 Jul 2012 07:00:02 -0700
Message-Id: <e1a052c7ac71afd2ff23fce3aece3ce5e333dd28.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
References: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343570184.git.nitin.a.kamble@intel.com>
References: <cover.1343570184.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/4] crownbay: add recipe extension for linux-yocto-3.4
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
X-List-Received-Date: Mon, 30 Jul 2012 14:02:19 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Add emgd branch info in git src_uri

At build time, the emgd-1.14 branch is merged with the crownbay bsp
kernel source branch to get emgd kernel driver's support.
  Reference it in the src_uri, and its commit-id to be used, so that
any changes in the emgd branch will not affect build unknowingly.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..4f9dd70
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,20 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "crownbay"
+KBRANCH_crownbay  = "standard/default/crownbay"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "crownbay"
+KBRANCH_crownbay-noemgd  = "standard/crownbay"
+
+SRCREV_machine_pn-linux-yocto_crownbay ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "d7a96809a585e06933d8c08adb9b9f66b21efb4c"
+SRCREV_emgd_pn-linux-yocto_crownbay ?= "86643bdd8cbad616a161ab91f51108cf0da827bc"
+
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "d7a96809a585e06933d8c08adb9b9f66b21efb4c"
+
+KSRC_linux_yocto_3_4 ?= "git.yoctoproject.org/linux-yocto-3.4.git"
+SRC_URI_crownbay = "git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta,emgd-1.14;name=machine,meta,emgd"
+SRC_URI_crownbay-noemgd = "git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
-- 
1.7.3.4


