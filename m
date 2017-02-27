Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C19C5E00A18; Sun, 26 Feb 2017 19:12:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 522F0E00939
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 19:12:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v1R3Cclf008349
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 26 Feb 2017 19:12:38 -0800 (PST)
Received: from yow-dellw-nn.wrs.com (128.224.56.14) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Sun, 26 Feb 2017 19:12:38 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 26 Feb 2017 22:12:35 -0500
Message-ID: <2c379f4c214058a5d1b81590184670ed7dbc2506.1488165049.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1488165049.git.bruce.ashfield@windriver.com>
References: <cover.1488165049.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/2] yocto-bsp: remove 4.4 bbappend
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
X-List-Received-Date: Mon, 27 Feb 2017 03:12:45 -0000
Content-Type: text/plain

The 4.4 kernel has been dropped, so we remove the associated bbappends.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 26 ----------------------
 1 file changed, 26 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
deleted file mode 100644
index d92bfc0f516f..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ /dev/null
@@ -1,26 +0,0 @@
-KBRANCH_genericx86  = "standard/base"
-KBRANCH_genericx86-64  = "standard/base"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
-
-SRCREV_machine_genericx86    ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_genericx86-64 ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_edgerouter ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_beaglebone ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_mpc8315e-rdb ?= "b01922f8b85d96b9f6996b17ed0995c6f782fdbf"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-
-LINUX_VERSION_genericx86 = "4.4.41"
-LINUX_VERSION_genericx86-64 = "4.4.41"
-LINUX_VERSION_edgerouter = "4.4.41"
-LINUX_VERSION_beaglebone = "4.4.41"
-LINUX_VERSION_mpc8315e-rdb = "4.4.41"
-- 
2.5.0


