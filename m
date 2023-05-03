Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0B6C77B7F
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 14:08:50 +0000 (UTC)
Received: from smtp-fw-80006.amazon.com (smtp-fw-80006.amazon.com [99.78.197.217])
 by mx.groups.io with SMTP id smtpd.web10.20464.1683122928817935328
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 07:08:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=GD4xZ7/C;
 spf=pass (domain: amazon.de, ip: 99.78.197.217, mailfrom: prvs=480dff068=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1683122929; x=1714658929;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=P8U2v8x5XE44ZF/g/DXY9PpapGLFDpMfjGM40CTUWy8=;
  b=GD4xZ7/CEixMefVLgm2uQ0QkIBPYNf+SPCNXGjksNGgWO7rQOE5IfqQW
   7TSxx0SCFlRDjmcCDlDtyNbgcHhZhbxxw6SB2KwsvzHANgP71dBoRdjvc
   O2yS4cVewpCci8WGVl5pqDaOMLOC8WA24H0EyphCM3SFIZI6fRZDWSUpF
   o=;
X-IronPort-AV: E=Sophos;i="5.99,247,1677542400"; 
   d="scan'208";a="210565671"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO email-inbound-relay-pdx-2a-m6i4x-1cca8d67.us-west-2.amazon.com) ([10.25.36.210])
  by smtp-border-fw-80006.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2023 14:08:44 +0000
Received: from EX19D016EUC001.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
	by email-inbound-relay-pdx-2a-m6i4x-1cca8d67.us-west-2.amazon.com (Postfix) with ESMTPS id 4943C81185
	for <yocto@lists.yoctoproject.org>; Wed,  3 May 2023 14:08:43 +0000 (UTC)
Received: from u182adcbddbfb55.ant.amazon.com (10.85.99.97) by
 EX19D016EUC001.ant.amazon.com (10.252.51.169) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 3 May 2023 14:08:40 +0000
From: <throos@amazon.de>
To: <yocto@lists.yoctoproject.org>
CC: Thomas Roos <throos@amazon.de>
Subject: [PATCH] config.json: meta-aws needs meta-multimedia now, for checklayer as well
Date: Wed, 3 May 2023 16:08:30 +0200
Message-ID: <20230503140830.191745-1-throos@amazon.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.85.99.97]
X-ClientProxiedBy: EX19D045UWC003.ant.amazon.com (10.13.139.198) To
 EX19D016EUC001.ant.amazon.com (10.252.51.169)
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 14:08:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59854

From: Thomas Roos <throos@amazon.de>

Signed-off-by: Thomas Roos <throos@amazon.de>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 9da4d85..087abf0 100644
--- a/config.json
+++ b/config.json
@@ -935,7 +935,7 @@
             },
             "step3" : {
                 "shortname" : "Test meta-aws YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-python -n --no-auto-dependency"]
             },
             "step4" : {
                 "shortname" : "Test meta-intel YP Compatibility",
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





