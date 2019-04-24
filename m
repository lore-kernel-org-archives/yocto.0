Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AD55E00C14; Wed, 24 Apr 2019 07:59:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B17E00B1B
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 07:59:31 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:f0e])
	by kozue.soulik.info (Postfix) with ESMTPA id 54B8C1058F0;
	Wed, 24 Apr 2019 23:59:47 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Wed, 24 Apr 2019 22:59:16 +0800
Message-Id: <20190424145918.26040-2-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190424145918.26040-1-ayaka@soulik.info>
References: <20190424145918.26040-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy Li <randy.li@rock-chips.com>, Randy 'ayaka' Li <ayaka@soulik.info>,
	romain.perier@gmail.com
Subject: [PATCH 1/3] recipes-bsp/u-boot: fixup build for gcc7
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
X-List-Received-Date: Wed, 24 Apr 2019 14:59:32 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Randy Li <randy.li@rock-chips.com>
Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 .../u-boot/u-boot-rockchip/gcc7_fixup.patch   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch

diff --git a/recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch b/recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch
new file mode 100644
index 0000000..ccb709a
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch
@@ -0,0 +1,38 @@
+diff --git a/include/linux/log2.h b/include/linux/log2.h
+index aa1de63090..5526af036d 100644
+--- a/include/linux/log2.h
++++ b/include/linux/log2.h
+@@ -12,12 +12,6 @@
+ #include <linux/types.h>
+ #include <linux/bitops.h>
+ 
+-/*
+- * deal with unrepresentable constant logarithms
+- */
+-extern __attribute__((const, noreturn))
+-int ____ilog2_NaN(void);
+-
+ /*
+  * non-constant log of base 2 calculators
+  * - the arch may override these in asm/bitops.h if they can be implemented
+@@ -82,7 +76,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
+ #define ilog2(n)				\
+ (						\
+ 	__builtin_constant_p(n) ? (		\
+-		(n) < 1 ? ____ilog2_NaN() :	\
++		(n) < 2 ? 0 :			\
+ 		(n) & (1ULL << 63) ? 63 :	\
+ 		(n) & (1ULL << 62) ? 62 :	\
+ 		(n) & (1ULL << 61) ? 61 :	\
+@@ -145,10 +139,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
+ 		(n) & (1ULL <<  4) ?  4 :	\
+ 		(n) & (1ULL <<  3) ?  3 :	\
+ 		(n) & (1ULL <<  2) ?  2 :	\
+-		(n) & (1ULL <<  1) ?  1 :	\
+-		(n) & (1ULL <<  0) ?  0 :	\
+-		____ilog2_NaN()			\
+-				   ) :		\
++		1 ) :				\
+ 	(sizeof(n) <= 4) ?			\
+ 	__ilog2_u32(n) :			\
+ 	__ilog2_u64(n)				\
-- 
2.20.1


