Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A61C71145
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 18:25:40 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.505.1692815134063309608
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 11:25:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=n2o1fQBr;
 spf=pass (domain: konsulko.com, ip: 209.85.222.172, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-76da8e70ed3so215447585a.3
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 11:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1692815132; x=1693419932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZUeTe/gYDrkxTjKd5F1S8VV1lejMPxOULBLfTm1Oa64=;
        b=n2o1fQBrV6aPbkQznFNjGrVwXh6d99oJvJP20JHHuKJMtiL6U9Ac4LL3Zt8fWBQung
         X9JPnINI3GmBx1fGaEvV69561OKGA8FAutXXuIDDSrjiu692exCpVlW5sZfx2AfHiCDk
         54cD7ZrzhS75NHJlwhbvMQC4Cvjoy5kuo1pSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692815132; x=1693419932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUeTe/gYDrkxTjKd5F1S8VV1lejMPxOULBLfTm1Oa64=;
        b=BgooGCuM+KEy0JVJ41+vIuZz74gMgKlRyzOob44jaHy/pby5MFJK8oCasgCUI0C6p7
         f1Ka/HM7YScBXzqvxk57ApQj9aWkb9QEgYXAYi/UR7CNbbKgKx5fiRE+B9Vga5Z1c0X6
         3Sz/NjHHQyBtJFFsZFqXMHwTKr2SdA/EMzf8bp7e6k5LptJ0KRNjS7VlL4LsEJT1vV/2
         PbZDirwt25EH6o+4oOpsd92C95P2leZnLJbMUYWlUNw9HSymQlmBCj9ECh/mPo9X6odF
         xqkcd+mZQZi/+TJmlsCwtNDFTrOxLD1StjLgzTAr33zM8G3gs2SmDBQP0VlgEP+91/CX
         jdzg==
X-Gm-Message-State: AOJu0YwXm0o/Q9DHNM7kcKKFG4DIcUegU42gPlI4BA6o3rqeiaGiC4hb
	WpbpQcam7ppBm/HAc2O7gW3Ap33wzizaEpFt660=
X-Google-Smtp-Source: AGHT+IFoZRAQvISiOwowClHYJirPiNAkadTW22nvpxAyO75Kdv2eDRBE/Zi5BI9w/DIUfui5cTc03A==
X-Received: by 2002:a05:620a:b57:b0:76e:ed42:37da with SMTP id x23-20020a05620a0b5700b0076eed4237damr677544qkg.57.1692815132360;
        Wed, 23 Aug 2023 11:25:32 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a16b600b0076cf49bcb50sm4107431qkj.37.2023.08.23.11.25.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:25:31 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 1/4] cargo.bbclass: set up cargo environment in common do_compile
Date: Wed, 23 Aug 2023 14:25:09 -0400
Message-ID: <20230823182512.1073623-2-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823182512.1073623-1-scott.murray@konsulko.com>
References: <20230823182512.1073623-1-scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 18:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60864

From: Alexander Kanavin <alex.kanavin@gmail.com>

cargo_do_compile runs only if the recipe is built using cargo
as the top level tool. Some recipes hide usage of cargo inside setuptools
(or autoconf) and use do_compile definitions specific to those,
and so the environment isn't properly set up.

This was exposed by latest versions of python3-cryptography.

(From OE-Core rev: a1946efdbec608d47f9e992c1b5cf3c671a204fc)

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 9f4ff643a028d7f5670d80861f2ce19ca2d90faa)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 classes/cargo.bbclass        | 1 -
 classes/cargo_common.bbclass | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/classes/cargo.bbclass b/classes/cargo.bbclass
index 7a8cc1e..3ef0bbb 100644
--- a/classes/cargo.bbclass
+++ b/classes/cargo.bbclass
@@ -55,7 +55,6 @@ oe_cargo_build () {
 
 do_compile[progress] = "outof:\s+(\d+)/(\d+)"
 cargo_do_compile () {
-	oe_cargo_fix_env
 	oe_cargo_build
 }
 
diff --git a/classes/cargo_common.bbclass b/classes/cargo_common.bbclass
index 82ab25b..1ca0be4 100644
--- a/classes/cargo_common.bbclass
+++ b/classes/cargo_common.bbclass
@@ -149,6 +149,10 @@ python cargo_common_do_patch_paths() {
 }
 do_configure[postfuncs] += "cargo_common_do_patch_paths"
 
+do_compile:prepend () {
+        oe_cargo_fix_env
+}
+
 oe_cargo_fix_env () {
 	export CC="${RUST_TARGET_CC}"
 	export CXX="${RUST_TARGET_CXX}"
-- 
2.41.0


