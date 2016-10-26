Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38718E00D0C; Tue, 25 Oct 2016 23:50:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CA43E00CF5;
	Tue, 25 Oct 2016 23:50:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9Q6o0V1019502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 25 Oct 2016 23:50:01 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 25 Oct 2016 23:50:00 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Linux Yocto <linux-yocto@yoctoproject.org>, Yocto Project
	<yocto@yoctoproject.org>
Date: Wed, 26 Oct 2016 14:49:46 +0800
Message-ID: <20161026064946.97657-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: linux-yocto: bump to the latest stable version for non-x86 BSPs
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
X-List-Received-Date: Wed, 26 Oct 2016 06:50:06 -0000
Content-Type: text/plain

Built and boot test for all these boards on 4.1, 4.4 and 4.8 kernels.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend |  6 +++---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index e6607c79f4fe..da6b21c6bdfe 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
 SRCREV_machine_genericx86-64 ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
-SRCREV_machine_edgerouter ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
-SRCREV_machine_beaglebone ?= "3e064525c427e128d08ea599ea3247e2963b54a5"
-SRCREV_machine_mpc8315e-rdb ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
+SRCREV_machine_edgerouter ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
+SRCREV_machine_beaglebone ?= "12532e753b50997690923e03edb3ac3368817a26"
+SRCREV_machine_mpc8315e-rdb ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 7aba74061fe0..5c75e0311636 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_genericx86-64 ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
-SRCREV_machine_edgerouter ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
-SRCREV_machine_beaglebone ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
-SRCREV_machine_mpc8315e-rdb ?= "50e000bc5fce1e04a1a3aea5ffc57c3d5fd71e72"
+SRCREV_machine_edgerouter ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
+SRCREV_machine_beaglebone ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
+SRCREV_machine_mpc8315e-rdb ?= "7fa42ad9a43ca4bb1e578e208ffeddae2d6150e2"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.22"
 LINUX_VERSION_genericx86-64 = "4.4.22"
-LINUX_VERSION_edgerouter = "4.4.22"
-LINUX_VERSION_beaglebone = "4.4.22"
-LINUX_VERSION_mpc8315e-rdb = "4.4.22"
+LINUX_VERSION_edgerouter = "4.4.26"
+LINUX_VERSION_beaglebone = "4.4.26"
+LINUX_VERSION_mpc8315e-rdb = "4.4.26"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 331016b13167..051e15576d03 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
 SRCREV_machine_genericx86-64 ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
-SRCREV_machine_edgerouter ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
-SRCREV_machine_beaglebone ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
-SRCREV_machine_mpc8315e-rdb ?= "4c9e17100b1f8ce45a60ad8984c12b00febbc685"
+SRCREV_machine_edgerouter ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
+SRCREV_machine_beaglebone ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
+SRCREV_machine_mpc8315e-rdb ?= "4be88b03f6648004e74b68044fa2b05e81cf9a1b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8"
 LINUX_VERSION_genericx86-64 = "4.8"
-LINUX_VERSION_edgerouter = "4.8"
-LINUX_VERSION_beaglebone = "4.8"
-LINUX_VERSION_mpc8315e-rdb = "4.8"
+LINUX_VERSION_edgerouter = "4.8.3"
+LINUX_VERSION_beaglebone = "4.8.3"
+LINUX_VERSION_mpc8315e-rdb = "4.8.3"
-- 
2.9.3


