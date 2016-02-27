Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6E6AE00DF1; Sat, 27 Feb 2016 07:27:25 -0800 (PST)
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
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C55B8E00CC5
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:14 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id y9so87796259qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=QsX8QiGRdQG4ro13wDGuUkNQZH2y5MIbiM/VNL7Ae6Q=;
	b=0S9W8bDEBg+/I2TdBl648j/E/d2ASbC4HAVU3aKTg9jOStw+LxTIGGKJ0y+TLEPFM4
	sPHcEneZjbeG9/osIIvBBh7CO0f/6OxfBqXbTNLNh7Kcg9ihUP6aiuaENlhUw6hXU67N
	6n4aZIIZhlGP8m5Po7xQwC411LynUQ12W9PCJuKOq5iZPmeVOTwWW++hOTmm4uB4CLkT
	KTBg1Mnn7hDmfqZ3yDjpdEa7mXkTjuwKr9K/W7qGehKeqdYwCqhOeJ6/q5g8G026uDMC
	qcyp2/iylpt1jwlf0/SKBc4r9pphBGS4Us5hJ2W74RjHyD0u6yvS5wsLUMhcQnw9B0AJ
	CpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=QsX8QiGRdQG4ro13wDGuUkNQZH2y5MIbiM/VNL7Ae6Q=;
	b=gvsV5pILsySqNJ7Sij2EaZsZZHTOBGGp6eUEM/5bMSdF+DdTJPlWzwPBXajO2giIS5
	ztkpmMzmYP5W+bROtvFBzdOTRgbPTlHF2RQAauPI8FOuOUbupNhMBN8h/IOrKScebj33
	11rm1Duhl69Rj1owin7WxswIMNKt4jXR6m5RyGIvfpR4T7ycNulxYyCk+mHUNz5gLi5N
	6xDHkPSYfFPoE2p2Z9XKoG9ZxHat8h8ASk6kadIlb3qYl6P30bCmU6PAT0ZuMbswiTGH
	WfZ1Ne+ZFLSXOPV5T9JV1sNHCdp6yCtfPfEaR8yvsBwqPk6pOqo15R+f/3YJG8aA2V4s
	Wcww==
X-Gm-Message-State: AD7BkJKEX8JWETJPlFyweq1F4kTU3XJ6Sq7aktAcujD+aliz5weft5UnEuEpsZQiKMFAkQ==
X-Received: by 10.140.236.68 with SMTP id h65mr9480487qhc.13.1456586834008;
	Sat, 27 Feb 2016 07:27:14 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:13 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:47 +0000
Message-Id: <e9ada1f78209f622e20f9781c55b1a4893da703c.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 08/23] wiringPi: Fix build with musl
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:25 -0000

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
1.9.1


