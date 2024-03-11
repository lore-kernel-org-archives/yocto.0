Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A5C54E58
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:12 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.67366.1710174309728776001
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fQLbZvEc;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33e92b3b5c9so1605404f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174308; x=1710779108; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2CjRulfZKsTrKPxV/nug5cRdty/FrhLkAYLwlKMewo=;
        b=fQLbZvEc6g55KPt+YHVp5BGEF3bZRSCnSzeL6AiGFYV2hYz62xOQUO2TIiNiFsnxie
         gnCO2ufirB+SLzvpGBQxy4ir+CN6iZDWxleZ2Ck80aLal+xXytuBtEkVsWQXbSTAzRBs
         igS6sNm/RFFNop28WVm+1jpHnu+zuGLdCr1ZeuzNggibTGaKEWmGjT+x2RJdsehcWHhw
         LDdJHYgzvoU4YUvYSKOV6oSzXs+kh7qyejso+nlLJ2wTNbYyOyhpr+5jdwIhGHOpN5h2
         SWuBFie4498rpTUGG/Dv4V20JWnj0SFfqA/ChOl1gapXp6Wo4jm4POm+ddj+IiLxvoNl
         PTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174308; x=1710779108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2CjRulfZKsTrKPxV/nug5cRdty/FrhLkAYLwlKMewo=;
        b=VIdS45KmOOvLrGot4d5uPcvUeRSR75c8WwgWflQ9/Wqi03fJWxCEe9V0oFCNNlRPxH
         nTH0D//1RfbVasRSEa3dGbzKoC6NgxrTr2e/AvOYPrO37KM/KbkgYakm0wJmgjMRGDxG
         JLYxj5hBUE7QVHAfN60pkunMb6uyBeDrlN1Ne/1B6fQKoraNojG0vGqPDQazHL//z5eN
         PdG7v0XSh76fMmQRniRXrZ3jzPxQuVEr+ttS0V+alD6cG01T/Bs1b129h3KtD/C1l6fJ
         0RHrZZ/QceYkGmAmpARuuk0jyl0/RHIIk3WSS/JLIyPagC48sxoiG9NJpUEt0BRIsx0U
         osCw==
X-Gm-Message-State: AOJu0YznmxwA4C2zf6DqVyW/pXKA1FebUtgm4jPinm5E4nHPSoLEYQW+
	cI1nD4qIWY6padYmqsvUNfSNg+qy6FFQS/gfYB85aw19/T/6F/N8ZlCfDdwD
X-Google-Smtp-Source: AGHT+IEunqU2vdn5Fgw5HJZDzaX2qswLo4Qmz8cIYKvIxtMCg/f7sF8QYwSU7ZfDWZSOzUT82p7tVg==
X-Received: by 2002:adf:ce84:0:b0:33e:70f8:c403 with SMTP id r4-20020adfce84000000b0033e70f8c403mr5063426wrn.30.1710174307629;
        Mon, 11 Mar 2024 09:25:07 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:07 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 03/11] rust: Enable RUSTC_BOOTSTRAP to use nightly features during rust oe-selftest.
Date: Mon, 11 Mar 2024 16:24:02 +0000
Message-ID: <20240311162419.1138625-3-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62728

From: Yash Shinde <Yash.Shinde@windriver.com>

Fixes: error: the option `Z` is only accepted on the nightly compiler

When rust.channel is set to either beta or stable, we can't use
nightly features on bootstrap without RUSTC_BOOTSTRAP.
Set RUSTC_BOOTSTRAP=1 to use nightly features on stable or beta.

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../rust/files/rustc-bootstrap.patch          | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-devtools/rust/files/rustc-bootstrap.patch

diff --git a/recipes-devtools/rust/files/rustc-bootstrap.patch b/recipes-devtools/rust/files/rustc-bootstrap.patch
new file mode 100644
index 0000000..406fc61
--- /dev/null
+++ b/recipes-devtools/rust/files/rustc-bootstrap.patch
@@ -0,0 +1,21 @@
+When rust.channel is set to either beta or stable, we can't use
+nightly features on bootstrap without RUSTC_BOOTSTRAP. Set RUSTC_BOOTSTRAP=1
+to use nightly features on stable or beta.
+
+Upstream-Status: Backport [https://github.com/rust-lang/rust/pull/119619/commits/8aa7dd06f6e50621dc10f9f9490681be8a45876f]
+
+Signed-off-by: onur-ozkan <work@onurozkan.dev>
+Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
+---
+diff --git a/src/bootstrap/synthetic_targets.rs b/ src/bootstrap/synthetic_targets.rs
+index d2c65b740da..45baf56f46b 100644
+--- a/src/bootstrap/synthetic_targets.rs
++++ b/src/bootstrap/synthetic_targets.rs
+@@ -59,6 +59,7 @@ fn create_synthetic_target(
+     let mut cmd = Command::new(builder.rustc(compiler));
+     cmd.arg("--target").arg(base.rustc_target_arg());
+     cmd.args(["-Zunstable-options", "--print", "target-spec-json"]);
++    cmd.env("RUSTC_BOOTSTRAP", "1");
+     cmd.stdout(Stdio::piped());
+
+     let output = cmd.spawn().unwrap().wait_with_output().unwrap();
-- 
2.44.0


