Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A4FAE00DF2; Thu, 20 Jun 2019 04:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B713E00DEF
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 04:14:28 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:56c])
	by kozue.soulik.info (Postfix) with ESMTPA id C18E7100B79;
	Thu, 20 Jun 2019 20:15:56 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 19:14:10 +0800
Message-Id: <20190620111410.4573-4-ayaka@soulik.info>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620111410.4573-1-ayaka@soulik.info>
References: <20190620111410.4573-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Thu, 20 Jun 2019 11:14:28 -0000
Content-Transfer-Encoding: 8bit

From: Randy Li <ayaka@soulik.info>

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
new file mode 100644
index 0000000..5b04b62
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -0,0 +1,19 @@
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
+	file://gcc7_fixup.patch \
+	file://gcc9-no-Werror.patch \
+"
+SRCREV = "${AUTOREV}"
+
+S = "${WORKDIR}/git"
+PV = "v2019.01"
-- 
2.21.0


