Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5234EE014BE
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 21:21:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Sep 2012 21:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,371,1344236400"; d="scan'208";a="188903051"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.252])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 21:21:40 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 21:21:37 -0700
Message-Id: <1346818900-27785-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 1/3 v2] linux-yocto: Update linux-yocto for 3.2 and 3.4
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
X-List-Received-Date: Wed, 05 Sep 2012 04:21:41 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
 3 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 58a6541..138cc21 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # enable the time limited kernel configuration options
 SRC_URI += "file://time-limited-kernel.cfg"
+
+PR .= ".1"
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..138cc21
--- /dev/null
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# enable the time limited kernel configuration options
+SRC_URI += "file://time-limited-kernel.cfg"
+
+PR .= ".1"
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..138cc21
--- /dev/null
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# enable the time limited kernel configuration options
+SRC_URI += "file://time-limited-kernel.cfg"
+
+PR .= ".1"
-- 
1.7.7.6


