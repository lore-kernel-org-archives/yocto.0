Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com [99.78.197.218])
 by mx.groups.io with SMTP id smtpd.web09.360.1626989367627995928
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 14:29:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=uD9mCNp8;
 spf=none, err=permanent DNS error (domain: u795025edef875e.ant.amazon.com, ip: 99.78.197.218, mailfrom: prvs=83007a1e1=elberger@u795025edef875e.ant.amazon.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1626989367; x=1658525367;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=5zZb1LDxLuOJABAOnXup2U79YxDklLoU6szEWbcrw+M=;
  b=uD9mCNp8qQsxih/s+gHPEYC29mItYjLsQskTetFN62MZIuJf0jZNshCc
   vX6MFywfws05BZGtp3wB1vs6r5j3+TaWWY5jBLK/eKHeR3mbeeAyPulVi
   v0DmPxjlghUFMOETABRauZ2xtaSzLy2apYGsNqphPNeTExKDMixOHHs+I
   4=;
X-IronPort-AV: E=Sophos;i="5.84,262,1620691200"; 
   d="scan'208";a="14245839"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO email-inbound-relay-2c-76e0922c.us-west-2.amazon.com) ([10.25.36.210])
  by smtp-border-fw-80007.pdx80.corp.amazon.com with ESMTP; 22 Jul 2021 21:29:19 +0000
Received: from EX13MTAUEE001.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
	by email-inbound-relay-2c-76e0922c.us-west-2.amazon.com (Postfix) with ESMTPS id 94B5FB0A63
	for <yocto@lists.yoctoproject.org>; Thu, 22 Jul 2021 21:29:19 +0000 (UTC)
Received: from EX13D04UEB003.ant.amazon.com (10.43.60.185) by
 EX13MTAUEE001.ant.amazon.com (10.43.62.200) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 21:29:18 +0000
Received: from EX13MTAUEE002.ant.amazon.com (10.43.62.24) by
 EX13D04UEB003.ant.amazon.com (10.43.60.185) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 21:29:18 +0000
Received: from u795025edef875e.ant.amazon.com (10.106.179.15) by
 mail-relay.amazon.com (10.43.62.224) with Microsoft SMTP Server id
 15.0.1497.23 via Frontend Transport; Thu, 22 Jul 2021 21:29:18 +0000
Received: by u795025edef875e.ant.amazon.com (Postfix, from userid 623486203)
	id 4DCD711801FB; Thu, 22 Jul 2021 17:29:18 -0400 (EDT)
From: elberger@amazon.com
To: <yocto@lists.yoctoproject.org>
CC: Richard Elberger <elberger@amazon.com>
Subject: [PATCH yocto-autobuilder-helper] Enable canary builds for meta-aws[aws-iot-device-sdk-cpp-v2] on x86-64 and arm64.
Date: Thu, 22 Jul 2021 17:29:08 -0400
Message-ID: <20210722212908.27018-1-elberger@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Richard Elberger <elberger@amazon.com>

This patch provides the buildbot system to make the aws-iot-device-sdk-cpp-v2.
- build on poky
- meta-openembedded and meta-aws are additional repo dependencies
- build for the two dominant architectures: x86-64 and arm64.

Signed-off-by: Richard Elberger <elberger@amazon.com>
---
 config.json | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/config.json b/config.json
index 3709b40..f04fac8 100644
--- a/config.json
+++ b/config.json
@@ -350,6 +350,23 @@
                 "BBTARGETS": "agl-image-core-autobuilder"
             }
         },
+        "meta-aws" : {
+            "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-aws"
+            ],
+            "step1" : {
+                "MACHINE": "qemux86-64",
+                "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
+            },
+            "step2" : {
+                "MACHINE": "qemuarm64",
+                "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
+            }
+        },
        "bringup" : {
             "BUILDINFO" : true,
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
-- 
2.17.1

