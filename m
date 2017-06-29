Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734D8E00BD6; Wed, 28 Jun 2017 18:14:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45BBBE00BDC
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 18:14:54 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:47378]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id E7/FE-10880-C8454595; Thu, 29 Jun 2017 01:14:52 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Wed, 28 Jun 2017 21:12:05 -0400
Message-Id: <8a74a08cf3e65d3f3aea0549a85d07f2e10b5d79.1498698415.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1498698415.git.drew.moseley@mender.io>
References: <cover.1498698415.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V3 3/4] chip: Build sunxi-tools-native.
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
X-List-Received-Date: Thu, 29 Jun 2017 01:14:57 -0000

From: Drew Moseley <drew.moseley@mender.io>

Add LAYERDEPENDS on meta-sunxi and add the sunxi-tools-native
pacakage to EXTRA_IMAGEDEPENDS.

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 README                 | 3 +++
 conf/layer.conf        | 3 +++
 conf/machine/chip.conf | 2 +-
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/README b/README
index cccf59e..32f70b2 100644
--- a/README
+++ b/README
@@ -14,6 +14,9 @@ This layer depends on:
   layers: meta
   branch: master
 
+  URI: git://github.com/linux-sunxi/meta-sunxi.git
+  branch: master
+
 
 Patches
 =======
diff --git a/conf/layer.conf b/conf/layer.conf
index 5dad66e..1f34ea0 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "meta-chip"
 BBFILE_PATTERN_meta-chip = "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-chip = "6"
+
+# Add this to get access to sunxi-tools recipe
+LAYERDEPENDS_meta-chip = "meta-sunxi"
diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index f053976..ff5a213 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -5,7 +5,7 @@
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = " kernel-image kernel-devicetree"
 
-EXTRA_IMAGEDEPENDS += "u-boot"
+EXTRA_IMAGEDEPENDS += "u-boot sunxi-tools-native"
 
 DEFAULTTUNE ?= "cortexa8t-neon"
 include conf/machine/include/tune-cortexa8.inc
-- 
2.7.4


