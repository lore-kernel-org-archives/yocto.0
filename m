Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6183EEB64DA
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:16:12 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.23081.1686845768186019111
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:16:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=oSQXIhKD;
 spf=pass (domain: baylibre.com, ip: 209.85.167.51, mailfrom: pidge@baylibre.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f62b512fe2so11065434e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686845766; x=1689437766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89m1PSuT4hqTRFBIhJfViNKhaGbuSlwRuFueA7h6BCA=;
        b=oSQXIhKD7vCnNCWAsDKM5uI6mFeNHneAZf21TFQXxM7Wo4FIm4c7WGK71wSAx6lDhk
         MSl2HzQ/1Ud83Q9R1YwC7VGQSNCnkFCqC0FOxcKYQqDFvc9cHBH0m3NG+z3AyMsuBwtd
         xnbDh2BdX1tEaJkGpJW8+79Ns8s8KkRl501s2OLuiq8BFigMSyIWzkXa+D8+dRh6JAfy
         x3cNlTRMco48sk7PphcmFDGCI5S5DkZEkZv1jfQcp/55yS8ASgkNgaEJSINBOaSaso/j
         DTXgrYn9XwARXTTtgeUNOvMmrwOzH6qtcAlPpIAMSSnP/+SqogwyjpAc5EG+ZkzApdze
         N7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686845766; x=1689437766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=89m1PSuT4hqTRFBIhJfViNKhaGbuSlwRuFueA7h6BCA=;
        b=DilWc/rObwLwnx4Uh0wvfpVlONYCKYXE5oh9LOaa5HuwhL4GZSH/bTWhE8/C5o7x3P
         tI4SyrIfM1KJoxB8+YHO0KV4JAkqsubr6iLD5s4yAndLSfACZku+/miz+M6SLHQrGzCk
         2z9gPQxTWGrKb7roQ/6AgI8fbodIj7zFr3X5u/Rd5ZsuJsHyBH5eUQXgPaCMHaT8C2ZH
         d3b4VXoIRDgH4AKElPZHsnFFi7Zcf9aH1QjVd30i4Mfz4NO38/yD0adGZlomZUjdPlqJ
         86e1l/uNsOVLl/uMiF3I5IV0hCibvp0sRfWZFGgE1OO8Icu7pWRCM+G1u4lFkPtampkw
         snnQ==
X-Gm-Message-State: AC+VfDytt12qbeF7QTQBuSB/jGOjX4UpaPm6qnyMCNnmXrjjC7zx9LJc
	2azlbnJ9lhrq7vqfVsAAMQ5I84AwxS5gUlEBlrE=
X-Google-Smtp-Source: ACHHUZ6Bt2hr14lBlQcE3/zwlJ3Ow7nibcyylpVT2SdQp/hfqRnf5zufGrqd4nPytPSpWRSESwgHrg==
X-Received: by 2002:a19:ca12:0:b0:4f4:a656:246f with SMTP id a18-20020a19ca12000000b004f4a656246fmr8960397lfg.18.1686845766008;
        Thu, 15 Jun 2023 09:16:06 -0700 (PDT)
Received: from tapa.fritz.box ([194.110.145.180])
        by smtp.gmail.com with ESMTPSA id q3-20020adff503000000b0030fa3567541sm18308709wro.48.2023.06.15.09.16.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 09:16:05 -0700 (PDT)
From: =?UTF-8?q?Eil=C3=ADs=20=27pidge=27=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 1/3] wayland-utils: upgrade 1.1.0 -> 1.2.0
Date: Thu, 15 Jun 2023 17:15:59 +0100
Message-Id: <dbb196bee808f3ecf1a085ef099cdfd72bcd0e8b.1686845688.git.pidge@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1686845688.git.pidge@baylibre.com>
References: <cover.1686845688.git.pidge@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60313

Signed-off-by: Eilís 'pidge' Ní Fhlannagáin <pidge@baylibre.com>
---
 .../wayland/{wayland-utils_1.1.0.bb => wayland-utils_1.2.0.bb} | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename meta/recipes-graphics/wayland/{wayland-utils_1.1.0.bb => wayland-utils_1.2.0.bb} (82%)

diff --git a/meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb b/meta/recipes-graphics/wayland/wayland-utils_1.2.0.bb
similarity index 82%
rename from meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb
rename to meta/recipes-graphics/wayland/wayland-utils_1.2.0.bb
index dcee87e2cd..16a5dc072c 100644
--- a/meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb
+++ b/meta/recipes-graphics/wayland/wayland-utils_1.2.0.bb
@@ -10,9 +10,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=548a66038a77415e1df51118625e832f \
                    "
 
 SRC_URI = "https://gitlab.freedesktop.org/wayland/wayland-utils/-/releases/${PV}/downloads/${BPN}-${PV}.tar.xz \
-           file://0001-wayland-info-Fix-build-without-libdrm.patch \
            "
-SRC_URI[sha256sum] = "9e685863025b4feade36d53bbc8e31b43e26498be743dea84c7a84912959410a"
+SRC_URI[sha256sum] = "d9278c22554586881802540751bcc42569262bf80cd9ac9b0fd12ff4bd09a9e4"
 
 UPSTREAM_CHECK_URI = "https://wayland.freedesktop.org/releases.html"
 
-- 
2.34.1


