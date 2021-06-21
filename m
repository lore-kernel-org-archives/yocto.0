Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.42506.1624250486272124023
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 21:41:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=mG8PAhKZ;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.214.179, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pl1-f179.google.com with SMTP id v13so7828350ple.9
        for <yocto@lists.yoctoproject.org>; Sun, 20 Jun 2021 21:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t5n2b3pzDPEJZxNSjR0pbJ1wv4B/QxQeogbZQkOTErM=;
        b=mG8PAhKZarUjNwWq9lSi7F/pmuK5FNvJGYziYvhAZi3xpfxMG605Ram9VcqRUqPSMi
         uMFBsbAJHK4itgM1HbjdV5hQiaXTZ8vXh2UojoM19ajVUEaeLqW4lxCVhHjBF98Ip4QD
         rrrrR0bZoE6/5jxceiwcStl14588Zpwy7v9suc4MEwlsQjAp557VXZWVgpJbXPM9+UDv
         M6sKLGSbXiUCXkhADcVXf6ANil5E60HTma2zFFWX8hzPSWQvluBgm7W0RpVOEz3sd6u8
         rlwVqs1huxqZsFvjAyPJ3XKdUOqyJSa6o/DVPAJb5MkoZ4AJOu7cEkm6gMUq6cSXD9vn
         dOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=t5n2b3pzDPEJZxNSjR0pbJ1wv4B/QxQeogbZQkOTErM=;
        b=VxeNCbMn8LRBK4m8Av1/hUr4BMr1YEIC7IVBJP23HTpX8NOlmnsssIJCeNW+g+UceY
         GggE5SSJlvgUDIzrpshEUwHYsa5Lpt6B33nhUK96jE0hVHKwK/VmSyo7IKulV210rdM9
         BbhzTrbzUHeDcQVEi2w5EW6Q9+VwQFjCfXvjBDM4TjnCeUvakjl9XrHZgV8bjN8rez7F
         cJGca2KFMikWL/uWHp1zkA590/G8CGsrtOrkR1mZcK2ykXfJPE0tdE42SqNdGrls2n8Y
         5UnFJ/FoUXxcI9TsQcfcq53vRm8wCzhDbMWQSFTmKaLfmHoYJXArOq4yAabIbp2XD+YJ
         E54w==
X-Gm-Message-State: AOAM531rlF/gr3p6klngxZB5ny3k6o5vU7GM/Ys/vYTFfyPSLnO/raiL
	FMS8TZ64PbbJVYnUM0FY4dB+DbkpJQ7iUw==
X-Google-Smtp-Source: ABdhPJy9BgN0lzzik1AoJAskQCn9fkxAClKApUID4jr2FtgnquSCrQg71iZWUHNgxA6NgAL5Ao8b8Q==
X-Received: by 2002:a17:902:b94c:b029:117:9c88:7744 with SMTP id h12-20020a170902b94cb02901179c887744mr15838908pls.20.1624250485378;
        Sun, 20 Jun 2021 21:41:25 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.34])
        by smtp.gmail.com with ESMTPSA id d15sm13909234pfd.35.2021.06.20.21.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jun 2021 21:41:24 -0700 (PDT)
Sender: Amit Kucheria <amit.kucheria@verdurent.com>
From: "Amit Kucheria" <amit.kucheria@verdurent.com>
X-Google-Original-From: Amit Kucheria <amit.kucheria.ext@huawei.com>
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 2/2] zephyr-coap-client: Add recipe for CoAP client
Date: Mon, 21 Jun 2021 10:11:12 +0530
Message-Id: <4361215521374e7b7187d0bfa72322262a61b73f.1624250327.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <58d211d0992dbc3b1dcf9c82d82e83fc15001a87.1624250327.git.amit.kucheria.ext@huawei.com>
References: <58d211d0992dbc3b1dcf9c82d82e83fc15001a87.1624250327.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This sample application provides an example coap-client using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-coap-client.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-coap-client.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb b/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
new file mode 100644
index 000000000000..4140c0f89eae
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/coap_client"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

