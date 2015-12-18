Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A092FE00C2A; Fri, 18 Dec 2015 13:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48BC4E00C35
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 13:01:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tBIL1ErS003352
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 18 Dec 2015 13:01:14 -0800
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Fri, 18 Dec 2015 13:01:13 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <ross.burton@intel.com>
Date: Fri, 18 Dec 2015 16:01:09 -0500
Message-ID: <64b63cbc3a9d5603c2808bd8716b257d9a2c2ec3.1450472132.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1450472132.git.bruce.ashfield@windriver.com>
References: <cover.1450472132.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/3] meta-yocto-bsp: remove 3.14 and 3.19 bbappends
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
X-List-Received-Date: Fri, 18 Dec 2015 21:01:18 -0000
Content-Type: text/plain

the 3.14 and 3.19 kernels have been removed from oe-core master, so
we drop the bbappens for the yocto reference BSPs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.14.bbappend               | 11 -----------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend   | 20 --------------------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend   | 20 --------------------
 3 files changed, 51 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index 52fd07fd5d81..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,11 +0,0 @@
-KBRANCH_genericx86  = "standard/common-pc/base"
-KBRANCH_genericx86-64  = "standard/common-pc-64/base"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-
-SRCREV_machine_genericx86 ?= "bda175966009d5a94103559e6e6ae51279952f39"
-SRCREV_machine_genericx86-64 ?= "bda175966009d5a94103559e6e6ae51279952f39"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 589ece73c25d..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,20 +0,0 @@
-KBRANCH_genericx86  = "standard/common-pc/base"
-KBRANCH_genericx86-64  = "standard/common-pc-64/base"
-KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-
-SRCREV_machine_genericx86 ?= "af1f7f586bd32d39c057f17606991b887eadb389"
-SRCREV_machine_genericx86-64 ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
-SRCREV_machine_edgerouter ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
-SRCREV_machine_beaglebone ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
-SRCREV_machine_mpc8315e-rdb ?= "1cb1bbaf63cecc918cf36c89819a7464af4c4b13"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index c87f840ef43b..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,20 +0,0 @@
-KBRANCH_genericx86  = "standard/common-pc"
-KBRANCH_genericx86-64  = "standard/common-pc-64/base"
-KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-
-SRCREV_machine_genericx86 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
-SRCREV_machine_genericx86-64 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
-SRCREV_machine_edgerouter ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
-SRCREV_machine_beaglebone ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
-SRCREV_machine_mpc8315e-rdb ?= "2893f3e8ece72f6f47329714d6afe4c9c545bbf9"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
2.1.0


