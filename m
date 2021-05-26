Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.9328.1622043404230126718
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=UXpT+qXR;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.179, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f179.google.com with SMTP id r1so1257263pgk.8
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NbLYAq9YO/HAHrVUN7025TPrTAUbcT8Njk5hyotZQDk=;
        b=UXpT+qXR08AQPvsbfwM4eXLvAVrIeMvVnDGABzP382eGbR95OEHpUN8PTKCO8Fw0aw
         MQuM8D9b4CFksHIuLiMlpaHIKFdB975QC6zT/OyrtUrIEP4+o8RVO2LbeCbCjcdwV14I
         jjSCcytUlKZMntrV4xGLqFuwLdiFkz3z8BdNJyXFMlFrx+7K+J798FkHRbrWc/Ww48ga
         7glsn2fEKWIgFWJkqYuFOIwrOTYBu3aU8wp7ILToqOIN/PkpFkf2FkpPN9+D13UCrTvJ
         NTgRMRuybuY3URYHaO2UudfxO4zXJlRumsXGIfU4vqz85ZuEaHbdRO67mzL6t96i4d7U
         PvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NbLYAq9YO/HAHrVUN7025TPrTAUbcT8Njk5hyotZQDk=;
        b=khDqfYPkvWUuJcdYLxBin8o5tJ6WwR4wy27m+7IeGJg88CIHn4Fw0PHmFrU1U73zvM
         INSOYvTzPrUJtrrXZJb8b2jv8FTrFgp8mMiA0wAKc7XztLY4cdlzbhj0EFNfHH5/jdB0
         V+sqGU8guNGh7glHCNmwubALR4gAJm12pvib3EeJPCFKLVrY4nG97fPbnMC4UZImfjQv
         3E1BbWetGx85b0PhHVAsJe597Ge+vK2HZZZ2mXTx8Ulmd8D+fWoCihq5cZB2HYCfChJ2
         6M0J8Xdaxu4ckB2T38juU2cE2XR2No3dfBcZzWvV2m+E3KUu8p/G0XkcgKAJdy8gqXGE
         FD5Q==
X-Gm-Message-State: AOAM531nYtKK5vq2mwYbVWRtqAS4UUoNlkV6+5NqyEytilDzOyxBHl2z
	dnLzDgtonvG1Od+lsfzfK2lgLYI8EyQsGQ==
X-Google-Smtp-Source: ABdhPJwClzu/UYF5A/+GciKt8pCqPtCTPl3cos6oEcouCmm7aGQMQOQml+ZEbr8WJReX0JY7mLM5aA==
X-Received: by 2002:a63:fc20:: with SMTP id j32mr25621030pgi.8.1622043403624;
        Wed, 26 May 2021 08:36:43 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id g13sm17115328pfi.18.2021.05.26.08.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:43 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 3/5] zephyr-http-client: Add recipe for http client
Date: Wed, 26 May 2021 21:06:21 +0530
Message-Id: <d05116e91a08c65766d1f1a6fa34e94759958837.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
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

