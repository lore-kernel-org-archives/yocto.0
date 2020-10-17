Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.13761.1602944292812235777
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 07:18:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoNj3bC8;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id q136so6144115oic.8
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 07:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=mCjnOFkzepBwMyQKRv4Vi/JwErWA6Av875eAKnQHTjw=;
        b=ZoNj3bC8+rhtT+1R7ha92Grv8uyu5VwgQI2TlC+2G+NIRVzrTlPAm3tYcGc1tC4Urr
         y/h6vC78wZoF1fth83ULbUB9kNXo6PY3yUz7ASHi20kNtc5dCSyEJz1kgaSj2pf6CS/3
         JAZCVVhZVXSer3HYncJbBbGvq5gQ/6XMxoORJ+ptRadMsB0RuVJjb5rCKOgv6gBYjT7M
         FiB8d9p2pQCcaeebJVJm5bAhAkCBcs6yngWJ4L68k+Ekiv/fxaOWbdLb/0zKiuJcBM3y
         eZVu8ovuI9qL9KZmu3Ua/bphBzPaW1eDYh8EmSThPoPgOK37+0r/VXi72VAPl92OkzR8
         GfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=mCjnOFkzepBwMyQKRv4Vi/JwErWA6Av875eAKnQHTjw=;
        b=SUMeF5l09cYuCUAHyDc+yUVJN5F1hdzEf3kDCSB6NlagNjbzXogiepYFUe1bfmnQs+
         OoGJabJI0LWjv9KSJhHI7FvFanNXTQdmIWgFYXn84XB2Sw+LLEV1wo92N3SnFqaJlEQo
         SWCVPu3Sz7RISfpKHbA2qArYgw/qWha4MoVAwRAc94zUzU3hQWq6ZVB3Mi7rjrQwkqar
         IF9L/bFypiVk/sxMHIDdUkGpeFcK84hVeT4Lom6HmunvfonLQ2lg+e29znLw+96zDVe3
         XXMFbNu58l72dkSZAbkscPjU3oJg+Sd2dckDimQ9DYh+g18yh4pJ9yziGWCAzF2J7fNA
         Sdng==
X-Gm-Message-State: AOAM532BNSWt+xpgruIAL0PlPpwyKlPg4cBqptndY6TX4nPlF67KPYO0
	viPGkK7iMpoktVo/8V/0aP52ewaTUxA=
X-Google-Smtp-Source: ABdhPJyKfsVvirGWtYACONJIArsKpYzDDcUgdYP1JYTe92YQGaoxzWmq+KFdfWe4vJ4ilc4I0yCsdw==
X-Received: by 2002:aca:b03:: with SMTP id 3mr1195076oil.115.1602944291896;
        Sat, 17 Oct 2020 07:18:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id y13sm1908502ote.45.2020.10.17.07.18.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 07:18:11 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 1/2] ibmswtpm2: fix QA warning
Date: Sat, 17 Oct 2020 07:18:08 -0700
Message-Id: <20201017141809.20092-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

ibmswtpm2 doesn't have GNU_HASH (didn't pass LDFLAGS?) [ldflags

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
index 8054226..a892761 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
@@ -16,6 +16,8 @@ SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb0
 
 S = "${WORKDIR}/src"
 
+INSANE_SKIP_${PN} += "ldflags"
+
 do_compile () {
    make CC='${CC}'
 }
@@ -24,4 +26,3 @@ do_install () {
    install -d ${D}/${bindir}
    install -m 0755 tpm_server  ${D}/${bindir}
 }
-
-- 
2.17.1

