Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0261E00B43; Tue, 23 Apr 2019 06:25:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46AABE00994
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:38 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 3F781101FC5;
	Tue, 23 Apr 2019 22:25:53 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:09 +0800
Message-Id: <20190423132514.21996-6-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423132514.21996-1-ayaka@soulik.info>
References: <20190423132514.21996-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 05/10] conf/machine: add support for rk312x
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
X-List-Received-Date: Tue, 23 Apr 2019 13:25:38 -0000
Content-Transfer-Encoding: 8bit

RK312X are a serial called RK audio. All of them sharing
the simliar hardware configure. A quad-core ARM Cortex-A7
processor with separately Neon and FPU coprocessor, they
also share a 256KB L2 Cache.

All chips in this serial have a Mali 400 MP2 GPU.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/include/rk312x.inc | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 conf/machine/include/rk312x.inc

diff --git a/conf/machine/include/rk312x.inc b/conf/machine/include/rk312x.inc
new file mode 100644
index 0000000..675c699
--- /dev/null
+++ b/conf/machine/include/rk312x.inc
@@ -0,0 +1,17 @@
+# Copyright (C) 2019 SUMOMO Computer Assocation
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+# a serial of chips
+SOC_FAMILY = "rk312x"
+
+require conf/machine/include/tune-cortexa7.inc
+require conf/machine/include/soc-family.inc
+require conf/machine/include/rockchip-defaults.inc
+
+SERIAL_CONSOLES = "115200;ttyS2"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-nodtb.bin"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.20.1


