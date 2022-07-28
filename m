Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92372C3F6B0
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:09 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web10.1541.1659046682726026800
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=L8BC0i5j;
 spf=pass (domain: gmail.com, ip: 209.85.215.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id f65so2577540pgc.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=BSzzwz34bSBgE6qlkMTspN7SZTF1MQlSbX2cNejYAhY=;
        b=L8BC0i5jXtQSMW6SCGSDAlMjksbxxwpmqu8P7dqMXChAAqWYGKS6jhaT5H4p3dEc9J
         MdwgMx2nptZQv+12C8UMLIGGh76i94M5OtHD41vw818SJz/PDG/ZG6abOxF/8ZzFj2mE
         /UT/Ne29St7Sxp1SMznkUsYUplHsdQrDuyFNIAmSbWasqkmVdfxeFj5xIR0H1gPLzUeV
         3Hb7dgYOQOcz7xj3sBCQT2NvEu9hwbKx6VMMyaQye8rQfxA2I672Ev0U0IEpnP6e82hm
         P4XqkrXEMyJOXMV7LH/QgvE9KgekgfRG9NRLmIC6hTB8vOQwdaXLBl6jXBWdSoOr26Kz
         BcXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BSzzwz34bSBgE6qlkMTspN7SZTF1MQlSbX2cNejYAhY=;
        b=1vzuamUblXfyrUm1FOSmSIT0ThkaFgHeuj/Kwu1lO9Ps/NseF/3OjLij7Cqad0ejX5
         HH6lbzAPJTeKaR5v2hUR2IWIu1I74SwMMVUMospEYfd0XH3+WG7HslfmSJHUpWTyJzTz
         lLt8m3rpENaDcBcNdj6QEGKzZbsUag827lIfz2OLq1CaT750wY6v+nFsyDxhCdNw7KGK
         LLkFfv9Yq6YYdb4/bSdED4zTcet/ElsoTehEOAyGT6YEmgRYzjFVONGJPT3Ge5F+QVTo
         jQaMGzcFjYDB7bwiD0VKkbx99zyQ5JjQ4hCXusyx9T5O/UNzSvBdxYm3cApz+pfreWWK
         VaaQ==
X-Gm-Message-State: AJIora8qqnunEcNKYrMgsYoF4ONk7guGusEhp8T0/fHW+hUDR4PObntn
	OXAhOFKbHlZngTBSlMOx8UaVfLrAuEA=
X-Google-Smtp-Source: 
 AGRyM1sLPrXRPaRAD0EALiZEY4uL6wecuwoaVJVtQDeXcEUKyeKI3X9oxJNVDHqRLDEjMqe7k/yokQ==
X-Received: by 2002:a05:6a00:e0e:b0:522:990c:ab60 with SMTP id
 bq14-20020a056a000e0e00b00522990cab60mr639987pfb.8.1659046681632;
        Thu, 28 Jul 2022 15:18:01 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.18.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:18:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/9] tpm2-pkcs11: Add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:49 -0700
Message-Id: <20220728221751.48428-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57675

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
index dd0a0b5..38847a8 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
@@ -10,6 +10,8 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
 
 SRC_URI[sha256sum] = "79f28899047defd6b4b72b7268dd56abf27774954022315f818c239af33e05bd"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools-brokensep pkgconfig python3native
 
 EXTRA_OECONF += "--disable-ptool-checks"
-- 
2.25.1


