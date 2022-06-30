Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E190C433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Jun 2022 16:31:32 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.27632.1656606688087570012
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:31:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=dBTZtpzM;
 spf=pass (domain: mvista.com, ip: 209.85.216.44,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pj1-f44.google.com with SMTP id
 a11-20020a17090acb8b00b001eca0041455so3347205pju.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=36MT+2fJRmdHb4PQ5VJK7nDYltTin7vpUv5wx4OmMmg=;
        b=dBTZtpzMfCUVeUeq3WAPMV9hOm6NcvlPAPeYanFwO1WmsjrnGDS3Zf4uhnrTBtG0NN
         dmaIfVCcV0s4WaEHTXAObf4JXwICw+4q4RKJuTA9kGtnaAMAof7XpRaJ1pGJgTmnZq5V
         llJRc0fttK8mcaiwimddNa2R5S7RXQu4YKluM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=36MT+2fJRmdHb4PQ5VJK7nDYltTin7vpUv5wx4OmMmg=;
        b=x7xoJkH/TWdqp5pdKTkChnRyGqp1hb8/KjlizgqYQw0LmLktbKly03u78v1lNM3XsL
         /df8bcr6Bx2CcENo81+jWGL0J0zmTvDk+e4S8XdZJY3Q6XRJKDK38HMwDksKzBV3ISvN
         DsqGvunZoLtUOPzSwxHLSQtvwoyBrsqFArexIojuLwuN2OW5jtVoZyfiRVmLcyas9i0n
         oQli+ayUsqs682rwjY165yL+cHxJkA+Trx/FqrziU77DCUTMhYLRdgf0V0TzHp7Tuxqp
         T+kQZbqYerOtR4b0Syz7abmiZOqe5uU0uo7dmRJEIdMAD4890nvyIU5IyDT4FKIbjXS9
         ZnkQ==
X-Gm-Message-State: AJIora/KJWvrhj4nu1fgOaspFTI8v1JL7rpip3ryx1TmTXOzV9kJ2eGw
	TSBGMbgiCj5dCS0W0sxp+PKCOAdXPde4mA==
X-Google-Smtp-Source: 
 AGRyM1sVM5QG9ZMDVMkM6UjhJF+OiEUCMvMqo493EOsYZQRCoH0GwrVT3AJfuSNnvRzFG+rbKnTUrw==
X-Received: by 2002:a17:90a:c244:b0:1ec:d65f:e1c7 with SMTP id
 d4-20020a17090ac24400b001ecd65fe1c7mr12818425pjx.15.1656606687476;
        Thu, 30 Jun 2022 09:31:27 -0700 (PDT)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 t20-20020a1709028c9400b0015e8d4eb282sm13661127plo.204.2022.06.30.09.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 09:31:27 -0700 (PDT)
Received: by brown (sSMTP sendmail emulation); Thu, 30 Jun 2022 09:31:25 -0700
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] python3-privacyidea: add correct path to
 lib/privacyidea
Date: Thu, 30 Jun 2022 09:31:23 -0700
Message-Id: <20220630163123.2787877-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jun 2022 16:31:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57431

Nothing in getting installed in ${datadir}/lib, it is all going to
${prefix}/lib. setuptools pulls in ${libdir}/* so for the base lib
case of ${prefix}/lib the build works. If libdir is something else
lib64 for example, its still ending up in ${prefix}/lib and it fails
to build.

Set value to correct path as it is being installed.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../recipes-security/mfa/python3-privacyidea_3.6.2.bb           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
index 40f6d15..8b6af5e 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
@@ -19,7 +19,7 @@ GROUPADD_PARAM:${PN} = "--system privacyidea"
 USERADD_PARAM:${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
     --shell /bin/false privacyidea"
 
-FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+FILES:${PN} += " ${prefix}/etc/privacyidea/* ${prefix}/lib/privacyidea/*"
 
 RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
 
-- 
2.35.3


