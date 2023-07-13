Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9F3CC001B0
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 19:25:36 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web10.34.1689276329807813896
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 12:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TJ76du7B;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3a38953c928so918804b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 12:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689276328; x=1691868328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GfAgMOakajKYetIwIxLRd310jb4VfsTvlcvf4Knhscs=;
        b=TJ76du7BmBeehcibh5gg53zlhD99X04xoRl7ZxzCT6KkF3NpfdRwP5VXnp1eFJESeC
         I7/EAKi252M47/v5UdvucXW90iP+5ROJpWd1ZTpcnBMcnCMTxEnkRQQp/D6+43YP+fZa
         oNl8lkm5Z00Qv5M7uH0BZ+Hwy/DoSxlQYOz0lc9WfLxv7YXVII547CSb20z5JCXjzd4p
         UB1xX3VInX4BE6N7rcg4xxVRAQY2cTPk8iFfHkpvmeu+9tgb8LqCvpFTK2Pzk7f2fmSC
         wssr6kYMZiHi9r/byI8aFF+srE43h2GJjbyrVmPN8P/bII3/YNCtkb3Hh8VkA3sgYbAo
         x2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689276328; x=1691868328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GfAgMOakajKYetIwIxLRd310jb4VfsTvlcvf4Knhscs=;
        b=kPi7EeLnEP+SHSjm24YKrT2wc7LHUF+y220b7/JlOEgijpuf/d1rFDdbb/C6YTQyj7
         f7yCJoaTeARYsOtDjo1kiXoRacu7U0sNGWq1WIqfIoqG8pwNhbbgZgoLI1pvA8vSfk/J
         krrORVEPreW3TC1noZrAMDO8TCsMGD3gDZev+SixEXgQ5jMbkSgK9/tvAE+9Rbt3nHHY
         0ahUJxsGABFakKwqRhbsNGZMyPp35/Qstj0ylft+HAFoUBZU0uH/wyMEoM5FSx15xpHz
         QP63ii3Su0QLBzyxhOr84IXOjTcSrrCJ3vSb+5Pmjw6aRXKBsoYoXsjFLtMOez8WgpUq
         DSDA==
X-Gm-Message-State: ABy/qLbKHmog3n7B2HbtRGlTSz3E7X/7rkUxng7m8yt3TPTmQzQTbye5
	pC1+axeapG7JADvDNUGD+d0JKnyyHo8=
X-Google-Smtp-Source: APBJJlEuC48r2vx13GqsrbjZjX0mx0YAVgy74iw5GQoWLxzxmGM9lWY9nLHT9ENnSufuN4wULr0jKg==
X-Received: by 2002:a05:6808:f8d:b0:3a0:5ee3:ea67 with SMTP id o13-20020a0568080f8d00b003a05ee3ea67mr3311854oiw.16.1689276328411;
        Thu, 13 Jul 2023 12:25:28 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::1a8b])
        by smtp.gmail.com with ESMTPSA id bp19-20020a056808239300b003a1dfa93903sm3197353oib.12.2023.07.13.12.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 12:25:27 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] mingw32: Fix GCC override
Date: Thu, 13 Jul 2023 13:25:21 -0600
Message-Id: <20230713192521.4075964-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 19:25:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60571

6badeda ("mingw32: Add WINDRES export for SDK") attempted to fix the GCC
13 Canadian cross compile for MinGW host, but used the broad sdkming32
override, which made it apply to all target recipes. This caused build
errors in other recipes. Move the variables so that they only apply when
cross compiling GCC instead of globally.

[YOCTO #15158]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine-sdk/include/mingw32-common.inc        | 3 ---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 4 ++++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 1007bd4..b993307 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -38,9 +38,6 @@ TESTSDKEXT_CLASS_NAME = ""
 WINDMC:mingw32 = "${HOST_PREFIX}windmc"
 WINDRES:mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 RC:mingw32 = "${WINDRES}"
-WINDMC:sdkmingw32 = "${HOST_PREFIX}windmc"
-WINDRES:sdkmingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-RC:sdkmingw32 = "${WINDRES}"
 
 export WINDMC
 export WINDRES
diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 13ea016..25a449f 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -5,6 +5,10 @@ EXEEXT:sdkmingw32 = ".exe"
 ELFUTILS:sdkmingw32 = ""
 DEPENDS:remove:sdkmingw32 = "nativesdk-gettext"
 
+WINDMC:sdkmingw32 = "${HOST_PREFIX}windmc"
+WINDRES:sdkmingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
+RC:sdkmingw32 = "${WINDRES}"
+
 # With plugins enabled, it will output 'dll.a' files that are mistaken
 # for ELF which can trigger a failure.  Simply avoid processing these
 # to avoid the error condition.
-- 
2.33.0


