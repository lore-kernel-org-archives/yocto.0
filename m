Return-Path: <Alexandre.Bard@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32BE6E00D4F; Thu,  9 Jun 2016 09:11:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Jun 2016 09:11:16 PDT
Received: from webmail.netmodule.com (webmail.netmodule.com [194.29.26.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2005E00CAA
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 09:11:16 -0700 (PDT)
Received: from ebro.netmodule.intranet (172.16.92.40) by
	ebro.netmodule.intranet (172.16.92.40) with Microsoft SMTP Server (TLS)
	id 15.0.913.22; Thu, 9 Jun 2016 17:56:10 +0200
Received: from julia.netmodule.intranet (172.16.71.9) by webmail.netmodule.com
	(172.16.92.40) with Microsoft SMTP Server id 15.0.913.22 via Frontend
	Transport; Thu, 9 Jun 2016 17:56:10 +0200
From: Alexandre Bard <alexandre.bard@netmodule.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Jun 2016 17:56:16 +0200
Message-ID: <1465487777-16092-1-git-send-email-alexandre.bard@netmodule.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Jun 2016 09:44:45 -0700
Cc: Alexandre Bard <alexandre.bard@netmodule.com>
Subject: [[meta-xilinx-community][PATCH] 1/2] Create a new independant recipe for ze7000 kernel
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
X-List-Received-Date: Thu, 09 Jun 2016 16:11:20 -0000
Content-Type: text/plain

Upgrade to yocto 2.0 jethro brings compatibility issues between
the default xilinx-kernel configuration and it extention for
for ZE7000 machine.

Signed-off-by: Alexandre Bard <alexandre.bard@netmodule.com>
---
 conf/machine/ze7000-zynq7.conf                |  4 ++--
 recipes-kernel/linux/linux-xlnx_3.10.bbappend | 16 --------------
 recipes-kernel/linux/linux-xlnx_3.14.bb       | 30 +++++++++++++++++++++++++++
 recipes-kernel/linux/linux-xlnx_3.14.bbappend | 24 ---------------------
 4 files changed, 32 insertions(+), 42 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-xlnx_3.10.bbappend
 create mode 100644 recipes-kernel/linux/linux-xlnx_3.14.bb
 delete mode 100644 recipes-kernel/linux/linux-xlnx_3.14.bbappend

diff --git a/conf/machine/ze7000-zynq7.conf b/conf/machine/ze7000-zynq7.conf
index 7bd2eab..027f1a1 100644
--- a/conf/machine/ze7000-zynq7.conf
+++ b/conf/machine/ze7000-zynq7.conf
@@ -9,7 +9,7 @@ MACHINE_DEVICETREE := " \
 		ze7000/ze7000-zynq7.dts \
 		"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-xlnx"
-PREFERRED_VERSION_linux-xlnx ?= "3.14%"
+PREFERRED_PROVIDER_virtual/kernel = "linux-xlnx"
+PREFERRED_VERSION_linux-xlnx = "3.14%"
 
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-xilinx-emacps"
diff --git a/recipes-kernel/linux/linux-xlnx_3.10.bbappend b/recipes-kernel/linux/linux-xlnx_3.10.bbappend
deleted file mode 100644
index 69253c7..0000000
--- a/recipes-kernel/linux/linux-xlnx_3.10.bbappend
+++ /dev/null
@@ -1,16 +0,0 @@
-DESCRIPTION = "Xilinx linux kernel support for Zynq-7 Base TRD 14.5"
-
-MACHINE_DEVICETREE_zc702-zynq7 := " \
-        zc702/zc702-zynq7-board.dtsi \
-        zc702/zc702-zynq7.dts \
-        common/zynq7-base-trd.dtsi \
-        zc702/zc702-zynq7-base-trd.dts \
-        "
-MACHINE_KCONFIG_zc702-zynq7    := "common/linux/zynq/xilinx_zynq_base_trd_defconfig_${LINUX_VERSION}.cfg"
-
-MACHINE_DEVICETREE_zc706-zynq7 := " \
-        zc706/zc706-zynq7-board.dtsi \
-        zc706/zc706-zynq7.dts \
-        zc706/zc706-zynq7-pcie-trd-qspi.dts \
-        "
-MACHINE_KCONFIG_zc706-zynq7    := "common/linux/zynq/xilinx_zynq_base_trd_defconfig_${LINUX_VERSION}.cfg"
diff --git a/recipes-kernel/linux/linux-xlnx_3.14.bb b/recipes-kernel/linux/linux-xlnx_3.14.bb
new file mode 100644
index 0000000..b258cb2
--- /dev/null
+++ b/recipes-kernel/linux/linux-xlnx_3.14.bb
@@ -0,0 +1,30 @@
+require recipes-kernel/linux/linux-yocto.inc
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+
+### ZE7000 machine configuration ###
+KBRANCH_ze7000-zynq7 = "zx3-v3.14"
+SRCREV_ze7000-zynq7 = "${AUTOREV}"
+SRC_URI_ze7000-zynq7 = "git://github.com/netmodule/kernel-zx3.git;protocol=https;branch=${KBRANCH}"
+
+SRC_URI_append_ze7000-zynq7 = " \
+            file://defconfig \
+            "
+
+
+### PM3 machine configuration ###
+KBRANCH_zx3-pm3-zynq7 = "zx3-v3.14"
+SRCREV_zx3-pm3-zynq7 = "4ea440987eb3b5a9cb1f3fd50bb63c86703ef438"
+SRC_URI_zx3-pm3-zynq7 = "git://github.com/netmodule/kernel-zx3.git;protocol=https;branch=${KBRANCH}"
+
+SRC_URI_append_zx3-pm3-zynq7 = " \
+            file://defconfig \
+            "
+
+
+
+do_configure_append() {
+  # Use a defconfig file if provided instead of appending again and again
+  [ -f ${WORKDIR}/defconfig ] && cp ${WORKDIR}/defconfig ${S}/.config
+}
diff --git a/recipes-kernel/linux/linux-xlnx_3.14.bbappend b/recipes-kernel/linux/linux-xlnx_3.14.bbappend
deleted file mode 100644
index dd4c2bc..0000000
--- a/recipes-kernel/linux/linux-xlnx_3.14.bbappend
+++ /dev/null
@@ -1,24 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-### ZE7000 machine configuration ###
-KBRANCH_ze7000-zynq7 = "zx3-v3.14"
-SRCREV_ze7000-zynq7 = "${AUTOREV}"
-SRC_URI_ze7000-zynq7 = "git://github.com/netmodule/kernel-zx3.git;protocol=https;branch=${KBRANCH}"
-
-SRC_URI_append_ze7000-zynq7 = " \
-            file://defconfig \
-            "
-
-### PM3 machine configuration ###
-KBRANCH_zx3-pm3-zynq7 = "zx3-v3.14"
-SRCREV_zx3-pm3-zynq7 = "4ea440987eb3b5a9cb1f3fd50bb63c86703ef438"
-SRC_URI_zx3-pm3-zynq7 = "git://github.com/netmodule/kernel-zx3.git;protocol=https;branch=${KBRANCH}"
-
-SRC_URI_append_zx3-pm3-zynq7 = " \
-            file://defconfig \
-            "
-
-do_configure_append() {
-  # Use a defconfig file if provided instead of appending again and again
-  [ -f ${WORKDIR}/defconfig ] && cp ${WORKDIR}/defconfig ${S}/.config
-}
-- 
2.1.4


