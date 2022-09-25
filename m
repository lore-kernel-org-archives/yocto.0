Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A142C54EE9
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 16:20:21 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com
 [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web09.18676.1664122820627568181
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 09:20:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nc+g6Zbb;
 spf=pass (domain: gmail.com, ip: 209.85.160.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-12b542cb1d3so6492436fac.13
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 09:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=+d2V98EiyrVvRIWn10iMJc6kVEaGgrdC/JVDqH9lQPI=;
        b=nc+g6ZbbxQWdaV8lWHaBIJdtLC5lDqpajS3k8ghZ/7dMTgJbnlR+atoZr/wG4s0djF
         6A/0ZzQfrVi616A9wi3Gk0KjwJiIwKEbgSGF8vPT1FVZU6mNRWeX6Gy0TwciVBIZs8LQ
         m4QxcWHK+Q8U6G3E5gbDN0ugZaZosEdiIvTmFXPPsWQwKPEPyeuYO4Q4jWzZQzSqndzL
         KCGZAvE60cAZVuEBxT5OUOau8rPhuyNlYjR7PKzxU+PwVZtbiiU/qd3IAbpqZp/P2IrI
         W3p/UIZXOK2Ysyy2M+1iDlrwLFlsGSFB2eXZH+HNHUXJC4OAVJqvti3P8sCtz3ppdw0J
         Iqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=+d2V98EiyrVvRIWn10iMJc6kVEaGgrdC/JVDqH9lQPI=;
        b=8NFo+EGnsF+Jx55/E4X+i/wEmizeKWMdQ8Nl/FsaThnzQrUyvvi5ZbLKB+IucPYdhT
         VI8Y1A/kKMJuAySU8BGHvh1EVdMy2ey0jgpJPmUBuL1pELz+2wi/Pet5oiVjgs9uQ2/I
         7b4Hluo6HZXf7/Ojvpdtz9KxsbTmDtBrxsbfzsVFveuSVALSL8BWheW9Fp6usEUEf6Uy
         xAT+d7fohL2L4Zl3AdcdxIf0m7Ew0AFX2tbN9m2jH6AZUpOvWZ0lWPuJDuhdI8RdDIxe
         PIko3NRLimZtVjrkpS6OQyBoRuGSzlbivuAZ4MCfjqwOEUJuKt4fBiKrwwdANuOSkXgJ
         w8bA==
X-Gm-Message-State: ACrzQf0KoMfBGAnUwHoro/dC6UNfGqFEyl/WJG+5ddgZNzydS7lxSmSt
	VHcJh+SU6526ex7jbxTinzLJsDbSBCQ=
X-Google-Smtp-Source: 
 AMsMyM448mP41k+xkBF9csb7FM2Nqgc511+0LAULk85JxmC3ZSLvUXQEUV/9sV3qIHKndxnJpAnn7g==
X-Received: by 2002:a05:6870:c897:b0:11b:de9f:57c2 with SMTP id
 er23-20020a056870c89700b0011bde9f57c2mr16028971oab.267.1664122819499;
        Sun, 25 Sep 2022 09:20:19 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bfa4:4cc0:9b6c:6bb5])
        by smtp.gmail.com with ESMTPSA id
 f11-20020a056870548b00b001278611f0f6sm7575534oan.32.2022.09.25.09.20.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 09:20:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] apparmor: update to 3.0.7
Date: Sun, 25 Sep 2022 12:20:16 -0400
Message-Id: <20220925162016.2607065-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 16:20:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58151

Fix typo in HOMEPAGE

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/{apparmor_3.0.6.bb => apparmor_3.0.7.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.6.bb => apparmor_3.0.7.bb} (98%)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.6.bb b/recipes-mac/AppArmor/apparmor_3.0.7.bb
similarity index 98%
rename from recipes-mac/AppArmor/apparmor_3.0.6.bb
rename to recipes-mac/AppArmor/apparmor_3.0.7.bb
index 45f19d1..e7d677e 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.6.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.7.bb
@@ -5,7 +5,7 @@ DESCRIPTION = "user-space parser utility for AppArmor \
  which is required to convert AppArmor text profiles into machine-readable \
  policies that are loaded into the kernel for use with the AppArmor Linux \
  Security Module."
-HOMEAPAGE = "http://apparmor.net/"
+HOMEPAGE = "http://apparmor.net/"
 SECTION = "admin"
 
 LICENSE = "GPL-2.0-only & GPL-2.0-or-later & BSD-3-Clause & LGPL-2.1-or-later"
@@ -22,7 +22,7 @@ SRC_URI = " \
     file://0001-rc.apparmor.debian-add-missing-functions.patch \
     "
 
-SRCREV = "822db765c6fa7f9de7233c4011254a82d4dafe76"
+SRCREV = "0ead606d9e608801f45e13a34358036135470729"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
-- 
2.25.1


