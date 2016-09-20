Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB22E00B74; Tue, 20 Sep 2016 08:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E363E00B52
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 08:23:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KFN3pw018578
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 08:23:03 -0700
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Tue, 20 Sep 2016 08:23:02 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 20 Sep 2016 11:22:59 -0400
Message-ID: <ce41709d5a09785129e46c5190f4a81563f0d100.1474384870.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1474384870.git.bruce.ashfield@windriver.com>
References: <cover.1474384870.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/3] meta-yocto-bsp: bump to linux-yocto 4.8 for the non-x86 BSPs
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
X-List-Received-Date: Tue, 20 Sep 2016 15:23:06 -0000
Content-Type: text/plain

From: Kevin Hao <kexin.hao@windriver.com>

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++++++++
 4 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index ea50accc2d8e..1b6c2dcd57f8 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -22,7 +22,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.4%"
+PREFERRED_VERSION_linux-yocto ?= "4.8%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 6343dfc38c6d..cf521e91d5f5 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.4%"
+PREFERRED_VERSION_linux-yocto ?= "4.8%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 1e7de09a4667..a2ff07c552d6 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.4%"
+PREFERRED_VERSION_linux-yocto ?= "4.8%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index efa11cb209be..f36164fcb577 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -3,12 +3,24 @@ KBRANCH_genericx86-64  = "standard/base"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
 SRCREV_machine_genericx86-64 ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
+SRCREV_machine_edgerouter ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
+SRCREV_machine_beaglebone ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
+SRCREV_machine_mpc8315e-rdb ?= "b5c48c7a5d6473373fe7f1e2e8d7b0cf57929908"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8-rc4"
 LINUX_VERSION_genericx86-64 = "4.8-rc4"
+LINUX_VERSION_edgerouter = "4.8-rc7"
+LINUX_VERSION_beaglebone = "4.8-rc7"
+LINUX_VERSION_mpc8315e-rdb = "4.8-rc7"
-- 
2.5.0


