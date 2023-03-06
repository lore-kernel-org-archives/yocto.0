Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCE0C678D4
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 08:24:12 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.28702.1678091046716790682
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 00:24:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pZ68Y-00GuxI-3s; Mon, 06 Mar 2023 10:24:02 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pZ68X-001xGc-Qu; Mon, 06 Mar 2023 10:24:01 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-selinux][PATCH] linux-yocto: remove version from bbappend
Date: Mon,  6 Mar 2023 10:23:51 +0200
Message-Id: <20230306082351.464519-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: RCPT_COUNT_TWO(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: NEURAL_HAM(-0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230306082351.464519-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 08:24:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59346

There are multiple kernel versions now and the changes apply to
all of them, e.g. 5.15 and 6.1.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../linux/{linux-yocto_5.%.bbappend => linux-yocto_%.bbappend}    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_5.%.bbappend => linux-yocto_%.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_5.%.bbappend
rename to recipes-kernel/linux/linux-yocto_%.bbappend
-- 
2.34.1


