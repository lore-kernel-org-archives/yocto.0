Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D37A8CD1296
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 00:15:21 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web11.57058.1712448918373918555
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Apr 2024 17:15:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=pgaCAtmn;
 spf=pass (domain: konsulko.com, ip: 209.85.215.195, mailfrom: tim.orling@konsulko.com)
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-5dcc4076c13so2277379a12.0
        for <yocto@lists.yoctoproject.org>; Sat, 06 Apr 2024 17:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712448918; x=1713053718; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vbada5gI4OLGzUWb3gRBE0CT1LG+S/VNbQlADEIZ+2Y=;
        b=pgaCAtmnYOc7StBjn0XZD0v28/Rea2EkUFpMr3vBh0P7aiUOVleLEC3eQJDO8rZz/E
         Bj2ZOzJnKL8+kSpoF4Vu752ZSa7ouIiKgrlx9vYvMh002jNhXy/rFjStPsFmN44mbeti
         02Ypte+NjPisll1VN6Rn4+OY+CjeH2kMHLSdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712448918; x=1713053718;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbada5gI4OLGzUWb3gRBE0CT1LG+S/VNbQlADEIZ+2Y=;
        b=E0sgxFovyxt10Oa/s9hCEK8SrzybR1o+Hq1P1EUNgCAU+JfQhM6U15fIdGQOcVNKlY
         IBHlsF+LiRAbH60NF2YYvXj7GpJbF5CDb0DrV8MgW/7AYCQN7rsxbYD/NfI8mr15thTX
         u8eWU5KOpywBAW+9ykxp0o3dfy5CmrdbtUh5ERdqhRA+udmRp/tyMR3SLMICEjC28v7v
         G7nRlIShLmSuQK8RAr8xcqPA1cYjpsgIEhe55ILrFmkSNpJmqMhx78nMWYuzz3T1eNOu
         Ju0W3gNvD3qFXZZcssUy0sXJEDsV9I1i56L64M1YwLyxPsWMciMNZmZXgnJWI6ovDdoY
         2WyQ==
X-Forwarded-Encrypted: i=1; AJvYcCU32PDdOxLVEDy1jT/o1iLkXMmryzjII7uj51G6hPV5eKD6VNAOx1OwR+tA8uG09EFuXP77QZzlIg1biY9MhWIA0oAPKdTwBpc2fhlX
X-Gm-Message-State: AOJu0YyRIHYUeU2qzBdaPW0JwiZXFsDujOr0B1M7UlHQ5l8MjOhgr/Ie
	7jYJYKQhMt5EYsXp/YJFzcSL0g4Z4wpR4gHIJhelMogUaMHGUzJX/q2XfFhr/rw=
X-Google-Smtp-Source: AGHT+IHHLPHL0rWAyQsadJtsSNoQvB27FX/tbtRCHyr7FU0S7wODpfhuxc50a21K3zs6492Xd3pSpQ==
X-Received: by 2002:a17:90a:7c43:b0:2a2:f249:6180 with SMTP id e3-20020a17090a7c4300b002a2f2496180mr8389021pjl.18.1712448917756;
        Sat, 06 Apr 2024 17:15:17 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:5996:ce4c:d10f:fa94])
        by smtp.gmail.com with ESMTPSA id p12-20020a17090b010c00b002a203bd94bfsm3680086pjz.51.2024.04.06.17.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Apr 2024 17:15:17 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: openembedded-devel@lists.openembedded.org,
	yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-java][PATCH] README: move to yocto-patches mailing list
Date: Sat,  6 Apr 2024 17:15:07 -0700
Message-ID: <20240407001507.92675-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 00:15:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62890

Since the definitive, canonical repository remains
https://git.yoctoproject.org/meta-java the official
mailing list should remain in the yoctoproject.org
domain. Move to the new yocto-patches@lists.yoctoproject.org.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 8c55a41..9c987fb 100644
--- a/README
+++ b/README
@@ -67,7 +67,7 @@ Known Limitations/Bugs
    +--------+-----------------+-----------------+-----------------+
 
 If you encounter any other problems or bugs please report them to our mailing
-list at openembedded-devel@lists.openembedded.org.
+list at yocto-patches@lists.yoctoproject.org.
 
 Usage instructions
 ------------------
-- 
2.43.2


