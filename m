Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web09.12160.1629040578818362213
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 08:16:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EyEBiAqG;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id 14so16485557qkc.4
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 08:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OlhNX8xVe15HSRVlHagHM8SETWo28chABnfBf3vnDcM=;
        b=EyEBiAqG0N/5qmlXV1NjdY+Sjidaf9b1FnDgnR90MjX8y/3YCmO6tulibdfx4H54ew
         8+EAcm17ojWhdsLzEbUvxURmZ/yZbU9IAd5TafiT2qedu052tIfuBCC0nNvRfncqgHVh
         ITFEZjADdbZiHJUL/aj33NDB1vVIdjX7CF93MU/y6DoQl8z0lkI0EGQbigacUHRbjsOw
         ajknCFT5+avai6dp6iKdQFxmCBDcCPEWz+M8iXBJr2HTdXKtQDXSU0IgE1qIypf2GYRr
         br+otH2p4/QEZ72sJnkG7KT268IkfAYGIGlLYmUceW0KEa0DolH00gh5p8s1O3CfX/h/
         5Itw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OlhNX8xVe15HSRVlHagHM8SETWo28chABnfBf3vnDcM=;
        b=ksXP9XSz0xi6MJfq0Sg9S5RQ8SBidLOWmMEgiZ3LAo/XhY2w4tQ5/0cqjX9YT5KQVs
         T4+AfmMWBDdFAoS1X2SNnr2Y3Yl5FQy9cudvp325k6DpR8/epoc6Zc3+hCHT+pKRoTxN
         10bvcr7rdx2KSehvcUehFwL7A646RqWZVPSVTkG7bMEcLL/2n3mMBKMW48IiPA1wNn8A
         fW3DIrOJRIFPlLnA5aA/2zQ1Y4OuAoadQdwLL3B0lGsPJxCL9GaoZEKEkhh/MPk1W7Lv
         YpLge9OlA9P8KpUqdGZZIJ3Yl5DvVzc1z1PxLXLkN1CMYWLLuIZo8KGZ7FEWE+biAiQ4
         9dqw==
X-Gm-Message-State: AOAM532Xy9NcOwhrG/02MqbpbgbwSOR5ILJgFL84b/9BWk4d0m3Jl6Us
	FRiDc7wDDF5VvYXGYDFBoII=
X-Google-Smtp-Source: ABdhPJxcuxOB7FAjIrA1OqLshxcFGiYMCMzb0Aa0yk7ptSFZvYv/FRLN4aDQVb5KyM2OAMuoCu2Q7g==
X-Received: by 2002:ae9:e858:: with SMTP id a85mr5237495qkg.97.1629040577958;
        Sun, 15 Aug 2021 08:16:17 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id w1sm3507987qtc.7.2021.08.15.08.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Aug 2021 08:16:17 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/4] poky: set default kernel to 5.13
Date: Sun, 15 Aug 2021 11:16:12 -0400
Message-Id: <41d4ef4a0a371d1b112de8052140976b43a8f32b.1629040284.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1629040284.git.bruce.ashfield@gmail.com>
References: <cover.1629040284.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

both -rt and -standard have been updated to 5.13, so we switch out
defaults.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c7c46cd226..ae0c52178a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,8 +19,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "5.10%"
-PREFERRED_VERSION_linux-yocto-rt ?= "5.10%"
+PREFERRED_VERSION_linux-yocto ?= "5.13%"
+PREFERRED_VERSION_linux-yocto-rt ?= "5.13%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1

