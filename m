Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E37FCE00CCD; Sat,  8 Oct 2016 00:46:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65173E00CBB;
	Sat,  8 Oct 2016 00:46:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u987k9ex001737
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sat, 8 Oct 2016 00:46:09 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 8 Oct 2016 00:46:08 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Linux Yocto <linux-yocto@yoctoproject.org>, Yocto Project
	<yocto@yoctoproject.org>
Date: Sat, 8 Oct 2016 15:45:59 +0800
Message-ID: <20161008074559.7989-3-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20161008074559.7989-1-kexin.hao@windriver.com>
References: <20161008074559.7989-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] meta-yocto-bsp: linux 4.4: bump to the latest stable version for non-x86 BSPs
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
X-List-Received-Date: Sat, 08 Oct 2016 07:46:12 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 1ff5725b8e13..34cdbaf8749c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
 SRCREV_machine_genericx86-64 ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
-SRCREV_machine_edgerouter ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
-SRCREV_machine_beaglebone ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
-SRCREV_machine_mpc8315e-rdb ?= "2d7b24e9c0d40d8317a0b9e1b0eefb8280e50d5f"
+SRCREV_machine_edgerouter ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
+SRCREV_machine_beaglebone ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
+SRCREV_machine_mpc8315e-rdb ?= "50e000bc5fce1e04a1a3aea5ffc57c3d5fd71e72"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.20"
 LINUX_VERSION_genericx86-64 = "4.4.20"
-LINUX_VERSION_edgerouter = "4.4.20"
-LINUX_VERSION_beaglebone = "4.4.20"
-LINUX_VERSION_mpc8315e-rdb = "4.4.20"
+LINUX_VERSION_edgerouter = "4.4.22"
+LINUX_VERSION_beaglebone = "4.4.22"
+LINUX_VERSION_mpc8315e-rdb = "4.4.22"
-- 
2.9.3


