Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.12324.1581437835809115642
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 08:17:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: mail1.xn--80adja5bqm.su, ip: 140.211.169.56, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58BBAE01724; Tue, 11 Feb 2020 08:17:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	KHOP_HELO_FCRDNS,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.3 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from mail1.xn--80adja5bqm.su (xn--80adja5bqm.su [45.62.210.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9026DE01722
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 08:17:13 -0800 (PST)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id 8C9EC20F514C; Tue, 11 Feb 2020 10:23:44 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su 8C9EC20F514C
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Subject: [meta-rockchip][PATCH v2] Allow to override WKS_FILE variable
Date: Tue, 11 Feb 2020 10:23:38 +0100
Message-Id: <1581413018-6561-1-git-send-email-jin@mediatomb.cc>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1581412285-6453-1-git-send-email-jin@mediatomb.cc>
References: <1581412285-6453-1-git-send-email-jin@mediatomb.cc>

From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>

Currently machine configs define the partition layout for each machine
by setting the WKS_FILE variable. However, there are situations where it
may be needed to use a different, non default layout. To simplify such
configurations we will set WKS_FILE using ?= so that it can be easily
overriden in local configurations.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 conf/machine/firefly-rk3288.conf | 2 +-
 conf/machine/tinker-board-s.conf | 2 +-
 conf/machine/tinker-board.conf   | 2 +-
 conf/machine/vyasa-rk3288.conf   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 0a9eab6..2a5f0ba 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -11,7 +11,7 @@ require conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
 
-WKS_FILE = "firefly-rk3288.wks"
+WKS_FILE ?= "firefly-rk3288.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index a7fe2fc..f7b17e4 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -12,7 +12,7 @@ UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
 
 RK_BOOT_DEVICE ?= "mmcblk1"
 
-WKS_FILE = "tinker-board.wks"
+WKS_FILE ?= "tinker-board.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
index c8cac7b..1c3c08a 100644
--- a/conf/machine/tinker-board.conf
+++ b/conf/machine/tinker-board.conf
@@ -10,7 +10,7 @@ require conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
 
-WKS_FILE = "tinker-board.wks"
+WKS_FILE ?= "tinker-board.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 1e1eba4..c92c821 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -14,7 +14,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 RK_BOOT_DEVICE = "mmcblk2"
-WKS_FILE = "vyasa-rk3288.wks"
+WKS_FILE ?= "vyasa-rk3288.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
-- 
2.24.1

