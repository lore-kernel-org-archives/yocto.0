Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21939E00C2A; Sat,  8 Oct 2016 00:46:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D80E00791;
	Sat,  8 Oct 2016 00:46:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u987k4nK001848
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 8 Oct 2016 00:46:04 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 8 Oct 2016 00:46:03 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Linux Yocto <linux-yocto@yoctoproject.org>, Yocto Project
	<yocto@yoctoproject.org>
Date: Sat, 8 Oct 2016 15:45:57 +0800
Message-ID: <20161008074559.7989-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH 1/3] meta-yocto-bsp: linux 4.8: bump to the final v4.8 release for non-x86 BSPs
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
X-List-Received-Date: Sat, 08 Oct 2016 07:46:07 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index f42b274c5a35..331016b13167 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
 SRCREV_machine_genericx86-64 ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
-SRCREV_machine_edgerouter ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
-SRCREV_machine_beaglebone ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
-SRCREV_machine_mpc8315e-rdb ?= "b5c48c7a5d6473373fe7f1e2e8d7b0cf57929908"
+SRCREV_machine_edgerouter ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
+SRCREV_machine_beaglebone ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
+SRCREV_machine_mpc8315e-rdb ?= "4c9e17100b1f8ce45a60ad8984c12b00febbc685"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8"
 LINUX_VERSION_genericx86-64 = "4.8"
-LINUX_VERSION_edgerouter = "4.8-rc7"
-LINUX_VERSION_beaglebone = "4.8-rc7"
-LINUX_VERSION_mpc8315e-rdb = "4.8-rc7"
+LINUX_VERSION_edgerouter = "4.8"
+LINUX_VERSION_beaglebone = "4.8"
+LINUX_VERSION_mpc8315e-rdb = "4.8"
-- 
2.9.3


