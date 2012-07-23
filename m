Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4214FE013DB
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:07:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 03:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172433688"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 03:07:19 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Mon, 23 Jul 2012 03:06:13 -0700
Message-Id: <37c77e07c936752cc6c9c305d8d095aca7efb1c8.1343037893.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343037893.git.nitin.a.kamble@intel.com>
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
Subject: [PATCH 4/6] crownbay: add recipe extension for linux-yocto-3.4
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
X-List-Received-Date: Tue, 24 Jul 2012 10:07:20 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

crownbay: linux-yocto v3.4 : add emgd branch info in git src_uri

At build time, the emgd-1.14 branch is merged with the crownbay bsp
kernel source branch to get emgd kernel driver's support.
  Refer it in the src_uri, & it's commit-id to be used, so that
any changes in the emgd branch will not affect the build unknowingly.

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


