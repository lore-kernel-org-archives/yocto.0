Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6812C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 22:31:31 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.51003.1701901887773288150
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 14:31:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PcoXJvaz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40b2ddab817so3316825e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 14:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1701901885; x=1702506685; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5GtmolcseN21wjw01ay02S2tcYTKO8vi5Q60535yAT8=;
        b=PcoXJvazHdbF6+GaCYY4eOdnkhOdG7oK8cQv4X6vNK8+NkQtu2awC6vRg99KxPpofU
         zojGPOxDEbdTiNJylXzsKAxP1TAo28B8e8cryfAoy5Qaxcq2mwOOkHMN9oJSBNuc7F1/
         ZTJ70Vaom6WdNhRrgyG/COIfKgLM0tu8DSyCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701901885; x=1702506685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5GtmolcseN21wjw01ay02S2tcYTKO8vi5Q60535yAT8=;
        b=ibUXIJ/4E6EpgYIqCDoTRKao0UoiKZwaz/RVyUF+1cSmZO30nwFsGEM45SPtZ/YLOI
         SAo6UJyTX4ZyA3SNA5QJ7O/152R5G14HMLfFNflYYRJT/7ezMh3MxMSoyEphTc+w0OCM
         hYbDgNhcE3by0MPgO8poUnZEuTgkJ/+KMaQeG/SJIutSVQEU61fLw1o0j+YWPTDrA2jm
         JmfiZtkjuGfeMXmsPe7lGXZ7W+pt6rM9Ybc9V/6CAwJcVPz2sE9MK7SXQN+/aEjYCABS
         wTmJO4XT7Q1MCaagW/kXTslsSr0DtCoRcjZJ7jIVOlxLL/kGmhFTvrqv5us1tbdLZ1bh
         kX6Q==
X-Gm-Message-State: AOJu0YxlaGhb0tAsoxS48CPonWJK34N2hhpDCf7N/cuipdGH90o1ebR/
	hBwSD0Kx+3OJ+OrIDylXqNkEduKgi6mnij22jHc=
X-Google-Smtp-Source: AGHT+IF8pjIofQ5lXmyWHvYF8EBD8DTSXNVYhGRXhgphoylzWBL67Y9jOxJ4rzDege2rflx3yyC4kg==
X-Received: by 2002:a05:600c:5493:b0:40b:5e1c:af2b with SMTP id iv19-20020a05600c549300b0040b5e1caf2bmr1021644wmb.49.1701901885293;
        Wed, 06 Dec 2023 14:31:25 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:30b4:b44a:2cc6:3876])
        by smtp.gmail.com with ESMTPSA id d12-20020a05600c3acc00b0040b3515cdf8sm931864wms.7.2023.12.06.14.31.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 14:31:24 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Update buildtools to 4.3 release tarballs
Date: Wed,  6 Dec 2023 22:31:23 +0000
Message-Id: <20231206223123.1700389-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 22:31:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61820

The older buildtools has a bug that zoneinfo is missing. Update to a newer
release version to fix this.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index c5fca45..6d9a4ed 100644
--- a/config.json
+++ b/config.json
@@ -12,9 +12,9 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL3" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1.sh",
     "BUILDTOOLS_ARM_URL_TEMPLOCAL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.1/buildtools/aarch64-buildtools-extended-nativesdk-standalone-4.1.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20230223-18/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1+snapshot-9c07de0f20042c81496185293857284048d7912c.sh",
-    "BUILDTOOLS_ARM_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20230223-18/buildtools/aarch64-buildtools-extended-nativesdk-standalone-4.1+snapshot-9c07de0f20042c81496185293857284048d7912c.sh",
-    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.1/buildtools/x86_64-buildtools-make-nativesdk-standalone-4.1.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.3.sh",
+    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/aarch64-buildtools-extended-nativesdk-standalone-4.3.sh",
+    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/x86_64-buildtools-make-nativesdk-standalone-4.3.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.39.2


