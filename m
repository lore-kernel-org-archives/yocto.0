Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web08.32255.1623045660920834918
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:01:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=UlfFCQVr;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.182, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f182.google.com with SMTP id e22so12977109pgv.10
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9nbdHyOLNFwuTj/87Ju2CAb6bmKskfJN1LcFu2PdAUY=;
        b=UlfFCQVre+t0RwX1fIVbYT9hFcNb7np51x/hhfpV2Hg3iTHeRn7zEb5fAj39mghdS3
         tGsSEvZJEn0w3PPQycZwG9C9Etd6TVjdNKNOIuNkIQYc8ISiLG7xf9aVwV0QbssfO8JS
         qwYLQv4jfnHBctRHACMmfxmtRc+tbkLBFg85fkTST1mte2B9Ol8KmVJ+Y1ldJvB7r+3M
         UBQM8rauwPQdQDcFISDoyPmXqJ6Nr8CrC2XoEqsBp17TeuIulDfAaOyD0vVdE7dv/rH/
         jJiCQnDwaZut85WxI/mq3YltKbH8teHZPgAKXpLFaA2Ta6UXbMv/pUAtrMxAsD//U/Fo
         0FoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9nbdHyOLNFwuTj/87Ju2CAb6bmKskfJN1LcFu2PdAUY=;
        b=PDST4IHppoVKGup8BROydTNCF0uxjFw64BWlsiHWEe6AvUVbvbUckYLC3uy9BcaftL
         RhrwdrgVunJyiM9cAEDMD+gkM31RxnIm3y521ELumx0YDS5j2mO68Js8upZMDjHJoXHH
         XHlpkKfd70BAPgUjH4P1d7O6FmndT7pOx+CW0w4/+7l6Ac5NvMKsd2W3O1AbcRTYAUWm
         +pDn08upV85Dp4vztnsCFXaDN3OHmJ1Fua6h5TYGeyvKA2YxzM4kULpBEJiRlhAepxtz
         VkjWTV1/yPlqrkUB4y8RLtAx98fNpaOFGsgGguj0p0bkJTTY3YwJ4hasLoZ6ZQn1looR
         46nA==
X-Gm-Message-State: AOAM5305bGwvhubf0JBWjGTzyBPiF8k+2Sm1/Fvfae4Tr4YTMsidyy/X
	FBUCGlN56SC5IYsc1bpgEE9jakIoBYL7Xw==
X-Google-Smtp-Source: ABdhPJzdNNONnondC4fZeHXbAzXlw2VnJXuRn+n3fazT5YKf/AUInJjKy4M1TE1lmqKMROi8VDnHgw==
X-Received: by 2002:a65:60c5:: with SMTP id r5mr16294545pgv.79.1623045660144;
        Sun, 06 Jun 2021 23:01:00 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id y73sm7080881pfb.129.2021.06.06.23.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:00:59 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 4/5] zephyr-websocket-client: Add recipe for websocket client
Date: Mon,  7 Jun 2021 11:30:43 +0530
Message-Id: <c0ca409ac4a41a4375b28fd362aee390610bfe10.1622535742.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

This sample application provides an example of using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
new file mode 100644
index 000000000000..428f75e18adb
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/websocket_client"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

