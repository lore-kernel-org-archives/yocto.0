Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.32471.1623045663989083996
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:01:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=fJCB8EDA;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.210.174, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pf1-f174.google.com with SMTP id g6so12294668pfq.1
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vpTQufneovlSeo/vHqL/sQRHBsmX4Wp20P68K5NbexE=;
        b=fJCB8EDAL+sv0rctxcTrJzETB7zh/HQY44rh/8YVuX4jmS1XS8xm9KCj3k4cKiuMHo
         OdHNKcYJ+wYPuFxjwK2FUaZZSX/3G6yfkj1HPu79KDzOFlgizz5Yl7yJDqcXbNGf/3bS
         VW7JECd+6KMOKhrq7P+HQ+LDU2CivLtQTUjwhxSp2hh8wkquedGX8t75A4Ssp/0zCGeM
         NJCmPSwJYaiX973qnKHI55QmpflZNFxVt0QYrGmp1oAwDA4y9tvPzZi7PesqOy8aymgu
         FtykmlfAPsTcM+8MATQgwv4ik5OT6fAYOW2YGPtauqvqu6FZ3Aw2q8Fz9dIWvFkmFu8L
         /8cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vpTQufneovlSeo/vHqL/sQRHBsmX4Wp20P68K5NbexE=;
        b=TQYWe+m8svu0MMzLEROFfjjFKvgEc+snuetvLqOYsysaivD7wE0g1zQ7JV29pu3zbT
         4A+EUn7O3BI+C8urLTexCWEA1m94nSEBaBXX8KBmelT/e7bfdiVX8vHj68sFMztkGzNs
         dxeuqtcEd24LezQ6mRK50K5qe9CWVcATANVpyojDra1CSMV9OvnIgnuJ+dywK7KIVKef
         J/bC8vd/JZ4aJKKOBm+xhOqhBbB64+ICrF7/fmyljjPC7nmje+TcdZKEIIWrGtMXRNJk
         09nO/ALkvofQTOkEpQIXXX1NTfPc1hV+W5E4fU6krgxwAHhBO6+5k5wQItXvDd6+1jEZ
         /ngg==
X-Gm-Message-State: AOAM530cFg9GPxNwBzbdjUymb1+NHG3+T/NYBjqMXT+bae9BKIEuonPq
	VM4eHGzKgVhsqnZTLUQ0+zi3mX66Ym0EtQ==
X-Google-Smtp-Source: ABdhPJzywxNWRjOh6SKRyfZT858tr0PjoP6jkm9OhmuwH9MUS1NrpZMwke+iPwdkVn0wO+uHKwuTTg==
X-Received: by 2002:aa7:93b8:0:b029:2e9:df8c:d5e0 with SMTP id x24-20020aa793b80000b02902e9df8cd5e0mr15958737pff.19.1623045663314;
        Sun, 06 Jun 2021 23:01:03 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id z19sm10650964pjq.11.2021.06.06.23.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:01:02 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 5/5] zephyr-mqtt-publisher: Add recipe for mqtt publisher
Date: Mon,  7 Jun 2021 11:30:44 +0530
Message-Id: <73050faea8efe9d6933a07fb58b517319bbcc42c.1622535742.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
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

