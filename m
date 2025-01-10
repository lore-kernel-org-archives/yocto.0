Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3D72E7719A
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 03:08:56 +0000 (UTC)
Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com [99.78.197.218])
 by mx.groups.io with SMTP id smtpd.web11.10950.1736478531921489178
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2025 19:08:52 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: amazon.com, ip: 99.78.197.218, mailfrom: prvs=098a0f86d=redgarch@amazon.com)
X-IronPort-AV: E=Sophos;i="6.12,302,1728950400"; 
   d="scan'208";a="368030943"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO smtpout.prod.us-east-1.prod.farcaster.email.amazon.dev) ([10.25.36.210])
  by smtp-border-fw-80007.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jan 2025 03:08:52 +0000
Received: from EX19MTAUEC002.ant.amazon.com [10.0.29.78:30906]
 by smtpin.naws.us-east-1.prod.farcaster.email.amazon.dev [10.0.60.92:2525] with esmtp (Farcaster)
 id a8270587-e16d-4097-863e-cd33cb10a839; Fri, 10 Jan 2025 03:08:50 +0000 (UTC)
X-Farcaster-Flow-ID: a8270587-e16d-4097-863e-cd33cb10a839
Received: from EX19MTAUEA001.ant.amazon.com (10.252.134.203) by
 EX19MTAUEC002.ant.amazon.com (10.252.135.253) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 10 Jan 2025 03:08:50 +0000
Received: from email-imr-corp-prod-pdx-all-2c-c4413280.us-west-2.amazon.com
 (10.43.8.2) by mail-relay.amazon.com (10.252.134.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id
 15.2.1258.39 via Frontend Transport; Fri, 10 Jan 2025 03:08:49 +0000
Received: from dev-dsk-redgarch-1a-35ea4916.us-east-1.amazon.com (dev-dsk-redgarch-1a-35ea4916.us-east-1.amazon.com [10.200.210.68])
	by email-imr-corp-prod-pdx-all-2c-c4413280.us-west-2.amazon.com (Postfix) with ESMTP id 69FCFA013E;
	Fri, 10 Jan 2025 03:08:49 +0000 (UTC)
Received: by dev-dsk-redgarch-1a-35ea4916.us-east-1.amazon.com (Postfix, from userid 21629701)
	id 2BC397C88; Fri, 10 Jan 2025 03:08:49 +0000 (UTC)
From: Daniel Chaves <dchvs11@gmail.com>
To: <yocto@lists.yoctoproject.org>
CC: Daniel Chaves <dchvs11@gmail.com>
Subject: [linux-yocto][poky][master][PATCH] module.bbclass: enhance KBUILD_EXTRA_SYMBOLS retrieval
Date: Fri, 10 Jan 2025 03:08:47 +0000
Message-ID: <20250110030847.4839-1-dchvs11@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 03:08:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64525

Kernel packages may not always use the kernel-module- prefix. However,
those listed in DEPENDS will consistently add Module.symvers to the
STAGING_INCDIR.

Signed-off-by: Daniel Chaves <dchvs11@gmail.com>
---
 meta/classes-recipe/module.bbclass | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta/classes-recipe/module.bbclass b/meta/classes-recipe/module.bbclass
index f2f0b25a2d..0f16522866 100644
--- a/meta/classes-recipe/module.bbclass
+++ b/meta/classes-recipe/module.bbclass
@@ -11,13 +11,13 @@ EXTRA_OEMAKE += "KERNEL_SRC=${STAGING_KERNEL_DIR}"
 MODULES_INSTALL_TARGET ?= "modules_install"
 MODULES_MODULE_SYMVERS_LOCATION ?= ""
 
-python __anonymous () {
-    depends = d.getVar('DEPENDS')
-    extra_symbols = []
-    for dep in depends.split():
-        if dep.startswith("kernel-module-"):
-            extra_symbols.append("${STAGING_INCDIR}/" + dep + "/Module.symvers")
-    d.setVar('KBUILD_EXTRA_SYMBOLS', " ".join(extra_symbols))
+python () {
+    import glob
+
+    extra_symbols = glob.glob(d.getVar('STAGING_INCDIR') + "/*/Module.symvers")
+
+    d.setVar('KBUILD_EXTRA_SYMBOLS', d.getVar('KBUILD_EXTRA_SYMBOLS') + " " + \
+        " ".join(extra_symbols))
 }
 
 python do_package:prepend () {
-- 
2.40.1


