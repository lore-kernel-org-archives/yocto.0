Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CC6C77B73
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 14:14:24 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.15437.1685542456551022257
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 May 2023 07:14:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=FLvsxnIO;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.42, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-25665d2a8bdso2266279a91.0
        for <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 07:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685542455; x=1688134455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68MCek6Y4g7GzHOC9LrEZdOb1581ECzkc2/wXTmz59U=;
        b=FLvsxnIOmlS4Rj3bIrgMGGRiFCqhwyQQOcNmgS26ANm8umf+wZ80E455rousz1aRII
         5mqMeDrnKwz6Ox7W5YDoG7VLKK+udg7ohPz5751j6asu4++9ivaH929oPVUiR3GOlCvj
         LLbYyhnYPEkIQeoKSUkE92hmDN+DUi9P7xKqJoPEKOeA+Gqbnsw3HXpbn4e3Tby5q3QU
         /nXqg755RNSqnTHm4kaSaMlm4ECLtlJcBEUvvmYucqBHag0do4e/suLeDkDFe6vyh9rb
         6VFOYA1+tCNIIjI981llWq1WbY5GwufeUBHm+2E8O9xHIawuvmYECYlHEP8EFROVj/KE
         RHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685542455; x=1688134455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=68MCek6Y4g7GzHOC9LrEZdOb1581ECzkc2/wXTmz59U=;
        b=ffv474JDIDIELsto6yVQtGdUxKFXNGI7MaKPTLAtCcyH/UsIEGCI8pjXretElLrvtC
         tADJ+/w4vo+CVnBv/QQ7fxfP8nwhLVfpe+G68ovq468wfi5UrgIspe0OTz/m8oS9qWE9
         68+zpN8z57p7j1wENotfnLNBBGluZTnFWngcqFdObyS+/VRa2+L6Vr7pkdNOPb1y/MZU
         6TA8J86anO+ybdhmn9WRHg9XUjdEZVXQryo8yomP7tmdohbXzomrW/eO9/oFyMP6n544
         AI5H+oLLoVPq5DnmslhxdGyScz20oP3KNojuDYWETb6Lk/xhh0PLXI2dwKvTP+JuiObL
         JNUg==
X-Gm-Message-State: AC+VfDwgCSZndazvMD6ZAew+qEsVsA+hhbzOwZW52ShWtSE/15sCbGog
	J2PGWR88S17vofiVT3dHGQEMfra2Tf6nSSIWelY=
X-Google-Smtp-Source: ACHHUZ6TCu900c4B50a8/1LabkfPO4Ed9YHZy8TFEEkRYmr6a4q5bzwmfKKngX0xkBXLMBixsK4Sng==
X-Received: by 2002:a17:90a:f40c:b0:256:cc37:610b with SMTP id ch12-20020a17090af40c00b00256cc37610bmr3495437pjb.28.1685542455251;
        Wed, 31 May 2023 07:14:15 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id u2-20020a17090adb4200b002568073d6fbsm1334983pjx.13.2023.05.31.07.14.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 07:14:14 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: Switch alma8/stream8/opensuse to use full buildtools
Date: Wed, 31 May 2023 04:14:08 -1000
Message-Id: <06ac703637c7aeccd54362e7df409d1d63845af0.1685542342.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685542342.git.steve@sakoman.com>
References: <cover.1685542342.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 14:14:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60156

Also drop centos8 as we don't test that now.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 32ffd52..abfa853 100644
--- a/config.json
+++ b/config.json
@@ -1232,12 +1232,11 @@
         "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "ubuntu1604*" : "${BUILDTOOLS_URL}",
-        "alma8*"       : "${BUILDTOOLS_MAKE_URL}",
-        "centos8*"     : "${BUILDTOOLS_MAKE_URL}",
-        "stream8*"     : "${BUILDTOOLS_MAKE_URL}",
-        "opensuse153*" : "${BUILDTOOLS_MAKE_URL}",
-        "opensuse154*" : "${BUILDTOOLS_MAKE_URL}",
-        "perf-alma8*"  : "${BUILDTOOLS_MAKE_URL}",
+        "alma8*"       : "${BUILDTOOLS_URL}",
+        "stream8*"     : "${BUILDTOOLS_URL}",
+        "opensuse153*" : "${BUILDTOOLS_URL}",
+        "opensuse154*" : "${BUILDTOOLS_URL}",
+        "perf-alma8*"  : "${BUILDTOOLS_URL}",
         "perf-centos7*" : "${BUILDTOOLS_URL}",
         "perf-ubuntu1604*" : "${BUILDTOOLS_URL}"
     }
-- 
2.34.1


