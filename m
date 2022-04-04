Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0372EC38A02
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:42 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.34690.1649077054397769183
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:57:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZMHgnt3B;
 spf=pass (domain: gmail.com, ip: 209.85.218.51,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a6so8796651ejk.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vlRWWSpnKEjom0uxrsKP8boJ4oJrOAwKa9myHTGAyDg=;
        b=ZMHgnt3BU+T4ZoUlbGboQ6NAJx55L3xix6FG3dzGK3sf4EqH4DmQZdjb3ZL+dKrtQM
         DDRy7nlziN65zGH3MvGrjH38SNqzQCK0LVF3laIjwrMYcCrOxc0BZBxW+ptXmDTxiQud
         DfQw88dClWez/ETywAPbZs/ssajS9CSu+DYzPMyMP1GGdAipOLl5g2aUWvwuEVGjGN0l
         2QZP96CXaX8rr8vYuL4ibBa+O42z7kZM2P3JPX8edENRpggxoX9QUkY7e8lknnWw04g7
         iTQYLXrGihqyphQ5HK61HKwNLhxC6jQ+6x/pn0c86RkEJMEqY6bKEnQh+hIAufq3ne0I
         51XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vlRWWSpnKEjom0uxrsKP8boJ4oJrOAwKa9myHTGAyDg=;
        b=PhTKVtkdzvMsdY1eNYLicx21DMwmDL+irr4DMkA6s1lRX1HFLuKFvnD8I39dO3qbmw
         p/Clb2clu01JpgSG7oclmmBV4Jg2sx5+Gu9bsRnzyyLzofEpGonZo9YzHz69mEFLuha2
         mXlVJPRXuxVjfevS2ugUNNtJj065/azffkHBeuLPEhudHvy442mRTPosbKU3R0jjUNVV
         1DNvL9893IDYUwJWAZIrA6b87fYzQKYcghcwO1Z8eWQRZ+/LrBfV2Jes/CtP/e2v5Fba
         tOqwc1MiuI6wXR2rMUKbyc0XJTlgXsAkrDf0tNSKI0J+pBsEyV/IFL07weyS2PMBk342
         2O1A==
X-Gm-Message-State: AOAM533YqK0nb/lkxYsxOu5UtnA7AXXHDBiKqx7zVFfkLIxrXfoA/le7
	0TPsqGktsrgX95hoaYKRNqcbFd0x6cPlgA==
X-Google-Smtp-Source: 
 ABdhPJy0xslpRPr/ZPyp/y03TG7aiM0h8cqfFZ6B53rXTdIueY0TpReE0BUX8q3yuzH+08JL5LyUuw==
X-Received: by 2002:a17:906:c104:b0:6e4:a223:1af9 with SMTP id
 do4-20020a170906c10400b006e4a2231af9mr10237387ejc.441.1649077052267;
        Mon, 04 Apr 2022 05:57:32 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-82-60-178-52.retail.telecomitalia.it. [82.60.178.52])
        by smtp.gmail.com with ESMTPSA id
 a18-20020a1709063e9200b006e0527baa77sm4367272ejj.92.2022.04.04.05.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 05:57:31 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-security][PATCH] clamav: add COMPATIBLE_HOST to fix build error
Date: Mon,  4 Apr 2022 14:57:27 +0200
Message-Id: <20220404125727.43818-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56657

Add COMPATIBLE_HOST to match what is found in glibc
to avoid build error when using musl

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index f0889de..ae2d292 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -6,6 +6,8 @@ LICENSE = "LGPL-2.1"
 
 DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c libcheck"
  
+COMPATIBLE_HOST:libc-musl:class-target = "null"
+
 LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
 # July 27th
-- 
2.32.0


