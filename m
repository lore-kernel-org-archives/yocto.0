Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5302C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 11:49:17 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web09.83489.1657021752051236065
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 04:49:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qoVYXvRq;
 spf=pass (domain: gmail.com, ip: 209.85.208.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id z41so14957584ede.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 04:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NbB2zWUUTdt69ZfHF/GpMY+gXxPxaQbwkbbvi9NJZJ0=;
        b=qoVYXvRq4Yas+pkg3N/QPD/X0HYmLu59tWQ2Rr4NgYQk+Rgg5mOqFsL2iuSl+AgDzp
         u+sGAC4NDDj1D7rHCJ7zeuk7KGI2geoMT9HsxfksKUIBM14OAjuOZ5fRO2v+x8GY5lQZ
         UeWam7PDb5KZo9jF7gGGhOrDdjtIMJknb3gJ/Uq4J9EarR/apLF3c2+Qq8yauLcMpV0v
         NITvIqCeGxH9c/JPz32mz382DMWKjaegWF+7+j8uIyOHipWQqm5RmwzMjHiVmLKvXmql
         zHz6Nv4DnOyFUIX6YYboepH2gWcAoEXHi9QEW19sRwKK28jbZrpYENd5kUV1qwJqAqEI
         NDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NbB2zWUUTdt69ZfHF/GpMY+gXxPxaQbwkbbvi9NJZJ0=;
        b=XJK9/vc7tY1Hgv3PHXJSRGgttCMnNBl11wHw3r7irVFWebfzEPdzz/lbrK4JLw4VKH
         VW3N7PUH24URQ8/b1t95JHySirdssdanA8XvGal4Y7CboGTsjRlpQVNbg72+Fb3X1wSY
         aFQ6h3amZxJOPKOEOizrPA4+qXQDtiYowflKb1bEjQhZRfB10GsdyNnwRbOR4dBvqsy5
         Im1T5BONzlX8EOqwNmgQltnfKNoVQBijHM9Spez92aNyodNzjfePhe5g5GTFhWXmIze1
         MBQrDRlpqlujxXMJVkTDN1467h2fnxtTBPneDWDKz6EmART7G42rmZXDs06fmkV3VpoF
         ru7w==
X-Gm-Message-State: AJIora8PfQe8nnbMPOUFlj7JgZzAhHZK/HRQOISzXGY0No9Ey9ywjvHt
	XVXflL+50+K5qAFh53xaGWJytZwnYN2+Dg==
X-Google-Smtp-Source: 
 AGRyM1sgZo/YMy/dRlqe986e5AegSNsZTNSonTEv6Rq/VAG/GPim76BDELZyNGc8pgkA/SbhiIG60g==
X-Received: by 2002:a05:6402:2708:b0:435:da6f:3272 with SMTP id
 y8-20020a056402270800b00435da6f3272mr44606325edd.160.1657021750260;
        Tue, 05 Jul 2022 04:49:10 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de.
 [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id
 w3-20020a1709067c8300b00722fc0779e3sm15723576ejo.85.2022.07.05.04.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 04:49:09 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Alexander Kanavin <alex@linutronix.de>
Subject: [meta-mingw] [PATCH] wayland: explicitly disable tests
Date: Tue,  5 Jul 2022 13:49:02 +0200
Message-Id: <20220705114902.762935-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 11:49:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57451

This addresses the failure with wayland 1.21:
| ../wayland-1.21.0/tests/meson.build:2:1: ERROR: Problem encountered: -Dtests=true requires -Dlibraries=true

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 recipes-graphics/wayland/wayland_%.bbappend | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-graphics/wayland/wayland_%.bbappend b/recipes-graphics/wayland/wayland_%.bbappend
index e8ca57d..e4792b9 100644
--- a/recipes-graphics/wayland/wayland_%.bbappend
+++ b/recipes-graphics/wayland/wayland_%.bbappend
@@ -2,6 +2,5 @@
 # compatible with i686 MinGW
 PACKAGECONFIG:remove:mingw32:i686 = "dtd-validation"
 
-EXTRA_OECONF:class-nativesdk:mingw32 = "--disable-documentation --disable-libraries"
-EXTRA_OEMESON:class-nativesdk:mingw32 = "-Ddocumentation=false -Dlibraries=false"
+EXTRA_OEMESON:class-nativesdk:mingw32 = "-Ddocumentation=false -Dlibraries=false -Dtests=false"
 
-- 
2.30.2


