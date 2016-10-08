Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F37E00CB6; Sat,  8 Oct 2016 00:46:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16272E00CB0;
	Sat,  8 Oct 2016 00:46:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u987k7BV022979
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 8 Oct 2016 00:46:07 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 8 Oct 2016 00:46:06 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Linux Yocto <linux-yocto@yoctoproject.org>, Yocto Project
	<yocto@yoctoproject.org>
Date: Sat, 8 Oct 2016 15:45:58 +0800
Message-ID: <20161008074559.7989-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20161008074559.7989-1-kexin.hao@windriver.com>
References: <20161008074559.7989-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/3] meta-yocto-bsp: linux 4.1: bump to the latest stable version for non-x86 BSPs
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
X-List-Received-Date: Sat, 08 Oct 2016 07:46:09 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index d97641411217..0451b8172b22 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "a6b3a8cc120640bf5e528c8558ce060675757fc1"
 SRCREV_machine_genericx86-64 ?= "a6b3a8cc120640bf5e528c8558ce060675757fc1"
-SRCREV_machine_edgerouter ?= "a6b3a8cc120640bf5e528c8558ce060675757fc1"
-SRCREV_machine_beaglebone ?= "2ccca89503ed8c3f37b486b29d2ec3a6699f1899"
-SRCREV_machine_mpc8315e-rdb ?= "a6b3a8cc120640bf5e528c8558ce060675757fc1"
+SRCREV_machine_edgerouter ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
+SRCREV_machine_beaglebone ?= "3e064525c427e128d08ea599ea3247e2963b54a5"
+SRCREV_machine_mpc8315e-rdb ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.32"
 LINUX_VERSION_genericx86-64 = "4.1.32"
-LINUX_VERSION_edgerouter = "4.1.32"
-LINUX_VERSION_beaglebone = "4.1.32"
-LINUX_VERSION_mpc8315e-rdb = "4.1.32"
+LINUX_VERSION_edgerouter = "4.1.33"
+LINUX_VERSION_beaglebone = "4.1.33"
+LINUX_VERSION_mpc8315e-rdb = "4.1.33"
-- 
2.9.3


