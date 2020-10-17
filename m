Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web12.2917.1602957821412549438
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDKw3EfE;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id v12so2891492ply.12
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=sfi9AF5n2SF/X+XLyOVmLLQNLKBnYeWGF0knKssUxTI=;
        b=bDKw3EfErzjGQERIDQ8ELtHHoc+p9qaTWwOPRj15KLOgLZqutTGP6Al3HmQ0IViPtA
         bh+LLhHK36TrhG8bmSw2WhwNzQNpEa+Gjky+Z1v3WwrYnaOlCO1ayZzwYKq5+fSRoePW
         tXr5AYr4EnOQjW23QAu2yZN/HBGK9TUyNwR22jk04uYBR2KKtIzwLitOXfClb8YnVuoX
         fLUdUOlUNjltiRd90CyClCWX0Gi00cR0F4pEsRuU6d6j4clXw5BlcFevyLI80MDlF8LO
         HMaA4aTyfq8+ybAwueqRNoCFNhkfzyl1BhEl6vsLHp6TrxmTmHOAzZoe9Pi+l9lFtMWJ
         4XlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=sfi9AF5n2SF/X+XLyOVmLLQNLKBnYeWGF0knKssUxTI=;
        b=Te+npL32sklay6ZP80NNc6FPUebD5UnlqmxUdiO9PyL48uVD3Lu1+50v4dk42SoqP+
         FViK8v5Y06hoz3sE0hpNhf+j4o+Po5d5v0w8/YSS5XS5nASorqkb09WDfuqZ1J7FJ0Jy
         LcA/IJF8CgQ3+Yz0X/chgYzxfbh6K41s6iabnTCWYgOD0Q0Vfds5r9456x7nZo1nyBgB
         aW2MtTeXHns7zibyL8oRihpJDTeFBHDjAl/Giu9WkLgbHGH4M1XbxPcuXJjAvHWmgbhy
         ajt9QyC9AyvE0zHHEDiDl3TTNZcQq79HxVtfdcDO7VU4GAFgw9R82kTMScteSn7x80Sb
         PwRg==
X-Gm-Message-State: AOAM531589b2PyYuXYiaa1/pHQDo2gnZwHKPYLP4u6GV2zaI/cc+Gz/N
	M6OTS2evZwv9EW/nkwu85xta0sNUmyQ=
X-Google-Smtp-Source: ABdhPJxKM8Qarx6qiHOJsRndE/PsxySaw2NHs9p1rDp9DIP3zM7kekrn3ES6iOYheBu2+vEUXS58eA==
X-Received: by 2002:a17:902:7606:b029:d4:c797:a186 with SMTP id k6-20020a1709027606b02900d4c797a186mr9663444pll.38.1602957820841;
        Sat, 17 Oct 2020 11:03:40 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:40 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 05/32] packagegroup-core-security: remove libseccomp for riscv*
Date: Sat, 17 Oct 2020 11:03:02 -0700
Message-Id: <36d732f97c7e3809db67a811b279f86cd21f8eb3.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 29f47b44852122c5618e30037710dde009146eb5)
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index bb790b4..539ea2a 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
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

