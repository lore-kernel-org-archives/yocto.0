Return-Path: <noor_ahsan@mentor.com>
Received: from alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31AB6E011CC
	for <yocto@yoctoproject.org>; Mon, 31 Dec 2012 03:56:17 -0800 (PST)
Received: from pkl-ahsann-ubuntu.mgc.mentorg.com ([137.202.157.70])
	by alm.mentorg.com (8.12.10/8.12.10) with ESMTP id qBVBuCaF024083;
	Mon, 31 Dec 2012 05:56:13 -0600
From: "Noor, Ahsan" <noor_ahsan@mentor.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Dec 2012 16:56:05 +0500
Message-Id: <1356954965-17029-1-git-send-email-noor_ahsan@mentor.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-intel][PATCH] linux-yocto: Add a patch to resolve undefined RUSAGE_SELF for perf.
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
X-List-Received-Date: Mon, 31 Dec 2012 11:56:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Noor Ahsan <noor_ahsan@mentor.com>

* Perf gived compilation error
  CC builtin-sched.o
    builtin-sched.c: In function ‘get_cpu_usage_nsec_parent’:
  builtin-sched.c:399:16: error: storage size of ‘ru’ isn’t known
* Added a patch from linux kernel git repo commit id
  7b78f13603c6fcb64e020a0bbe31a651ea2b657b which include resource.h
  file in builtin-sched.c.

Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
---
 .../linux/linux-yocto/linux-yocto_3.0.bbappend     |   23 ++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 +++++--
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..440cd77
--- /dev/null
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend
@@ -0,0 +1,23 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
+
+SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "cedartrail"
+KBRANCH_cedartrail  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
+
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 440cd77..6797eeb 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,8 +1,12 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
+SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr \
+file://linux-yocto_3.0.bbappend \
+"
 
-SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
+file://linux-yocto_3.0.bbappend \
+"
 
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
-- 
1.7.9.5


