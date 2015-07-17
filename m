Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7175AE00A1F; Fri, 17 Jul 2015 02:07:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9EA8CE00A16
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:07:46 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Jul 2015 11:07:45 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 676F828E782;
	Fri, 17 Jul 2015 11:07:39 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 11:07:37 +0200
Message-ID: <1437124057-34410-6-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] virtual/kernel: add support for IPMI.
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
X-List-Received-Date: Fri, 17 Jul 2015 09:07:49 -0000
Content-Type: text/plain

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/recipes-kernel/linux/cgl-common.inc              | 1 +
 meta-cgl-common/recipes-kernel/linux/files/cfg/00025-ipmi.cfg    | 9 +++++++++
 .../recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend           | 1 +
 3 files changed, 11 insertions(+)
 create mode 100644 meta-cgl-common/recipes-kernel/linux/files/cfg/00025-ipmi.cfg

diff --git a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
index ffd0b74..2ed1920 100644
--- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
+++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
@@ -21,5 +21,6 @@ SRC_URI += "file://cfg/00001-systemtap.cfg \
             file://cfg/00022-coredump.cfg \
             file://cfg/00023-open-scsi.cfg \
             file://cfg/00024-ftrace.cfg \
+            file://cfg/00025-ipmi.cfg \
            "
 
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00025-ipmi.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00025-ipmi.cfg
new file mode 100644
index 0000000..90e9f6e
--- /dev/null
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00025-ipmi.cfg
@@ -0,0 +1,9 @@
+CONFIG_IPMI_HANDLER=y
+CONFIG_IPMI_PANIC_EVENT=y
+CONFIG_IPMI_PANIC_STRING=y
+CONFIG_IPMI_DEVICE_INTERFACE=y
+CONFIG_IPMI_SI=y
+CONFIG_IPMI_WATCHDOG=y
+CONFIG_IPMI_POWEROFF=y
+# CONFIG_SENSORS_IBMAEM is not set
+# CONFIG_SENSORS_IBMPEX is not set
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
index 2376daa..e33d72d 100644
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
@@ -23,4 +23,5 @@ DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
                         cfg/00022-coredump.cfg \
                         cfg/00023-open-scsi.cfg \
                         cfg/00024-ftrace.cfg \
+                        cfg/00025-ipmi.cfg \
                         "
-- 
1.9.1


