Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web09.32330.1623045654317971726
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=DgkETFxK;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.174, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f174.google.com with SMTP id q15so12980955pgg.12
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B9I0825YcvuXmEa4pJLfpUK95Bm/0LZmWoaYOotHuvM=;
        b=DgkETFxK/I/GVK8kFELL35xB83k3ohzKJtVhgWbZb6tGWzyBINn0zLO5yzMALv/zYv
         QQ13qYDwFgcPa6qrscAMvWlTo2YhTUFmW1PgiZLEFsxEBrW6AtZeZNB5bg/8LZ3BZx9+
         m1GSO9Lwc/kbBVX4QaFSECeYYFZgRvFN4iKsS5PDwJJuB0pgc+HWIhMH5OhyT7ArC4OX
         Q+OsfOI+R69tFF9VznGAkRoXL/T9Mv07M7uTAShwE9u1Ol18mzg7iXrTmZSc7DEOd7C1
         qUVW2IQVcsi+a5PiD9NFjjjfGocMGkI6P3QhWN5tm3mua3F1jeAeNx4HCf5Qy8WILFPz
         73OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B9I0825YcvuXmEa4pJLfpUK95Bm/0LZmWoaYOotHuvM=;
        b=aaCS8wfFrILXLkAHz8qYssnu8GMLKVqxZJOcAgrPxvpAgZbfUER55QAwrM4XmJAt4a
         BnKHJI8DuFPuN/V17YKn2Q9nIakdNkAein1Wv/lARLLZG4xbxZW/fk3cjeMobq2h8JSd
         qlTJ0xSUE7DCD3xGd5dEwEy5XyvrO5OObtEBwlkJWlJIqQ6cbxmff7U9GeQcFsdWXS1a
         CnzRsw9jzW4dOyKlymDwJKZYZImPZGUlTuNTftNby/lWVeCZsNuHHzWW6TV0DVbeVJ0f
         kAhAU4z5fN0RiRMJRbGlSYypIKbY9gKsENdmt0g4yipwUDkAEu3KkN4JQLSgLSHqxIJa
         j/gg==
X-Gm-Message-State: AOAM533NZQqBjp61Ot6OOogCY7cMfq8jEfpXLrVib6VnMqxIl5u6rDk+
	VCZvYWGqBnDNlLJJTxLzDt4gXYlk36pOyg==
X-Google-Smtp-Source: ABdhPJyZBwmgZ558gzH4rmrhi0QKfCNVKcV43I+olqHmHLZdWG39kTFjzw2rmIiteUCDgubeKT3X5g==
X-Received: by 2002:a65:438d:: with SMTP id m13mr515285pgp.87.1623045653672;
        Sun, 06 Jun 2021 23:00:53 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id fy16sm10860601pjb.49.2021.06.06.23.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:00:53 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 2/5] zephyr-echo-client: Add recipe for echo client
Date: Mon,  7 Jun 2021 11:30:41 +0530
Message-Id: <227cb523d0eeb94a0164a0201d03f8f5b049d87a.1622535742.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
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

