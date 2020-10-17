Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.3048.1602957835363566900
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOA8H4Ge;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id h2so2891680pll.11
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=meNWcaskBNaBvm3WYuaqD9gBG6E2yvm4kFASQkOo3ko=;
        b=UOA8H4GexR5Yk6ttyojro7ZksoNN1X1scLmCJw8yaMZzQhTRhWKtupM4QF330DjIW2
         r4EUS8qr0ZHEF/yJI25ppyN1aUTareKwpJFpovaEkF4cOfSKs27IIl8apgGoGUGQc/Ux
         +S0YSwSGBAi/Tua34CGd9loDBRc14R5y02VuxwAAHENp+WWZY6IYigVly9H/y5QPCYnq
         5MdvLu8bCY18w+6Y6rtHr8m3v0rwUAT0pieeK9OxRLt9KOBzi3YhvzQYCc5TR2aUNuI3
         Je/hAU8EF+947lI06KDOqDXg9vE3f1eNdG42QBm27DhoLjkwC/WZLPO4P+tOPoW9lfsd
         mMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=meNWcaskBNaBvm3WYuaqD9gBG6E2yvm4kFASQkOo3ko=;
        b=hyH0jEyd0adBxL7JBMmA5BlMyTRNny3nlKm3DsCFJ0kpIfmpVv6lIMnxD0ov3CITIV
         s1w9rEpSY/8UZ9r7QbCJ7qlSEwW3HElwITsJVchd3keTD9jrZ4XkxqA7UZyTNk8ZVGCa
         sKwgVl6egzFVu6DRQXOvOBimHX7IGQw1FernV/XsU35zM7blPwNdvoZmqBkwNqlVCADc
         sxKOmIV9QU3FdAr8n2Nb+4fFxgLG6Ya80KqkJA3syZzRxSj/neLwFKartS4HuCFNwG5b
         ndAbpGPuO2f6/gWrr1XLQy4ujolUM8e/2uX3VhCbCHLdPyZUQgw7FhA84Qpc8FWldsGY
         SLzw==
X-Gm-Message-State: AOAM533tBZNQ+YIPbgyHske6j8cDONho3dE3eNsZSnNXS+NPik9ROC7n
	sfb79eOI84dGKI9z9LVv98PNf115atk=
X-Google-Smtp-Source: ABdhPJye60TZoc0/l3SdyHXSrs/ekkWI0YzPojblkCtd4M4rxSTPScZ0WjCDeX+QNTXUVL9kYDF5JQ==
X-Received: by 2002:a17:902:d355:b029:d4:d88c:ded9 with SMTP id l21-20020a170902d355b02900d4d88cded9mr9503278plk.13.1602957834741;
        Sat, 17 Oct 2020 11:03:54 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:54 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 18/32] dm-verity-image-initramfs: Drop locales from image
Date: Sat, 17 Oct 2020 11:03:15 -0700
Message-Id: <08f791321b4b726bc1a7feb9cbcdccbbdb25f20c.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Since IMAGE_LINGUAS defaults to 'en-us en-gb' and since localization is
not needed on this type of purpose-specific initramfs image, reset the
variable which helps by shaving off almost 700kB from resulting bundled
zImage-initramfs artifact.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 5f196cf59dc41584750c20dcc2a8e2ed5067ab7e)
---
 recipes-core/images/dm-verity-image-initramfs.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 05ab10c..187aeae 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -16,6 +16,7 @@ PACKAGE_INSTALL = " \
 
 # We want a clean, minimal image.
 IMAGE_FEATURES = ""
+IMAGE_LINGUAS = ""
 
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_image[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
-- 
2.17.1

