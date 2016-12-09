Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41A54E00C5B; Fri,  9 Dec 2016 04:19:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11EE5E00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 04:19:50 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id a20so3711352wme.2
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 04:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=1SDVq3XdeVv40VRAkhCEmJe6n6SgjjC3dkF+uknSYGs=;
	b=gZLqdEwgyLyldFPnee0Sg2QyoZtlcB6BAE8Fe2bRG05o9/QWKNEQSrOOPbKX2M4vTH
	db5IV3ZuAzSz1nKIrbBAmniIuaVPCQduLD63nlo9qfRDRNcmTvBqSy/HmFenByf2JJOo
	TjADTNAKSJVrVNPqmW7mqj7yaKZdi5xyLhqQojCpfvWBzjTlklDuCIBBckoo0P93a8YT
	uhy6jH9AiB8gaTCLs+agmaGzUV6HGKjtLlM9aY7Fyws1hmM2GXHXF5F/sR7R8O5hyky4
	34GVjTASCgwMuMY+tM+VHiLeb3crL6lpyenxjhnkL2TMUFAxPQXR7iguv0Qc0FmVipiX
	iXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1SDVq3XdeVv40VRAkhCEmJe6n6SgjjC3dkF+uknSYGs=;
	b=WH4iJXd6h1ASVTVyrOw7yQ72P4tb0xqC2fsQAe4cSJU49wK80FY7apC7a2rSjOJeon
	XQ44oifMty0Ba43PTssIOZ7CTJ1PQIrBXJdYsqBWVO9G8HA7/Jmkq+5DF3r+H/j7lVe3
	UMhAUIctL+WKeVK5xqOG2g3KNBinTHcDFNrXhbZG5LVJJEnAPF5aN/lApdFlYH+u5SD5
	h19H6lFBpBd0uI4sxPQyS3HqacJxGYgr3g2oXazouwBTTs27Ze3pqEEApOiekiYoDqZx
	xzAe64eVlZyaQ4IFuIefjwO8blSGw6Vkmn4gxp7R0A+ohsDuE8uPEswBrJhMSWaQjvef
	IXLA==
X-Gm-Message-State: AKaTC03lb24becfm5R3H+o6OcbtNSZjrr77sO7vnyWeXgrbgWd6sd5keCYmTxCrGdOrL3w==
X-Received: by 10.25.16.223 with SMTP id 92mr2033044lfq.133.1481285989486;
	Fri, 09 Dec 2016 04:19:49 -0800 (PST)
Received: from debian.lan (78-71-171-99-no154.tbcn.telia.com. [78.71.171.99])
	by smtp.gmail.com with ESMTPSA id
	125sm6533256ljj.26.2016.12.09.04.19.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 09 Dec 2016 04:19:49 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
X-Google-Original-From: Mirza Krak < mirza.krak@gmail.com >
To: yocto@yoctoproject.org
Date: Fri,  9 Dec 2016 12:20:29 +0100
Message-Id: <1481282429-27256-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH V2] u-boot: drop patch to include lowlevel_init
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
X-List-Received-Date: Fri, 09 Dec 2016 12:19:54 -0000

From: Mirza Krak <mirza.krak@gmail.com>

The patch 0003-Include-lowlevel_init.o-for-rpi2.patch does not apply on
2016.11 and causes an build error.

Patch 0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
provides the inclusion of lowlever_init.o.

Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
---

Changes in V2:
- droped changes to patch 0001 and 0002 to perserve the backport tags, based on comments from Paul Barker.

 .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ----------------------
 recipes-bsp/u-boot/u-boot_%.bbappend               |  1 -
 2 files changed, 26 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch

diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
deleted file mode 100644
index ce0273f..0000000
--- a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
-From: Paul Barker <paul@paulbarker.me.uk>
-Date: Tue, 29 Nov 2016 19:47:49 +0000
-Subject: [PATCH] Include lowlevel_init.o for rpi2
-
-Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
-Upstream-status: Inappropriate
-    (not needed upstream as rpi_2 board directory is removed in latest
-    version)
----
- board/raspberrypi/rpi_2/Makefile | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
-index d82cd21..9f865c5 100644
---- a/board/raspberrypi/rpi_2/Makefile
-+++ b/board/raspberrypi/rpi_2/Makefile
-@@ -5,3 +5,4 @@
- #
-
- obj-y	:= ../rpi/rpi.o
-+obj-y	+= ../rpi/lowlevel_init.o
---
-2.1.4
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index a4545f0..0edc8dc 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -3,5 +3,4 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
 SRC_URI_append_rpi = " \
     file://0001-arm-add-save_boot_params-for-ARM1176.patch \
     file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
-    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
     "
--
2.1.4


