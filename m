Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A561CC83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 03:44:07 +0000 (UTC)
Received: from esa5.hc1455-7.c3s2.iphmx.com (esa5.hc1455-7.c3s2.iphmx.com [68.232.139.130])
 by mx.groups.io with SMTP id smtpd.web11.10211.1693280638626037505
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 20:43:59 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 68.232.139.130, mailfrom: leimaohui@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="129336264"
X-IronPort-AV: E=Sophos;i="6.02,208,1688396400"; 
   d="scan'208";a="129336264"
Received: from unknown (HELO yto-r3.gw.nic.fujitsu.com) ([218.44.52.219])
  by esa5.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Aug 2023 12:43:55 +0900
Received: from yto-m1.gw.nic.fujitsu.com (yto-nat-yto-m1.gw.nic.fujitsu.com [192.168.83.64])
	by yto-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id CC2C4E428A
	for <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 12:43:50 +0900 (JST)
Received: from aks-ab2.gw.nic.fujitsu.com (aks-ab2.gw.nic.fujitsu.com [192.51.207.12])
	by yto-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 171A4CFBBD
	for <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 12:43:50 +0900 (JST)
Received: from ubuntu20.g08.fujitsu.local (unknown [10.167.225.227])
	by aks-ab2.gw.nic.fujitsu.com (Postfix) with ESMTP id 4C3B987F5B;
	Tue, 29 Aug 2023 12:43:49 +0900 (JST)
From: leimaohui@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-cgl][PATCH] resource-agents: Fix build error with autoconf-2.73.
Date: Tue, 29 Aug 2023 11:43:47 +0800
Message-Id: <20230829034347.152985-1-leimaohui@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1408-9.0.0.1002-27842.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1408-9.0.1002-27842.004
X-TMASE-Result: 10--5.185600-10.000000
X-TMASE-MatchedRID: Y2MGxh9qolvRhEyb9f1sjjo39wOA02LhCZa9cSpBObm+f7ap9DJaDe79
	DJRUi35pTQ0JkPG2878bYA1xraQblC/7QU2czuUNGYJhRh6ssesfimmlcABuN7V5fSMRD1zqKJp
	KpGmR8G12/caHlcaP2kej3sxQoy96yarxTb8wldb4FqzGb25nh9Fb0ZIwh4Su33Nl3elSfspPY8
	9noi+yITwg82JXf16hQr3Huhh8m7hVnAszo0EfNGgws6g0ewz2ltF+xW+zhUjMB0kPsl40wwGlf
	B05oVDhsX24ahsS5PuAMuqetGVetnyef22ep6XYOwBXM346/+yRVwxMgmAyk3yna++T23e5ULLr
	Aeur+ZWmGWaXB82dZsRYiAJzGzDE
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 03:44:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60910

From: Lei Maohui <leimaohui@fujitsu.com>

resource-agents is built failed after poky upgraded autoconf to 2.73.

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 .../resource-agents/autoconf-2.73.patch       | 30 +++++++++++++++++++
 .../resource-agents_4.5.0.bb                  |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
new file mode 100644
index 0000000..af188d2
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
@@ -0,0 +1,30 @@
+From 749d10d4c61a84d8ba506f178daededac8062c3f Mon Sep 17 00:00:00 2001
+From: Lei Maohui <leimaohui@fujitsu.com>
+Date: Wed, 16 Aug 2023 02:43:08 +0000
+Subject: [PATCH] autoconf-2.7:
+
+To fix build error with autoconf-2.7:
+
+| configure: error: in '/home/aarch64-test/tmp/work/aarch64-ubinux-linux/resource-agents/4.5.0-r0/build':
+| configure: error: C preprocessor "aarch64-ubinux-linux-gcc -E --sysroot=/home/aarch64-test/tmp/work/aarch64-ubinux-linux/resource-agents/4.5.0-r0/recipe-sysroot   -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security" fails sanity check
+
+Upstream-Status: Inappropriate
+Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
+---
+ configure.ac | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index d682ad780..84444a525 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -883,7 +883,6 @@ else
+		-Wno-strict-aliasing
+		-Wpointer-arith
+		-Wstrict-prototypes
+-		-Wunsigned-char
+		-Wwrite-strings"
+
+ # Additional warnings it might be nice to enable one day
+--
+2.34.1
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 764a1d2..357669a 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -21,6 +21,7 @@ SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=main;protocol=htt
            file://fix-install-sh-not-found.patch \
            file://0001-ldirectord.service.in-use-run-instead-of-var-run.patch \
            file://0001-ldirectord.service.in-set-correct-path-of-rm-command.patch \
+           file://autoconf-2.73.patch \
           "
 
 SRCREV = "fee181320547365d7f8c88cca2b32801412b933d" 
-- 
2.25.1


