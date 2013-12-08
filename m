Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (turboconrad.planet-school.de
	[194.116.187.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 230B0E00782
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 04:18:03 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 22F0CB6A144;
	Sun,  8 Dec 2013 13:18:01 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.8 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.fritz.box (ppp-93-104-167-6.dynamic.mnet-online.de
	[93.104.167.6])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id B9F90B6A13D; 
	Sun,  8 Dec 2013 13:18:00 +0100 (CET)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Sun,  8 Dec 2013 13:17:42 +0100
Message-Id: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.4
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH] linux: Update to 3.12.3 (latest RPI upstream)
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
X-List-Received-Date: Sun, 08 Dec 2013 12:18:06 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.3.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.3.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
deleted file mode 100644
index 3631da5..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb
new file mode 100644
index 0000000..304c1ad
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb
@@ -0,0 +1,6 @@
+SRCREV = "7dac37b9865ab51f7a68b7703bf6792b698fee1b"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.4

