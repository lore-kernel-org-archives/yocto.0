Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16EDBC54E68
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:23 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.67374.1710174317646852673
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iz/nc5mu;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33e899ce9e3so1393233f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174316; x=1710779116; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZmPeLYD/jTbpRqtZ5V3Pi7abwAWYF4/EXnU1j5QCYyU=;
        b=iz/nc5mubeGyqYQg9fi7fxN6YSBq7LwHu3XlCZKsxvTLMv1yYNpE6X0nXMrK8fz0Ph
         n1XSrIW3/1RpbvytG+z8tqgo41dtNjPiD0f+8KRaZ+AGeRnBkXqdb/Kx/OYmH+XXgZh5
         n3LuVem/Mp6RO2hgDnBdUvhxtxH0+veF6B/LZ0fjW6aWbOdBCiexzJG6F3WFcbyXbZkE
         HDNx3MxtvgRISuxxlEiue6s0pOVF5mixjYcpV1L3sUiaDaRehhpT6tiOPgEz7KQKMb8w
         TXmtOeSDtfT0OyxMyE5qRNSlFewY9XXM9W55DOurosi0eMXeFNS6+zhv7cHUqzpXKsV/
         4uPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174316; x=1710779116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmPeLYD/jTbpRqtZ5V3Pi7abwAWYF4/EXnU1j5QCYyU=;
        b=q6V+f4VPZfmhZPyGpqe1iifxPAK7ElJGv2Er3TzY4NNZK8luVVQW+DsshZrpTFxjTO
         FcYUs3gpQhTZsAUQpJTsmo7iswkFMPuBL92cTNCWkXR7H9bdjeuNUuy8XdeTH2jPkzCi
         rN3ZkxVUqRfsyR/OAnmkkjuirGb6TzQ9WI/2sAiOnow/k3qNeL2rL7PejYiklsskFFsg
         hre4QKZbmByIwcgzZvpwmDoMCArjE04piu2lVYcMvzUApaYg2tnEeM9wvmEVoteBlud0
         DZbz5B49kDfBX/VTzB5FiDbMOmVRAweGc13oNjUe/XHCsE0P/u2jsA3jdRpP50G+EiZ+
         rf8Q==
X-Gm-Message-State: AOJu0YwxmgExHtpahgVK4svmztQ8CqiZi7mS+ga5rK2BARu9+8PtvybF
	r2f73efi+h1ugnEWP89453/40UhGG7IzRVsTZOxSfxR8QDSkcdwHQ/1YzRPJ93Q=
X-Google-Smtp-Source: AGHT+IG/G8Qhw8/HPpc0ELSYA+p/5g9Ugcl7ZWivAon85e2CFTxFxA1/75m1iz0n4eQsaMInGHKrbQ==
X-Received: by 2002:a05:6000:1c3:b0:33e:8b95:b351 with SMTP id t3-20020a05600001c300b0033e8b95b351mr3827134wrx.9.1710174315836;
        Mon, 11 Mar 2024 09:25:15 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:15 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 10/11] rust: reproducibility issue fix with v1.75
Date: Mon, 11 Mar 2024 16:24:09 +0000
Message-ID: <20240311162419.1138625-10-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62734

From: Yash Shinde <Yash.Shinde@windriver.com>

With 1.75 rust release, the '.rustc' section of shared object libs are embedded with absolute path names which is casuing reproducibiluty issues.
This change will fix the path name format back to '/rust/$hash' as in earlier versions.

Below are the links for detailed bug description & discusssion with upstream rust.
https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656

Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../files/repro-issue-fix-with-v175.patch     | 23 +++++++++++++++++++
 recipes-devtools/rust/rust-source.inc         |  1 +
 2 files changed, 24 insertions(+)
 create mode 100644 recipes-devtools/rust/files/repro-issue-fix-with-v175.patch

diff --git a/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
new file mode 100644
index 0000000..6840baf
--- /dev/null
+++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
@@ -0,0 +1,23 @@
+rust: reproducibility issue fix with v1.75
+
+With 1.75 rust release, the '.rustc' section of shared object libs are embedded with absolute path names which is casuing reproducibiluty issues.
+This change will fix the path name format back to '/rust/$hash' as in earlier versions.
+
+Below are the links for detailed bug description & discusssion with upstream rust.
+https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
+https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
+
+Upstream-Status: Inappropriate [patches need rework]
+Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
+---
+--- a/compiler/rustc_session/src/session.rs	2023-12-21 08:55:28.000000000 -0800
++++ b/compiler/rustc_session/src/session.rs	2024-02-26 07:29:15.527577022 -0800
+@@ -1269,7 +1269,7 @@
+                 | CrateType::Rlib
+                 | CrateType::Staticlib
+                 | CrateType::Cdylib => continue,
+-                CrateType::ProcMacro => return false,
++                CrateType::ProcMacro => return true,
+             }
+         }
+ 
diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/rust/rust-source.inc
index 8ae8add..6bef990 100644
--- a/recipes-devtools/rust/rust-source.inc
+++ b/recipes-devtools/rust/rust-source.inc
@@ -12,6 +12,7 @@ SRC_URI += "https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
             file://rustc-bootstrap.patch;patchdir=${RUSTSRC} \
             file://target-build-value.patch;patchdir=${RUSTSRC} \
             file://0001-Handle-vendored-sources-when-remapping-paths.patch;patchdir=${RUSTSRC} \
+            file://repro-issue-fix-with-v175.patch;patchdir=${RUSTSRC} \
 "
 SRC_URI[rust.sha256sum] = "4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340"
 
-- 
2.44.0


