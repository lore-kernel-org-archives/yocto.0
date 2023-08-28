Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4770BC83F16
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 09:44:58 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.9759.1693215894940026283
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 02:44:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=GZh+hpEh;
 spf=pass (domain: snapchat.com, ip: 209.85.218.53, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-99df431d4bfso391281466b.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 02:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1693215893; x=1693820693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxZH6ER6gD3PvwW7GsKoSLlvYSzB9DwNUDTQRmI9+Qw=;
        b=GZh+hpEhVIYq2TUDfMpCn99Yu8M/QzulbZVBdM/BcGRZ7Arg+cAVwXxExKc8ViJkku
         Jk9XiHyWtY3mJk9uiPMXoHBFX6dXjD4Ke3ttVBETqNOPTa/OMlceUrRsc6NW3ynXw00E
         PFGZhp0FqLyZ0FEGWSwp8SGvOzs3JA69CEvm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693215893; x=1693820693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PxZH6ER6gD3PvwW7GsKoSLlvYSzB9DwNUDTQRmI9+Qw=;
        b=bvQWeyJJ3rBXRclhh7hs9TvV9emIZJeGrQUKCc0LVM01LMW1c/R3ookGrx7jJKplu6
         HWC2C7R/I6BZ8yH5vQIMn7L/kEvucxAafzZK4AQh3sj6Vt+R/KdvKbirmmCClfCMQ/MY
         BLRicpNv0euaBUp38CCL+Zm4KDzwGlPVCQxSz2kg1zTA1Ebi36KQ3iPwKPBSYaRi8iKQ
         uygpxOLNE5vJd6QOhFEWzLyNiD1pABXH52dL6yYln6iZszzWn1u1Sy7Xpa4Bhv+ymDlZ
         uHi6snFQVxca2oV+hP6eCsq9GQrsSmR0VOAJtC2s95TtljJ7blo8InLN8Z+hwso9jP2B
         YwNQ==
X-Gm-Message-State: AOJu0YwTC5RPeLUz0wT1pHRiTk7pA5ehAxtdqtiXpSvtQKPc94+JLk0r
	QffsLML965izsxkqycuXkynJiJK6U1mYawGZKY00fg==
X-Google-Smtp-Source: AGHT+IEjTYM9dXYufQnqNQkSp/Jij2wL+rHgMkptRyBhOYFJ1eAN2/ePzldLDAKmWnDRqqi27LSSNQ==
X-Received: by 2002:a17:906:308b:b0:9a1:f96c:4baf with SMTP id 11-20020a170906308b00b009a1f96c4bafmr9807357ejv.5.1693215893065;
        Mon, 28 Aug 2023 02:44:53 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id ha19-20020a170906a89300b00989027eb30asm4396556ejb.158.2023.08.28.02.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 02:44:52 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 2/2] gcc: re-add zstd dependency
Date: Mon, 28 Aug 2023 11:44:21 +0200
Message-Id: <20230828094421.763574-2-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
In-Reply-To: <20230828094421.763574-1-ecordonnier@snap.com>
References: <20230828094421.763574-1-ecordonnier@snap.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 09:44:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60902

From: Etienne Cordonnier <ecordonnier@snap.com>

The zstd cross-compile build for darwin was fixed in f786ea1379a64fbbd,
thus there is no need to remove this dependency any more.

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 43ae2b5..192ee0d 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -12,8 +12,3 @@ EXTRA_OECONF:remove:darwinsdk = "--enable-clocale=generic"
 
 # Remove -rpath-link and -rpath
 LDFLAGS:darwinsdk = "${BUILDSDK_LDFLAGS}"
-
-# zstd uses uname to determine the compiler's target and makes the assumption that the host OS is the target,
-# so it does not support Darwin as a cross-compiler target.
-# zstd is not really needed as a dependency of gcc, and zstd would need to be fixed to compile for Darwin
-DEPENDS:remove = "nativesdk-zstd"
-- 
2.36.1.vfs.0.0


