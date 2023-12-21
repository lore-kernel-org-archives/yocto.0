Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10719C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 07:58:08 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.47233.1703145480755950276
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 23:58:02 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwN-008V7P-0T;
	Thu, 21 Dec 2023 09:57:59 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwM-000qWv-TL; Thu, 21 Dec 2023 09:57:58 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Erik Schilling <erik.schilling@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH 2/4] dm-verity-img.bbclass: use bc-native
Date: Thu, 21 Dec 2023 09:57:28 +0200
Message-Id: <20231221075730.201111-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231221075730.201111-1-mikko.rapeli@linaro.org>
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: MIME_GOOD(-0.10)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: FUZZY_BLOCKED(0.00)
 Symbol: R_DKIM_NA(0.00)
 Symbol: NEURAL_HAM(0.00)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Message-ID: 20231221075730.201111-2-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 07:58:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62009

From: Erik Schilling <erik.schilling@linaro.org>

Build host may not have bc.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 classes/dm-verity-img.bbclass | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 045c860..3dd2b94 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -49,6 +49,8 @@ DM_VERITY_SEPARATE_HASH ?= "0"
 DM_VERITY_ROOT_GUID ?= "4f68bce3-e8cd-4db1-96e7-fbcaf984b709"
 DM_VERITY_RHASH_GUID ?= "2c7357ed-ebd2-46d9-aec1-23d437ec2bf5"
 
+DEPENDS += "bc-native"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
@@ -87,8 +89,8 @@ process_verity() {
     # https://uapi-group.org/specifications/specs/discoverable_partitions_specification/
 
     ROOT_HASH=$(cat $ENV | grep ^ROOT_HASH | sed 's/ROOT_HASH=//' | tr a-f A-F)
-    ROOT_HI=$(echo "obase=16;ibase=16;$ROOT_HASH/2^80" | /usr/bin/bc)
-    ROOT_LO=$(echo "obase=16;ibase=16;$ROOT_HASH%2^80" | /usr/bin/bc)
+    ROOT_HI=$(echo "obase=16;ibase=16;$ROOT_HASH/2^80" | bc)
+    ROOT_LO=$(echo "obase=16;ibase=16;$ROOT_HASH%2^80" | bc)
 
     # Hyphenate as per UUID spec and as expected by wic+sgdisk parameters.
     # Prefix with leading zeros, in case hash chunks weren't using highest bits
-- 
2.34.1


