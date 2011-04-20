Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D76BC4C80A70
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2011 11:40:04 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Apr 2011 09:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="912308636"
Received: from unknown (HELO helios) ([10.255.13.37])
	by fmsmga001.fm.intel.com with SMTP; 20 Apr 2011 09:40:02 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 20 Apr 2011 17:39:59 +0100
Message-Id: <6f9d2a20d581558b50f916f666ead71f1d3a9c3f.1303316817.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1303316817.git.paul.eggleton@linux.intel.com>
References: <cover.1303316817.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 20 Apr 2011 16:24:13 +0100
Date: Wed, 20 Apr 2011 17:39:59 +0100
To: yocto@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] ipxe: add iPXE from git
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
X-List-Received-Date: Wed, 20 Apr 2011 16:40:05 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

iPXE is a network bootloader primarily for Intel-based systems (the
successor to gPXE).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 common/recipes-bsp/ipxe/files/chainload.ipxe |    5 +++
 common/recipes-bsp/ipxe/ipxe_git.bb          |   38 ++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-bsp/ipxe/files/chainload.ipxe
 create mode 100644 common/recipes-bsp/ipxe/ipxe_git.bb

diff --git a/common/recipes-bsp/ipxe/files/chainload.ipxe b/common/recipes-bsp/ipxe/files/chainload.ipxe
new file mode 100644
index 0000000..e5f0a9e
--- /dev/null
+++ b/common/recipes-bsp/ipxe/files/chainload.ipxe
@@ -0,0 +1,5 @@
+#!ipxe
+dhcp net0
+kernel tftp://TFTP_HOST/boot.ipxe
+boot
+
diff --git a/common/recipes-bsp/ipxe/ipxe_git.bb b/common/recipes-bsp/ipxe/ipxe_git.bb
new file mode 100644
index 0000000..662bbc4
--- /dev/null
+++ b/common/recipes-bsp/ipxe/ipxe_git.bb
@@ -0,0 +1,38 @@
+DESCRIPTION = "Open source network boot firmware"
+HOMEPAGE = "http://ipxe.org"
+LICENSE = "GPLv2"
+DEPENDS = "binutils-native perl-native syslinux mtools-native"
+LIC_FILES_CHKSUM = "file://../COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
+
+SRCREV = "bd9ff16c21efef27b6c18c15dc1d4b153ec12a4a"
+PV = "1.0.0+gitr${SRCPV}"
+PR = "r0"
+
+inherit deploy
+
+SRC_URI = "git://git.ipxe.org/ipxe.git;protocol=git \
+	   file://chainload.ipxe"
+
+EXTRA_OEMAKE = "NO_WERROR=1 EMBEDDED_IMAGE=../../chainload.ipxe"
+
+S = "${WORKDIR}/git/src"
+
+do_configure () {
+	if [ -z "${IPXE_TFTP_HOST}" ] ; then
+		echo "IPXE_TFTP_HOST not set, please set it in your local.conf."
+		exit 1
+	fi
+
+	sed -i s#^ISOLINUX_BIN[\ \\t]*=.*#ISOLINUX_BIN\ =\ ${STAGING_DIR_TARGET}/usr/lib/syslinux/isolinux.bin# arch/i386/Makefile
+	sed -i s/TFTP_HOST/${IPXE_TFTP_HOST}/g ../../chainload.ipxe
+}
+
+do_compile () {
+        oe_runmake
+}
+
+do_deploy () {
+        install ${S}/bin/ipxe.usb ${DEPLOYDIR}/
+}
+addtask deploy before do_build after do_compile
+
-- 
1.7.4.4


