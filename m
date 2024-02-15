Return-Path: <belouargamohamed@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CBFC48BC4
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 21:20:14 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.3533.1708032007211854095
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 13:20:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aXc4y7Dh;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: belouargamohamed@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41239bbab1aso215035e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 13:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708032005; x=1708636805; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=aXc4y7DhTWiWsC0IYpMOqybh1ZVgYkAHScw7clBVVDlTss/BlJHpzX+IoEXRA6iaor
         LFQIUcVgQzAm6y7aOEh51MdTC9YxtVrVxQ3aPSIfBQXcrfFmM3iB3WOZWlwV15/AhmWH
         hTifJ/r6c23DaRpHQ0a6gMxaayJNVR052AJROEm6TMVHkVoder2pjgB6bIHuiw57Ck4k
         /otiphsiO6HNwJZpKobARoHmGEv2iFIEa2+ZhmQCPMNnaTWeyLQFCUBOJd7RWh+DzsPo
         bhhltq9BP5P8JbZWWnw7O7KUmYaRCH7ipcZ3hIJtI9aBiE2UvkOEpiQoj77/Av6hRdUw
         hwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708032005; x=1708636805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=rLKu4IrzCaWSTbqDRa9DeqJcH1zyj32amswOSko4oZVsZScEhmiDD/QNVdpNKjrMlS
         ltqZxkc/6Lmo6Ua8kLISap0M1CrwcqVquMhj2xjAc3RCHtlFvhrQhrc563iIbpGcJvCk
         yQIEzNnh8Q5S5gXhNMtMTUUZkQAuc9wT0/GB9syJyfgZfICEcecqdVawbkiTjPAL0AAp
         3fI12hHO7ZICFORfCvFUy/b7XJBJ5YvdBa0fE7OO+1z9pbjg+GQMEn/fWeglwf8M/hJd
         BqpOva62vf03/XeZVZtx+xigCbkCEJkJ6zAWepQjHKzW3zj1qeo6u4tDZmMhQxGnprd8
         0VTw==
X-Gm-Message-State: AOJu0Ywb+GD0ZaUDT+k17nh6H10Xq5BSkLcOgkQMm2CiNl6GwONTjC4t
	rBu+xOt3W83m3HP7XyM1mOPCufQPuaNTbwaqmKG6vHTQTzQIrfRJHkqFHkXuB/AFAA==
X-Google-Smtp-Source: AGHT+IHzvlgcJt8cDiVO6sUJcwas8bZqJxEoFx2OrXvnQmuNXTTDJtfOvp1rqP4aIBT5F4EsLoKFqw==
X-Received: by 2002:a05:600c:510a:b0:412:283e:5782 with SMTP id o10-20020a05600c510a00b00412283e5782mr1454514wms.28.1708032004732;
        Thu, 15 Feb 2024 13:20:04 -0800 (PST)
Received: from localhost.localdomain ([2a02:842a:10:ba01:5c7f:415a:59e:513c])
        by smtp.gmail.com with ESMTPSA id k10-20020a7bc40a000000b004101f27737asm276393wmi.29.2024.02.15.13.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 13:20:04 -0800 (PST)
From: belouargamohamed@gmail.com
X-Google-Original-From: m.belouarga@technologyandstrategy.com
To: yocto@lists.yoctoproject.org
Cc: f.lahoudere@technologyandstrategy.com,
	BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: [PATCH] checksec: Add more runtime dependencies to checksec tool
Date: Thu, 15 Feb 2024 22:20:02 +0100
Message-Id: <20240215212002.270094-1-m.belouarga@technologyandstrategy.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 21:20:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62504

From: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>

Checksec tool depends of commands "find, file and ps"

Signed-off-by: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
---
 recipes-scanners/checksec/checksec_2.6.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/checksec/checksec_2.6.0.bb b/recipes-scanners/checksec/checksec_2.6.0.bb
index f4a014e..1ba3721 100644
--- a/recipes-scanners/checksec/checksec_2.6.0.bb
+++ b/recipes-scanners/checksec/checksec_2.6.0.bb
@@ -16,6 +16,6 @@ do_install() {
     install -m 0755 ${S}/checksec ${D}${bindir}
 }
 
-RDEPENDS:${PN} = "bash openssl-bin binutils"
+RDEPENDS:${PN} = "bash openssl-bin binutils findutils file procps"
 
 BBCLASSEXTEND = "native"
-- 
2.25.1


