Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF9BE00C10; Tue,  2 Feb 2016 06:39:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D158EE00BFE
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 06:39:51 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 0C909239E15;
	Tue,  2 Feb 2016 15:31:54 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 15:31:45 +0100
Message-Id: <1454423507-25187-2-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
References: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 1/3] rpi-mkimage: install tools under {libexecdir}/rpi-mkimage
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
X-List-Received-Date: Tue, 02 Feb 2016 14:39:55 -0000

For consistency with other recipes that look for mkimage
tools (u-boot-rpi, linux-raspberrypi) under ${libexecdir}/rpi-mkimage,
make sure that the tools are installed at the proper location.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
index ffcaa83683fd270cb2216b118a3f5be941cfdb89..2c8ecb173c804302ac6e13d4ae7af8ba35bccd26 100644
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -15,8 +15,8 @@ SRC_URI = " \
 S = "${WORKDIR}/git"
 
 do_install () {
-    install -d ${D}${libexecdir}
-    cp ./mkimage/* ${D}${libexecdir}
+    install -d ${D}${libexecdir}/rpi-mkimage
+    install -t ${D}${libexecdir}/rpi-mkimage ./mkimage/*
 }
 
 BBCLASSEXTEND = "native"
-- 
2.5.0


