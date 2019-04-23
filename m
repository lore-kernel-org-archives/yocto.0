Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6004CE00BB7; Tue, 23 Apr 2019 06:25:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF29E00B1B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:48 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 50B93101FC5;
	Tue, 23 Apr 2019 22:26:02 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:13 +0800
Message-Id: <20190423132514.21996-10-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423132514.21996-1-ayaka@soulik.info>
References: <20190423132514.21996-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 09/10] conf/machine: rk3288: adding some machine files
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
X-List-Received-Date: Tue, 23 Apr 2019 13:25:48 -0000
Content-Transfer-Encoding: 8bit

Evb-rk3288 is the offical evaluate board.
Fennec-rk3288 is a rk3288 based SBCs.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/evb-rk3288.conf    | 10 ++++++++++
 conf/machine/fennec-rk3288.conf | 10 ++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/fennec-rk3288.conf

diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf
new file mode 100644
index 0000000..e6c1f1e
--- /dev/null
+++ b/conf/machine/evb-rk3288.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EVB 3288
+
+include conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
+UBOOT_MACHINE = "evb-rk3288_defconfig"
diff --git a/conf/machine/fennec-rk3288.conf b/conf/machine/fennec-rk3288.conf
new file mode 100644
index 0000000..23e3ee7
--- /dev/null
+++ b/conf/machine/fennec-rk3288.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: FENNEC RK3288
+
+include conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-fennec.dtb"
+UBOOT_MACHINE = "fennec-rk3288_defconfig"
-- 
2.20.1


