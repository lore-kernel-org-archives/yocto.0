Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3CF5E00CC9; Thu,  9 May 2019 05:09:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D7AE00963
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 05:09:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x49C9JWw009467
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 May 2019 05:09:29 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 9 May 2019 05:09:08 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 9 May 2019 19:59:33 +0800
Message-ID: <20190509115933.23465-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Thu, 09 May 2019 12:09:40 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20 ++++++++++----------
 .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 6025230c7306..ec269d905c4b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
-SRCREV_machine_genericx86-64 ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
-SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
+SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_beaglebone-yocto ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_mpc8315e-rdb ?= "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.19.19"
-LINUX_VERSION_genericx86-64 = "4.19.19"
-LINUX_VERSION_edgerouter = "4.19.14"
-LINUX_VERSION_beaglebone-yocto = "4.19.14"
-LINUX_VERSION_mpc8315e-rdb = "4.19.14"
+LINUX_VERSION_genericx86 = "4.19.34"
+LINUX_VERSION_genericx86-64 = "4.19.34"
+LINUX_VERSION_edgerouter = "4.19.34"
+LINUX_VERSION_beaglebone-yocto = "4.19.34"
+LINUX_VERSION_mpc8315e-rdb = "4.19.34"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
index 5cf6e1f0649e..d7cf1216f45d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_genericx86-64 ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_edgerouter ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_beaglebone-yocto ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_mpc8315e-rdb ?= "8b62af7f252af10588276802c4c6d7c502e875be"
+SRCREV_machine_genericx86    ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_genericx86-64 ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_beaglebone-yocto ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_mpc8315e-rdb ?= "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "5.0.3"
-LINUX_VERSION_genericx86-64 = "5.0.3"
-LINUX_VERSION_edgerouter = "5.0.3"
-LINUX_VERSION_beaglebone-yocto = "5.0.3"
-LINUX_VERSION_mpc8315e-rdb = "5.0.3"
+LINUX_VERSION_genericx86 = "5.0.13"
+LINUX_VERSION_genericx86-64 = "5.0.13"
+LINUX_VERSION_edgerouter = "5.0.13"
+LINUX_VERSION_beaglebone-yocto = "5.0.13"
+LINUX_VERSION_mpc8315e-rdb = "5.0.13"
-- 
2.14.4


