Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CEAEE00DBA; Thu, 21 Apr 2016 12:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDCD7E00DB3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:19 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r12so12092545wme.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oJb3NcTa4f4tOGnjbbPFrOWgCf7EzDNk0f9VrXB/pJA=;
	b=mfHV/Xn1LzI43uh+7KMsWbejvwOg9VFcLk4eYoFcPvKmZyINC+y7yQbapi2bWgVXXC
	6xw0uFdXOgbpBcn8yT1qE0dcveJWGGsBMEsxv362oTNvt12L9jzKQhStgcmmTOw20P6S
	wgU3S0TDWeUFGU+aP83y2pmsTPAvV8gLePTNRG2v8NRNOVXOCnt/j+rFPhalFQ5gPRKx
	Y/hGD6Ab1PbFLF1nomGCb0X4KX5q7Xk/f0cakuCHjsJoFKsfdGvy81gLFZgDdI4/chZq
	XWxElrlbr3Dic2zDYLObuFe23I03ehIhTrINC+NCquX9pqtHKSFYBzhTUUupGKL9jQ8l
	F0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=oJb3NcTa4f4tOGnjbbPFrOWgCf7EzDNk0f9VrXB/pJA=;
	b=gJNxvwjmLG4ZNGUWy7FYrflZi1D5/zZf9QI7c3KuOm1Pa4wu5VVOGSDinSuZ24Z/RR
	6AQdKa36VSq1ELv5dH3yuOxrccX3Q3LFspaF+Dnlgijeu2F1NFhIJ0TTThf+vA+zF+Xk
	LQZ7Q7LI3aWPDU4clX4n6yuTr+NE7lQCBUM8ew8NAlcmxLQogqXfvaggbYhxKwsZCsj1
	Q4Yju16SeuIWcBSIYX3gQr6WD/Dbkz+8CkNUut95X4fGirFCX+YoB8gSbOi7/aqQrAl8
	rrAPEtH5UKoMIk63zzeqdbOUlGp4Btmuiu5m48EcW0S98Is5yFNTL27O7RhEVFIgr3yW
	cMpw==
X-Gm-Message-State: AOPr4FU4spwxaF36w8d2/yniHlzOmjWdEKb5PJEQBYTUXYsd8p+buvIP+Nk8D99cQs27Dg==
X-Received: by 10.28.172.132 with SMTP id v126mr17249830wme.28.1461267078902; 
	Thu, 21 Apr 2016 12:31:18 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id m14sm4744524wmc.4.2016.04.21.12.31.17
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:31:18 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:31:08 +0100
Message-Id: <1461267069-9448-3-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
References: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/4] linux-raspberrypi: Make use of serial aliases
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
X-List-Received-Date: Thu, 21 Apr 2016 19:31:21 -0000

From: Theodor Gherzan <theodor@resin.io>

The firmware will parse cmdline and replace serial aliases with the
actual serial console port.

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index f8e0c92..eccbbc6 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -20,7 +20,7 @@ KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE = "dwc_otg.lpm_enable=0 console=serial0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 # Add the kernel debugger over console kernel command line option if enabled
 CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,115200", "", d)}'
-- 
2.1.4


