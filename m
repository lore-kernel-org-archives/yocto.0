Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4ACDE00CA1; Tue,  1 Sep 2015 06:31:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CE13CE00B83
	for <yocto@yoctoproject.org>; Tue,  1 Sep 2015 06:31:18 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2; Tue, 1 Sep 2015
	15:31:11 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id BAB1228EB70;
	Tue,  1 Sep 2015 15:31:11 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 1 Sep 2015 15:31:09 +0200
Message-ID: <1441114269-49710-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] virtual/kernel: add support for NUMA
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
X-List-Received-Date: Tue, 01 Sep 2015 13:31:22 -0000
Content-Type: text/plain

For the moment the linux-qoriq 32b architecture do not have hardware
support for NUMA. Also the NUMA configuration seems available only for
64b architecture.
For ensuring a complete NUMA setup and split of the memory/CPU between nodes
a commandline argument should also be added: numa=fake=2.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/recipes-kernel/linux/cgl-common.inc               | 1 +
 meta-cgl-common/recipes-kernel/linux/files/cfg/00029-numa.cfg     | 2 ++
 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb | 3 ++-
 3 files changed, 5 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-kernel/linux/files/cfg/00029-numa.cfg

diff --git a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
index 52cf773..acdcc8d 100644
--- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
+++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
@@ -26,5 +26,6 @@ SRC_URI += "file://cfg/00001-systemtap.cfg \
             file://cfg/00026-lm-sensors.cfg \
             file://cfg/00027-dmidecode.cfg \
             file://cfg/00028-bonding.cfg \
+            file://cfg/00029-numa.cfg \
            "
 
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00029-numa.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00029-numa.cfg
new file mode 100644
index 0000000..5289362
--- /dev/null
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00029-numa.cfg
@@ -0,0 +1,2 @@
+CONFIG_NUMA=y
+CONFIG_NODES_SHIFT=1
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
index 33c51e2..f68fd09 100644
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
@@ -23,7 +23,7 @@ DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
                         cfg/00016-dynamic-probe-insertion-kprobe.cfg \
                         cfg/00018-ipsec.cfg \
                         cfg/00019-raid-0.cfg \
-			cfg/00020-kexec.cfg \
+                        cfg/00020-kexec.cfg \
                         cfg/00021-sctp.cfg \
                         cfg/00022-coredump.cfg \
                         cfg/00023-open-scsi.cfg \
@@ -32,5 +32,6 @@ DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
                         cfg/00026-lm-sensors.cfg \
                         cfg/00027-dmidecode.cfg \
                         cfg/00028-bonding.cfg \
+                        cfg/00029-numa.cfg \
                         "
 
-- 
1.9.1


