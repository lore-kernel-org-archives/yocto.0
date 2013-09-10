Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E43AE0159E
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 15:36:56 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 69F90B6A00E;
	Wed, 11 Sep 2013 00:36:51 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.fritz.box (ppp-188-174-75-98.dynamic.mnet-online.de
	[188.174.75.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 075E8B6A006; 
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 00:36:34 +0200
Message-Id: <1378852594-13307-5-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 4/4] Add kernel 3.8 and 3.11 for Raspberry Pi
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
X-List-Received-Date: Tue, 10 Sep 2013 22:36:56 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 6 ++++++
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 6 ++++++
 2 files changed, 12 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
new file mode 100644
index 0000000..1ae39b2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
@@ -0,0 +1,6 @@
+SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
new file mode 100644
index 0000000..dc8cf0a
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
@@ -0,0 +1,6 @@
+SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4

