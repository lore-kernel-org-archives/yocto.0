Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web09.2344.1607285740627924940
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BxTC+xVI;
 spf=pass (domain: gmail.com, ip: 209.85.208.195, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f195.google.com with SMTP id s9so12751463ljo.11
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rpx3pnka7rS84H30ez45lrhgL3ozEQ971awtnxaSGzw=;
        b=BxTC+xVIuoKm6nxVFQsm/v/dx8jQSmYxSqhce28hXLJ9vHlOr/eOy9GolbV4PA380+
         pcPWnnlheur6AczSoygW6bIONOrfkO1e7+J7aZ/i4DySSugN21mEGN2R2/k4/PkpDz8L
         R17ubJvRCspTuzVgJl6hdwR+lDva4t2Cz0+BcXrJ/gPCLkKES/A42qJPX25vvM4zQLpd
         06bhH+5ddaHxRIXnTsws2rzf61Kk+zG+CgOfRX9Tg0iBa43HJw7AYlEIIuNagnNavj3l
         uYA21mR6+l2SMz01BtEQQyl38QpgiXyXtMnLuIFPanSOshZR/7T/K+rvPqMTbrGIUok9
         3gZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rpx3pnka7rS84H30ez45lrhgL3ozEQ971awtnxaSGzw=;
        b=Eec1WgULaSDwkPrpKIO6EFZAd5wIxy42cocljYU5b6qW7VzUQ8J7aYo2/dbKy3HN6p
         hrgvSnqx1bV8WXnQHpRxMvcYaCSFPuEdroMS1xew579tRo2nNsev7PZbtFIYdN7+M5Yt
         WMYWyqaGo6ffGwMyr1uTnIZcQ1bttB/C0fH/oEvkK4qMjUPuyQS1McuVMS7H+dlE8wjg
         1runGdWN5CDXPXXAuZI+SGG4+I0U1dzUUePo4cVB9dxGreC2gq4Gci9cunvoesQIEgob
         XhTnJt2QtMoRJqhQhh1y+I41VrQjSKC9E3Lw1WiCWaqMnV3J55QOx4Ysw0AttVIGwByG
         VOCA==
X-Gm-Message-State: AOAM533PQTYAvJcL16+RYQ5H3Q/VKPTWzjHhQIM0FZbOWwm7MQbt+KN9
	CVtAbrjtsOubwAeN4SJrBsdMogSekaTTIw==
X-Google-Smtp-Source: ABdhPJwwES4O4t7KRgRhAhdpuFKBpH/VnrcPWcEXWh7XEA3+trAV5PCORgu73YmIPhbCcDCkgQg2lA==
X-Received: by 2002:a2e:9cd4:: with SMTP id g20mr7155324ljj.174.1607285738838;
        Sun, 06 Dec 2020 12:15:38 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:38 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 3/5] conf: machine: add 96boards Nitrogen support
Date: Sun,  6 Dec 2020 20:15:19 +0000
Message-Id: <20201206201521.3377-4-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board is based on Nordic nRF52832 Cortex-M4 chip.
The support depends on Nordic HAL. It has been verified
with zephyr-philosophers and zephyr-shell sample applications.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-nitrogen.conf | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 conf/machine/96b-nitrogen.conf

diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
new file mode 100644
index 0000000..d1905f2
--- /dev/null
+++ b/conf/machine/96b-nitrogen.conf
@@ -0,0 +1,7 @@
+#@TYPE: Machine
+#@NAME: 96b_nitrogen
+
+#@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
+
+require conf/machine/include/nrf52832.inc
+ARCH_96b-nitrogen = "arm"
-- 
2.25.1

