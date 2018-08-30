Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D690E0079D; Thu, 30 Aug 2018 07:18:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB7FE00720
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 07:18:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7UEIMhi002249
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 Aug 2018 07:18:22 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Thu, 30 Aug 2018 07:18:22 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 30 Aug 2018 10:18:20 -0400
Message-ID: <1535638700-2680-2-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1535638700-2680-1-git-send-email-bruce.ashfield@windriver.com>
References: <1535638700-2680-1-git-send-email-bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/2] yocto-bsp: drop 4.15 bbappend
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
X-List-Received-Date: Thu, 30 Aug 2018 14:18:25 -0000
Content-Type: text/plain

4.18 is replacing 4.15 as the latest kernel in the upcoming
release, so we drop this dangling bbappend.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.15.bbappend | 27 ----------------------
 1 file changed, 27 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
deleted file mode 100644
index 45ac05d432de..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
+++ /dev/null
@@ -1,27 +0,0 @@
-KBRANCH_genericx86  = "v4.15/standard/base"
-KBRANCH_genericx86-64  = "v4.15/standard/base"
-KBRANCH_edgerouter = "v4.15/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v4.15/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v4.15/standard/fsl-mpc8315e-rdb"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86    ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
-SRCREV_machine_genericx86-64 ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
-SRCREV_machine_edgerouter ?= "3373c0cf71f2812eeb9694839456df6f67fd32ac"
-SRCREV_machine_beaglebone-yocto ?= "e25dbfe95302eeaa1a03a828d05c09479574488a"
-SRCREV_machine_mpc8315e-rdb ?= "0b32edc46dfe7c40bf5451e9b7533c823bb2c6c4"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-
-LINUX_VERSION_genericx86 = "4.15.18"
-LINUX_VERSION_genericx86-64 = "4.15.18"
-LINUX_VERSION_edgerouter = "4.15.18"
-LINUX_VERSION_beaglebone-yocto = "4.15.18"
-LINUX_VERSION_mpc8315e-rdb = "4.15.18"
-- 
2.5.0


