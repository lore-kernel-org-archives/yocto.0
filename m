Return-Path: <kunin@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC12C25B75
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 20:39:26 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
 by mx.groups.io with SMTP id smtpd.web10.960.1716323958149279900
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 13:39:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20230601 header.b=2ohVFZHB;
 spf=pass (domain: flex--kunin.bounces.google.com, ip: 209.85.128.202, mailfrom: 3dqznzgukbe4akdydweewbu.secoesjebyiji.oesjefhezusj.ehw@flex--kunin.bounces.google.com)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-62035d9ecc4so255827077b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 13:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716323957; x=1716928757; darn=lists.yoctoproject.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MvhFNjuNubNm45A0gB4jzMUb9DWFibD2sJznJq2DGc0=;
        b=2ohVFZHBRSLcC+SclDaZcAhn1AqHbEXJ1Kvw90/zbHqT/hpX8N0w/gIxT6M3ZMjxse
         m9oMKJgCl4PMz1rwrZJNMTsHAL1xPYrb+RCrMc8DHPbQkFcNrJgKSnCboBKLRBHDZo4S
         sqlOurM+1CkrH8A6J3ZVBikXT42djQ1K3bQ7VQGY8EWmUlybCVuHqs+umGprSueZB6JB
         GtelRA0Utqt43PRR0v5IhuHZjzN/a3hcUjWSXllrNoD0PHk4XytAQzzKzj/38sygiuc1
         NJxQUmQHJk93zceim9lBxQyG+AwwtyJsCMc9lWkaMd3XANZMc3uGv80gm9NXEJk9796a
         moYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716323957; x=1716928757;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MvhFNjuNubNm45A0gB4jzMUb9DWFibD2sJznJq2DGc0=;
        b=Q+O1FqY4ZRTvJvVXKX1srBkYPNoR9fmG2UVWLAmV7wHwc1ISBLRVsMvn56MkolSLrp
         qI+SW9mnmPpr5ZbzKl1XDrWHpu9/+VzyE0O44ehfVwplKS5kPaMHL2hDxxcJVA0tzRnk
         mFETzQNxvopNpfKO3Wj90KP9IXzz2p3dtKo4dL1KtWbtXAIFNDsfCjmmtmmOJe2oo4Es
         HNDNwDhKlIVzTPdo2XJUBxUQRd2NmZDnaetU7j82tHFJOUqeERJUqYwqZxTS4kruTJyH
         P+CXgbiLQchr1u9rx7Zeoezw4ezRBjEuDaBIRLM2q/xHmZhW9L4PCrocUqWQ8ZpRQ+qW
         e/jQ==
X-Gm-Message-State: AOJu0Yx2obHk7LIIn1DIN2VuzI7j3Ugto2Kbb8cZVXFxP4mr4GehzdGW
	ruVf5amGwH9LxZPeveyKXBkLoDMmhUO8nFa7dRgESDK7rXIzYD4QhWeum1rluQHZn4zZ9SBofSb
	SQiC15yJ9Ys6uaHp74I3jATYgFn8tzw7tSPIC3+STkMPy+ap0VJXzPSVgL5oFGJSl8YzlrcJm7z
	z8tQIuf7pW2kieTOX5Ke7FDL/hMURCTlkYCC0=
X-Google-Smtp-Source: AGHT+IGJg1PzP7irygSPBAWcu5OsNwLpHcGJqR3QtCKsc/tz/TYJ6XHawz34vGNMsch+kYLEnMeREChvrw==
X-Received: from skl.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:9ef])
 (user=kunin job=sendgmr) by 2002:a25:ab14:0:b0:df4:9d0c:5c60 with SMTP id
 3f1490d57ef6-df4e0be3f90mr63570276.7.1716323957244; Tue, 21 May 2024 13:39:17
 -0700 (PDT)
Date: Tue, 21 May 2024 20:39:11 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
Message-ID: <20240521203911.1107365-1-kunin@google.com>
Subject: [meta-security][PATCH] tpm2-tss: upgrade 4.0.1 -> 4.1.2
From: kunin@google.com
To: yocto@lists.yoctoproject.org
Cc: jebr@google.com, kunin@google.com, benjaminfair@google.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 20:39:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63159

From: Valentin Kunin <kunin@google.com>

Bump tpm2-tss library version from 4.0.1 to 4.1.2.

This simply involves renaming the recipe and chaning the target SHA256
library file hash.

Also update the fixup_hosttools.patch to apply to the new version of the
library. It stays the same functionally, but some line numbers needed to
be updated to apply cleanly.

Signed-off-by: Valentin Kunin <kunin@google.com>
---
 .../tpm2-tss/tpm2-tss/fixup_hosttools.patch   | 25 +++++++++++++------
 .../{tpm2-tss_4.0.1.bb => tpm2-tss_4.1.2.bb}  |  2 +-
 2 files changed, 19 insertions(+), 8 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_4.0.1.bb => tpm2-tss_4.1.2.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
index 3f680ba..8822d1b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
@@ -1,17 +1,26 @@
-revert configure: add checks for all tools used by make install
+From ab120a9642516cdfdae5c5b8a91e42e2c9898172 Mon Sep 17 00:00:00 2001
+From: Valentin Kunin <kunin@google.com>
+Date: Mon, 20 May 2024 21:09:27 +0000
+Subject: [PATCH] revert configure: add checks for all tools used by make
+ install
 
 Not appropriate for cross build env.
 
 Upstream-Status: Inappropriate [OE specific]
+
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
+Signed-off-by: Valentin Kunin <kunin@google.com>
+---
+ configure.ac | 11 -----------
+ 1 file changed, 11 deletions(-)
 
-Index: tpm2-tss-4.0.1/configure.ac
-===================================================================
---- tpm2-tss-4.0.1.orig/configure.ac
-+++ tpm2-tss-4.0.1/configure.ac
-@@ -554,17 +554,6 @@ AM_CONDITIONAL(SYSD_SYSUSERS, test "x$systemd_sysusers" = "xyes")
+diff --git a/configure.ac b/configure.ac
+index eb6051ea..a52c4725 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -663,17 +663,6 @@ AM_CONDITIONAL([SYSD_SYSUSERS], [test "x$systemd_sysusers" = "xyes" && test "x$s
  AC_CHECK_PROG(systemd_tmpfiles, systemd-tmpfiles, yes)
- AM_CONDITIONAL(SYSD_TMPFILES, test "x$systemd_tmpfiles" = "xyes")
+ AM_CONDITIONAL([SYSD_TMPFILES], [test "x$systemd_tmpfiles" = "xyes" && test "x$tmpfilesdir" != "xno"])
  
 -# Check all tools used by make install
 -AS_IF([test "$HOSTOS" = "Linux" && test "x$systemd_sysusers" != "xyes"],
@@ -27,3 +36,5 @@ Index: tpm2-tss-4.0.1/configure.ac
  AC_SUBST([PATH])
  
  dnl --------- Doxy Gen -----------------------
+-- 
+2.45.0.rc1.225.g2a3ae87e7f-goog
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.1.2.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.1.2.bb
index dceebc2..9e68983 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.1.2.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
            file://fixup_hosttools.patch \
            "
 
-SRC_URI[sha256sum] = "532a70133910b6bd842289915b3f9423c0205c0ea009d65294ca18a74087c950"
+SRC_URI[sha256sum] = "6ad3ef0993cf3bc953710abed847ff727ab427b5577e812e3ad3197bbcec069e"
 
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
-- 
2.45.1.288.g0e0cd299f1-goog


