Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 799D0E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:11:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6RHB3JM006627
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:11:04 -0700 (PDT)
Received: from yow-pgortmak-d2.corp.ad.wrs.com (128.224.146.165) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 27 Jul 2012 10:11:03 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 27 Jul 2012 13:10:56 -0400
Message-ID: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.11.1
MIME-Version: 1.0
Subject: [PATCH] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Fri, 27 Jul 2012 17:11:04 -0000
Content-Type: text/plain

The updated patch series to support this target is in place
on the BSP specific branch in the 3.4 kernel tree now[1], so
we can move it ahead off of the old 3.0 kernel.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 3c2f56f..adf36a9 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 2ff467b..1c8d26a 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -4,11 +4,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
 SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
-SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
+SRCREV_machine_routerstationpro ?= "27019633ccdaa88dc55101615d936d1d74db9a1e"
 SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
 SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.11.1


