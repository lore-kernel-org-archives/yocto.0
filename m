Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78EC8E005A3
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 15:36:51 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id F287CB6A004;
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
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
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 993E4B6A00E; 
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 00:36:33 +0200
Message-Id: <1378852594-13307-4-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 3/4] Make Linux 3.6 the default for Raspberry Pi
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
X-List-Received-Date: Tue, 10 Sep 2013 22:36:52 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Kernel 3.6 is also the default for Raspbian and thus should be the
most tested version right now.

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 conf/machine/include/rpi-default-providers.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 665c6e0..1a647c9 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,6 +1,9 @@
 # RaspberryPi BSP default providers
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
+# The default kernel version is the same as used by Raspbian
+PREFERRED_VERSION_linux-raspberrypi ?= "3.6.%"
+
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-- 
1.8.1.4

