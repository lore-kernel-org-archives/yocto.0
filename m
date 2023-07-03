Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC8FC0015E
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 15:32:02 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.36178.1688398319154456916
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 08:31:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=eWWdXyUq;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-57026f4bccaso55533137b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 08:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688398318; x=1690990318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YoJo0iMLq8wXdc2Aj712qF/EMn7wE43GNAS8TWoTRGA=;
        b=eWWdXyUqAcTdVqmPt2N1JeFWImGuUJRFpsbzJQa9m3H+SLv4aKcJoDBu6OKwcKtNF5
         8QP4xcXJEn93m1fTQb0wadUE39DG/1oQvnf8RCaQUDNdNCiH5hi7VL62ESlkOw6s957d
         rsKf6XF1uzzcDP4igBQPeBgmoSQbTkBMNOa8HGN/l1cF+NzFO3t5MtGB/PVwvLfpoxvf
         eb9jmWCGDZn6Ea8H6go0n1Y7gQQmcbM5/50xT0+aq+KFPYlgyC/EUFNbkkGBsMNaP/3g
         5myOLvG53C15cC66zUMm3rtVCjDox5fQcvyMW4O09DtQGm/E3BAG2nzBE/s+JxkvpaRZ
         5fIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688398318; x=1690990318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YoJo0iMLq8wXdc2Aj712qF/EMn7wE43GNAS8TWoTRGA=;
        b=W8dA91mS3Z2uWKw6P0Cs4mPm/FkBtsCeq1aJj9K3pV59YS+SA1pMORqXVeAXY3A7aV
         e7msWQ8NHgUdar/RaoEMO86F9B9Y2Gde6RKN+UKTZDc0zoujn7e5kXg3ufobHHgHaRJ/
         pahkBIV3tUgGU5N+ISuMBjCDeN7AsH9Qd/rppcQiXmxdg1kEOu19Bu9WVAeTJynUoQ8X
         j7D25e/U27dknG/fA46wCsRxeqAg5IbS/9Df0jZuzb4T+ZIMyyEqCEa1v9aMGqXkxEWi
         j9cbbiJgHmkZjc9b+sIt3UoIurGQC+XLz+iBAO68aMqmZrIQ9Yfhpxyb44uGopvK4Bch
         bf1g==
X-Gm-Message-State: ABy/qLYqQRWaBCI7HbLkxZ7+qYBCmgCtuJ2qzeHn/iG767CjVIzCMzX3
	kgUGKN/OW4j06Tx4VkZQ87X9KqRwtWo=
X-Google-Smtp-Source: APBJJlERcyMLw2ADSVJCqDPB++vwjhFSx69ZczC9Iyx/s5oxF8E0iPRukICf4NWTEqPq4AUP56/aUA==
X-Received: by 2002:a81:910a:0:b0:576:e4b7:35ed with SMTP id i10-20020a81910a000000b00576e4b735edmr11013674ywg.30.1688398318110;
        Mon, 03 Jul 2023 08:31:58 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:d470:9cde:7b93:c2dc])
        by smtp.gmail.com with ESMTPSA id v19-20020a814813000000b0054fba955474sm5138295ywa.17.2023.07.03.08.31.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 08:31:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup: add python3-tpm2-pytss
Date: Mon,  3 Jul 2023 11:31:56 -0400
Message-Id: <20230703153156.2256326-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230703153156.2256326-1-akuster808@gmail.com>
References: <20230703153156.2256326-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 15:32:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60503

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index fb0105e..8663b77 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -20,4 +20,5 @@ RDEPENDS:packagegroup-security-tpm2 = " \
     libtss2 \
     tpm2-abrmd \
     tpm2-pkcs11 \
+    python3-tpm2-pytss \
     "
-- 
2.34.1


