Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6C0CE00CDF; Wed, 24 Apr 2019 07:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AAB2E00CDF
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 07:59:36 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:f0e])
	by kozue.soulik.info (Postfix) with ESMTPA id 7FFAE1058F1;
	Wed, 24 Apr 2019 23:59:51 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Wed, 24 Apr 2019 22:59:18 +0800
Message-Id: <20190424145918.26040-4-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190424145918.26040-1-ayaka@soulik.info>
References: <20190424145918.26040-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Wed, 24 Apr 2019 14:59:38 -0000
Content-Transfer-Encoding: 8bit

From: Randy Li <ayaka@soulik.info>

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
new file mode 100644
index 0000000..aa4b84d
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -0,0 +1,18 @@
+# Copyright (C) 2019 SUMOMO Computer Assocation
+# Released under the MIT license (see COPYING.MIT for the terms)
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+include u-boot-rockchip.inc
+
+DESCRIPTION = "Rockchip U-Boot"
+
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
+
+SRC_URI = " \
+	git://github.com/rockchip-linux/u-boot.git;branch=release; \
+	file://binutils-2.28-ld-fix.patch \
+	file://gcc7_fixup.patch \
+	"
+
+S = "${WORKDIR}/git"
+PV = "v2019.01"
-- 
2.20.1


