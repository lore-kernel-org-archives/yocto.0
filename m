Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95D3AE00C10; Tue,  2 Feb 2016 06:40:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED51DE00C00
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 06:39:59 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 45F8F239E1E;
	Tue,  2 Feb 2016 15:31:54 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 15:31:46 +0100
Message-Id: <1454423507-25187-3-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
References: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] u-boot-rpi: use STAGING_LIBEXECDIR_NATIVE for rpi-mkimage tools
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
X-List-Received-Date: Tue, 02 Feb 2016 14:40:00 -0000

The rpi-mkimage tools are installed ${libexecdir}/rpi-mkimage within
native sysroot, where ${libexecdir} resolves to /usr/libexec. This caused
the build to fail due to recipe trying to access ${libdir}/mkimage. Fix
the paths to use an unambiguous STAGING_LIBEXECDIR_NATIVE so that a
proper location is used.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
index db5ea84fc0408d90ccb17ed578305ce5b11f568b..ea0c173b59290d5d6d080c9b487be8bf789f0d58 100644
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 do_compile_append() {
     # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
+    ${STAGING_LIBEXECDIR_NATIVE}/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
     mv kernel.img u-boot.img
 }
-- 
2.5.0


