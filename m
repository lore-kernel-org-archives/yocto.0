Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26E5C54E60
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:12 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.67627.1710174310647913980
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GdifbDIP;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33e1878e357so2708291f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174309; x=1710779109; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z3PJilqgUct2aooW7uv9nMUPpI17jk2Caxrt4JkS188=;
        b=GdifbDIPaxiSxvHsC+l9cYGOl/1Ds3MEuzvK7ecftB+u4qnYN52jiDNn68ziwYrmxb
         9JDbPM3QpXADWbKVqk77w8T4HNGQCdt9AeEF7TzUEQt5xiBFc8U/D+sagEqo7GRk/2IU
         Uih+OrpBoy/fVcjD4FbK4mhKmSX7540d15B4Q8Ixo+iX/3EyIkJy0+IG66W0F1JLdIkW
         IM6Sho+Tg9/8cOnG32eanIxYAz4K9ghj9o6FYCYjLg1rht4OAiiSeUl1447NJq6nwv5o
         2NHpna7lMWoUwqKaAGlQFkIPCICBoDuTtqfzJUdJUiN45szCzmKOnBjaP+z9Ax3ctfR3
         KDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174309; x=1710779109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3PJilqgUct2aooW7uv9nMUPpI17jk2Caxrt4JkS188=;
        b=vXTR4juYofm8QXqNMJR8ru6EFlJ1aeasEu+T4sM5Et0Meqi/B4Z7usQ7dvOn8FMN0W
         B05ysuqSjdSK/v9zHPP9WGXnl2KcFU0awASEc4yizPldae58nF7jqk2sxLtG1ZX5Ay4E
         XmpDsEdVlw9Ocz9YofVBvBMTFoD6sGZXsaOauD3W4F9SpdQU8MBjGtkaeWSXNGL9V/kA
         yFc5qppJk3sGPNA0hq2wYiuLNC0ueKY37SzVzncckiu1zw0m9Ga+uAbwpB/eM3Sp1d/C
         ug01+dwNFASbTwoUcQqLyiU+5kRWFCIzmhbUTTX4BEVRwQZ52ITGTa8IOJbSnhIHfvKo
         61Bg==
X-Gm-Message-State: AOJu0YwCZb6as15MsygEbfpwWlO1YbHXOjl99Qtc2JJKSyG4ew71z/Tg
	JGW1dekXJaxCTdJgOZa3+26DvguPHocJbQVYcCvM8cQb54cnW/Y90PvM/+83
X-Google-Smtp-Source: AGHT+IHuNw+zwhOFP41ON0ZGb0kFyYRbXjBMPE98wq0XidaICmqiPXS5cDOGdfG2LeOAoB2ZZwcqaQ==
X-Received: by 2002:a05:6000:102:b0:33d:82a1:626d with SMTP id o2-20020a056000010200b0033d82a1626dmr4313102wrx.38.1710174308757;
        Mon, 11 Mar 2024 09:25:08 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:08 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 04/11] rust: Fix assertion failure error on oe-selftest
Date: Mon, 11 Mar 2024 16:24:03 +0000
Message-ID: <20240311162419.1138625-4-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62729

From: Yash Shinde <Yash.Shinde@windriver.com>

Fixes: thread 'main' panicked at 'assertion failed: `(left == right)`
       left: `x86_64-unknown-linux-gnu`,
       right: `x86_64-poky-linux-gnu`: Cannot obtain compiler for non-native build triple at stage 0', compile.rs:1474:13

Add correct target value for cross-compiled targets on stage1 during rust oe-selfest.

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../rust/files/target-build-value.patch       | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 recipes-devtools/rust/files/target-build-value.patch

diff --git a/recipes-devtools/rust/files/target-build-value.patch b/recipes-devtools/rust/files/target-build-value.patch
new file mode 100644
index 0000000..23e8c76
--- /dev/null
+++ b/recipes-devtools/rust/files/target-build-value.patch
@@ -0,0 +1,26 @@
+Add correct build value for cross-compiled targets on stage1 when
+bootstapping rustc.
+
+Upstream-Status: Backport [https://github.com/rust-lang/rust/pull/119619/commits/b888e2f82b9dbe81875f50d13adbc0271a9401ff]
+
+Signed-off-by: onur-ozkan <work@onurozkan.dev>
+Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
+---
+diff --git a/src/bootstrap/test.rs b/src/bootstrap/test.rs
+--- a/src/bootstrap/test.rs
++++ b/src/bootstrap/test.rs
+@@ -1489,8 +1489,12 @@
+         // NOTE: Only stage 1 is special cased because we need the rustc_private artifacts to match the
+         // running compiler in stage 2 when plugins run.
+         let stage_id = if suite == "ui-fulldeps" && compiler.stage == 1 {
+-            compiler = builder.compiler(compiler.stage - 1, target);
+-            format!("stage{}-{}", compiler.stage + 1, target)
++            // At stage 0 (stage - 1) we are using the beta compiler. Using `self.target` can lead finding
++            // an incorrect compiler path on cross-targets, as the stage 0 beta compiler is always equal
++            // to `build.build` in the configuration.
++            let build = builder.build.build;
++            compiler = builder.compiler(compiler.stage - 1, build);
++            format!("stage{}-{}", compiler.stage + 1, build)
+         } else {
+             format!("stage{}-{}", compiler.stage, target)
+         };
-- 
2.44.0


