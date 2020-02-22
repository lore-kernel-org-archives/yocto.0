Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web09.598.1582393096605478064
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 09:38:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tR9w4cju;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id n7so3023708pfn.0
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2020 09:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=8nlorII5T+/eWgdPFB0hTDEmX5rMKTdWDK1T8mOL8FM=;
        b=tR9w4cjutI/IUFGDk+1hbDp1u9J+NfQR3jouiwFr6heDUPEXI5D7QZSqnvIefkyav/
         /h3osoRTn7Xr4rfVg+ERxD427KPT3sMCsIdKKUZPC2FWHL1KpZUi8E/S8KqWCn4ojKHE
         VJUqE+TmucGQhVDNdHduBN5I1xwCv2GbWv5kHQ4vt2vBI6TnvAQQBR9GVD5i9OFokY6a
         0JECEA/Caws2+Wu7TtENjCv1EgkSfOecOh2bwWfxBJYoPDuMMKXuSt91ealCvnh7kGC2
         kzaAJPANA0soeoulSRJRb4kxkHidIxaCPAXcgncfakZJNgB14gGxbWnvL/vW3g0WnHpT
         sEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=8nlorII5T+/eWgdPFB0hTDEmX5rMKTdWDK1T8mOL8FM=;
        b=MMQZViRe2dfrO1aL8I0sBlmWDOUxyAfcdfagiMxQD9ZsmjGfGw+HR76atIi8rDzlEd
         Dn89pENxxJK6AGfrwxTUiitmUEpoLphOQ3f0BidjpHJJTbp95JKMZe/t5VecF6cQrUwL
         ngLlomFPhUV/gCtQRQcyR/a/PAXoos3AQoNETEXcnNYQjaOHL9s40ay0IqeemUjRXau2
         +vQbxKa4dFc6I4zG1cw4wGolexKO1g/bYgN6JGrCr+QT3b0+/b0TzhUV4g4t2vC56Qrg
         AGfX+MJDxAlGFGmjl0z68AIk/+WAULJbvlAGieZ4Xy8I3rNnKCwuTuo3z31FQQqQ2dh8
         wDkw==
X-Gm-Message-State: APjAAAVdsAyBPxZdMN4lzEiKquE4zAgm6BDR/Mvkq/4nifzbWAFzVxvS
	+OGmHSXwpgL5gZ89f76ddua0e9g6
X-Google-Smtp-Source: APXvYqzfXPBTBNUbaIdmawFz6ysK+nadcMTGTWrmyAjn4YX5KtJEj40E4ptsIaDbsDfniDCWW5QcrQ==
X-Received: by 2002:a63:5809:: with SMTP id m9mr43175927pgb.26.1582393095678;
        Sat, 22 Feb 2020 09:38:15 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id n2sm6832733pfq.50.2020.02.22.09.38.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 09:38:15 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] clamav-native: missed bison fix
Date: Sat, 22 Feb 2020 17:38:12 +0000
Message-Id: <20200222173812.1711-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.101.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.101.5.bb b/recipes-security/clamav/clamav_0.101.5.bb
index 984fb22..f4625b1 100644
--- a/recipes-security/clamav/clamav_0.101.5.bb
+++ b/recipes-security/clamav/clamav_0.101.5.bb
@@ -5,7 +5,7 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 
 DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack bison-native"
-DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native"
+DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native bison-native"
  
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
-- 
2.17.1

