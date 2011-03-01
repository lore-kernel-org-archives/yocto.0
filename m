Return-Path: <aalonso@secretlab.ca>
Received: from mail-qw0-f68.google.com (mail-qw0-f68.google.com
	[209.85.216.68])
	by mx1.pokylinux.org (Postfix) with ESMTP id E250E4C80AAD
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:38 -0600 (CST)
Received: by mail-qw0-f68.google.com with SMTP id 9so723451qwj.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:38 -0800 (PST)
Received: by 10.224.73.208 with SMTP id r16mr6576596qaj.173.1299021518745;
	Tue, 01 Mar 2011 15:18:38 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id h20sm4395710qck.24.2011.03.01.15.18.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:38 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:36 -0600
Message-Id: <83de288aad88ceb7cb2494dfbd39bc9fa5a1e0a6.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
Subject: [PATCH 5/5] linux-xilinx: update kernel version
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
X-List-Received-Date: Tue, 01 Mar 2011 23:18:39 -0000

* Sync kernel version to 2.6.37 from xilinx repo
* Add linux.inc to meta-xilinx layer (deprecated in main layer).
* Increase PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-kernel/linux/linux-xilinx_git.bb |    8 +-
 recipes-kernel/linux/linux.inc           |   95 ++++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+), 4 deletions(-)
 create mode 100644 recipes-kernel/linux/linux.inc

diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
index 1d15437..8ef2d5a 100644
--- a/recipes-kernel/linux/linux-xilinx_git.bb
+++ b/recipes-kernel/linux/linux-xilinx_git.bb
@@ -1,4 +1,4 @@
-require recipes-kernel/linux/linux.inc
+require linux.inc
 
 DESCRIPTION = "Linux kernel for Xilinx platforms"
 
@@ -10,9 +10,9 @@ DEFAULT_PREFERENCE_virtex5 = "1"
 LICENSE = "GPL"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
-TAG="xilinx_v2.6.37-rc4"
-PV = "2.6.37.4"
-PR = "r5"
+TAG="xilinx_v2.6.37"
+PV = "2.6.37"
+PR = "r6"
 
 SRCREV = "${TAG}"
 SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
new file mode 100644
index 0000000..f0b47da
--- /dev/null
+++ b/recipes-kernel/linux/linux.inc
@@ -0,0 +1,95 @@
+DESCRIPTION = "Linux Kernel"
+SECTION = "kernel"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
+
+inherit kernel
+require linux-dtb.inc
+
+DEPENDS_append_em-x270 = " mtd-utils "
+
+RPSRC = "http://www.rpsys.net/openzaurus/patches/archive"
+
+# Specify the commandline for your device
+
+#boot from mmc
+CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=/dev/mmcblk0p1 rootfstype=ext2 rootdelay=5"
+#boot from nfs
+#CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=301 root=/dev/nfs nfsroot=172.20.3.1:/data/at91 ip=172.20.0.5:::255.255.0.0"
+
+do_configure_prepend() {
+        echo "" > ${S}/.config
+
+        #
+        # logo support, if you supply logo_linux_clut224.ppm in SRC_URI, then it's going to be used
+        #
+        if [ -e ${WORKDIR}/logo_linux_clut224.ppm ]; then
+                install -m 0644 ${WORKDIR}/logo_linux_clut224.ppm drivers/video/logo/logo_linux_clut224.ppm
+                echo "CONFIG_LOGO=y"                    >> ${S}/.config
+                echo "CONFIG_LOGO_LINUX_CLUT224=y"      >> ${S}/.config
+        fi
+
+        #
+        # oabi / eabi support
+        #
+        if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibcgnueabi" ]; then
+                echo "CONFIG_AEABI=y"                   >> ${S}/.config
+                echo "# CONFIG_OABI_COMPAT is not set"             >> ${S}/.config
+        else
+                echo "# CONFIG_AEABI is not set"        >> ${S}/.config
+                echo "# CONFIG_OABI_COMPAT is not set"  >> ${S}/.config
+        fi
+
+        echo "CONFIG_CMDLINE=\"${CMDLINE}\"" >> ${S}/.config
+
+        sed -e '/CONFIG_AEABI/d' \
+            -e '/CONFIG_OABI_COMPAT=/d' \
+            -e '/CONFIG_CMDLINE=/d' \
+            -e '/CONFIG_LOGO=/d' \
+            -e '/CONFIG_LOGO_LINUX_CLUT224=/d' \
+            < '${WORKDIR}/defconfig' >>'${S}/.config'
+
+        #
+        # root-over-nfs-over-usb-eth support. Limited, but should cover some cases.
+        # Enable this by setting a proper CMDLINE_NFSROOT_USB.
+        #
+        if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
+                oenote "Configuring the kernel for root-over-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}"
+                sed -e '/CONFIG_INET/d' \
+                    -e '/CONFIG_IP_PNP=/d' \
+                    -e '/CONFIG_USB_GADGET=/d' \
+                    -e '/CONFIG_USB_GADGET_SELECTED=/d' \
+                    -e '/CONFIG_USB_ETH=/d' \
+                    -e '/CONFIG_NFS_FS=/d' \
+                    -e '/CONFIG_ROOT_NFS=/d' \
+                    -e '/CONFIG_CMDLINE=/d' \
+                    -i ${S}/.config
+                echo "CONFIG_INET=y"                     >> ${S}/.config
+                echo "CONFIG_IP_PNP=y"                   >> ${S}/.config
+                echo "CONFIG_USB_GADGET=y"               >> ${S}/.config
+                echo "CONFIG_USB_GADGET_SELECTED=y"      >> ${S}/.config
+                echo "CONFIG_USB_ETH=y"                  >> ${S}/.config
+                echo "CONFIG_NFS_FS=y"                   >> ${S}/.config
+                echo "CONFIG_ROOT_NFS=y"                 >> ${S}/.config
+                echo "CONFIG_CMDLINE=\"${CMDLINE_NFSROOT_USB}\"" >> ${S}/.config
+        fi
+        yes '' | oe_runmake oldconfig
+}
+
+
+
+do_install_prepend() {
+        if [ -f arch/${ARCH}/boot/Image ] && [ ! -f arch/${ARCH}/boot/uImage ]; then
+             ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
+        fi
+
+        if test -e arch/${ARCH}/boot/images/uImage ; then
+             ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
+        fi
+
+        if test -e arch/${ARCH}/kernel/vmlinux.lds ; then
+             ln -f arch/${ARCH}/kernel/vmlinux.lds arch/${ARCH}/boot/vmlinux
+        fi
+}
+
-- 
1.7.4


