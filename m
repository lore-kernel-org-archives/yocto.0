Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFD84C352B6
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:11 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web08.14080.1650770431789113099
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 20:20:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23O3KVBg029455
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sat, 23 Apr 2022 20:20:31 -0700
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sat, 23 Apr 2022 20:20:30 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sat, 23 Apr 2022 20:20:30 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Sat, 23 Apr 2022 20:20:29 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-xilinx][PATCH] Use new variable LICENSE_FLAGS_ACCEPTED
Date: Sun, 24 Apr 2022 11:20:29 +0800
Message-ID: <20220424032029.2641663-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56854

From: Mingli Yu <mingli.yu@windriver.com>

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-xilinx-bsp/README.md       | 4 ++--
 meta-xilinx-core/README.md      | 4 ++--
 meta-xilinx-core/README.qemu.md | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-xilinx-bsp/README.md b/meta-xilinx-bsp/README.md
index e4142861..85a5b38f 100644
--- a/meta-xilinx-bsp/README.md
+++ b/meta-xilinx-bsp/README.md
@@ -73,11 +73,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
 flag must be white-listed in the build configuration (e.g. `local.conf`). This
 can be done on a per package basis:
 
-	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom"
+	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom"
 
 or generally:
 
-	LICENSE_FLAGS_WHITELIST += "xilinx"
+	LICENSE_FLAGS_ACCEPTED += "xilinx"
 
 Generally speaking Xilinx content that is provided as a restricted download
 cannot be obtained without a Xilinx account, in order to use this content you
diff --git a/meta-xilinx-core/README.md b/meta-xilinx-core/README.md
index 8997760c..3fae999f 100644
--- a/meta-xilinx-core/README.md
+++ b/meta-xilinx-core/README.md
@@ -72,11 +72,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
 flag must be white-listed in the build configuration (e.g. `local.conf`). This
 can be done on a per package basis:
 
-	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom-native"
+	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom-native"
 
 or generally:
 
-	LICENSE_FLAGS_WHITELIST += "xilinx"
+	LICENSE_FLAGS_ACCEPTED += "xilinx"
 
 Generally speaking Xilinx content that is provided as a restricted download
 cannot be obtained without a Xilinx account, in order to use this content you
diff --git a/meta-xilinx-core/README.qemu.md b/meta-xilinx-core/README.qemu.md
index d0040b09..5cc599a4 100644
--- a/meta-xilinx-core/README.qemu.md
+++ b/meta-xilinx-core/README.qemu.md
@@ -10,11 +10,11 @@ The PMU ROM is available for download, and a specific recipe has been created
 to make this available: pmu-rom-native.
 
 The license on the software is Xilinx proprietary, so you may be required to
-enable the approprate LICENSE_FLAGS_WHITELIST to trigger the download.
+enable the approprate LICENSE_FLAGS_ACCEPTED to trigger the download.
 The license itself is available within the download at the URL referred to in
 meta-xilinx-core/recipes-bsp/pmu-firmware/pmu-rom-native_2022.1.bb.
 
 Add the following to your local.conf to acknowledge you accept the proprietary
 xilinx license.
 
-   LICENSE_FLAGS_WHITELIST:append = " xilinx"
+   LICENSE_FLAGS_ACCEPTED:append = " xilinx"
-- 
2.25.1


