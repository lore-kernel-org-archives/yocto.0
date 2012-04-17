Return-Path: <denis@denix.org>
Received: from vms173015pub.verizon.net (vms173015pub.verizon.net
	[206.46.173.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 620A5E0030B
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 17:18:53 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173015.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M2L000DVKUNBB04@vms173015.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 16 Apr 2012 19:18:33 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 0F64A200AA; Mon,
	16 Apr 2012 20:18:23 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 20:18:19 -0400
Message-id: <1334621899-3397-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.7.8.5
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [PATCH] linux-yocto 3.0: fix beagleboard boot hang on mmc init due to preempt
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
X-List-Received-Date: Tue, 17 Apr 2012 00:18:53 -0000

From: Denys Dmytriyenko <denys@ti.com>

The boot hangs with the message:
mmc0: error -110 whilst initialising SD card

The MMC driver has issues initializing when PREEMPT is enabled (either forced
or voluntary). Unplugging and then plugging the card back will reset the
driver and continue booting. Alternatively, disable preemption.

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 .../recipes-kernel/linux/files/no-preempt.cfg      |    1 +
 .../recipes-kernel/linux/files/no-preempt.scc      |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++++
 3 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
 create mode 100644 meta-yocto/recipes-kernel/linux/files/no-preempt.scc

diff --git a/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg b/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
new file mode 100644
index 0000000..0cbeb5a
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
@@ -0,0 +1 @@
+CONFIG_PREEMPT_NONE=y
diff --git a/meta-yocto/recipes-kernel/linux/files/no-preempt.scc b/meta-yocto/recipes-kernel/linux/files/no-preempt.scc
new file mode 100644
index 0000000..1e75e15
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/files/no-preempt.scc
@@ -0,0 +1 @@
+kconf non-hardware no-preempt.cfg
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 944f601..d5460fd 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,3 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
 KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
 KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
@@ -13,3 +15,7 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+
+KERNEL_FEATURES_append_beagleboard = " no-preempt.scc"
+
+SRC_URI_append_beagleboard = " file://no-preempt.scc"
-- 
1.7.0.4


