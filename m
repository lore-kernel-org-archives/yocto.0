Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A57F4C80FE0
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:16 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J5LFT8028560
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:15 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 00:21:10 -0500
Message-Id: <1311052872-10569-4-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
In-Reply-To: <1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
Subject: [PATCH 3/5] tune-ppce500v2: Add a tune file for PowerPC e500v2 cores
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
X-List-Received-Date: Tue, 19 Jul 2011 05:21:16 -0000

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 meta/conf/machine/include/tune-ppce500v2.inc |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/conf/machine/include/tune-ppce500v2.inc

diff --git a/meta/conf/machine/include/tune-ppce500v2.inc b/meta/conf/machine/include/tune-ppce500v2.inc
new file mode 100644
index 0000000..9901045
--- /dev/null
+++ b/meta/conf/machine/include/tune-ppce500v2.inc
@@ -0,0 +1,5 @@
+TARGET_CC_ARCH = "-mcpu=8548 -mabi=spe -mspe"
+BASE_PACKAGE_ARCH = "ppce500v2"
+FEED_ARCH = "ppce500v2"
+PACKAGE_EXTRA_ARCHS = "powerpc ppce500v2"
+TARGET_OS_powerpc = "linux-gnuspe"
-- 
1.7.3.4


