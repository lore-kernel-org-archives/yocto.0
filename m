Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF538E00DF0; Thu, 20 Jun 2019 04:14:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A436E00DEE
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 04:14:26 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:56c])
	by kozue.soulik.info (Postfix) with ESMTPA id BAD6E100B78;
	Thu, 20 Jun 2019 20:15:53 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 19:14:09 +0800
Message-Id: <20190620111410.4573-3-ayaka@soulik.info>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620111410.4573-1-ayaka@soulik.info>
References: <20190620111410.4573-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 2/3] recipes-bsp/u-boot: update build rules
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
X-List-Received-Date: Thu, 20 Jun 2019 11:14:26 -0000
Content-Transfer-Encoding: 8bit

From: Randy 'ayaka' Li <ayaka@soulik.info>

Adding the missing recipes header file.
Fixing the compiler error after oe-core update.
Disabled the -Werror flag which would break the build due to
update of toolchain.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 recipes-bsp/u-boot/u-boot-rockchip.inc              | 12 ++++++++++++
 .../u-boot/u-boot-rockchip/gcc9-no-Werror.patch     | 13 +++++++++++++
 recipes-bsp/u-boot/u-boot-rockchip_20171218.bb      |  4 ++++
 3 files changed, 29 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip/gcc9-no-Werror.patch

diff --git a/recipes-bsp/u-boot/u-boot-rockchip.inc b/recipes-bsp/u-boot/u-boot-rockchip.inc
index 5d89cd6..8815ac8 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip.inc
+++ b/recipes-bsp/u-boot/u-boot-rockchip.inc
@@ -2,6 +2,7 @@
 # Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+require recipes-bsp/u-boot/u-boot-common.inc
 require recipes-bsp/u-boot/u-boot.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
@@ -14,6 +15,17 @@ DEPENDS = "dtc-native bc-native swig-native"
 # u-boot will build native python module
 inherit pythonnative
 
+do_configure () {
+	if [ -z "${UBOOT_CONFIG}" ]; then
+	    if [ -n "${UBOOT_MACHINE}" ]; then
+	        oe_runmake -C ${S} O=${B} ${UBOOT_MACHINE}
+	    else
+	        oe_runmake -C ${S} O=${B} oldconfig
+	    fi
+	    cml1_do_configure
+	fi
+}
+
 do_compile_prepend () {
 	export STAGING_INCDIR=${STAGING_INCDIR_NATIVE};
 	export STAGING_LIBDIR=${STAGING_LIBDIR_NATIVE};
diff --git a/recipes-bsp/u-boot/u-boot-rockchip/gcc9-no-Werror.patch b/recipes-bsp/u-boot/u-boot-rockchip/gcc9-no-Werror.patch
new file mode 100644
index 0000000..198d846
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip/gcc9-no-Werror.patch
@@ -0,0 +1,13 @@
+diff --git a/Makefile b/Makefile
+index a2e1a09674..3697ece6fc 100644
+--- a/Makefile
++++ b/Makefile
+@@ -360,7 +360,7 @@ KBUILD_CPPFLAGS := -D__KERNEL__ -D__UBOOT__
+ KBUILD_CFLAGS   := -Wall -Wstrict-prototypes \
+ 		   -Wno-format-security \
+ 		   -fno-builtin -ffreestanding
+-KBUILD_CFLAGS	+= -fshort-wchar -Werror
++KBUILD_CFLAGS	+= -fshort-wchar
+ KBUILD_AFLAGS   := -D__ASSEMBLY__
+ 
+ # Read UBOOTRELEASE from include/config/uboot.release (if it exists)
diff --git a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb b/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
index 4545f13..f4ecbae 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_20171218.bb
@@ -9,5 +9,9 @@ TAG = "release-${PV}"
 SRC_URI = " \
 	git://github.com/rockchip-linux/u-boot.git;tag=${TAG};nobranch=1; \
 	file://binutils-2.28-ld-fix.patch \
+	file://gcc7_fixup.patch \
+	file://gcc9-no-Werror.patch \
 "
 S = "${WORKDIR}/git"
+
+SRCREV = "release-20171218"
-- 
2.21.0


