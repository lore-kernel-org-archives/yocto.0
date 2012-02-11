Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E66DE003E3
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 16:32:49 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Feb 2012 16:32:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="108867569"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.14.248])
	by orsmga002.jf.intel.com with ESMTP; 10 Feb 2012 16:32:48 -0800
From: josh@linux.intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Feb 2012 16:32:39 -0800
Message-Id: <1328920359-18646-1-git-send-email-josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] netbase: put sys940x specific interfaces file in MACHINE directory
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
X-List-Received-Date: Sat, 11 Feb 2012 00:32:49 -0000

From: Joshua Lock <josh@linux.intel.com>

Move the interfaces file to a MACHINE appropriate subdirectory of
files so that:
a) base.bbclass appropriately marks the resultant package MACHINE
specific.
b) builds for alternative MACHINES whilst this layer is enabled
don't get the sys940x interfaces file

Signed-off-by: Joshua Lock <josh@linux.intel.com>
CC: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/recipes-core/netbase/files/interfaces |   10 ----------
 .../netbase/files/sys940x-noemgd/interfaces        |   10 ++++++++++
 .../recipes-core/netbase/files/sys940x/interfaces  |   10 ++++++++++
 .../recipes-core/netbase/netbase_4.47.bbappend     |    2 +-
 4 files changed, 21 insertions(+), 11 deletions(-)
 delete mode 100644 meta-sys940x/recipes-core/netbase/files/interfaces
 create mode 100644 meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
 create mode 100644 meta-sys940x/recipes-core/netbase/files/sys940x/interfaces

diff --git a/meta-sys940x/recipes-core/netbase/files/interfaces b/meta-sys940x/recipes-core/netbase/files/interfaces
deleted file mode 100644
index 4218f5d..0000000
--- a/meta-sys940x/recipes-core/netbase/files/interfaces
+++ /dev/null
@@ -1,10 +0,0 @@
-# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
- 
-# The loopback interface
-auto lo
-iface lo inet loopback
-
-# Wired or wireless interfaces
-auto eth0
-iface eth0 inet dhcp
-    hwaddress ether RANDOM_MAC
diff --git a/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces b/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
new file mode 100644
index 0000000..4218f5d
--- /dev/null
+++ b/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
@@ -0,0 +1,10 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
+    hwaddress ether RANDOM_MAC
diff --git a/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces b/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces
new file mode 100644
index 0000000..4218f5d
--- /dev/null
+++ b/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces
@@ -0,0 +1,10 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
+    hwaddress ether RANDOM_MAC
diff --git a/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
index 6d3f694..e01e0b6 100644
--- a/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
+++ b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 RDEPENDS_${PN} += "genmac"
-PRINC := "${@int(PRINC) + 1}"
+PRINC := "${@int(PRINC) + 2}"
-- 
1.7.5.4


