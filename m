Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.32593.1623045657534472200
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:00:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=0XQFmuEh;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.216.47, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pj1-f47.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso7716199pjx.1
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NbLYAq9YO/HAHrVUN7025TPrTAUbcT8Njk5hyotZQDk=;
        b=0XQFmuEhiAFkMHppSTAfj8+YrTDKEwDEcVbPFPf4uLlGtN6w/7TTJeP1uHxSMAkwuC
         efp2w83uZZJOhYPbQmgiJLWAuHUFvCNGpmUQ/4CdMbaZXKJOnGGGl494EgzOYtq/oO13
         BBUV63ighBAi25TmUsYwu8NjCpZszMbm6YksRzkcmknbc7sHfWC98OJKs7JAzATpfkbV
         NVQg89FwSK9V60qATQnTyRiN8CwNzcVfeAnf/Bkdti0AhgoovCEJEKooyfHxltorFxts
         70tUzl6DocJ3rBj3gBWaJpLayMSqrKVzecIF9KRlaoRfIitQJCvV6Qy6EYFrDQFH8M6a
         DdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NbLYAq9YO/HAHrVUN7025TPrTAUbcT8Njk5hyotZQDk=;
        b=QhnYhuoNFTZnKTq5mUABPO7eRmM7mI4jookkPjLfKfO1HFeiV0ixQ/gz3OkhwIUFOu
         jpBAOL5UvGda4bOgq6Z9mNg1uoxsNZMXyzMbKGCiR9HJuWf2oXSqnLuMnJ4JvIHjHxdi
         yGQG4cHid7i2F4U2FY7pWqpVInrssnfF89WTBxWEHk8w8A8ky6HutLtVWmDyKhpE4bYs
         q35zeMG0F3n2b+OMmaDHba4bxr2UuvNdE7zs58VcN0id+8usquh9bVOBjTBUWCPPbClF
         uexlfG5JC51btQtwHfCUDGYQlzhbda/Po/SI93natNUoW7NaiqCgUPfTKnezmuVU7blC
         r4xw==
X-Gm-Message-State: AOAM532CJx1p3JQWaqDVE0HpZznCxz2Sr7jiGzv/qvEFm3nopXLmefkR
	P+rZopY769b1+nshXVpLNO8dzHoJaCp+Uw==
X-Google-Smtp-Source: ABdhPJy+ZASv8E68ATHtDOcJty+X3xLrRat13V4Ss56KdVYSqSbETzE3VPACVBT2/Al8MRrSX5EOQA==
X-Received: by 2002:a17:902:aa42:b029:ee:f55a:b2c1 with SMTP id c2-20020a170902aa42b02900eef55ab2c1mr16468943plr.15.1623045656923;
        Sun, 06 Jun 2021 23:00:56 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id r92sm11640192pja.6.2021.06.06.23.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:00:56 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 3/5] zephyr-http-client: Add recipe for http client
Date: Mon,  7 Jun 2021 11:30:42 +0530
Message-Id: <9c492e6872c37d84710c0756712a279c8b0e28c4.1622535742.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

This sample application provides an example of using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-http-client.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-http-client.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-http-client.bb b/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
new file mode 100644
index 000000000000..cf3c322c20ce
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/http_client"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

