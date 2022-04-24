Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE7AC35296
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:11 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web08.14003.1650769794539900118
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 20:09:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23O39ph1028502
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sat, 23 Apr 2022 20:09:52 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 23O39pTu019691
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sat, 23 Apr 2022 20:09:51 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sat, 23 Apr 2022 20:09:50 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Sat, 23 Apr 2022 20:09:50 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl][PATCH] cgl-init-build-env: Use new variable
 LICENSE_FLAGS_ACCEPTED
Date: Sun, 24 Apr 2022 11:09:49 +0800
Message-ID: <20220424030949.1735527-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56853

From: Mingli Yu <mingli.yu@windriver.com>

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 cgl-init-build-env | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/cgl-init-build-env b/cgl-init-build-env
index acf459d..1d51219 100755
--- a/cgl-init-build-env
+++ b/cgl-init-build-env
@@ -200,8 +200,8 @@ else
 #            echo "*** Info: Inheriting  distrodata."
 #        fi
 
-#        echo -e '\nLICENSE_FLAGS_WHITELIST += "non-commercial"\n' >> conf/local.conf
-#        echo "*** Info: Need to set LICENSE_FLAGS_WHITELIST for netperf"
+#        echo -e '\nLICENSE_FLAGS_ACCEPTED += "non-commercial"\n' >> conf/local.conf
+#        echo "*** Info: Need to set LICENSE_FLAGS_ACCEPTED for netperf"
 
          if [[ -n $DISTRO ]]; then
             sed -i -e "s|^DISTRO.*|DISTRO ?= \"$DISTRO\"|" conf/local.conf
-- 
2.25.1


