Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 496DCE8FDDB
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 08:27:38 +0000 (UTC)
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by mx.groups.io with SMTP id smtpd.web11.13747.1696408052855388390
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 01:27:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=VgOFbHfb;
 spf=pass (domain: amazon.de, ip: 52.95.48.154, mailfrom: prvs=634f9ccfe=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1696408053; x=1727944053;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=eYBMQQJ9hawuZkASKtrFJ9OK3f5AnTFHVyFlbjYCQvo=;
  b=VgOFbHfbKSTmFR9pJLWFxWkFBaa5wLtHjkxzKfNcQQQETZVNnGJA32Bu
   IfCPQZdRO7tlZYOA5VPGUS4tagWcKsrIsbjYOv0rAD0Xj35mC+bXqkYVC
   1KU2cDBS0I6SASn2iqsib/7iHELg7a/PswG4RBiywIwXiSZ5P9aK/NF1m
   g=;
X-IronPort-AV: E=Sophos;i="6.03,199,1694736000"; 
   d="scan'208";a="362192687"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO email-inbound-relay-pdx-2a-m6i4x-8a14c045.us-west-2.amazon.com) ([10.43.8.2])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2023 08:27:30 +0000
Received: from EX19D016EUC001.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
	by email-inbound-relay-pdx-2a-m6i4x-8a14c045.us-west-2.amazon.com (Postfix) with ESMTPS id 8B68280481
	for <yocto@lists.yoctoproject.org>; Wed,  4 Oct 2023 08:27:28 +0000 (UTC)
Received: from u182adcbddbfb55.ant.amazon.com (10.1.213.24) by
 EX19D016EUC001.ant.amazon.com (10.252.51.169) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 4 Oct 2023 08:27:26 +0000
From: <throos@amazon.de>
To: <yocto@lists.yoctoproject.org>
CC: Thomas Roos <throos@amazon.de>
Subject: [PATCH] config.json: meta-aws add oe meta-multimedia dependency
Date: Wed, 4 Oct 2023 10:27:16 +0200
Message-ID: <20231004082716.485712-1-throos@amazon.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.1.213.24]
X-ClientProxiedBy: EX19D035UWB002.ant.amazon.com (10.13.138.97) To
 EX19D016EUC001.ant.amazon.com (10.252.51.169)
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 08:27:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61228

From: Thomas Roos <throos@amazon.de>

Signed-off-by: Thomas Roos <throos@amazon.de>
---
 config.json | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index abfa853..ed1ae04 100644
--- a/config.json
+++ b/config.json
@@ -368,6 +368,7 @@
             "ADDLAYER" : [
                 "${BUILDDIR}/../meta-openembedded/meta-oe",
                 "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                 "${BUILDDIR}/../meta-openembedded/meta-networking",
                 "${BUILDDIR}/../meta-aws"
             ],
@@ -880,16 +881,16 @@
             "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
             "step1" : {
                 "shortname" : "Test meta-agl YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
             },
             "step2" : {
                 "shortname" : "Test meta-arm YP Compatibility",
                 "MACHINE" : "qemuarm64",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/meta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-arm/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtualization --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/meta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-arm/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtualization --no-auto-dependency"]
             },
             "step3" : {
                 "shortname" : "Test meta-aws YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
             },
             "step4" : {
                 "shortname" : "Test meta-intel YP Compatibility",
@@ -905,7 +906,7 @@
             },
             "step7" : {
                 "shortname" : "Test meta-virtualization YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtualization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-filesystems --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtualization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-filesystems --no-auto-dependency"]
             }
         },
         "meta-mingw" : {
-- 
2.25.1




Amazon Web Services EMEA SARL
38 avenue John F. Kennedy, L-1855 Luxembourg
Sitz der Gesellschaft: L-1855 Luxemburg
eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284

Amazon Web Services EMEA SARL, Niederlassung Deutschland
Marcel-Breuer-Str. 12, D-80807 Muenchen
Sitz der Zweigniederlassung: Muenchen
eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240, USt-ID DE317013094





