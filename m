Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69EEAE00B5C; Sat, 30 Jan 2016 17:03:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BF04E00B45
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 17:03:45 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id yy13so61384037pab.3
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 17:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=9S5qW5XgnVtaPpYsExqTC4soijz54PyisL/UW/i/Z7w=;
	b=IrAENanBO1oBTMjw0bN+HHNd5l4OROsdEWKC/OP4NL6vklnkv+Uyv2k5beWaItbcJI
	02SJrkR9CMWnign5eISvIEdGD8At9nYl5xMGOLBJCIV42aezjL6nNZa3Lfp4ogSM2GO9
	iNgrd4hoCjhyC8d5J4U8KZ3w4jIw9R8sUmsTorEtZO1ZKDL89abMS0i8s2z26k+lXIvX
	ZcS7Udd2m4KsxGs9y0iE4SFS0l37Un4yhZ/4mT/z8uvGf9jMf/VVaqtLT99DzChtWJQI
	7LFNnF8aK64CNV9kI91530hKroSfgBJIJz6cVKDegD3JHyBc1kYRwlymUMVfC/tKtjS1
	InfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9S5qW5XgnVtaPpYsExqTC4soijz54PyisL/UW/i/Z7w=;
	b=Ebu9eXDOooeUTH+9s649+VhNOHe5RNriiBfm9LUM/p21U8kWZMhWlCcdYa5EmY44/G
	PKOfxK7UcgzCD9g43Ih9Bydc1+7Z/XLs3zoHzg4o09KIWV+JUthB4i7lh3SJF+5yX3mc
	TuDfTMdzjPs/0HqinpX8K9XFeJfpPAAtWzldVXid1YcjKVon59dKO/RxKq8EWrA4BUwb
	0b7Zx8ngSTuRx7A2twM2fqnHRjHVcSBGp/2DENZZTuXnJEskfzVpstuMcloACfhBNjCf
	JtMiy6zOXcoOO30RuD1hvATopGUjXYTylzzfk6NFVbG6Q5vxAhEjE7dQypzU+KRv+Q4Z
	GCfw==
X-Gm-Message-State: AG10YORy8Z8lNsVLh1lVHXxFGtbWxgxbmSiHYAmX1iD8OiEJzObjxBUAVljN/WSVroPDBw==
X-Received: by 10.66.163.196 with SMTP id yk4mr26635951pab.115.1454202225647; 
	Sat, 30 Jan 2016 17:03:45 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	tk1sm33014887pac.5.2016.01.30.17.03.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 30 Jan 2016 17:03:44 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jan 2016 17:03:38 -0800
Message-Id: <1454202218-27563-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] wiringPi: Fix build with musl
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
X-List-Received-Date: Sun, 31 Jan 2016 01:03:47 -0000

Include asm/ioctl.h for _IOC_SIZEBITS

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch | 58 ++++++++++++++++++++++
 recipes-devtools/wiringPi/wiringpi_git.bb          |  8 +--
 2 files changed, 62 insertions(+), 4 deletions(-)
 create mode 100644 recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch

diff --git a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch b/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
new file mode 100644
index 0000000..5de5853
--- /dev/null
+++ b/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
@@ -0,0 +1,58 @@
+From 7f65eb37a82a6d9b095d9c8f262ad9dd205acd03 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 30 Jan 2016 16:57:38 -0800
+Subject: [PATCH] include <asm/ioctl.h> directly for _IOC_SIZEBITS
+
+Fixes errors like
+| wiringPiSPI.c: In function 'wiringPiSPIDataRW':
+| wiringPiSPI.c:89:35: error: '_IOC_SIZEBITS' undeclared (first use in
+this function)
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ wiringPi/wiringPi.c    | 1 +
+ wiringPi/wiringPiI2C.c | 1 +
+ wiringPi/wiringPiSPI.c | 1 +
+ 3 files changed, 3 insertions(+)
+
+diff --git a/wiringPi/wiringPi.c b/wiringPi/wiringPi.c
+index 32e5100..cb5db9d 100644
+--- a/wiringPi/wiringPi.c
++++ b/wiringPi/wiringPi.c
+@@ -64,6 +64,7 @@
+ #include <time.h>
+ #include <fcntl.h>
+ #include <pthread.h>
++#include <asm/ioctl.h>
+ #include <sys/time.h>
+ #include <sys/mman.h>
+ #include <sys/stat.h>
+diff --git a/wiringPi/wiringPiI2C.c b/wiringPi/wiringPiI2C.c
+index c787bce..efdf53c 100644
+--- a/wiringPi/wiringPiI2C.c
++++ b/wiringPi/wiringPiI2C.c
+@@ -52,6 +52,7 @@
+ #include <string.h>
+ #include <fcntl.h>
+ #include <sys/ioctl.h>
++#include <asm/ioctl.h>
+ 
+ #include "wiringPi.h"
+ #include "wiringPiI2C.h"
+diff --git a/wiringPi/wiringPiSPI.c b/wiringPi/wiringPiSPI.c
+index 453df31..ae3c7d9 100644
+--- a/wiringPi/wiringPiSPI.c
++++ b/wiringPi/wiringPiSPI.c
+@@ -27,6 +27,7 @@
+ #include <fcntl.h>
+ #include <errno.h>
+ #include <string.h>
++#include <asm/ioctl.h>
+ #include <sys/ioctl.h>
+ #include <linux/spi/spidev.h>
+ 
+-- 
+2.7.0
+
diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
index 4254a0a..9d2206b 100644
--- a/recipes-devtools/wiringPi/wiringpi_git.bb
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -9,10 +9,10 @@ SRCREV = "d79506694d7ba1c3da865d095238289d6175057d"
 
 S = "${WORKDIR}/git"
 
-SRC_URI = "\
-          git://git.drogon.net/wiringPi \
-          file://0001-Add-initial-cross-compile-support.patch \
-          "
+SRC_URI = "git://git.drogon.net/wiringPi \
+           file://0001-Add-initial-cross-compile-support.patch \
+           file://0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch \
+           "
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-- 
2.7.0


