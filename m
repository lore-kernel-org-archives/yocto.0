Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D8EE006CC
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 13:52:10 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id C6181B6A08D;
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.7 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from philipp.lis.ei.tum.de (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id A4414B6A07C; 
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
From: Philipp Wagner <lists@philipp-wagner.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 22:51:37 +0100
Message-Id: <1359582698-24226-2-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 1/2] Choose correct ABI version of graphics binaries
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Jan 2013 21:52:11 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Depending on the used calling convention use the hardfp or
the softfp binary graphics libraries.

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 conf/machine/include/rpi-default-providers.inc |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ce963b3..83292df 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -2,7 +2,11 @@
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgl ?= "vc-graphics-hardfp"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
+
+# The graphics libraries are closed source and provided as binaries with either
+# hardfp and softfp calling conventions. We need to choose the one that fits
+# in with the rest of the system.
+PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "vc-graphics-hardfp", "vc-graphics", d)}"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "vc-graphics-hardfp", "vc-graphics", d)}"
+PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "vc-graphics-hardfp", "vc-graphics", d)}"
-- 
1.7.9.5

