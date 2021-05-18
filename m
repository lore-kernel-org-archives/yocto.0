Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web08.7086.1621337322405262023
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 04:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C8noPkUf;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id w4so11102642ljw.9
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 04:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pv5VyOpnd8V2ldDz+nQBGEdD6ocel0iPbmv4Zod/GWs=;
        b=C8noPkUf9Na01lfdtiHEUryTowgKhiDBaaTZV3jvxL3AMoEXHRkaTIJVSzZ48WiJKR
         nnt2vnsTexWC0k/vLpDPKi5m6q6APZ0zGdKDd+zic7PK4uJPwakW+UnA2ayznU2mhRr7
         GtE2ShaDMKY5RKTiS2SC+4slxydcdP2MQkVgJfKu148AYcxxoMAuzs80R6mdd4HB40zt
         A1xvkBqsKvehUls5b1EAZvu2cX13YGctBLAGjRoAU7iVxFaxsMA5fD4FMITTbt2dcSew
         p1lF753JXDfEm8222nt/Qt5/TAzNGx45BDEsdn/R2ItP5rj3XUPgXfHP2lfIJAlp+Ds8
         /cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pv5VyOpnd8V2ldDz+nQBGEdD6ocel0iPbmv4Zod/GWs=;
        b=RQ8Cd9OgmXc+U1G45iwyZjsbCfVLIkYW2oodBZjglyPVqV1szPxQWWDOITIPGn+16a
         aI7z1+zdxXCnyiKkA27uYyCezLHDUpYX6VwlLXBBuWifFoLdHSJNl4VWvhnMl7yajVHZ
         ++k3Xqd9k7T7LT97m+h0SCHqLhMlfnPtFOznMkCbtytuBTVhuEjYQarNJL0zo/Pv+gSS
         rwkT8j5ZhUc21+wPDkCVXJ7RKQ4ostYY6GTLqlXlnrchmh0Wg23OUvLqDTjsnCH51sO4
         GfX2d96F3ilNMuvAKIUN52gyzCSjTurfctoT++xrMO0q1OF4AoyP5M+Lc2STgyAMh2/S
         LHhQ==
X-Gm-Message-State: AOAM533kiQCBjQgKpTdIG7IsAK7mZiqtCizcoQDjSYRLFwYHgBEFOf8n
	mW2Ob09rrUP3o4tLx0cljpROcSawqT4I9g==
X-Google-Smtp-Source: ABdhPJzyCUNjcqjpX6tZ9wdOabwb5o75u9Lzq8rnM+7/g0MERgIGD6p6Q3Rdx2a342kEyjv5H2FPkQ==
X-Received: by 2002:a2e:8797:: with SMTP id n23mr3694013lji.248.1621337320493;
        Tue, 18 May 2021 04:28:40 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id b14sm765968lfb.111.2021.05.18.04.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:28:40 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 2/2] nrf52840dk_nrf52840.conf: Add nRF52840 DK support
Date: Tue, 18 May 2021 13:28:03 +0200
Message-Id: <20210518112803.2548979-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518112803.2548979-1-zmuda.w@gmail.com>
References: <20210518112803.2548979-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Add support for Nordic Semiconductor nRF52840 Development
Kit board.

This is a generic MACHINE over nRF52 SoC family config
plus PyOCD flashing ability.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/nrf52840dk_nrf52840.conf | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 conf/machine/nrf52840dk_nrf52840.conf

diff --git a/conf/machine/nrf52840dk_nrf52840.conf b/conf/machine/nrf52840dk_nrf52840.conf
new file mode 100644
index 0000000..0aa50e0
--- /dev/null
+++ b/conf/machine/nrf52840dk_nrf52840.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: nrf52840dk_nrf52840
+
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52840 Development Kit.
+
+require conf/machine/include/nrf52.inc
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
+ARCH_nrf52840dk_nrf52840 = "arm"
-- 
2.25.1

