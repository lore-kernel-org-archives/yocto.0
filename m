Return-Path: <aalonso@secretlab.ca>
Received: from mail-qy0-f196.google.com (mail-qy0-f196.google.com
	[209.85.216.196])
	by mx1.pokylinux.org (Postfix) with ESMTP id 819634C80AAD
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:31 -0600 (CST)
Received: by mail-qy0-f196.google.com with SMTP id 35so718717qyk.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:31 -0800 (PST)
Received: by 10.224.176.67 with SMTP id bd3mr6593137qab.110.1299021511305;
	Tue, 01 Mar 2011 15:18:31 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id t7sm4432033qcs.28.2011.03.01.15.18.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:30 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:28 -0600
Message-Id: <aef53d6cf5baf1c52a642e85b9e63662f9350eb2.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
Subject: [PATCH 3/5] u-boot-xilinx: fix missing license definition
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
X-List-Received-Date: Tue, 01 Mar 2011 23:18:31 -0000

* Fix missing LICENSE definition
* Update u-boot-xilinx preferred version (sync with xilinx repo).
* Increase PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 49f5ad4..2483c4b 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,12 +1,14 @@
 require recipes-bsp/uboot/u-boot.inc
-PR = "r7"
+PR = "r8"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
+LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b"
 
 EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
 BRANCH="master"
-TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
+#TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
+TAG="d49297009f402a20dd59b21212975dd3d79ee6fd"
 SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
            file://uboot-remove-inline-qualifier-from-show_boot_progres.patch \
            file://ml405-add-uartlite-config-options.patch \
-- 
1.7.4


