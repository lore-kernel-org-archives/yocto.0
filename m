Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id E31524C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:15 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J5LEWu028549
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:15 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 00:21:09 -0500
Message-Id: <1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
In-Reply-To: <1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
Subject: [PATCH 2/5] tclibc-*glibc: Utilize TARGET_FPU for gnuspe setting
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

Its possible that BASE_PACKAGE_ARCH isn't set to ppce500 or ppce500v2 when
we build native toolchains.  So we can utilize TARGET_FPU being set to
"spe" to determine if we should enable the gnuspe ABI.

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 meta/conf/distro/include/tclibc-eglibc.inc |    2 +-
 meta/conf/distro/include/tclibc-glibc.inc  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/tclibc-eglibc.inc b/meta/conf/distro/include/tclibc-eglibc.inc
index e070aad..0cddcd4 100644
--- a/meta/conf/distro/include/tclibc-eglibc.inc
+++ b/meta/conf/distro/include/tclibc-eglibc.inc
@@ -5,7 +5,7 @@
 TARGET_OS = "linux"
 TARGET_OS_arm = "linux-gnueabi"
 TARGET_OS_armeb = "linux-gnueabi"
-TARGET_OS_powerpc = "linux${@['','-gnuspe'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in ['ppce500', 'ppce500v2']]}"
+TARGET_OS_powerpc = "linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU',d,1) in ['spe']]}"
 
 # Add glibc overrides to the overrides for eglibc.
 OVERRIDES .= ":libc-glibc"
diff --git a/meta/conf/distro/include/tclibc-glibc.inc b/meta/conf/distro/include/tclibc-glibc.inc
index 5e7afc1..22f7d29 100644
--- a/meta/conf/distro/include/tclibc-glibc.inc
+++ b/meta/conf/distro/include/tclibc-glibc.inc
@@ -5,7 +5,7 @@
 TARGET_OS = "linux"
 TARGET_OS_arm = "linux-gnueabi"
 TARGET_OS_armeb = "linux-gnueabi"
-TARGET_OS_powerpc = "linux${@['','-gnuspe'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in ['ppce500', 'ppce500v2']]}"
+TARGET_OS_powerpc = "linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU',d,1) in ['spe']]}"
 
 # Add glibc to the overrides.
 OVERRIDES =. "libc-glibc:"
-- 
1.7.3.4


