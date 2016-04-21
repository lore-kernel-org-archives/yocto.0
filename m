Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AB07E00DAF; Thu, 21 Apr 2016 10:32:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084E3E00CE8
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:45 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id r12so11415652wme.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=dTTZgrbvol7Kl48GqjxsSC1EowgzMGfTNKE0z+n/tpQ=;
	b=nicv0InqSEThmhJ0IwkgSS9dzRVUhPqpeANDtDYuYJfUcTI3zbWlVsmcmPXtFyGRpE
	0PxT41bbGMdnRjOwJnaI0pe9ouVF7M94l4reTQ685375/T5PUeiXT+yJBIN+q37UandV
	+sRSHHwuJHmZkZdttdvQTO42bPzw4aAhe5wi3MSJLXLxwa5XGeJ1g58slvz/XuwRuGOn
	8Nj4WAtNRn9S+bbDR1bmXVk5C6fOsu8r0H3kBsUlMIt5A6k2ejT1XHq01eY3XhoVSvv1
	z9Dl1am7UQKmddS9HK5W/gC0bY7E2F6QOhOMx2SJqq/06wUwKCyL8MCQUtedPN/dxqnb
	AzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=dTTZgrbvol7Kl48GqjxsSC1EowgzMGfTNKE0z+n/tpQ=;
	b=deKXzJzvgT6WrezlfvlqDG4fNj3oRCgs/3c+G2wPuQURm5MChZBiSagb/XN409RLyE
	Km/U89Zf+1lj37e4CPBB8IS74zlNpKdU3Ls2M5JBCNuESN9z7NTWk3NUVbvKWZ4fzCy9
	DQ6mpfITsdW701D50DvfdP5K8PL7ztqzudjDBU5mMrWK1fP79lpUtOQvEj5YlzruEcBr
	fJGYILe7GJUjz/E5LstS9vHFUW+cdXsPPLDgW8SqgbHybLzoxogpxxJtK76XvhB+nUF3
	GnIMUJ7Vv+ZG3r0DeoyHp5bqgd8DItzopv9WJUGif76U5CuD74ysOGmlSkW4uZuJcFBX
	zkwQ==
X-Gm-Message-State: AOPr4FWHOJIYqfYUAUyNuKyCu5S4vuJDgNQa+B3a6esmxKCjb+4CBXtzfZXmDSQnMQurvg==
X-Received: by 10.194.92.107 with SMTP id cl11mr18110185wjb.21.1461259965176; 
	Thu, 21 Apr 2016 10:32:45 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	o128sm4251128wmb.19.2016.04.21.10.32.44
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 10:32:44 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 18:32:12 +0100
Message-Id: <1461259933-1661-4-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Make use of serial aliases
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
X-List-Received-Date: Thu, 21 Apr 2016 17:32:57 -0000

From: Theodor Gherzan <theodor@resin.io>

The firmware will parse cmdline and replace serial aliases with the
actual serial console port.

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 24e7fe2..2dcab94 100644
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


