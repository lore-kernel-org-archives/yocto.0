Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.7105.1621092252537453892
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 May 2021 08:24:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jb6IxwV9;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id v12so807837plo.10
        for <yocto@lists.yoctoproject.org>; Sat, 15 May 2021 08:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bfhD8UftcSEeyDby9LGr3KJHMw/pMUtylJiCcVE+vlc=;
        b=Jb6IxwV9Wv/ZBmfxDvj70qFRb0EiYol0z/sohRoVj6hMblr79hTP7O2zpkeGK0Xu+L
         EtPvh13jjk8+hr8eE5DFjjTnMwJFXgp49sVbo+wdYjooEj2k1OncdtAxawOXgMpSwkmc
         MYLsM1ilQK/V8/qxpS5xIwTB6pQbHrzQzi7Dy9Ak46HoAskeK0IO9ajIQkCrWR5pKunj
         KC0icJSvEHOiBm1uwZ8ZdAlqXhA8Et4h4ZPlBbD1t4wgoIgDpQUGvFilkYfuPA14FoDE
         jdMUjJbJICB4qPzk6iWsobheI5qcMKET6K2YCmHD19ql+LjdiDffQGXoYWeGCoXVagKP
         z07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bfhD8UftcSEeyDby9LGr3KJHMw/pMUtylJiCcVE+vlc=;
        b=a/TRk0+N5pg96QiAipG3CL51/HU1+qfIs7SqsywWCQF7smTTCyYlYAu40IA37qyTBK
         OqH0AoqmU97HQEVCpjo2l5JKHqmI18b8SE5y0jOt8i3IMIAKukTarmaKs7hIJB7xtAnm
         drK1Wnw9yQWXAm5IvwnYNxW4k1SQwagZAtTwi9EheShUOpp7CivEUBl/q7yCsNoPfH3T
         wcZRwqqMbbDQgU65ZSvjX0I3Q5GlmUAhOxWng1iQjShuYdcY/j3doIEKPZ6ptWZoTwqf
         aY8cPdwSd5kcqfxq4ppOX1Vb8LmrJPftEPaIkRMtwN178U8Mz3H15CH+5pCFkS+8SEWL
         PKkA==
X-Gm-Message-State: AOAM533IIZdgRxYXRNyHo2uLl5a0NyAqI21tDYgo91mTn5/iyxM6+gym
	sabwqME/AmuZEoBwtO7ZNMFsGHVC3ZQ=
X-Google-Smtp-Source: ABdhPJzjX7nGmlFctR+8/dLWSulCslJBwURDliJCRihKDRtOkDVKqMP5i1ty+MaFEuzGXhuUFfDE4g==
X-Received: by 2002:a17:90b:1d8f:: with SMTP id pf15mr57958523pjb.36.1621092251876;
        Sat, 15 May 2021 08:24:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 128sm6263793pfy.194.2021.05.15.08.24.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 08:24:11 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: add clamav-daemon
Date: Sat, 15 May 2021 15:24:08 +0000
Message-Id: <20210515152408.3610990-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210515152408.3610990-1-akuster808@gmail.com>
References: <20210515152408.3610990-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 0bddf64..d7349b0 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -51,9 +51,9 @@ RDEPENDS_packagegroup-security-scanners = "\
     isic \
     nikto \
     checksecurity \
-    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam",d)} \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
     "
-RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-freshclam"
+RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-daemon clamav-freshclam"
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
 RDEPENDS_packagegroup-security-audit = " \
-- 
2.25.1

