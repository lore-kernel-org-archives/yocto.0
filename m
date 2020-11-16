Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web12.35721.1605538792020447837
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 06:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=qBb29/RD;
 spf=pass (domain: burtonini.com, ip: 209.85.221.67, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f67.google.com with SMTP id p8so19028572wrx.5
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 06:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWioXEjjEuONKqZ4yzo8s0xei5t/zLBdhJqAAw5LKwE=;
        b=qBb29/RD/0aOddmS41yF65sbmCBtzW+TGsR+7jh0eJ7xSrdR8A2Fi088jeMLUJApea
         iZLNkclAI49TucqJjIBlsZOHFi8GDUcWqxVpF6kDkwr+vbBuwgqXEa4GUuiu0oQmsz1b
         4xuZnlejDkCVYQH4zUdtJTtkTrzCHos7dtHvcjBxaOjHinM7L1QWv98TpjsBqFK2A2J4
         fhYuPolD/Ycc1/hpdbIKZKOlkpFC1gsMcyyUi6V/XeUFUNRM3U88QHe0cWYgpH0tr80G
         eUtFcV9MYodm4hBnMbrJk9stBtgfZBMF/2FZjwm8EeHAFiwHwHIv1GU9KGYMMh6cQ9Za
         xkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWioXEjjEuONKqZ4yzo8s0xei5t/zLBdhJqAAw5LKwE=;
        b=FTvrixiQZzBsEFk8UTRMtOskVjBKrKETqqecDIEXeqgIQShWrp48odGWO63wntYoIq
         zuExSw52EPZ4LjhHgLOS6JhodYEcbBZskMP3sGhK7ad8F5KJtIXjUf13N5ncsW87IcTy
         YnHEKbttqX1p8RfEdZUerXWBlq/LA2QOhVdMXrU8X+hI3QQHWWiGY3rVoC003Crr3lCY
         3qBLMF+RX7MFmPsGD99k6riNKHoQfKf9GqMUk9ZrXbJD7EybRuDpKoPuqTh2CQqt71HD
         bohkxQu62gJbfP3qVoHKNRfMrV0rNp/yIJ3v0CpuB9q4lrwXKoh8s6n+p9ppz+dNGWS0
         MDtA==
X-Gm-Message-State: AOAM533+YgVJyiTsGhdcbODBwPB9sJ34/V7wYcbfHQ/n16f2ajRTws0Q
	74VHATPQPx7WO5aPXvRucKGUlJADChOwvYMF7XU=
X-Google-Smtp-Source: ABdhPJxPYU0TwI5Tf85ROidZ+N/3wzWyWgZRYSdy68/6Z6rT0VOCNt0ADQJ7ONYqJ0EAXZsYnsgf/g==
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr20828286wrn.124.1605538789817;
        Mon, 16 Nov 2020 06:59:49 -0800 (PST)
Return-Path: <ross@burtonini.com>
Received: from localhost.localdomain (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id u5sm18540057wro.56.2020.11.16.06.59.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 06:59:48 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper PATCH] config.json: drop redundant meta-kernel mentions
Date: Mon, 16 Nov 2020 14:59:47 +0000
Message-Id: <20201116145947.7318-1-ross@burtonini.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 11a2664..c57260a 100644
--- a/config.json
+++ b/config.json
@@ -275,9 +275,8 @@
             "TEMPLATE" : "ltp-qemu"
         },
         "meta-arm" : {
-            "NEEDREPOS" : ["poky", "meta-arm", "meta-kernel"],
+            "NEEDREPOS" : ["poky", "meta-arm"],
             "ADDLAYER" : [
-                "${BUILDDIR}/../meta-kernel",
                 "${BUILDDIR}/../meta-arm/meta-arm-toolchain",
                 "${BUILDDIR}/../meta-arm/meta-arm",
                 "${BUILDDIR}/../meta-arm/meta-arm-bsp"
-- 
2.24.3 (Apple Git-128)

