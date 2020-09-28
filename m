Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.37779.1601302671515726047
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 07:17:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bOrPZzQ4;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id n14so1166735pff.6
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 07:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=SM2t3xUfTrIqqojhPCMHl2lNnVijpakmagjJuuMXwI4=;
        b=bOrPZzQ4Dai9uTICTzTLczwElBJCmQCLY/dfHzpnbhKY8R69qL3Jakfdjon1kgrBZq
         vYO5B5bNw7REycgoWuS/1/YZm02rb36NIR+wJLSFP5ESHM6xm4YBtmESm6n8+IOA7JWo
         EE4BLp7ylSqXH2lnQDbkQBH2fa77z23imkkxlAzLmC2skAWPyOdKaO+trOdv9bmAQTvc
         WWUSY33osjfth+XRQPMRGZ00ELtiuSzvqcY6fjPaMav0izW9hcO9SnEnnFPrhh4YN2UT
         bznsueUtOczOc0DXvhfP9QF9JcETf3yozhbWj9LFaEVgQvk8O3NxnG7EZUqxWH7UsPOG
         1r5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=SM2t3xUfTrIqqojhPCMHl2lNnVijpakmagjJuuMXwI4=;
        b=Kl6atcJ++QMN+DMsS89kOtuZU1sJJDbXiRbp7mKcoiA6j4IDCj4puXZOn1AHxC6H0V
         EQOt/3R0FnIRkwygemewgZclPstOw1UyaH2wBPqBqx2RDr40h/aUit84ea5lViYnmjnA
         jpIB0WQeTAJGkKJf8qMpc+1HRbfuJMPZJURAlmroBELpP71RPIStYchJClHkCaC6WW21
         pTctO64pjKFy7+B9WX/vPuzUXKyjbwcKHqDXtGGxXJGfws2koqi7iPH793At1zKGWYJy
         bc5hKTOFqxRfsT1YY9oOczifIWFL55BWU5pcyD6ujd0Teklm+kKaUJAdpHtBXHTYWd8b
         nHWQ==
X-Gm-Message-State: AOAM531DFa03F7wT8AhjTo8VBBwHbeCGgHKqR9Sxj8ENnUKrbeYXcTte
	UobJqAnttn8Zq3UQlqqZdmtdvBzw/W0=
X-Google-Smtp-Source: ABdhPJwhwkiisSnktUQxI9q5ydLzsvP2cTC7cTn//FeR8c+QAv0ByQPIQZZeb9Sx/MHz/1zGkqlZ4g==
X-Received: by 2002:a17:902:9a87:b029:d2:1ec0:4373 with SMTP id w7-20020a1709029a87b02900d21ec04373mr1795301plp.40.1601302670784;
        Mon, 28 Sep 2020 07:17:50 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:9d97:e0e:5802:c8f4])
        by smtp.gmail.com with ESMTPSA id u15sm1639533pjx.50.2020.09.28.07.17.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 07:17:50 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: add libest package
Date: Mon, 28 Sep 2020 07:17:41 -0700
Message-Id: <20200928141741.13583-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200928141741.13583-1-akuster808@gmail.com>
References: <20200928141741.13583-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 4d98631..c69e3b3 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -37,6 +37,7 @@ RDEPENDS_packagegroup-security-utils = "\
     python3-fail2ban \
     python3-scapy \
     softhsm \
+    libest \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
-- 
2.17.1

