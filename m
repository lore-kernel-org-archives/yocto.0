Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 055C2E00349
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406891"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:49 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:20 -0700
Message-Id: <7bc69e44bb3b97f8a30868e938f4b29a801ee4e9.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
References: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 5/7] crownbay: add recipe extension for linux-yocto-3.4
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   26 ++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..86f8c79
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,26 @@
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
+SRCREV_machine_pn-linux-yocto_crownbay ?= "6297e4c1d57e1063bfce297c2e12392348598559"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "31f082cd1ad3f52d0ec07526084199fe8eb76a1b"
+
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "6297e4c1d57e1063bfce297c2e12392348598559"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "31f082cd1ad3f52d0ec07526084199fe8eb76a1b"
+
+# It is often nice to have a local clone of the kernel repos, to
+# allow patches to be staged, branches created, etc. Modify
+
+# KSRC_linux_yocto_3_4 to point to your local clone as appropriate.
+KSRC_linux_yocto_3_4 ?= "/srv/home/nitin/prj/linux-yocto-3.4.git"
+SRC_URI = "git://${KSRC_linux_yocto_3_4};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
+#SRCREV_machine_${MACHINE}="${AUTOREV}"
+#SRCREV_meta="${AUTOREV}"
+LOCALCOUNT = "0"
-- 
1.7.3.4


