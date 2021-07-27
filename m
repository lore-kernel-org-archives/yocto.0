Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.7362.1627362657987401642
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 22:10:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J5kXmGAi;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id i1so14428063plr.9
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 22:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=oMQ5pW8ALmIxKepj5UMjb20uhhzDNV8DEsp2QiQKaF8=;
        b=J5kXmGAiMONy6f9/w+V5O/XMfDpaA/5beJ6SCZNEpTHK4A1n9ZHZKwMWB0kcKDLMcC
         D2tq/eY929/dfNPMv+r8rZ3OEHHpaCj76awvjycNl7MwdCDRwAj69LNi9Lrs96LBTanE
         LgJ6o4v9uo2rGPDJ2oFi1mk6mUBkhhTTJ49noR6BYTRyf7be+S/9/utlOlPesNzQXvrj
         e5u4S7ngrgRNkPOS3rVbYckPCo+c4oYq9l5ouKzf6Ql+ruTvoKV7RUuXcKf81sHwpW2X
         +X9uVMvpsY2SDX6Bisa5tw9DhTZcMJLaiGx43y41+aHjs7QC0HV8jn713qOwLMUkOIrv
         UhRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oMQ5pW8ALmIxKepj5UMjb20uhhzDNV8DEsp2QiQKaF8=;
        b=ZnzT8fi/J7re1Uq7NeWNtN41DORDhKm+QhrTMg4O476HTWqpMuDCxPM+GETa/XD25L
         hocIx4WfCoK7QWoznzYcz1c5a3ZBfy/s9fNI36wvEqBAxb40KWxRSWt/UL0l8VnpYwjI
         dpOAsG417y8F4FyHyGRpGojM7N1A6Tu3wSJM4S1rLnSfRD4xua1AkUrDrXNXQyHSjF9J
         k9GBTwdipNrIjbWdimqEUl71Hw7HSjvrY3I5cv6ZK3+1MRsUjqzECOcXPvit7lke6BEK
         PysPs44C60afqs+Z5DgfR+Cswbg+INq9XrkMdjn0MB3x9OhUhxohOBFZEbkPTY1ZUONt
         v6RQ==
X-Gm-Message-State: AOAM532AjfTJEtodIC3Wz1eCMSD33pccNQyxJgxE/YDEYfS1LtWtceEV
	wo//KiJ3rXptH7Ksq3LDe0koSoff6Dy3PQ==
X-Google-Smtp-Source: ABdhPJxLDSAGigX4VV5hQhF8BzyVpv0GhxFfoK9TGXWCzNkXHZBvmA0ib9zk3JbfqssghYCBLOh9UA==
X-Received: by 2002:a05:6a00:1a0e:b029:34c:4f4a:af3f with SMTP id g14-20020a056a001a0eb029034c4f4aaf3fmr21101061pfv.61.1627362657419;
        Mon, 26 Jul 2021 22:10:57 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:b44a:9e9b:6beb:e170])
        by smtp.gmail.com with ESMTPSA id b9sm1802724pfm.124.2021.07.26.22.10.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 22:10:57 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security.bb: fix suricat-ptest inclusion
Date: Mon, 26 Jul 2021 22:10:55 -0700
Message-Id: <20210727051055.2225471-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210727051055.2225471-1-akuster808@gmail.com>
References: <20210727051055.2225471-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drop libseccomp ptest

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 8e06f30..37473d1 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -88,8 +88,7 @@ RDEPENDS_packagegroup-security-mac_remove_mipsarch = "apparmor"
 RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-    libseccomp-ptest \
-    suricata-ptest \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata-ptest",d)} \
     python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
 "
-- 
2.25.1

