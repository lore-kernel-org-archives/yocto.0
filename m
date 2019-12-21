Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.501.1576950365181537933
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 09:46:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHstHcgT;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id k25so6613515pgt.7
        for <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2019 09:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=rgMB13OFa7GoFxPszGOpflylmLIprxGxZL6+dHXB/JM=;
        b=XHstHcgTdW2+gH63p9zrvIG9lVkGn+Q1CXhGw5RucOkB4CBa24IfELBMWYBCDhISyo
         nedwviKZy93d/wfJPfrQwRgrLJqwG6c+/ZDfg/lGcgSU/CAXa91kb7GIdLMzcOCKeMKU
         LKzYuoZdAXLPj+82XyzDBewFiXmyKxaUbRLAGNd2SZ9Yy6TT1CTQ6tNbySXkT2NuNUSH
         gKK8tNPWvSkQcSVugUuRBJjTqBNTDrRlhPHj5vQ9JWpqe6mVRMiagO7MJgrGLJc3u9Rz
         ZFelmgVfQH2lH6kn+W0jlFpzsOQ80Y2oWe/tDfShK6VAPYiwRXHNModOd2RCYw5wkbnE
         jpZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=rgMB13OFa7GoFxPszGOpflylmLIprxGxZL6+dHXB/JM=;
        b=S0yMGRPmVGxX/19gihdOPZwWL9f3z7JwZt2VPUBZTXi23XR4+5R8rkD7DZrAbVQRlW
         RLXodzJp9fdO2hrGf7lgrP7NR+hkIwtQUmU3j88SaEr2gRjwrNk/NfNadqMZXmnW7JYS
         l1UnrfnL4NdcC5x2VfQZNkMeOvZ/vXzQg90iMmImvDRtt9M1Rh1QEIIsKiWPNzppBvVF
         22U9nDk35vG31wCm0jTnibG3JJdMvxwNXZjv4VbqmqFL5w97lR6QCuXGhdJZUbpkV00k
         WkpIYbm+Xxl+uvKq+ZUIZ2J6O0uRPPKL2LJQMP/UzXko4sVgEObAWUYY3sP7sf1iQ3b1
         +rSg==
X-Gm-Message-State: APjAAAWRNhpBBaEDLu6NUeXYWsz74KZUtuqFUAWamsCYpbZbG6ZvQSwF
	5d1TIVvW9dlbYlZYJShjh9uVOKMsxD0=
X-Google-Smtp-Source: APXvYqwC9Nqg0MLBvRdtnynw/ItU5rvSamF0fthIQJ92ERR604K6T1CmXL1a+fn8Cm+kILxht6UOSQ==
X-Received: by 2002:a62:e411:: with SMTP id r17mr22207034pfh.119.1576950364398;
        Sat, 21 Dec 2019 09:46:04 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z30sm18202669pff.131.2019.12.21.09.46.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2019 09:46:04 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] smack: add distro check
Date: Sat, 21 Dec 2019 17:46:01 +0000
Message-Id: <20191221174601.25481-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191221174601.25481-1-akuster808@gmail.com>
References: <20191221174601.25481-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack_1.3.1.bb | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index f32d91b..b1ea4e9 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -13,7 +13,12 @@ SRC_URI = " \
 
 PV = "1.3.1"
 
-inherit autotools update-rc.d pkgconfig ptest ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit autotools update-rc.d pkgconfig ptest
+inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit features_check
+
+REQUIRED_DISTRO_FEATURES = "smack"
+
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

