Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E06C2EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:41:17 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.13106.1687444869924951239
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:41:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=SkQYdwwH;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2b46a06c553so88099031fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687444868; x=1690036868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z8Gj1W2AUfNfTKEFkeR9U0m136h4lKmPdYyOuSa3GLg=;
        b=SkQYdwwH0lh+8YNpBOVsACD/tpaug+0oW1McSgxJfOiFiL3IyXpLhpd85NVDwXzg1b
         MEfwA16wW10+dsuULxllI1QWNA8qpzeWd4Kn2j5HOJ7Ok0Mn7tsk+1ONt2SZig9nWweO
         fzK6BQ0zt3htW+vsidcAS53zjfgrheDWYusoz9Xw3I9rY7QXhM+tIqFQ51iq1flYZB76
         RrMGEDKR7Gndlm+ADuA25E+xK1sOb+0sZwD/ObOWuCeZycTS0VSvi9ZZyzXOmF5K9sjt
         1zwPlILAAB007GNkXVVuBP/eLrfzHgIYTKISHGs0fo7K8E/KoYMZEvOerfVSBIankcR6
         9e3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687444868; x=1690036868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8Gj1W2AUfNfTKEFkeR9U0m136h4lKmPdYyOuSa3GLg=;
        b=WFdTfSQ9bPrW78cL29j8QVXuw9nz0bEnnhNkcMdrbyXsGDJniE515z+g9qkRxK03FM
         4mA3P5wWrLnyPx8G1yOxHMdtEUGidu1tyG9PJNxqCoT1YUOzIH6VSGQDLDAc1lVr/rKf
         ldFMrQUNQznQ1gQ6Po2uXV/xJuZjXXfbvgOk2STcDpiZ+D1IGPVqp4XIe9UVrF9PVZEU
         7csCoMy6JwSbYCJO5wQ6TFibMFeLoWlDu+0ggdstA1GlwX6rUDlETy+qVZnnvPT2lkAp
         tzwNLx+4xQxAN/o05cvr56TR9vYXpF1bH7jSyvmHmDN1DNtSYhtkJPymc95UbiDauU/x
         nvxg==
X-Gm-Message-State: AC+VfDxK3JvS64kKy4cffNnzbh6/kXcMzsbcEm8KzYDgvQMbpqXI3j/i
	8HjFtDPrfcAs1265FeV/ldzriskmZ0Y=
X-Google-Smtp-Source: ACHHUZ76XWNIN2Ds7P0GJ88Qjki6m5pMu8v1iUYNaaznP6oFXAYO6byG1s3Q7YeRqIjIog3C1APVXg==
X-Received: by 2002:a2e:3a09:0:b0:2b5:8c49:757e with SMTP id h9-20020a2e3a09000000b002b58c49757emr2042084lja.0.1687444867768;
        Thu, 22 Jun 2023 07:41:07 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id z14-20020a1709064e0e00b00987ac9cfb8esm4693219eju.67.2023.06.22.07.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:41:07 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][master-next][PATCH] meta-tpm: *.patch: fix malformed Upstream-Status lines
Date: Thu, 22 Jun 2023 16:40:55 +0200
Message-ID: <20230622144055.3899165-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60400

* as reported by openembedded-core/scripts/contrib/patchreview.py -v .

Malformed Upstream-Status 'Malformed Upstream-Status in patch meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch       | 2 +-
 .../recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch  | 2 +-
 .../recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch     | 2 +-
 ...1-configure.ac-stop-inserting-host-directories-into-co.patch | 2 +-
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
index 962bfc1..09aab78 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
@@ -12,7 +12,7 @@ fixes:
 
 ERROR: QA Issue: File /usr/bin/tpm_server in package ibmswtpm2 doesn't have GNU_HASH (didn't pass LDFLAGS?) [ldflags]
 
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 
 Signed-off-by: Jens Rehsack <sno@NetBSD.org>
 
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
index 8a216cd..a238c7f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
@@ -1,4 +1,4 @@
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Index: git/configure.ac
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
index fc730e1..2554282 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
@@ -4,7 +4,7 @@ Error building for i386 target in cross env
 
 ARCH is host arch, not target arch
 
-Upstream-Status: Submitted 
+Upstream-Status: Submitted
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 Index: git/src/uefi-types.h
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
index b3f2287..fe96b40 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
@@ -6,7 +6,7 @@ Subject: [PATCH] configure.ac: stop inserting host directories into compile
 
 Do not insert /usr/lib and /usr/lib64 into library search path.
 
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
 ---
  configure.ac | 2 +-
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
index 04a2964..3f680ba 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
@@ -2,7 +2,7 @@ revert configure: add checks for all tools used by make install
 
 Not appropriate for cross build env.
 
-Upstream-Status: OE [inappropriate]
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Index: tpm2-tss-4.0.1/configure.ac
-- 
2.41.0


