Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6FBC761A6
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.59679.1680279688461284423
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=YM8/kOQ7;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id v1so23005610wrv.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279687; x=1682871687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDspyC5FaV+e0OU01vOJieXhLvjXZgM/TrrRQx0xrbQ=;
        b=YM8/kOQ7jYkelJgCvsKRW2ynmhSpu0DStfvy8/8GRr8cZoC4qF0/UHA7fNbpWeDVYG
         AKs8bvhLFvYqFneNWSPN51E4sVwDBAtLCQFfSgsLDnorIVQAKc4s/Q1jF6eqNsKK8P82
         I2WDnbkOaOp3j5H9F2U+ZNqhYJLZoyvzz9kEPDb2XmR879S9D687a8NAYxHI1IlkO8IJ
         l/FlcbwwyCEWlmQSd5WXhgyJ5IDQC7Tb6VkcdLBw+PZoVVV1b+ILEkRzZ5KiCEid3tzA
         UjUQLiOqPIEdsYIBvOVwm3aQqdM7Xqexi+i2l6RhStJxbPwDlnZPUCcTPEd98idEjoQv
         MdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279687; x=1682871687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JDspyC5FaV+e0OU01vOJieXhLvjXZgM/TrrRQx0xrbQ=;
        b=5Qsfcool4Nq8NIAUHBesddepXXoWlMre+Bp8YR4p5JlqPqEI+YLB/jAcmEbaniv1UP
         x8VNQJpTaUW7DVfkHZGMpXL7qY8Cy9gfvRavuUDhAZxRj52RQ4n0aXzyJx/tnixT4X8d
         9W+quMqlB8cA+Jw9g/8qoEDKV0eLkD53cPcTh3277yn5By3YQpJ8CS2MUjEtzs2BiwHe
         ac/d7HTZ3xpvnkyeh2J3md32oJJs03fDmuMaomsS7yHJMLn8Zh+Kb0KJ4GfoENeArjpI
         RM1XXX/AgOzpikVp+EUETZCNoCrMc1mULQDaxks65Iev6uX5drY9j2yOfeNmEs3OYge1
         nUCA==
X-Gm-Message-State: AAQBX9clFc0optIzlI8hGCP5u08/UkniejzAQis5GWbqIaEjMovkP5ak
	HGbKl0v0TcDxF5jTmiHB9mBt77UyfcONpnPQ
X-Google-Smtp-Source: AKy350ZjVTOUmd9hWVRHpfO9jE7BrwyECjpuD6d0H4EAG7Kd2RPhm4AMKo4+ldsXcRIUr1kn+u3ofw==
X-Received: by 2002:adf:f546:0:b0:2db:9526:b6ec with SMTP id j6-20020adff546000000b002db9526b6ecmr21216446wrp.58.1680279686851;
        Fri, 31 Mar 2023 09:21:26 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:26 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex.kanavin@gmail.com>,
	Alexander Kanavin <alex@linutronix.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 11/16] go-cross-canadian: use gcc-crosssdk, not gcc-native
Date: Fri, 31 Mar 2023 16:20:37 +0000
Message-Id: <20230331162042.1801766-11-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59580

From: Alexander Kanavin <alex.kanavin@gmail.com>

The recipe was building native go against build host headers and libraries,
and then installing it as a nativesdk item, which is entirely incorrect. This has
been working by coincidence (go generally uses C and C libraries lightly)
but with go 1.20 this turned into hard breakage.

Also nativesdk sysroot was being passed in incorrectly.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.20/go-cross-canadian.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/go-1.20/go-cross-canadian.inc b/recipes-devtools/go-1.20/go-cross-canadian.inc
index c1aa987..5a80cef 100644
--- a/recipes-devtools/go-1.20/go-cross-canadian.inc
+++ b/recipes-devtools/go-1.20/go-cross-canadian.inc
@@ -21,10 +21,10 @@ export GO_LDFLAGS = '-linkmode external -extld ${HOST_PREFIX}gcc -extldflags "--
 do_configure[noexec] = "1"
 
 do_compile() {
-	export CC_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gcc --sysroot=${STAGING_DIR_HOST}${SDKPATHNATIVE} ${SECURITY_NOPIE_CFLAGS}"
-	export CXX_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gxx --sysroot=${STAGING_DIR_HOST}${SDKPATHNATIVE} ${SECURITY_NOPIE_CFLAGS}"
+	export CC_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gcc --sysroot=${STAGING_DIR_HOST} ${SECURITY_NOPIE_CFLAGS}"
+	export CXX_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gxx --sysroot=${STAGING_DIR_HOST} ${SECURITY_NOPIE_CFLAGS}"
 	cd src
-	./make.bash --host-only --no-banner
+	./make.bash --target-only --no-banner
 	cd ${B}
 }
 do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
-- 
2.34.1


