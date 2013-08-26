Return-Path: <Yang.Shi@windriver.com>
Received: from mail7.windriver.com (mail7.windriver.com [128.224.252.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED1E7E01358
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 14:32:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail7.windriver.com (8.14.5/8.14.3) with ESMTP id r7QLWfxW025170
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 17:32:42 -0400 (EDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 26 Aug 2013 14:32:41 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Aug 2013 14:27:30 -0700
Message-ID: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Subject: [meta-virtulization] [PATCH] irqbalance: Uprev to 1.0.6
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
X-List-Received-Date: Mon, 26 Aug 2013 21:32:47 -0000
Content-Type: text/plain

Add recipe for 1.0.6 version. And, add status and reload commands into
init script.

Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 ...irqbalance-Add-status-and-reload-commands.patch |   55 ++++++++++++++++++++
 recipes-extended/irqbalance/irqbalance_1.0.6.bb    |   15 +++++
 2 files changed, 70 insertions(+), 0 deletions(-)
 create mode 100644 recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
 create mode 100644 recipes-extended/irqbalance/irqbalance_1.0.6.bb

diff --git a/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
new file mode 100644
index 0000000..d853d0b
--- /dev/null
+++ b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
@@ -0,0 +1,55 @@
+From dc7366896dd5a5bae82be4b11530bc9fdb7cbcdd Mon Sep 17 00:00:00 2001
+From: Yang Shi <yang.shi@windriver.com>
+Date: Mon, 26 Aug 2013 10:58:02 -0700
+Subject: [PATCH] irqbalance: Add status and reload commands
+
+Add status and reload commands for irqbalanced init script
+
+Signed-off-by: Yang Shi <yang.shi@windriver.com>
+---
+ irqbalance.init |   12 +++++++++---
+ 1 files changed, 9 insertions(+), 3 deletions(-)
+
+diff --git a/irqbalance.init b/irqbalance.init
+index d12d62c..f58bf55 100644
+--- a/irqbalance.init
++++ b/irqbalance.init
+@@ -1,6 +1,6 @@
+ #!/bin/sh
+ #
+-# Copyright (c) 2012 Wind River Systems, Inc.
++# Copyright (c) 2013 Wind River Systems, Inc.
+ #
+ ### BEGIN INIT INFO
+ # Provides:             irqbalance
+@@ -11,6 +11,8 @@
+ # Short-Description:    IRQ allocation daemon
+ ### END INIT INFO
+ 
++. /etc/init.d/functions
++
+ case "$1" in
+   start)
+ 	echo -n "Starting irqbalance: "
+@@ -22,12 +24,16 @@ case "$1" in
+ 	start-stop-daemon -K -n irqbalance
+ 	echo "done"
+ 	;;
+-  restart)
++  restart|reload)
+ 	$0 stop
+ 	$0 start
+ 	;;
++  status)
++	status irqbalance
++	echo "done"
++	;;
+   *)
+-	echo "Usage: $0 {start | stop | restart}" >&2
++	echo "Usage: $0 {start | stop | restart | reload | status}" >&2
+ 	exit 1
+ 	;;
+ esac
+-- 
+1.7.5.4
+
diff --git a/recipes-extended/irqbalance/irqbalance_1.0.6.bb b/recipes-extended/irqbalance/irqbalance_1.0.6.bb
new file mode 100644
index 0000000..fd08b73
--- /dev/null
+++ b/recipes-extended/irqbalance/irqbalance_1.0.6.bb
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2013 Wind River Systems, Inc.
+#
+
+require irqbalance.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "b73b1a5a9e1c3c428ae39024c711e41e"
+SRC_URI[sha256sum] = "95ac79992e6de501f613c781b0fc8aa17a4aaf6a3d865bb6e15ac6a46c6ab1fd"
+
+SRC_URI = "http://irqbalance.googlecode.com/files/irqbalance-${PV}.tar.gz \
+           file://add-initscript.patch \
+           file://irqbalance-Add-status-and-reload-commands.patch \
+          "
-- 
1.7.5.4


