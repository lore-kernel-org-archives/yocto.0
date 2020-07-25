Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.10727.1595688082131322714
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jul 2020 07:41:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F/DdBK3l;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id p1so5997506pls.4
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jul 2020 07:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=8be+/RUfaInldHQHgDx52vR5yG+Sq2OHPk9r59Z8XDc=;
        b=F/DdBK3l0luQkbiK4gJC/jOqiDaUNIABcAV2+Cfsar2o0PVrLApN/A+4ImeiAcY46h
         r3ZD/2ZHWHczJm+nvt8S5cyrixZhVwTRhjR61HzdVJAO0aQurESrxhKz1BMl/I4pwCtW
         pm+a598i0qVvXWuQBA7NZkuR66IJ+b+Tmlhca2V5LtqCbcbWJWpw3scItFSE3rmkocUx
         leQmxAiGBZ3Ces8cfRUbxdy5mS6BWmRpAk/RMTjfxMyRjTwBn73lXJv3uXo1VUO4sbui
         dAiGSIMXAz7Ew5wV6sEH5e9a24NyxkB5s76LWr1txj+kMquYE3E+PinYEu5se2B555Y6
         mAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=8be+/RUfaInldHQHgDx52vR5yG+Sq2OHPk9r59Z8XDc=;
        b=dREqANU+R0bT4tcmErYtoflTqYeomk3ObllWvHnf8BE3mOzcMFniOhWQ7Jb25C0nt/
         mPNnYZhWOmPhGRI61LzjDNPynkFiqn+Gt/gb57AJETPr+eYYHF1484b99Oso76HkjLdu
         nIpR21i+gibYNqaHixpBr49WexELM0o47ZVEHUw7NwIj5WiBPrOFU1Mz37Y45b8qlrns
         i5smn/Zl88LoGvMMlkmSKHF1KTszgETvfj55t3+TMKB1RbSTfpnnHtylkprXQi72S42F
         NopPRPiXqbU/DwCrwx2Uten1DWszTzoBYji/22NbL/vec2dmkBhV2Rr5aXUcB+MbxF2T
         geXA==
X-Gm-Message-State: AOAM531c+HNG5N9+kJx+A50YtTU5pBNQ6ZJv5An1O6hWX9uiTJxWMpO1
	22CU7hbrSzL7ntOo0/WC7J3tkiIPBjc=
X-Google-Smtp-Source: ABdhPJxKd9KLT/sQ77v85NBTx+PTtOZPhUbZ27y+P5S/M2WGsqkVrHqU7rg1Hus6IEyUQ/9tXLyYGQ==
X-Received: by 2002:a17:90a:eb01:: with SMTP id j1mr10424435pjz.29.1595688081498;
        Sat, 25 Jul 2020 07:41:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o8sm8721745pjf.37.2020.07.25.07.41.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jul 2020 07:41:21 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: remove libseccomp for riscv*
Date: Sat, 25 Jul 2020 14:41:18 +0000
Message-Id: <20200725144118.13387-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200725144118.13387-1-akuster808@gmail.com>
References: <20200725144118.13387-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index bb790b4..539ea2a 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -28,7 +28,7 @@ RDEPENDS_packagegroup-security-utils = "\
     python3-scapy \
     ding-libs \
     keyutils \
-    libseccomp \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
-- 
2.17.1

