Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33D75E0094C; Sun, 25 Jun 2017 12:58:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EBE8E00B63
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 12:58:34 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:46011]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 96/86-10880-8E510595; Sun, 25 Jun 2017 19:58:33 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Sun, 25 Jun 2017 15:55:45 -0400
Message-Id: <cc067a3eae2ea57cd7935283428ac759d3e6a898.1498420110.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1498420110.git.drew.moseley@mender.io>
References: <cover.1498420110.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V2 2/3] chip: Build sunxi-tools-native.
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
X-List-Received-Date: Sun, 25 Jun 2017 19:58:38 -0000

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
index 5dad66e..3324908 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "meta-chip"
 BBFILE_PATTERN_meta-chip = "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-chip = "6"
+
+# Add this to get access to sunxi-tools recipe
+LAYERDEPENDS_meta-chip = "meta-sunxi"
\ No newline at end of file
diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index 8f54067..ae166f9 100644
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


