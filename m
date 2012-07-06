Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6BAE01459
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 05:39:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 05:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119509606"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 05:39:47 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jul 2012 05:38:41 -0700
Message-Id: <7125a78c7b4fc1cf0e03fa8f581b4850be841d1d.1341578164.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
References: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1341578164.git.nitin.a.kamble@intel.com>
References: <cover.1341578164.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/7] emenlow: add recipe extention for linux-yocto_3.4
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
X-List-Received-Date: Fri, 06 Jul 2012 12:39:47 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This is tested on the emenlow hardware, and it works as expected.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..2146864
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "emenlow"
+KBRANCH_emenlow  = "standard/emenlow"
+
+SRCREV_machine_pn-linux-yocto_emenlow ?= "1ed16752ff068c2a3f33d78d8a53be32416fb56e"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5"
-- 
1.7.3.4


