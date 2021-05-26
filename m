Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web09.9278.1622043409590686296
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=CaVvR8oF;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.216.51, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pj1-f51.google.com with SMTP id o17-20020a17090a9f91b029015cef5b3c50so535743pjp.4
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9nbdHyOLNFwuTj/87Ju2CAb6bmKskfJN1LcFu2PdAUY=;
        b=CaVvR8oFONTNAbj7YC9VmHBq2YKieJww9ludIOZlldfuJ2REU07faVmGT18GZRIWM1
         AFojZlzAJ/PmpEtAeL+TqHjd4h6KQPR2NBwWZHzGbMQhejre2zomhdJLEz9cQqM/XRqX
         epv+mmTVevTPuFPBjSuuk69Ju53UvIiqgzxUjpHVy6oQltCp2z038CwhhJmprZrPmnGB
         ZBravgqzFf76Yz/s+oSVeHpuuCH/y+4AoqQhRAHrUu/JvLzlLXFzjjwSa5+M5KpCR6bN
         hLZdNVFkahcrOSiBLXcdQUItbuwLoCwa1SAM6o3Z/mVuHHuiwbXQQuIGVzR5bOkwk+vQ
         TLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9nbdHyOLNFwuTj/87Ju2CAb6bmKskfJN1LcFu2PdAUY=;
        b=PnDLOoN4QE5DGvFjOja+xO9bn0HtzKd+7JyO4Du2EH4F5c68EW86ITYQJyQbPllyqV
         ZgoNtXjtH9CuCDrsUgaEidYcSqmezzQ4SljV78IVivE33MLLBwLV2P0gqaupN3swFPKo
         s0X4ZR13gdtg3n/YrlmeeMK/GZqjw+hjtbN4UJie64KUlsN1yQ8nbnEjs1l4p5GXcgo1
         kXbYP/2UuRvw6fHpMec0kdilcYAYTqdo7h4mBJPfliRRGl23Ol46PYuSKJUqSk5TtxFN
         X0Iz3okOzmrMi5jvu7rLqg74sw30gt1mC0TqKo0rlgZZBfRPJHKAC3QH0uR4h7ox+x5W
         RQhA==
X-Gm-Message-State: AOAM5318Gqb1QSZeq8SjXvtAUlDG9ppxWJAbUd7bC8epcFNGcCFi6Cs/
	J7yr17xIiWqA0mZ10gcSiI2pR0UQI4Y6IA==
X-Google-Smtp-Source: ABdhPJwaNcmSV08UA9wvZz1nAIrODdw45ee0/IKsFXv4T/cLHfqnabGBDxL0OnQJqogbPrtGfPPtQA==
X-Received: by 2002:a17:90a:3fca:: with SMTP id u10mr4579606pjm.76.1622043408870;
        Wed, 26 May 2021 08:36:48 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id gd2sm1719226pjb.16.2021.05.26.08.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:48 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 4/5] zephyr-websocket-client: Add recipe for websocket client
Date: Wed, 26 May 2021 21:06:22 +0530
Message-Id: <fc8857e23119f2c47ca0f3e3badfa3dcc7fbf320.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
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

