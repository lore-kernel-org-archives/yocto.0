Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.75.1619200994475063745
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 11:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RlBP5UTQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id w3so75167463ejc.4
        for <yocto@lists.yoctoproject.org>; Fri, 23 Apr 2021 11:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4olvDceXFqF1P52SmMddkUhP4LvIIT+Z665irrkI8LQ=;
        b=RlBP5UTQV8NTbdFyU4RGP2990T9zFnOebWXUndd6kctWpLIS+ePsTo56V2rOrXY7iC
         eyCUhuZvFfsRQp8YDUI+ocGm+sK30IIY6wY6nMo7qfhLdqfg5iFYLBQZi6a8cfDroEcY
         QFX4ZB0Lf8L4c1RB6q8e7qrQrS5FcPL+PT+AmQ9j95ksz1DW+kSNBHlDA6N724r4FOoJ
         MCnLtKS6JDfP8sMgBAA9R7KduetQxF19nJarA5M2mTa2IPXjv0IAz0Jbc1J4DX56c3DN
         Qm1TjZ/eCtXVolE2duQ2ecOGbvDU3BTkiIphUvjYeQCmVDJ7I5kxmV1decChVyQ2gJZm
         kKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4olvDceXFqF1P52SmMddkUhP4LvIIT+Z665irrkI8LQ=;
        b=QD1b38af1iuld8EPVJSr1jRgOYQwnYpgBCzu9/lVCAfsE2MsjkCgNd7Y31/uf9U38E
         KbyaRgMIo9v7RPddlcLgi11CAX7g6dNSs33ulv72oonSaUSvt/rxFHaGdPPXz4SSllp1
         IDSjyL+CJLCehF0SG0Gk7QdSjK4psAeHnZFsNM8DW6UE7/gT1frI9nIeLPbvIejIg080
         XgoG61iQLqeXgP0MJUo1h4k0q+XPaPm4YKFv3GJrfmvt+8bxdMMvtezIKgdXldyRQkJb
         WUGC80BSSRPBExg2zF9Igsz+tbyDNMqFBz+JePA7eOnzLoKZmzpOFOagZBFydlx8amI+
         ZRZA==
X-Gm-Message-State: AOAM5311UbSW99Q6RXFOvSbbI3R0ANyHmAfrPPiiZ8fvyF3p0l8zxMOj
	sKefqU3Ev/8k7ICsJLoklcCs/lHEt8wWzA==
X-Google-Smtp-Source: ABdhPJzSCMJpUbGnv/5BmyBULCB2eO8ghxlCwraqA9Im37bgceuK5P0/ZUk3leIcRSbcHBxP1Psf4A==
X-Received: by 2002:a17:907:b1b:: with SMTP id h27mr5614210ejl.421.1619200993102;
        Fri, 23 Apr 2021 11:03:13 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id bm13sm4604142ejb.75.2021.04.23.11.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 11:03:12 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 4/4] config.json: add a target to test standalone X11 image
Date: Fri, 23 Apr 2021 20:02:46 +0200
Message-Id: <20210423180246.706715-4-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423180246.706715-1-alex.kanavin@gmail.com>
References: <20210423180246.706715-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index 6de85a4..b38bc61 100644
--- a/config.json
+++ b/config.json
@@ -751,6 +751,11 @@
                 ]
             }
         },
+        "only-x11" : {
+            "MACHINE" : "qemux86-64",
+            "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk core-image-sato:do_populate_sdk_ext core-image-sato-sdk",
+            "SANITYTARGETS" : "core-image-sato:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext core-image-sato-sdk:do_testimage"
+        },
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
-- 
2.30.2

