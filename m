Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB073E00D2F; Thu, 18 Apr 2019 22:32:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31198E004D8
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 22:32:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3J5WDLX014518
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 22:32:33 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 18 Apr 2019 22:32:20 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 19 Apr 2019 13:23:35 +0800
Message-ID: <20190419052335.28270-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH][thud] meta-yocto-bsp: Bump to the latest stable kernel for the BSPs
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
X-List-Received-Date: Fri, 19 Apr 2019 05:32:45 -0000
Content-Type: text/plain

In order to fix a systemtap bug [1] on arm board, we backport a kernel
patch from v5.0 kernel to v4.14 & v4.18 kernel, then need to bump the
kernel version to include this patch. Even this is only an arm specific
bug, we would like to bump the kernel version for the BSPs at the same
time. Boot test for all the boards.

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend   | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 502485a94b15..426757e48c9e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
-SRCREV_machine_genericx86-64 ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
-SRCREV_machine_edgerouter ?= "e06bfa18c727bd0e6e10cf26d9f161e4c791f52b"
-SRCREV_machine_beaglebone-yocto ?= "b8805de77dcf8f59d8368fee4921c146c1300a6a"
-SRCREV_machine_mpc8315e-rdb ?= "f88e87360b10f8fbd853a7d412982e6620f3f96d"
+SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
+SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
+SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
+SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
+SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.76"
-LINUX_VERSION_genericx86-64 = "4.14.76"
-LINUX_VERSION_edgerouter = "4.14.71"
-LINUX_VERSION_beaglebone-yocto = "4.14.71"
-LINUX_VERSION_mpc8315e-rdb = "4.14.71"
+LINUX_VERSION_genericx86 = "4.14.98"
+LINUX_VERSION_genericx86-64 = "4.14.98"
+LINUX_VERSION_edgerouter = "4.14.98"
+LINUX_VERSION_beaglebone-yocto = "4.14.98"
+LINUX_VERSION_mpc8315e-rdb = "4.14.98"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 7f15843f3a90..11b35cc1c2f8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_edgerouter ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
-SRCREV_machine_beaglebone-yocto ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
-SRCREV_machine_mpc8315e-rdb ?= "99071a599d8650b069fb8135866fca203f375350"
+SRCREV_machine_genericx86    ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_genericx86-64 ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_edgerouter ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_beaglebone-yocto ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_mpc8315e-rdb ?= "0802dc980cbc8bdb156d6fe305e7b88e6b602634"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.22"
-LINUX_VERSION_genericx86-64 = "4.18.22"
-LINUX_VERSION_edgerouter = "4.18.25"
-LINUX_VERSION_beaglebone-yocto = "4.18.25"
-LINUX_VERSION_mpc8315e-rdb = "4.18.25"
+LINUX_VERSION_genericx86 = "4.18.35"
+LINUX_VERSION_genericx86-64 = "4.18.35"
+LINUX_VERSION_edgerouter = "4.18.35"
+LINUX_VERSION_beaglebone-yocto = "4.18.35"
+LINUX_VERSION_mpc8315e-rdb = "4.18.35"
-- 
2.14.4


