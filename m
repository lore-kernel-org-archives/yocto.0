Return-Path: <denis@denix.org>
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC25EE00B99
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 10:09:19 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4300FDB0YQI630@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 15 Apr 2014 12:08:50 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 025B120182; Tue,
	15 Apr 2014 13:08:49 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org
Date: Tue, 15 Apr 2014 13:08:43 -0400
Message-id: <1397581724-20576-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.9.2
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [not-for-merge][PATCH 1/2] u-boot: update to 2014.01
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
X-List-Received-Date: Tue, 15 Apr 2014 17:09:20 -0000

From: Denys Dmytriyenko <denys@ti.com>

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 meta/recipes-bsp/u-boot/u-boot_2014.01.bb | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 meta/recipes-bsp/u-boot/u-boot_2014.01.bb

diff --git a/meta/recipes-bsp/u-boot/u-boot_2014.01.bb b/meta/recipes-bsp/u-boot/u-boot_2014.01.bb
new file mode 100644
index 0000000..5c522ec
--- /dev/null
+++ b/meta/recipes-bsp/u-boot/u-boot_2014.01.bb
@@ -0,0 +1,22 @@
+require u-boot.inc
+
+# To build u-boot for your machine, provide the following lines in your machine
+# config, replacing the assignments as appropriate for your machine.
+# UBOOT_MACHINE = "omap3_beagle_config"
+# UBOOT_ENTRYPOINT = "0x80008000"
+# UBOOT_LOADADDRESS = "0x80008000"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=025bf9f768cbcb1a165dbe1a110babfb"
+
+# This revision corresponds to the tag "v2014.01"
+# We use the revision in order to avoid having to fetch it from the repo during parse
+SRCREV = "b44bd2c73c4cfb6e3b9e7f8cf987e8e39aa74a0b"
+
+PV = "v2014.01+git${SRCPV}"
+
+SRC_URI = "git://git.denx.de/u-boot.git;branch=master"
+
+S = "${WORKDIR}/git"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.9.2


