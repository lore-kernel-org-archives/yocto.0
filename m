Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6D8C54EED
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 17:20:49 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.38075.1675076214890847443
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 02:56:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pMRqE-000Ii1-N5; Mon, 30 Jan 2023 12:56:51 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pMRqE-00Gaov-Ch; Mon, 30 Jan 2023 12:56:50 +0200
From: "Mikko Rapeli" <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH] linux-yocto: drop version from bbappends
Date: Mon, 30 Jan 2023 12:56:43 +0200
Message-Id: <20230130105643.3953773-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Rspam-Score: -1.2 (-)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: RCPT_COUNT_TWO(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: R_SPF_NA(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230130105643.3953773-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 17:20:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59103

These bbappends apply to multiple kernel versions so no
need to make them version dependent. Fixes recipe parsing when
using meta-security master branch on kirkstone. In our custom layer we
set layer compatibility for kirkstone and I understand why meta-security
upstream would not want to do that:

LAYERSERIES_COMPAT_security-layer += 'kirkstone'
LAYERSERIES_COMPAT_parsec-layer += 'kirkstone'
LAYERSERIES_COMPAT_tpm-layer += 'kirkstone'

While I work towards supporting also yocto master branch and newer
releases than kirkstone, I would appreciate if I would not have to
branch off layers over minor details like this.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
 .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)
 rename recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend
rename to meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
diff --git a/recipes-kernel/linux/linux-yocto_6.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_6.%.bbappend
rename to recipes-kernel/linux/linux-yocto_%.bbappend
-- 
2.34.1


