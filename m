Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C44DE00CF4; Wed, 24 Apr 2019 07:59:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7681DE00C1B
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 07:59:33 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:f0e])
	by kozue.soulik.info (Postfix) with ESMTPA id C8606100D4C;
	Wed, 24 Apr 2019 23:59:49 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Wed, 24 Apr 2019 22:59:17 +0800
Message-Id: <20190424145918.26040-3-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190424145918.26040-1-ayaka@soulik.info>
References: <20190424145918.26040-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH 2/3] recipes-bsp/u-boot: update build rules
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
X-List-Received-Date: Wed, 24 Apr 2019 14:59:34 -0000
Content-Transfer-Encoding: 8bit

Adding the missing recipes header file.
Fixing the compiler error after oe-core update.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 recipes-bsp/u-boot/u-boot-rockchip.inc         | 1 +
 recipes-bsp/u-boot/u-boot-rockchip_20171218.bb | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip.inc b/recipes-bsp/u-boot/u-boot-rockchip.inc
index 5d89cd6..b495dbe 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip.inc
+++ b/recipes-bsp/u-boot/u-boot-rockchip.inc
@@ -3,6 +3,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 require recipes-bsp/u-boot/u-boot.inc
+require recipes-bsp/u-boot/u-boot-common.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
 LICENSE = "GPLv2+"
diff --git a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb b/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
index 4545f13..e14d948 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
@@ -9,5 +9,8 @@ TAG = "release-${PV}"
 SRC_URI = " \
 	git://github.com/rockchip-linux/u-boot.git;tag=${TAG};nobranch=1; \
 	file://binutils-2.28-ld-fix.patch \
+	file://gcc7_fixup.patch \
 "
 S = "${WORKDIR}/git"
+
+SRCREV = "release-20171218"
-- 
2.20.1


