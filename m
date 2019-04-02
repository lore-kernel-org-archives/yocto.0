Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 516AFE00B1B; Tue,  2 Apr 2019 00:43:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B95E00AC5
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 00:43:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x327hotM026147
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 2 Apr 2019 00:43:50 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Tue, 2 Apr 2019 00:43:49 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 2 Apr 2019 15:36:03 +0800
Message-ID: <20190402073604.23446-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH 1/2] meta-yocto-bsp: Bump to the latest stable kernel for all the BSPs
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
X-List-Received-Date: Tue, 02 Apr 2019 07:43:51 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
index fe52a06550d2..5cf6e1f0649e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
-SRCREV_machine_genericx86-64 ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
-SRCREV_machine_edgerouter ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
-SRCREV_machine_beaglebone-yocto ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
-SRCREV_machine_mpc8315e-rdb ?= "21aae3b4437eb6eec18804f1bad692030352430c"
+SRCREV_machine_genericx86    ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
+SRCREV_machine_genericx86-64 ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
+SRCREV_machine_edgerouter ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
+SRCREV_machine_beaglebone-yocto ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
+SRCREV_machine_mpc8315e-rdb ?= "8b62af7f252af10588276802c4c6d7c502e875be"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "5.0"
-LINUX_VERSION_genericx86-64 = "5.0"
-LINUX_VERSION_edgerouter = "5.0"
-LINUX_VERSION_beaglebone-yocto = "5.0"
-LINUX_VERSION_mpc8315e-rdb = "5.0"
+LINUX_VERSION_genericx86 = "5.0.3"
+LINUX_VERSION_genericx86-64 = "5.0.3"
+LINUX_VERSION_edgerouter = "5.0.3"
+LINUX_VERSION_beaglebone-yocto = "5.0.3"
+LINUX_VERSION_mpc8315e-rdb = "5.0.3"
-- 
2.14.4


