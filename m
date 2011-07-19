Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF3C24C80A86
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:22:48 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J6Mlq0026314
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:22:48 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 01:22:47 -0500
Message-Id: <1311056567-11612-1-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
Subject: [PATCH] tune-ppce500mc: Add a tune file for PowerPC e500mc core
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
X-List-Received-Date: Tue, 19 Jul 2011 06:22:48 -0000

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 meta/conf/machine/include/tune-ppce500mc.inc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)
 create mode 100644 meta/conf/machine/include/tune-ppce500mc.inc

diff --git a/meta/conf/machine/include/tune-ppce500mc.inc b/meta/conf/machine/include/tune-ppce500mc.inc
new file mode 100644
index 0000000..763ec1a
--- /dev/null
+++ b/meta/conf/machine/include/tune-ppce500mc.inc
@@ -0,0 +1,4 @@
+TARGET_CC_ARCH = "-mcpu=e500mc"
+BASE_PACKAGE_ARCH = "ppce500mc"
+FEED_ARCH = "ppce500mc"
+PACKAGE_EXTRA_ARCHS = "powerpc ppce500mc"
-- 
1.7.3.4


