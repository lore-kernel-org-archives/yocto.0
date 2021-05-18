Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.7806.1621340994500164088
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 05:29:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fd/+8QPb;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id w4so11312861ljw.9
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d91LCyCZ+Lux6Z5VMM08sU401suXoqd6NhMk4QP84Xs=;
        b=Fd/+8QPbp4cCfW7pG0Og88nNt3IvCjFaeWq3a+9HVIu0N5DRZ15kw3l0upluoWfiJN
         8G63ypPznsh3xGxYNFAwam09ZHdgX/xIcxZMdnXNvSTMPrOU8vS3OF2PNeR8Y+9wX/hs
         tFhs3pxRNKUIZNOaRV6lLn52eRLi6zPku1GIU5WYwzZuha33xJ4aQmzmVN/s1xhIQ4I4
         Ikg9WGsyDrFTI4TJ36AFXgHHvM+09rcqDGUm8gisrjipRpIOZ0Y3ogqXTsvaUal7Lcq9
         baC7o7hD2eJch/HLrCgl9E4x2BIOHxn/ClFKkOBVCpor+cIlFx3ZJCz7rOVfeir0KlLo
         n1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d91LCyCZ+Lux6Z5VMM08sU401suXoqd6NhMk4QP84Xs=;
        b=CaC9H13OmhAMIurvZK1c/jAIag8z/rWAX1TuUr4WqjB2lKm1SVkrKUCqk1m9Vfac9y
         a59wg1XSi1DNhON0VL20e9GLpTy3+lS03ys5DHIH8zEbBeP8lvPVyVD/yKGcnmQin2rW
         aUdKbkM3uk/Cd4A4B707qKsYrUiwF+2BGL4xRlStyVBsAOdDDmabHAFTI8r9XWZmHqx4
         71vWHiW7Ska2dTWTDfQTlsV3EnfBMBWV3VbAhJ83fRhm4249J5ym7ofNLniyP1gwyk8m
         c9JJEjTwH/ojHvVBnRj1Ru0lbltVZ0LjQpBhlu2TWbSYUrasPmeiCJAbiCO3TkFbiZdY
         0Z9Q==
X-Gm-Message-State: AOAM531siOqzIHkH8EOas/1b55xSxbUexr41VIca3y34NknlmcrzAX55
	f0eu5eJqhktSdlo3uGxTRFGQc45mhU0e5Q==
X-Google-Smtp-Source: ABdhPJwCQJMgMb2FbScpdRpWUizYYpxosOi+d2hpH31559vUzFejE57yoFD4r3nwaqTFmOpbldZtoA==
X-Received: by 2002:a2e:a792:: with SMTP id c18mr3941464ljf.179.1621340992565;
        Tue, 18 May 2021 05:29:52 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id h13sm3203964lji.102.2021.05.18.05.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 05:29:52 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Zbigniew Bodek <zbigniew.bodek@huawei.com>
Subject: [meta-zephyr][PATCH 1/2] zephyr-kernel-src-2.6.0-rc1.inc: Add support for zephyr kernel version 2.6.0-rc1
Date: Tue, 18 May 2021 14:29:26 +0200
Message-Id: <20210518122927.2554655-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518122927.2554655-1-zmuda.w@gmail.com>
References: <20210518122927.2554655-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Zbigniew Bodek <zbigniew.bodek@huawei.com>

This version can be selected defining
PREFERRED_VERSION_zephyr-kernel ??= "2.6.0-rc1"

Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc      | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
new file mode 100644
index 0000000..6ea1593
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
@@ -0,0 +1,10 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "v2.6.0-rc1"
+SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
+SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
+SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
+SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+
+PV = "2.6.0-rc1+git${SRCPV}"
-- 
2.25.1

