Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A363E014E9
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 05:34:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id 5B0EE33809C9;
	Sat, 26 Jan 2013 00:34:03 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gLUVBKOJ+mLA; Sat, 26 Jan 2013 00:33:57 +1100 (EST)
Received: from shorty.home. (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPA id 974BF33809CC;
	Sat, 26 Jan 2013 00:33:56 +1100 (EST)
From: Jan Schmidt <thaytan@noraisin.net>
To: yocto@yoctoproject.org
Date: Sat, 26 Jan 2013 00:33:24 +1100
Message-Id: <1359120805-25408-2-git-send-email-thaytan@noraisin.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
Subject: [meta-raspberrypi][PATCH 2/3] bcm2835-bootfiles: Bump the firmware revision
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
X-List-Received-Date: Fri, 25 Jan 2013 13:34:04 -0000

* Pull in a newer firmware revision (0ac68c 7th Jan 2013) from
  https://github.com/raspberrypi/firmware for various fixes and
  improvements

Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
---
 recipes-bcm/common/firmware.inc |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 83f9214..166bb7b 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
-# 31/10/2012 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "537c78b113d06e37e2cca90a0b3d3f39a129ee23"
-RPIFW_DATE ?= "20121031"
+# 7/1/2013 firmware; this can be overridden from distro config
+RPIFW_SRCREV ?= "0ac68cce44d4550c251172e8524100090e8211fa"
+RPIFW_DATE ?= "20130107"
 
 SRCREV = "${RPIFW_SRCREV}"
 PV = "${RPIFW_DATE}"
-- 
1.7.10.4


