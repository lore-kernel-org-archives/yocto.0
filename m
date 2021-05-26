Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.9331.1622043414841320313
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=NENSU57u;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.214.170, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pl1-f170.google.com with SMTP id h12so795341plf.11
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vpTQufneovlSeo/vHqL/sQRHBsmX4Wp20P68K5NbexE=;
        b=NENSU57uI5OaKeR/eA+gj1N1ImAOfvnK6/mI/OWZaRTvjNuLKMI8UiwjT0ltpYWXYs
         HWjSCLbWfDDZOAcwVJuc/e1qc7ebHlnOpLh0Hd4uq6APoyP/Pn3pEW0QN+tgScaD+BhF
         KxuBZHOjGypw3AowD3JhCKD+tlt+LdUywaql9RoczEwCCGXtnn8ToOhiO3egfaRnWqQI
         +YjZbSsYCFHWJsMpSzATlmmH6Kom2cNlGDZ6wdFT+X6FNgtxvuMcljckBPcsXrNSKdrB
         tAPTvj77HF2fMouo6YCcSNA2TAZbrTS5uUbWWsCzG76gmePUjiFE7vcuDp8G8y9qmZ6u
         FBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vpTQufneovlSeo/vHqL/sQRHBsmX4Wp20P68K5NbexE=;
        b=hQFqz6pX3Ui/poILB9Daogf+ySj81+uzU71rl0VlZ4hNerACTXsh0ErFKb5jWvPM9y
         ORIpQTDtz2rvpKlafVRg5qJfkWMgcQNZd8+dWiUM7DVxjJFlzg1U2KkyfsLwDEVKg5Xn
         ThnlOg81aZoUKms75EJLn8F7iWVcQ4pLwcZU5aYU7NZA/WGRdmW2S2wzr6ULgTyWcWTe
         GePe3yqGLDCJ1h5gezNqM0HIbXIl1TAq4t02AP3GvZHtMKkOa/+hT7rtZK6tJPKNkBTs
         /GVnRE44wJd6TkYNSS//Bs7qidh9wDDnCvtLwSW4nVilbKmDkvQbjSrZ8TtyE4JpGOzX
         BHyg==
X-Gm-Message-State: AOAM533CnkzOmVK2igl+3Y+gs0ZEEe3gAAZ1ypu9TvUZBgk77qZe3cwJ
	D4NaT0mvIbp79NxlwOKyiBgsVZHvt0wGJg==
X-Google-Smtp-Source: ABdhPJxqwTd4azYaa6yMIbbDt1AG0H3ddTq0VZtww4NT5kW+67OetXYPw/1eJE/uqWY/hmxCRK+rsQ==
X-Received: by 2002:a17:902:7596:b029:f3:d01e:d316 with SMTP id j22-20020a1709027596b02900f3d01ed316mr36664522pll.14.1622043414077;
        Wed, 26 May 2021 08:36:54 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id u5sm2740121pfi.179.2021.05.26.08.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:53 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 5/5] zephyr-mqtt-publisher: Add recipe for mqtt publisher
Date: Wed, 26 May 2021 21:06:23 +0530
Message-Id: <890cf78e498f6993530f813c3ffd185e61711748.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

This sample application provides an example of using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb b/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
new file mode 100644
index 000000000000..b4e306742e44
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/mqtt_publisher"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

