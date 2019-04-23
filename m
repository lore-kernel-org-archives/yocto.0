Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB72EE00B1B; Tue, 23 Apr 2019 06:25:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D5AE0097C
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:42 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id A4FCD101FC5;
	Tue, 23 Apr 2019 22:25:56 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:11 +0800
Message-Id: <20190423132514.21996-8-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423132514.21996-1-ayaka@soulik.info>
References: <20190423132514.21996-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 07/10] conf/machine: add support for rk3368
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
X-List-Received-Date: Tue, 23 Apr 2019 13:25:42 -0000
Content-Transfer-Encoding: 8bit

RK3368 is integrated with a qual-core Cortex-A53 processor
and separately NEON coprocessor.

RK3368 supports H.264 decoder up to 4Kx2K@30fps, H.265
decoder by 4Kx2K@60fps.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/include/rk3368.inc | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 conf/machine/include/rk3368.inc

diff --git a/conf/machine/include/rk3368.inc b/conf/machine/include/rk3368.inc
new file mode 100644
index 0000000..1738f74
--- /dev/null
+++ b/conf/machine/include/rk3368.inc
@@ -0,0 +1,17 @@
+# Copyright (C) 2019 SUMOMO Computer Assocation
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3368"
+
+require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/soc-family.inc
+require conf/machine/include/rockchip-defaults.inc
+
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "Image"
+KBUILD_DEFCONFIG = "defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.20.1


