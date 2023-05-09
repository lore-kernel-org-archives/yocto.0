Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3399AC77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 11:05:42 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.29024.1683630336030858537
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 04:05:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=AFD8B772;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-55a5a830238so52082007b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 04:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683630335; x=1686222335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LcbNgn1hqVB7Me2CK2UO6xWwItLBRkpo6IEoQMXamsc=;
        b=AFD8B772V68gQ/b9jd16cZC2RaUOW5mNF+SlQ3aQRyHQb1EDgEHNrTUr3Zt0pxCx7b
         hKsGtVR0EgYgPhNlavdXt6uXigG70CQDvM1HClxfLpSB+szLJBoKGSI3rLgwumrjHsk9
         Ww9ad042RLmpWUB1MXlMj7YJHjJIOSjJVT091vckTvAvzoLlkLbYMaRHSu+RZR6TkZ5C
         pT2jdK4ZrhjM4lbY/ltn650rxxV2uc8rS4a+oRKi1kBl7Oq9YxbxsLlXpayuwT53pUdz
         05FR7p2UDppt3LxYbDh81qSVWa6rNHhmrdTuE2sKcRHNLav7bb8yvSnpczlVz2NL9F7c
         BErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683630335; x=1686222335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LcbNgn1hqVB7Me2CK2UO6xWwItLBRkpo6IEoQMXamsc=;
        b=WIaBBohc3K3rITN48HvOktaAzG/1Rt7coROEnRksrKVNmKHexOb/8JR+3wD/0DeWbJ
         6PI7qiwL4VtmmJteAXSmcKubAgCTN4xLPfhivDqUmUl6bOOFIWi2brtHIgQby3F8bvgK
         mJWV/KJKR8VSZobtl+Ar0bXc+gchpoSkAwNA642x2s+eOVKBP+C1ZBGJ2Z9uPrLQR2jE
         YDdpIsbOr2l0bYHwOQC2+JJF/4jPK/fldqPRYs8H3Rjui3+mXABWVFj0QupsYBsd7O66
         muWd8QiiL4wvTWxIkbG/COLuvsXbPy4wLSy890RuC92pcmTYSbOCmKlpspJzSAViaEoE
         dUhg==
X-Gm-Message-State: AC+VfDzpSkD88Q7oBD0Jt2kWtTyElBJu4oOyIIFC5Gj8bDEv35EjKXTy
	xpqdN1hm6lRfMQfbD94Z7RIepPvBh9g=
X-Google-Smtp-Source: ACHHUZ78ZODX8SAx/Vkmb3hIyhQ3RIXT3Uxi7WleecAD/2Ar0klBqnZEw8sPSUhTpl8kDYUKNpsAAg==
X-Received: by 2002:a0d:e856:0:b0:55a:6c4e:c8a1 with SMTP id r83-20020a0de856000000b0055a6c4ec8a1mr15341720ywe.39.1683630334800;
        Tue, 09 May 2023 04:05:34 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:183a:1604:2591:7a1e])
        by smtp.gmail.com with ESMTPSA id l4-20020a81d544000000b0055b46dac76esm3179563ywj.116.2023.05.09.04.05.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 04:05:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][langdale][PATCH] Revert "meta-parsec/layer.conf: Insert addpylib declaration"
Date: Tue,  9 May 2023 07:05:34 -0400
Message-Id: <20230509110534.12652-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:05:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59916

This reverts commit ffd9eb59c7d35c3f9acc29be661bdcd0c6332897.

Applied to wrong branch.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/conf/layer.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 5451351..a748d77 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -12,5 +12,3 @@ LAYERSERIES_COMPAT_parsec-layer = "kirkstone langdale"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
-
-addpylib ${LAYERDIR}/lib oeqa
-- 
2.25.1


