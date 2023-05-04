Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E344DC7EE22
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 17:32:38 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web11.1165.1683221549403733931
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 10:32:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=iRJAs2rI;
 spf=pass (domain: konsulko.com, ip: 209.85.166.53, mailfrom: scott.murray@konsulko.com)
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-76372a83c8eso15392539f.3
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 10:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683221548; x=1685813548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z/FP2KHZ2LeM8Z3y4QfQn0Cct61rYMgoFOKpGzWJ2MU=;
        b=iRJAs2rIyxu25Jo/K2z+aJx49Ye/SsOAAdUrwOrUsWxEARe0kKKVwUpDvyQXJEzT1/
         S0wIw8OhJttdl9ankkKUxToxbUb//N4oMX4dbF8H7uAxkgZMnaEFzsCdFIiTclDHu317
         0tQlvs9jQcKsCkiVIDHWZLhZCJq0b/lr/i4qs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683221548; x=1685813548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/FP2KHZ2LeM8Z3y4QfQn0Cct61rYMgoFOKpGzWJ2MU=;
        b=dfCFWhYMy+KL1U2TDtDrz+m7odSoj+b0u6Zp4rFDCe96zZA31y4Cd+fEdJQWP7HxQT
         b5CznpjmTtSuTGXzYAUHzFUuqVGkDC6NW9Jo45h6YA3P4oaC5uxAOn2WewbyheKffy41
         a8bdIElbDcouvNtEW10PpDrjLK4IP5F4RFmhWghCzGwurEM3y6VG69WWqA9ZLSiBFMU8
         4iHKs/sGy5kh6ZvW2Ww+Pj4pBIq+9uGiZiK3/eIlPWYKzJvV8TvNnFds8MUudKw6cdpS
         wOFhSTcB1KjOQgPzDBoVpiyALLZvRlP3WZ9LuJ25nNQUMdqlrZRaUxZ8N4TctaawucVN
         1SsQ==
X-Gm-Message-State: AC+VfDzOn8mKz733c54WUYU03tagGxIy47E0bDiPYOgexzEqtG/0iHE9
	v+/Kkqk/pcpTMoKsuf6nn09oa/EuQiiJDdPbmi4=
X-Google-Smtp-Source: ACHHUZ4jjVuA2bYQSKco8VMaVeiiYmFQs11ZG/Vol3HyJsW1sB2kY4uIionyO5q2fiWRfFMFELe2ZA==
X-Received: by 2002:a6b:4f02:0:b0:762:f8d4:6f4 with SMTP id d2-20020a6b4f02000000b00762f8d406f4mr289677iob.8.1683221548181;
        Thu, 04 May 2023 10:32:28 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id l9-20020a5e8809000000b0075cfdf70ca5sm9766629ioj.50.2023.05.04.10.32.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 10:32:27 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC PATCH 3/4] rust: Upgrade 1.68.1 -> 1.68.2
Date: Thu,  4 May 2023 13:31:54 -0400
Message-Id: <fcf5319ad4a4525fb0ba119049fd9bfc260aba69.1683220726.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683220726.git.scott.murray@konsulko.com>
References: <cover.1683220726.git.scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 17:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59877

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
index d48fcd5..b25b5c1 100644
--- a/recipes-devtools/rust/rust-source.inc
+++ b/recipes-devtools/rust/rust-source.inc
@@ -8,7 +8,7 @@ SRC_URI += "https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
             file://zlib-off64_t.patch;patchdir=${RUSTSRC} \
             file://0001-musl-Define-SOCK_SEQPACKET-in-common-place.patch;patchdir=${RUSTSRC} \
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


