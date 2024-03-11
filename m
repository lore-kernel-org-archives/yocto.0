Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C12FC54E66
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:23 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.67631.1710174316897290113
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b3RKCor2;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33e8e9a4edaso2244413f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174315; x=1710779115; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhpa5dooParWJ5lLi9VOnDav28isclv+dWALtsyGiIs=;
        b=b3RKCor2md0WuWjT1lGSYzj86EhWxUxB34xOvrN9uFEo+ilCX8y40d+yJLu+zeErhr
         x7tUdMtKMJZ+VPzDEG4G7t+lYJiQ2mO7yXndeBCeGMAh0FD31A8OFy9jwzun7pXE8EHW
         gFJtTshHlj9CJ8DJAOMCsSaCLpZFVwM6mpHHoOay9J5wYtpj9lHttHjDflcNhhE548fL
         k2G3N4J7oQG0FbxFhP+xPdTmXET3ASst+AvRPk5S5FDiMPvEonA6sisU7sn4L5Y8vhky
         a++tM9P8Mn198hoSYYBR5mXafMyGoawEuA1/vEjABebeVMK5IyK8CNGWIK93TBtMKp2v
         ObHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174315; x=1710779115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhpa5dooParWJ5lLi9VOnDav28isclv+dWALtsyGiIs=;
        b=HLEKQHlck3XYPmCj2cHJjYdNHuClsyKJNbvYooWZS3DauHQtuVW5rYmFy+p/Aa01/F
         Uz49DxZdyIX6nOsKtl8GEkFdIAAMaPmlzZvhKjBRcS+m9L94cVFpruPr5bkSzFUtBRIj
         EfjbGBh3/htr9ZiuHxo6fhjf27Jsf6da4s8fmzqya62/nTFO7JOdrx8XBy3HX1RLEZi1
         5g5Wo5j7K2znM/ffWS8qnkxT+yLALRULZmoa1qKx7FG6iNdzCLZ3MNAN7M9uDDt9nNcH
         0vcnI6mJVO9sEeQGcGyRS8lf1pS/8bIXvWuH05GPv3BdT005FkS+5pTUhgU0gnl/CFab
         Y3DA==
X-Gm-Message-State: AOJu0YzBMjCrewOffTXnpfLTTdjJY/3dFfaUXdUpwg0KNzoPNEwtUawq
	byWc7fdcSCtblmbqTrUnw18gA22wO28x5bHD/WFtYMvd8NsBB+vTvmLuUB+qcvQ=
X-Google-Smtp-Source: AGHT+IEJ2qtuqf0zjRqO65OslUFoK/YBqtswFTxdH1tmYSNIg9q4RY1ApAK5My6cNw9JGUQDrmAw4A==
X-Received: by 2002:a5d:46d2:0:b0:33e:7cdd:b559 with SMTP id g18-20020a5d46d2000000b0033e7cddb559mr742312wrs.56.1710174315000;
        Mon, 11 Mar 2024 09:25:15 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:14 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 09/11] rust: Revert PGO to it's default
Date: Mon, 11 Mar 2024 16:24:08 +0000
Message-ID: <20240311162419.1138625-9-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62733

From: Yash Shinde <Yash.Shinde@windriver.com>

The rust profiler PGO (Profile-guided Optimization) options was disabled as a part rustdoc reproducibility fix.
https://git.yoctoproject.org/poky/commit/meta/recipes-devtools/rust?id=321aebfa281bd28e368c684ece57867f6bd0cbe7

But, other applications (such as to build chromium with poky) requires PGO enabled (https://github.com/OSSystems/meta-browser/issues/786).

For reproducibility issue fix only "rust-demangler" change is sufficient in commit#321aebfa281. The PGO is reverted to it's default.

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/rust/rust_1.75.0.bb | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/recipes-devtools/rust/rust_1.75.0.bb b/recipes-devtools/rust/rust_1.75.0.bb
index ee1ce9e..76e1fe2 100644
--- a/recipes-devtools/rust/rust_1.75.0.bb
+++ b/recipes-devtools/rust/rust_1.75.0.bb
@@ -146,10 +146,6 @@ python do_configure() {
     rustc = d.expand("${WORKDIR}/rust-snapshot/bin/rustc")
     config.set("build", "rustc", e(rustc))
 
-    # Support for the profiler runtime to generate e.g. coverage report,
-    # PGO etc.
-    config.set("build", "profiler", e(False))
-
     cargo = d.expand("${WORKDIR}/rust-snapshot/bin/cargo")
     config.set("build", "cargo", e(cargo))
 
-- 
2.44.0


