Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A49E00B78; Tue, 20 Sep 2016 08:23:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 111BFE00B48
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 08:23:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KFN2CG027219
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 08:23:02 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Tue, 20 Sep 2016 08:23:02 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 20 Sep 2016 11:22:58 -0400
Message-ID: <827526a1577ae793e7e3722eb89b8bc283c011c4.1474384870.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1474384870.git.bruce.ashfield@windriver.com>
References: <cover.1474384870.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/3] meta-yocto-bsp: linux 4.4: bump to the latest stable version for the non-x86 BSPs
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
X-List-Received-Date: Tue, 20 Sep 2016 15:23:07 -0000
Content-Type: text/plain

From: Kevin Hao <kexin.hao@windriver.com>

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4a7f7e25f55b..b68d3665279e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -8,10 +8,10 @@ KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
-SRCREV_machine_genericx86-64 ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
-SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
-SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
-SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
+SRCREV_machine_genericx86-64 ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_edgerouter ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_beaglebone ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_mpc8315e-rdb ?= "2d7b24e9c0d40d8317a0b9e1b0eefb8280e50d5f"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,3 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.18"
 LINUX_VERSION_genericx86-64 = "4.4.18"
+LINUX_VERSION_edgerouter = "4.4.20"
+LINUX_VERSION_beaglebone = "4.4.20"
+LINUX_VERSION_mpc8315e-rdb = "4.4.20"
-- 
2.5.0


