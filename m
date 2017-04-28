Return-Path: <costamagna.gianfranco@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F66E009A0; Fri, 28 Apr 2017 08:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (costamagna.gianfranco[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923DDE00985
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 08:37:40 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u65so11629525wmu.3
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 08:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=MMCyPVvFZ1APePE+7aXHShyuClfB1wzwC0mv0ANkXvc=;
	b=dXdRwLAdznwL6QfhBzKS292JjBIT/qLzbQaVAfruMaVpEF8N9KPRPkuLH54Dqxa4ni
	WNqkK6IKLZfYHz0KQkBNRSj58/ork/iM1STJG13utVvl/oqLDBC0CEJLBbeWfYHDfIii
	seVFNLfgAwgR2yrm7PGXe2gfI1FPzJfVYHpme8/LTDlza8M1o6ToMXJLA/KaDtwLZGER
	in7AN1fgHcrIysP4hIFGuVEIoQtI8fGO9GpbSpXcrEbZtZ4IdYX4K5wqy1mTyVF3ctzf
	Z4pQyK72q48B0IwIMMMqWN9Q2auOdY39V/Sb+xn4vDbk8ysNBOlUmtHF6USAoTmcnuTg
	8WgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MMCyPVvFZ1APePE+7aXHShyuClfB1wzwC0mv0ANkXvc=;
	b=p4Lgjgbs5Gyt75yDcBRXoWmNDLbK29Pglu1OSkV2ITak1U/vfffd3ZO0/h43j5LJ2w
	1WQ17S8eCaBCreoYid8YkOoffkA353lVzIpE7XuHD/neLkCPywsAw5ufQrRty+zCWr+t
	4BFNRaDq7YJ0QoVLsL3P43J4Kdq+23iMYb2b1MAitq4w9mRzccifsD3YjzmZZ6xInyKx
	bhRaDDJGPMsjL5LtEaOSpOVmtGqf5BjFJPWCNO0IFWeZFthszCElmtWPyTQwmsLI8F5a
	eiW1pAq1heocRfqN+7O1JfLLd7Pdonvc8ed1yqNP6bO8Om1NXJ00/fpr3L3Z+V7ag++0
	EIQQ==
X-Gm-Message-State: AN3rC/4js2FAs0sxQjmpKFAGo1goHs+JFJgFrkIaX8LCiooMBB8a+02p
	fGksqSE/qlAHp4KvC70=
X-Received: by 10.28.169.15 with SMTP id s15mr6127519wme.2.1493393858769;
	Fri, 28 Apr 2017 08:37:38 -0700 (PDT)
Received: from localhost.localdomain ([109.112.5.151])
	by smtp.gmail.com with ESMTPSA id 75sm2093424wmp.2.2017.04.28.08.37.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 28 Apr 2017 08:37:37 -0700 (PDT)
From: Gianfranco Costamagna <costamagna.gianfranco@gmail.com>
X-Google-Original-From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
To: yocto@yoctoproject.org
Date: Fri, 28 Apr 2017 17:37:31 +0200
Message-Id: <1493393851-13720-1-git-send-email-costamagnagianfranco@yahoo.it>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 01 May 2017 22:36:03 -0700
Cc: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Subject: [meta-raspberrypi][PATCH] Make CMDLINE overridable from outside
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
X-List-Received-Date: Fri, 28 Apr 2017 15:37:43 -0000

currently there is no way to override the default CMDLINE, lets set if only if not already set from outside

Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index cf61cce..9265d55 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -21,7 +21,7 @@ KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 KERNEL_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 # Add the kernel debugger over console kernel command line option if enabled
 CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
-- 
2.7.4


