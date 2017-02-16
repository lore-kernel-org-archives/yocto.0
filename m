Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9F21E007C2; Thu, 16 Feb 2017 10:46:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC3BE006EA
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:57 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id y6so1556400pgy.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=v+lZ4l1+H8Yb4nKtr5kBmXxU7tjvH4iIkmMr1gniD/k=;
	b=Am75pNI+i1m7RmYHpcj5m1ZEI1onS9PEMFX+ZVuDUveDtj50jwB2F11wwW933wNRO1
	goKaLdmngrXRu/vKX80mjmqaz1Ag33wl/y0ig8PhA52TooIEbStZKKQvM9MBhtf5u3EH
	dTEha/vZ9TxYeOyxw2diTGOSuuf03MZDx2qVfYDq3LiExyRUULCe6jnyNVqEYf513P4j
	oMlhA8BDYTeeX9jY3Sp0jdzZSGLtY7podBzuqogMcCZhdO8+jEHMeUFUkdEw9dt8sIju
	BXKbb2dbWjefPLC/PS5yGZsNg6yXpRASb/r3+gEgWKEuWGlSlgcM1xdFmvjSjZBaMy08
	MbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=v+lZ4l1+H8Yb4nKtr5kBmXxU7tjvH4iIkmMr1gniD/k=;
	b=LgIFjwEn14NsAfBJkSW0S9+m3jMWkv/Z3CnOgisS4f5aMMUdwkngavXLQ7aYrHllRS
	DwG/c4Xli6mBJChy7aysSu7ZkFaVxRcjjohwDO77A8jSzkDMCHo7ju/Bdp5zSgn6g3H5
	3vLYwgyE+3X08i+cM+QP4p0FQ3PQ9I5r3bethN8SnxU8GShm6O8yTTAZJA8jmYNAQKX4
	1S1p7nnzc62TsuWg0eK6duSAcMEyHPb5AYtsoo2uxE2zGW2sjNRxykTOcfYsqbuoNciy
	p2L2eQx1bRUdwk1PFnbYm5PTSwcTlr7tyLON3vPAaE6m/A2li4eRFJbft4XK5VYyAE4x
	vW9A==
X-Gm-Message-State: AMke39l3vxHkr4h49Hi9lCIdFtGzTv+b0cHUijorv9QtXenTE/QPitFFDzGEsYKVfqHEhg==
X-Received: by 10.99.53.195 with SMTP id c186mr4688785pga.24.1487270816489;
	Thu, 16 Feb 2017 10:46:56 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:55 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:36 -0800
Message-Id: <20170216184645.6258-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 05/14] linux-raspberrypi_4.9.bb: Upgrade to 4.9.10
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
X-List-Received-Date: Thu, 16 Feb 2017 18:46:59 -0000

Fix dtbo builds for arm64

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
 2 files changed, 32 insertions(+), 2 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
new file mode 100644
index 0000000..e8bc52e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
@@ -0,0 +1,29 @@
+From 922ce1fd0eb810b713f6ffa9a7ab97c11b6e38cf Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Fri, 10 Feb 2017 17:57:08 -0800
+Subject: [PATCH] build/arm64: Add rules for .dtbo files for dts overlays
+
+We now create overlays as .dtbo files.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ arch/arm64/Makefile | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
+index 3635b8662724..822fefeb1cd0 100644
+--- a/arch/arm64/Makefile
++++ b/arch/arm64/Makefile
+@@ -113,6 +113,9 @@ zinstall install:
+ %.dtb: scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts $(boot)/dts/$@
+ 
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++
+ PHONY += dtbs dtbs_install
+ 
+ dtbs: prepare scripts
+-- 
+2.11.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index cffea1a..dcca369 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.4"
+LINUX_VERSION ?= "4.9.10"
 
-SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
+SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


