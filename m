Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9DAC77B75
	for <webhook@archiver.kernel.org>; Sun,  7 May 2023 17:17:43 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.69957.1683479858875915369
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 May 2023 10:17:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=jrQfPa/m;
 spf=pass (domain: konsulko.com, ip: 209.85.222.172, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-75131c2997bso1557316785a.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 10:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683479857; x=1686071857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWmhFfelCGZY0uFnqnU4+uD9Rqr8BxP4PzpcJLwjvX0=;
        b=jrQfPa/mLKR8LnOvubYvCoFQDAAohcOS9lL2lGb+97ZRDpgIdSD9n2Ko29Iz9nwSs1
         DyuZPVLWMIiA3IgjdnmzxtBAMtos7B/ObbMUj82m9mAisGWy72HNGlBOOUQnXiGC0jOr
         rG0V3K1zbm9dgyyDgEf/mc6iR5AdN6PVICqvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683479857; x=1686071857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWmhFfelCGZY0uFnqnU4+uD9Rqr8BxP4PzpcJLwjvX0=;
        b=EKR1UbsvFszEHF3wPioaoYvKnCB1nhvQisSdWiWqBn1eL30iVfnaUasu6yuKMN6Imy
         /mp2Sggo9GYMd4PZ84xesYFzN7ECXdMlWEB/zpzuG4eNKNuSp1tg8E2TmOBtWeKnU4gF
         2wdsgoAqOLn0PKa7cWUVwub59Mg/IGCLdqUbG26USlLM2i+qeEeyf4sgwc0MaoMC1+n9
         +GUFkkXl6X70JRwq1RZuqsdt5wr1uHAxXSRLGwbGl4KhXSpK1sRmFTXLnz2dLhKT7YHa
         G7kzwIgbfVZzHdeVJIbnr3MhJQrCCj1gHaFk4BFH9IyRwyXqLbVyTkcz3E0zmKcWhnNV
         Mj5Q==
X-Gm-Message-State: AC+VfDyOXt+HV8GOS2WYSvpS/aBkYjSwsnOjAUD2IWl2K5h9lFRp52kO
	7zaasWUTo9Zn7eyvQioZb8sfw87BbCeTIlii5Y8=
X-Google-Smtp-Source: ACHHUZ5Z3noqIMnK5bhP1v4ord/ZX6SIN8HodlNmWv+a+34VzHauAsfmcCm7UWLAJsIO3cqREKpDOw==
X-Received: by 2002:a05:622a:1c1:b0:3db:9289:6949 with SMTP id t1-20020a05622a01c100b003db92896949mr22279753qtw.3.1683479857495;
        Sun, 07 May 2023 10:17:37 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id o6-20020a05620a130600b0074e4cf13d40sm2012908qkj.57.2023.05.07.10.17.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 10:17:37 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC v2 PATCH 2/2] rust: Upgrade 1.68.1 -> 1.68.2
Date: Sun,  7 May 2023 13:17:23 -0400
Message-Id: <fdae8aaed52fc95b63356e1c7899b46f7d378229.1683479537.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683479537.git.scott.murray@konsulko.com>
References: <cover.1683479537.git.scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 17:17:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59895

From: Alex Kiernan <alex.kiernan@gmail.com>

Changes:

* Update the GitHub RSA host key bundled within Cargo. The key was
  rotated by GitHub on 2023-03-24 after the old one leaked.
* Mark the old GitHub RSA host key as revoked. This will prevent Cargo
  from accepting the leaked key even when trusted by the system.
* Add support for @revoked and a better error message for
  @cert-authority in Cargo’s SSH host key verification

(From OE-Core rev: 4563432b41026adc56c54452984b19ab64e7406e)

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 recipes-devtools/rust/{cargo_1.68.1.bb => cargo_1.68.2.bb}      | 0
 .../rust/{libstd-rs_1.68.1.bb => libstd-rs_1.68.2.bb}           | 0
 ...t-cross-canadian_1.68.1.bb => rust-cross-canadian_1.68.2.bb} | 0
 .../rust/{rust-llvm_1.68.1.bb => rust-llvm_1.68.2.bb}           | 0
 recipes-devtools/rust/rust-source.inc                           | 2 +-
 recipes-devtools/rust/{rust_1.68.1.bb => rust_1.68.2.bb}        | 0
 6 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-devtools/rust/{cargo_1.68.1.bb => cargo_1.68.2.bb} (100%)
 rename recipes-devtools/rust/{libstd-rs_1.68.1.bb => libstd-rs_1.68.2.bb} (100%)
 rename recipes-devtools/rust/{rust-cross-canadian_1.68.1.bb => rust-cross-canadian_1.68.2.bb} (100%)
 rename recipes-devtools/rust/{rust-llvm_1.68.1.bb => rust-llvm_1.68.2.bb} (100%)
 rename recipes-devtools/rust/{rust_1.68.1.bb => rust_1.68.2.bb} (100%)

diff --git a/recipes-devtools/rust/cargo_1.68.1.bb b/recipes-devtools/rust/cargo_1.68.2.bb
similarity index 100%
rename from recipes-devtools/rust/cargo_1.68.1.bb
rename to recipes-devtools/rust/cargo_1.68.2.bb
diff --git a/recipes-devtools/rust/libstd-rs_1.68.1.bb b/recipes-devtools/rust/libstd-rs_1.68.2.bb
similarity index 100%
rename from recipes-devtools/rust/libstd-rs_1.68.1.bb
rename to recipes-devtools/rust/libstd-rs_1.68.2.bb
diff --git a/recipes-devtools/rust/rust-cross-canadian_1.68.1.bb b/recipes-devtools/rust/rust-cross-canadian_1.68.2.bb
similarity index 100%
rename from recipes-devtools/rust/rust-cross-canadian_1.68.1.bb
rename to recipes-devtools/rust/rust-cross-canadian_1.68.2.bb
diff --git a/recipes-devtools/rust/rust-llvm_1.68.1.bb b/recipes-devtools/rust/rust-llvm_1.68.2.bb
similarity index 100%
rename from recipes-devtools/rust/rust-llvm_1.68.1.bb
rename to recipes-devtools/rust/rust-llvm_1.68.2.bb
diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/rust/rust-source.inc
index c8f5a5a..6d3a4b1 100644
--- a/recipes-devtools/rust/rust-source.inc
+++ b/recipes-devtools/rust/rust-source.inc
@@ -7,7 +7,7 @@ SRC_URI += "https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
             file://0001-Do-not-use-LFS64-on-linux-with-musl.patch;patchdir=${RUSTSRC} \
             file://zlib-off64_t.patch;patchdir=${RUSTSRC} \
 "
-SRC_URI[rust.sha256sum] = "5b8ea94085b65e75c1fa6310e2f90bd706fa80bfcb3544fe26f4037b911d9fb2"
+SRC_URI[rust.sha256sum] = "ce1a115f6aafa912b4622906a92b626354973afa9288e2c7750df4dcf3390fc0"
 
 RUSTSRC = "${WORKDIR}/rustc-${RUST_VERSION}-src"
 
diff --git a/recipes-devtools/rust/rust_1.68.1.bb b/recipes-devtools/rust/rust_1.68.2.bb
similarity index 100%
rename from recipes-devtools/rust/rust_1.68.1.bb
rename to recipes-devtools/rust/rust_1.68.2.bb
-- 
2.39.2


