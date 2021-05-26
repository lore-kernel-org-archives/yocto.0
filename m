Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.9271.1622043397112278667
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=ZxtA3ggr;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.216.41, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pj1-f41.google.com with SMTP id ne24-20020a17090b3758b029015f2dafecb0so565287pjb.4
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B9I0825YcvuXmEa4pJLfpUK95Bm/0LZmWoaYOotHuvM=;
        b=ZxtA3ggrcEFnsnXhOQ1gkSWKLMGSuDSlm4Aoo5x3zX1cFY1PxwINvcSGQLe/rRtDCu
         NfGyjeO9UzbKtnHmaDVlDju9pCNZs55G4mfiO4kTkMrB09YDajBRgJRqcBvP1AaZoA4k
         ITjP82s1gPn7F1XbSzOykKrIcMUZb2fUQ9oWs733DnB2u71KiWLLGlqfcI+Fn3fZekYc
         5kFmtnZ1w3bUsnAw95MPWrwH4s+1JVaOQ24YY6c/hPk/N4kf9FNvWfWfVuxGDpmqAlKx
         +/toirQFHlyLowxmc4+SKpO9Zmhf+HJKNXEvzuB1j11wR3CHFB1WTOFttsesKRQNR/t+
         b3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B9I0825YcvuXmEa4pJLfpUK95Bm/0LZmWoaYOotHuvM=;
        b=DBBM97EGjb4AYpAJssXaaUujxYTeKdT+s4UFb1j9myqwZhqz84JfbV0Y636QmtNcF6
         pz5eOzHd7UAT+cK3D+AN4LKD9CvbOiHtdM8XRLzug6O5jW05pkDmc/R9xbapXhemgW6o
         TbkR1e3XdME0XFAl0iZXmpYjO26YFahtTJCgw+OktXteh8FleeAmm8FBRHHm+RP11nxZ
         VE8gdQ7TSgXvBUjZpZ6C2U3BqNjTCjoC+H6ply/xOU84iJ8kT2E9lvQQkKJwslw/iQ+e
         2Uktappm+8FfoNyzQLKo0sxsn3mjoN8kYvRpOKaNP5qyVB4g60yppcM87FDmj6zkS9jW
         V/bQ==
X-Gm-Message-State: AOAM530p1JuA0n6TcB2txKpWRnP2eSkoaWw/XZKdYX/WziPRPa1ZBa5o
	+AvIrchXu/msYsd+LGPuAq7MgqcEes2qrQ==
X-Google-Smtp-Source: ABdhPJzwaPAK0Tdt4mqWgIHjcHW3EaODGDc0JlsMvtT67tehlKSiSQRmqoP8MX8v2QURms43ce4/6A==
X-Received: by 2002:a17:90a:8416:: with SMTP id j22mr4579473pjn.121.1622043396269;
        Wed, 26 May 2021 08:36:36 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id n8sm15780429pff.167.2021.05.26.08.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:35 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 2/5] zephyr-echo-client: Add recipe for echo client
Date: Wed, 26 May 2021 21:06:20 +0530
Message-Id: <b691927bd08833e0508e3ac68553a7e705151a54.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

This sample application provides an example of using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb b/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
new file mode 100644
index 000000000000..c17e1e78f6b5
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/echo_client"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

