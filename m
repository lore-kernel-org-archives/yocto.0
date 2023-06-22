Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F683EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 17:06:28 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.17275.1687453582985400579
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 10:06:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=VTuCyZQx;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-57026f4bccaso77557237b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687453582; x=1690045582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iS1Si/FuoJQJt0QKgTgtqDRToSyWZo1+JGiml9RyFdI=;
        b=VTuCyZQxTkHc3B66t8jYcvzH0gI2Vy6roJcOCnIilWvINOKCZzoe2osUWQuLGh/ark
         EkEB3vSOxA0nJuUwRmRb/EWO2DW5EP7R6C3XvoPA1o6tH6RSKX2ZJnKUciuHQxCKgFmt
         5qfDJXTqheX/J8dqBSRUIpSrC98Yrmr0wpivsTNLzCW8bYc5vL1jLLmkRS4C3Zp2axXp
         sKXW9jqVPbQ92SMsyTKRm03Q5AN1V5D+oO63Wb0z1CzmhmQ2PQwwrGYk8+u06PF2D3vz
         rHC7577oDgL3iOLFqdxuRObfbH0D/tBIjRbSlNTvtlvZfPdQTW4GX8ojEBHV3i8wV8cy
         kCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687453582; x=1690045582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iS1Si/FuoJQJt0QKgTgtqDRToSyWZo1+JGiml9RyFdI=;
        b=UgM9Q8jUeqlV/wgvRB8r9c+qUH0ia0ndeHAlfenG8kXDvOcIrhMnwknBmLR8A2thon
         tXSwYaLJ0LdS/hGtVvrne2s87XL9D39g19530XPg1tdhYrQwMkMjP+97iYxjYH8IXSrO
         zefwSI63QNItgMZia1iDMFqNnEaBudsQu8LRDn7WjNfNKvgbOw2ANRWNK/UmDRoGUFWH
         PNSfAIAMnT1a1hrsvtLqSzBSp2qhBTIqlw4aBamUPdLMx3OTQl0PWmjjaucBnzYj9k6Y
         CWQUukHrbFEqdPPfBamJ7NC7Xqrb8KktW/LqbPKx3300138AnVMfNlt+1BabYBVs0ynL
         g82Q==
X-Gm-Message-State: AC+VfDwElRkGcX1p6d6n5Tg95NDKa5gCEtcEgVG1yQj6ycQEDZvM3fqw
	0Q0EcAI6P4c+xeaGACIP7FjNGtrPwQI=
X-Google-Smtp-Source: ACHHUZ4DC38nUFPtAD/LZaip2xIt2pu/hLNh5i/F4kCBQljvknCisuK/z8Cg7V3HDx/p5JfPm7ZX2w==
X-Received: by 2002:a0d:df02:0:b0:565:cf40:238e with SMTP id i2-20020a0ddf02000000b00565cf40238emr18716900ywe.15.1687453581941;
        Thu, 22 Jun 2023 10:06:21 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id v20-20020a814814000000b0055d7f00d4f7sm1916411ywa.22.2023.06.22.10.06.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 10:06:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: add os-release
Date: Thu, 22 Jun 2023 13:06:20 -0400
Message-Id: <20230622170620.3800602-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230622170620.3800602-1-akuster808@gmail.com>
References: <20230622170620.3800602-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 17:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60411

Exclude openscap and scap-security-guide if musl

Fix RDEPENDS list to include compliance packages.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 8dcbbc7..494745b 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -22,6 +22,7 @@ RDEPENDS:packagegroup-core-security = "\
     packagegroup-security-audit \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    packagegroup-security-compliance  \
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
@@ -97,8 +98,11 @@ RDEPENDS:packagegroup-security-compliance = " \
     lynis \
     openscap \
     scap-security-guide \
+    os-release \
     "
 
+RDEPENDS:packagegroup-security-compliance:remove:libc-musl = "openscap scap-security-guide"
+
 RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-- 
2.34.1


