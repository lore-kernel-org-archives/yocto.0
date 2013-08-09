Return-Path: <Holger.Behrens@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A01DE015DA
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r79An0vO029099
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 03:49:00 -0700 (PDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:48:59 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:45 +0200
Message-ID: <1376045330-17216-3-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 3/8] meta-ivi-bsp: layer created
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
X-List-Received-Date: Fri, 09 Aug 2013 10:49:04 -0000
Content-Type: text/plain

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 meta-ivi-bsp/conf/layer.conf              |   10 ++++++++
 meta-ivi-bsp/conf/machine/vexpressa9.conf |   40 +++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)
 create mode 100644 meta-ivi-bsp/conf/layer.conf
 create mode 100644 meta-ivi-bsp/conf/machine/vexpressa9.conf

diff --git a/meta-ivi-bsp/conf/layer.conf b/meta-ivi-bsp/conf/layer.conf
new file mode 100644
index 0000000..e30882a
--- /dev/null
+++ b/meta-ivi-bsp/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have recipes-* directories, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
+            ${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "ivibsp"
+BBFILE_PATTERN_ivibsp = "^${LAYERDIR}/"
+BBFILE_PRIORITY_ivibsp = "7"
diff --git a/meta-ivi-bsp/conf/machine/vexpressa9.conf b/meta-ivi-bsp/conf/machine/vexpressa9.conf
new file mode 100644
index 0000000..8d90e39
--- /dev/null
+++ b/meta-ivi-bsp/conf/machine/vexpressa9.conf
@@ -0,0 +1,40 @@
+#@TYPE: Machine
+#@NAME: vexpress-a9 machine
+#@DESCRIPTION: Machine configuration for the vexpress a9 board 
+
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+
+# Ship all kernel modules by default
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+# Allow for MMC booting (required by the NAND-less)
+EXTRA_IMAGEDEPENDS += ""
+
+# Uncomment the following line to enable the hard floating point abi. Note that
+# this breaks some binary libraries and 3D (neither of which ship with
+# meta-yocto). For maximum compatibility, leave this disabled.
+#DEFAULTTUNE ?= "cortexa8hf-neon"
+include conf/machine/include/tune-cortexa9.inc
+
+IMAGE_CLASSES += "sdcard_image"
+
+IMAGE_FSTYPES += "tar.bz2 ext3 vexpressa9-sdimg"
+EXTRA_IMAGECMD_jffs2 = "-lnp "
+
+# 2.6.37 and later kernels use OMAP_SERIAL, ttyO2
+# earlier kernels use ttyS2
+SERIAL_CONSOLE = "115200 ttyO2"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
+
+PREFERRED_PROVIDER_jpeg = "jpeg"
+PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
+
+KERNEL_IMAGETYPE = "uImage"
+
+UBOOT_MACHINE = "ca9x4_ct_vxp_config"
+UBOOT_ENTRYPOINT = "0x80008000"
+UBOOT_LOADADDRESS = "0x80008000"
+
+MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
-- 
1.7.9.5


