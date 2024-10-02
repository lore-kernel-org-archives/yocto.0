Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B3C9CF8547
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 22:55:00 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web10.7449.1727909699647881828
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 15:54:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MXnYQFZs;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-710e14e2134so193199a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 15:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727909698; x=1728514498; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TOOr2zkWMJk5O30djLDpQHt0kNDd5EMgr3s7mcF7Iks=;
        b=MXnYQFZsBBPbFpKo9yF5ppYFF0pLwKr6ubwmk2fAB+cWtx1Fot/iW0nE+bm9Z29nJb
         QWVyYQWdIx18YeukRfPPawBh4DrjWRmbg/z6PjrIWzi1CekQPhrXW0SGfyxvqxV2z2rm
         6lXkOlIcslcpTqhUeZpHCYmttdJI/NFk2Y0gEJ5B0/siW4chT90umYlDLA8EW13YngGi
         Xi6poRvR7ucPW1e9IAHc5jCP/foEYamDSCy35wo36KYmiSP8IEooSPQM8VqGgMumMi1Y
         aipRjd020gl6w2lNMfxY0pJjvGkv5Y83akksdmJogVCneH8rLaxthx6maQG16wlJ6ei1
         IFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727909698; x=1728514498;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TOOr2zkWMJk5O30djLDpQHt0kNDd5EMgr3s7mcF7Iks=;
        b=KVHwr1pzfqH0xgDXvlwMUVplTcORonM5/NEgVs6zZC1T1D9izHFaGchsM7igsMvutl
         ohSnei41ERPkrb8Fu1JE0/6DmKSzKyiOZw6zpLHS0/FswIIxCfke1YaH4YQ3H8hdP8j5
         RaWohYNU+/NdIM9DhHbfEkhgOd1ZBoyxqRiZ8/L9+5v6R5cS42j2CNnTxYJX1FTPQ0zF
         v6rXke0O5mRavwRTsk5yvog2hdRUu4w9+IZnKJAx7jKWFeAqNRXwePmPQVJkTkEySnG1
         6aBfS2wDm4PXfEX9FCi/jU6LbfPlWAON4BQmz/lI3V4ghIrbiZuZI5zlqHc3PZFosrzC
         4Q3Q==
X-Gm-Message-State: AOJu0YzItXwxXBo8KuIaUaOWq4Svr8zHMYtrwW89WASK2puCo/Eg1jKI
	e2pkY3vHTVqUlllWqLgtWvcqcfPc9E0wQb7CPfzHo11055uHWSUf3YcLJw==
X-Google-Smtp-Source: AGHT+IEjTJua+RKMoTt+isH3Ajesj2M+0mFUKH0G8/pUNsOrDKSxB5xXL84pvs+UkEW8dd1QySEQlA==
X-Received: by 2002:a05:6830:661c:b0:709:3431:94c3 with SMTP id 46e09a7af769-7153cde480dmr4024598a34.23.1727909698284;
        Wed, 02 Oct 2024 15:54:58 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::a216])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71547f1f037sm41308a34.36.2024.10.02.15.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 15:54:57 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
Date: Wed,  2 Oct 2024 16:54:51 -0600
Message-ID: <20241002225451.263086-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 22:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63932

Glib likes to try and determine the local name using the Windows
GetConsoleOutputCP(), which doesn't work well running under wine in our
test cases (it seems to be linked to stdin not being a terminal).

This results in the error message:

GLib-WARNING (recursed) **: Failed to determine console output code page: Invalid access.. Falling back to UTF-8

and then Glib falls back to the locale "UTF-8", which is invalid and the
program will likely crash.

In particular, pkg-config seems to be sensitive to this on some hosts
(e.g. Ubuntu 24.04)

Set the LANG variable to a valid language to make sure that this
codepath in Glib is not triggered.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 lib/oeqa/sdkmingw/context.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/oeqa/sdkmingw/context.py b/lib/oeqa/sdkmingw/context.py
index 5319223..5869e57 100644
--- a/lib/oeqa/sdkmingw/context.py
+++ b/lib/oeqa/sdkmingw/context.py
@@ -40,6 +40,12 @@ class OESDKMinGWTestContext(OESDKTestContext):
         # Convenience variables to make test cases easier to write
         env['SDK_DIR'] = getattr(self, 'wine_sdk_dir', '')
 
+        # Set the language. If this is not set to a valid language, then
+        # program that use glib will attempt to determine the language from
+        # stdin, which results in an error, fallback to "UTF-8" which is
+        # invalid and crash
+        env["LANG"] = "C.UTF-8"
+
         return env
 
     def wine_path(self, p):
-- 
2.46.2


