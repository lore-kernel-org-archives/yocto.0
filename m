Return-Path: <david.andrey@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09CF3E009B2
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 15:00:16 -0800 (PST)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=LOIRE.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1WJWPd-0007po-QT;
	Sat, 01 Mar 2014 00:00:13 +0100
From: David Andrey <david.andrey@netmodule.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Feb 2014 23:59:47 +0100
Message-Id: <1393628389-32207-1-git-send-email-david.andrey@netmodule.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-xilinx][PATCH] 1/3] microzed: net: machine specific configuration
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
X-List-Received-Date: Fri, 28 Feb 2014 23:00:20 -0000

Machine specific interfaces file

Signed-off-by: David Andrey <david.andrey@netmodule.com>
---
 recipes-core/init-ifupdown/init-ifupdown-1.0/interfaces          | 9 ---------
 .../init-ifupdown/init-ifupdown-1.0/microzed-zynq7/interfaces    | 9 +++++++++
 2 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 recipes-core/init-ifupdown/init-ifupdown-1.0/interfaces
 create mode 100644 recipes-core/init-ifupdown/init-ifupdown-1.0/microzed-zynq7/interfaces

diff --git a/recipes-core/init-ifupdown/init-ifupdown-1.0/interfaces b/recipes-core/init-ifupdown/init-ifupdown-1.0/interfaces
deleted file mode 100644
index 5bf238b..0000000
--- a/recipes-core/init-ifupdown/init-ifupdown-1.0/interfaces
+++ /dev/null
@@ -1,9 +0,0 @@
-# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
-
-# The loopback interface
-auto lo
-iface lo inet loopback
-
-# Wired interfaces
-auto eth0
-iface eth0 inet dhcp
diff --git a/recipes-core/init-ifupdown/init-ifupdown-1.0/microzed-zynq7/interfaces b/recipes-core/init-ifupdown/init-ifupdown-1.0/microzed-zynq7/interfaces
new file mode 100644
index 0000000..5bf238b
--- /dev/null
+++ b/recipes-core/init-ifupdown/init-ifupdown-1.0/microzed-zynq7/interfaces
@@ -0,0 +1,9 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired interfaces
+auto eth0
+iface eth0 inet dhcp
-- 
1.8.3.2


