Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B3DC7113B
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 18:25:40 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.506.1692815135431476022
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 11:25:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LtM9OA3z;
 spf=pass (domain: konsulko.com, ip: 209.85.222.172, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-76d83954c40so410863985a.1
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 11:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1692815134; x=1693419934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VbGeKDkhYfqw/7/VsPMBJABezQ/KBEHadfj6W86fd+c=;
        b=LtM9OA3zRP/k0DQpP7aDUgXh+Yo/vMWIoWnEUwgjbWtAlUEIAvgaZKekeM8zIGYwg0
         IAycS0miFY/5cfNEelKsMmo3WkBA7sdAt1p+E8Kr5Yg6+BPC2eEpZjkJij9fKCJoGWN9
         BYeqcZ6Ohn+ppKpn6P4t2OMEwUynp3ZvuDsO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692815134; x=1693419934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VbGeKDkhYfqw/7/VsPMBJABezQ/KBEHadfj6W86fd+c=;
        b=LrFropHE3/o4hqciDlKpeYecwMiPyRH4NTYDqM1/7Z65MazRCZgcI5J0X442o1VF2V
         ExncM1HYGsy99vaEsnAGS+6YJVAHA7bTfFEiNAF4xuW6uajLX8H+vt/inzxM1bB15uJb
         TUBwzOpxVU/FdMfYb8ydT4axhhC6TcOQmxB5YaoxxuF4j+mxqLNKnqIapv8JBI/zSrq1
         guQCKXYvF2VZgwUWBTGQFFCEp/h+WPNiXMn+jitMcMnzuHF7WidknTq377Cgwd+sbytI
         RpOaELGDv3fxaWxUgTd1f4/eFuV5jZO2bHPUrmGHWftiJYGuCDZkzbMszMTAbtRnhgIi
         KuaA==
X-Gm-Message-State: AOJu0YzI3sAUVhqrvHDiNDRAo1sNFWzOPgtWfeuQfAcPUzH+lKOFeq9b
	I/azahjWe/Tz6psXoSGs+LdLolmmd4hjn0Vj53E=
X-Google-Smtp-Source: AGHT+IFqZ607hJWzaARHH30lbmhU14Pl6xvyo5Z0CDK/98KKvdsvDBMDsj/deE/6S7/UBYOnKHhbWw==
X-Received: by 2002:a05:620a:218c:b0:767:edc0:64f8 with SMTP id g12-20020a05620a218c00b00767edc064f8mr13406355qka.2.1692815133861;
        Wed, 23 Aug 2023 11:25:33 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a16b600b0076cf49bcb50sm4107431qkj.37.2023.08.23.11.25.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:25:32 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 2/4] rust-common.bbclass: move musl-specific linking fix from rust-source.inc
Date: Wed, 23 Aug 2023 14:25:10 -0400
Message-ID: <20230823182512.1073623-3-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823182512.1073623-1-scott.murray@konsulko.com>
References: <20230823182512.1073623-1-scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 18:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60865

From: Alexander Kanavin <alex.kanavin@gmail.com>

This needs to be done for any item that is linked under rustc,
and not just rust itself. Latest python-cryptography exposes the issue.

(From OE-Core rev: 967d847a9815df43d0c92ca61cc544e1fe5dcc03)

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit d3811228747590ea06e8d68be4785d45ec9c478f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 classes/rust-common.bbclass           | 4 ++++
 recipes-devtools/rust/rust-source.inc | 5 -----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/classes/rust-common.bbclass b/classes/rust-common.bbclass
index e0cedd7..8782727 100644
--- a/classes/rust-common.bbclass
+++ b/classes/rust-common.bbclass
@@ -158,6 +158,10 @@ WRAPPER_TARGET_CXX = "${CXX}"
 WRAPPER_TARGET_CCLD = "${CCLD}"
 WRAPPER_TARGET_LDFLAGS = "${LDFLAGS}"
 WRAPPER_TARGET_EXTRALD = ""
+# see recipes-devtools/gcc/gcc/0018-Add-ssp_nonshared-to-link-commandline-for-musl-targe.patch
+# we need to link with ssp_nonshared on musl to avoid "undefined reference to `__stack_chk_fail_local'"
+# when building MACHINE=qemux86 for musl
+WRAPPER_TARGET_EXTRALD:libc-musl = "-lssp_nonshared"
 WRAPPER_TARGET_AR = "${AR}"
 
 # compiler is used by gcc-rs
diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/rust/rust-source.inc
index b25b5c1..0534e59 100644
--- a/recipes-devtools/rust/rust-source.inc
+++ b/recipes-devtools/rust/rust-source.inc
@@ -17,8 +17,3 @@ export TARGET_VENDOR
 
 UPSTREAM_CHECK_URI = "https://forge.rust-lang.org/infra/other-installation-methods.html"
 UPSTREAM_CHECK_REGEX = "rustc-(?P<pver>\d+(\.\d+)+)-src"
-
-# see recipes-devtools/gcc/gcc/0018-Add-ssp_nonshared-to-link-commandline-for-musl-targe.patch
-# we need to link with ssp_nonshared on musl to avoid "undefined reference to `__stack_chk_fail_local'"
-# when building MACHINE=qemux86 for musl
-WRAPPER_TARGET_EXTRALD:libc-musl = "-lssp_nonshared"
-- 
2.41.0


