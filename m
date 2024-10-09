Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9A0CEE34C
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 20:33:04 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.27589.1728505976591257396
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 13:32:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZIAjFQ4L;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cacabd2e0so1355535e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 13:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728505975; x=1729110775; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUpMveC73ZZkFZ4bIry0S00xdCd3P5sMIbByM7Bqojg=;
        b=ZIAjFQ4LQm6hQkowTI77lqYSWfZJfYrrHnXnqc8ei/3DiKMZ/pKGYQA/D8JTdi4pnR
         kpDMhsiLa5z7D2cQIRZAeOiqSQAadUz1DCyig5tk43xHmeRt8z51DMaNH5THcm/EaReW
         9yVSSXz1ag8hElNF/V06N/cg33qNPf6JmRnFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728505975; x=1729110775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUpMveC73ZZkFZ4bIry0S00xdCd3P5sMIbByM7Bqojg=;
        b=xUeeK7pA9AakX6lyxqCRW5q4sHtflkhVClcrgdXWSlbTOT9SIzSn6aQl2WTd/2OUkO
         79Z7Tx5eoAxIjiXdZQpatIjnwDrfalMY+mj2MDaLkUiIPQupW5jFdpIONuBHG2xRL2fv
         3ZvxpHZW4mpwXejj3OugEb5n6TKdtokHseHSQDx0MCo3MsaJpohcZyk6O7Ar2sAOA5Vr
         ZnxHtiuc4DxTNSe1xJRtLPiu+ZtbAjB4QK4ncfURwLgEDIXYsCHU3IuCCueMVPJcTjy0
         x8gydgWIK8sK/CiaGuyszM+2iNsI4HIuVSpKd3r6rYPzlFrKI75aokw0qPZ/v4kMNmm4
         P0Zw==
X-Gm-Message-State: AOJu0YwooWyVI2N9pGqU5pYT4Asfda+YYCGJsbUHe6AQ/i0ceF3pzaUz
	30w85phTZ3Yo6wpU+J6zXFPAB04G9ETQjEYDcDmaCIu065kR3X+zqgKMD9GeZNdCjOjs41Pwkza
	5
X-Google-Smtp-Source: AGHT+IGyA2lZWCbIWSNwDulrC919e09ltKlTYKPIhksWwyUPm+QeRg2Hz8AxS/E68qvbvoTQZ+9oog==
X-Received: by 2002:a05:600c:a015:b0:42c:b4f1:f2ad with SMTP id 5b1f17b1804b1-430d70b40d3mr30630105e9.33.1728505974689;
        Wed, 09 Oct 2024 13:32:54 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fb33:4e5d:4941:5018])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d454ec93fsm1536981f8f.97.2024.10.09.13.32.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 13:32:53 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 3/4] config.json: Use 5.0.4 release tarballs or download urls for all artefacts
Date: Wed,  9 Oct 2024 21:32:50 +0100
Message-ID: <20241009203251.470776-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
References: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 20:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63991

We should be pointing at released artefacts where at all possible.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/config.json b/config.json
index 13977d9..6c9b04e 100644
--- a/config.json
+++ b/config.json
@@ -7,16 +7,10 @@
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20240413-14/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.3+snapshot-9717d17e4359e876078d98adcb85d9c395106d64.sh",
-    "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-
-    "BUILDTOOLS_URL_TEMPLOCAL3" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1.sh",
-    "BUILDTOOLS_ARM_URL_TEMPLOCAL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.1/buildtools/aarch64-buildtools-extended-nativesdk-standalone-4.1.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20240418-18/buildtools/x86_64-buildtools-extended-nativesdk-standalone-5.0.sh",
-    "BUILDTOOLS_ARM_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20240418-18/buildtools/aarch64-buildtools-extended-nativesdk-standalone-5.0.sh",
-    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/x86_64-buildtools-make-nativesdk-standalone-4.3.sh",
-
-    "EXTRATOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/extratools/x86_64-buildtools-imagemagick-nativesdk-standalone-4.3+snapshot-5f2ba20f203114db9a3b11264467f8c23a05041d.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.4/buildtools/x86_64-buildtools-extended-nativesdk-standalone-5.0.4.sh",
+    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.4/buildtools/aarch64-buildtools-extended-nativesdk-standalone-5.0.4.sh",
+    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.4/buildtools/x86_64-buildtools-make-nativesdk-standalone-5.0.4.sh",
+    "EXTRATOOLS_URL" : "https://downloads.yoctoproject.org/tools/buildtools/x86_64-buildtools-imagemagick-nativesdk-standalone-4.3+snapshot-5f2ba20f203114db9a3b11264467f8c23a05041d.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",

