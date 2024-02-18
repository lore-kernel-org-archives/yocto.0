Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCAEC48BF6
	for <webhook@archiver.kernel.org>; Sun, 18 Feb 2024 12:41:42 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.16928.1708260096116072118
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Feb 2024 04:41:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XukQPahq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4125df3c40aso8426785e9.3
        for <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 04:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1708260094; x=1708864894; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nk6JvYAm/7Jh8/UmgEAaH6VM6xpNjWpcm2fFHpcan18=;
        b=XukQPahqBPgyGXewVekpXH/FJV+OXQFPEuRjK7QmSS6Ig5e8EQKWVEDVeyDQPxoGUH
         hv1ikaQPGIGklN5p9SUMICJwfpeuJW7M6NwV28hp0YHFQVyRfQw0Ygv+pDWtz2Vfg5Gy
         t2VV6gVv5Dq4+W8JWdW8ZfWomGQS48rIY4i6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708260094; x=1708864894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nk6JvYAm/7Jh8/UmgEAaH6VM6xpNjWpcm2fFHpcan18=;
        b=GRWUWjtZEVZ+y0uKt2+ehO/IewDfi42v8Tuea408MF/aS8iqonmCezYilzCTe7vk6V
         uz/xVcdnP7Uh7jUjLunOO2RhZuu9Dd/Q5RiuMefS2Niir9RMXX1AHdt1rRD32N+QQ5lZ
         SgzKUMa3npdF/ibX12F7n5a2Fqz/KNWoYAq1POXpF1D5wNIQ8fh74oA5i/viii3znftl
         QwWDlITeTr4PSv06P6zH4V2/JqkCaH0tNuwTyjOee5FeDgndH2vr2T9bzng5h8kkP3u2
         rF9/U3ntOZqueYADBwsOIdlEOcT1GbtFGBp+nOcyVcOCWvxnD97q1hhLhhG3t2IkXT3S
         lxXw==
X-Gm-Message-State: AOJu0YxDaFODx3jLZo+gO3+O2v/wa0cegCJ20jj9Db5lmd1KmdlW8ODd
	LaU630B7TMlib4lNw6xXmH0LooR/RxCJfCXklmpP192CGovDArX+fI5By8KiyHLpFRV9RJ8Jpr1
	p
X-Google-Smtp-Source: AGHT+IFZbmqMsYYm5UtU/9vpsMXwDMJ3oC0YHJNLquHJi1e79M+61TBtYT71m92fqOGu4k6CtXVaOw==
X-Received: by 2002:a5d:5645:0:b0:33d:3b83:c0a with SMTP id j5-20020a5d5645000000b0033d3b830c0amr1259924wrw.34.1708260093690;
        Sun, 18 Feb 2024 04:41:33 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3d44:5cd8:cef2:3070])
        by smtp.gmail.com with ESMTPSA id k14-20020a5d428e000000b0033ce5b3390esm7294289wrq.38.2024.02.18.04.41.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 04:41:33 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] Add bitbake-extra-tests to cover taskexp ncurses UI.
Date: Sun, 18 Feb 2024 12:41:32 +0000
Message-Id: <20240218124132.336444-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 12:41:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62531

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json                 |  4 ++++
 scripts/bitbake-extra-tests | 14 ++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100755 scripts/bitbake-extra-tests

diff --git a/config.json b/config.json
index 3032fd7..3a2ab49 100644
--- a/config.json
+++ b/config.json
@@ -276,6 +276,10 @@
             "step4" : {
                 "shortname" : "OEQA core tests",
                 "EXTRACMDS" : ["oe-test core"]
+            },
+            "step5" : {
+                "shortname" : "Bitbake extra tests",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/bitbake-extra-tests"]
             }
         },
         "reproducible" : {
diff --git a/scripts/bitbake-extra-tests b/scripts/bitbake-extra-tests
new file mode 100755
index 0000000..39f248d
--- /dev/null
+++ b/scripts/bitbake-extra-tests
@@ -0,0 +1,14 @@
+#!/bin/bash
+TASK_EXP_UNIT_TEST=1 bitbake -g -u taskexp_ncurses zlib acl
+if [ $? -ne 0 ]; then
+    exit 1
+fi
+TASK_EXP_UNIT_TEST=1 bitbake -g -u taskexp_ncurses zlib acl foo
+if [ $? -ne 1 ]; then
+    exit 1
+fi
+TASK_EXP_UNIT_TEST_NOTERM=1 bitbake -g -u taskexp_ncurses quilt
+if [ $? -ne 0 ]; then
+    exit 1
+fi
+
-- 
2.40.1


