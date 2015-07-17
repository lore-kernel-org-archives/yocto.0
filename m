Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7115CE009F3; Fri, 17 Jul 2015 02:07:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 33634E009D7
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:07:43 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Jul 2015 11:07:38 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 4126228E77D;
	Fri, 17 Jul 2015 11:07:39 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 11:07:32 +0200
Message-ID: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: Matei Valeanu <Matei.Valeanu@enea.com>
Subject: [PATCH] add recipe append for linux-qoriq-prt kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Jul 2015 09:07:45 -0000
Content-Type: text/plain

From: Matei Valeanu <Matei.Valeanu@enea.com>

PREEMPT_RT is not enabled, but use this recipe in case we need PREEMPT_RT enabled

Signed-off-by: Matei Valeanu <Matei.Valeanu@enea.com>
---
 .../linux/linux-qoriq-prt_3.12.bbappend            | 26 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-qoriq_3.12.bbappend | 26 ----------------------
 2 files changed, 26 insertions(+), 26 deletions(-)
 create mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend

diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
new file mode 100644
index 0000000..2376daa
--- /dev/null
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
@@ -0,0 +1,26 @@
+require recipes-kernel/linux/cgl-common.inc
+
+SRC_URI += ""
+
+DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
+                        cfg/00002-oprofile.cfg \
+                        cfg/00003-lttng.cfg \
+                        cfg/00004-kgdb.cfg \
+                        cfg/00005-quota.cfg \
+                        cfg/00007-device-mapper-multipath.cfg \
+                        cfg/00008-libcgroup.cfg \
+                        cfg/00009-filesystem-acl.cfg \
+                        cfg/00010-ext4.cfg \
+                        cfg/00011-raid-1.cfg \
+                        cfg/00012-hyper-threading.cfg \
+                        cfg/00013-dot1q-vlans.cfg \
+                        cfg/00014-selinux.cfg \
+                        cfg/00015-managing-transient-data.cfg \
+                        cfg/00016-dynamic-probe-insertion-kprobe.cfg \
+                        cfg/00018-ipsec.cfg \
+                        cfg/00019-raid-0.cfg \
+                        cfg/00021-sctp.cfg \
+                        cfg/00022-coredump.cfg \
+                        cfg/00023-open-scsi.cfg \
+                        cfg/00024-ftrace.cfg \
+                        "
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend
deleted file mode 100644
index 2376daa..0000000
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend
+++ /dev/null
@@ -1,26 +0,0 @@
-require recipes-kernel/linux/cgl-common.inc
-
-SRC_URI += ""
-
-DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
-                        cfg/00002-oprofile.cfg \
-                        cfg/00003-lttng.cfg \
-                        cfg/00004-kgdb.cfg \
-                        cfg/00005-quota.cfg \
-                        cfg/00007-device-mapper-multipath.cfg \
-                        cfg/00008-libcgroup.cfg \
-                        cfg/00009-filesystem-acl.cfg \
-                        cfg/00010-ext4.cfg \
-                        cfg/00011-raid-1.cfg \
-                        cfg/00012-hyper-threading.cfg \
-                        cfg/00013-dot1q-vlans.cfg \
-                        cfg/00014-selinux.cfg \
-                        cfg/00015-managing-transient-data.cfg \
-                        cfg/00016-dynamic-probe-insertion-kprobe.cfg \
-                        cfg/00018-ipsec.cfg \
-                        cfg/00019-raid-0.cfg \
-                        cfg/00021-sctp.cfg \
-                        cfg/00022-coredump.cfg \
-                        cfg/00023-open-scsi.cfg \
-                        cfg/00024-ftrace.cfg \
-                        "
-- 
1.9.1


