Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89C82E00EB0; Sun, 29 May 2016 08:59:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3836E00B9F
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:08 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n129so15177175wmn.1
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=NNvlGtqWVVGggMdRkMgl9HXzb2qJBf1BJpfmM2jXXEs=;
	b=0NL9YH68fDcxA3KK5Bp4aReXg0B8O2/vZSFQh6HV2o1dZRaYsEbao9O8G4EU+5QqZp
	sJTF3D3IrKuk/BigMwnL13YkzRW5F+obTWcYewK7r39Mg8rBtcf3EwMc/LE5cCKr1Pwn
	9W6yx1joQTQcD9DnHdtV2XvPo1lBfGnIyHw4tITrEgisf07v7LxdB4HU1pHDuWFV/Ufy
	weBMvLybVhv0HsYNkGDdr1V3OiPHHaj78LWbiwl0vsXPGNp3mJ0UspDq0mjJicslQh+5
	wVIVRsN3b5MXAtl7ft9LZpzJJtM1xyiBoNGIsimNXwceXEDBV2l2qcG7hAN22jJjGpoR
	UeWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=NNvlGtqWVVGggMdRkMgl9HXzb2qJBf1BJpfmM2jXXEs=;
	b=O2RWJb5KHO5rudXwL9IFgb6l9Q8IGW5PwYh7Lzhp2ef+5qd2AMv3zfgBcnLfGQ+Mhp
	qCi83AdOnU7Sc9UPRn9b1PbbrhC9GeafWN4qY5LPgsgfUAJuRx7JBwgSjUZ5hG5gGEU/
	LDvmGiIB7rCucU6p06yotm++5A40HQPpBaIgnZ+5FNpkmEctmV4s0qtF5scEXjH9NCQO
	VmOVsy0zj8VYGL+ORZlW41qmlStGi9v+VlwslxHU0r4MsQax4nYIGHSnEHLm01hDU1xN
	eeDxl3xqnaRcxCVXTKZHLP9Gbr/Xa1UnsE7vv2MnlYvlOspLUIW6QCWkFvji2U/6si1J
	xz0g==
X-Gm-Message-State: ALyK8tId1ElWogCJiPEI2BpOSHw+2gK4Zj5yMAWjuXUZbmmdsp6rBK2Cz5I9rvQZSI/jDw==
X-Received: by 10.28.186.7 with SMTP id k7mr7607370wmf.36.1464537547609;
	Sun, 29 May 2016 08:59:07 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:06 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:08 +0100
Message-Id: <1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Sun, 29 May 2016 15:59:10 -0000

PV is now set in each version of the linux-raspberrypi recipe instead of in
linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used in custom
kernel recipes in another layer which require a different PV value.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc     | 1 -
 recipes-kernel/linux/linux-raspberrypi_3.18.bb | 1 +
 recipes-kernel/linux/linux-raspberrypi_4.1.bb  | 1 +
 recipes-kernel/linux/linux-raspberrypi_4.4.bb  | 1 +
 4 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 4799c74..dd477cd 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -13,7 +13,6 @@ SRC_URI += " \
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PE = "1"
-PV = "${LINUX_VERSION}+git${SRCPV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 1110b71..b16a1d7 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,6 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
 LINUX_VERSION ?= "3.18.16"
+PV = "${LINUX_VERSION}+git${SRCPV}"
 
 SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 79fac66..9e1572e 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
 LINUX_VERSION ?= "4.1.21"
+PV = "${LINUX_VERSION}+git${SRCPV}"
 
 SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index ba47b22..12bb43a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,6 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
 LINUX_VERSION ?= "4.4.9"
+PV = "${LINUX_VERSION}+git${SRCPV}"
 
 SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
-- 
2.1.4


