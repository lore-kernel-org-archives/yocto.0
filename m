Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
 by mx.groups.io with SMTP id smtpd.web10.3173.1595645326454890936
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 19:48:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f6KiFtGW;
 spf=pass (domain: gmail.com, ip: 209.85.216.66, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f66.google.com with SMTP id k71so6384323pje.0
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 19:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=0NXjuSrDAr8hRrJeCe9xkiBZJR3Q4m80rRNj8uu2bB8=;
        b=f6KiFtGWQV1m37LG1Bv3X1fcAvOkt82EsEbwzKjuHQsMuTyyfLoghxNkL+M9W9w409
         EAuKGOymlQkOUNynDo5LrDDRZnc7K873i9/cDr6GDTcmJ4qziIa6iUuvVHO01/5zxg/l
         oRwbrmDLdYJ2RYSOdbuIToIapDehj3AqF71I7iefKyJYoDx1rzMNWKUuWMqoNWF+ZW6u
         Y0pjOdhs7r/sxZZCBttAntnbCH6hF2j4zw8vqFzrUhtHYlHnKkFzYK0PCzHiN4K6UnQ2
         piTQwKzAT8s65s66HtlarLZMEqk2r+O0dHQPxyyKLNkZTCxgU2sSOFbMcv14dqZYOQTr
         1cmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=0NXjuSrDAr8hRrJeCe9xkiBZJR3Q4m80rRNj8uu2bB8=;
        b=MXunjW833P9k46PhLXQvp1pH18MB7xFLQXDlj7DSus60Q4eM2yjyeN812S5WlpYuX6
         vSyWu8e/FDhK7qsElJDqSIRTLSLOPZ3CH7E9fkCtgXJ3He+QVB1+WTdm/ntCrczqYRKn
         Q7U/yGooyaTTuW+B6nNt8h9e4MZD0Bwo5CGPAaMMocBJN6ugQ6IjEydRzEI8fVkavjma
         5b9CBqB22n1oyLkWhuueVU0toBfFgjIDG/kTcD8qSW9IkHEVng2RsHDSZ0oTulzkgOTr
         HcsWI4FcdxrqlsAuyt10O2hE2bayBJlORkz5WoNKhD7xM/B3u6UdB4MiHWYhOAiedolx
         Dx+g==
X-Gm-Message-State: AOAM532uS/5mbbqSQYIAkWamN4abuuDu7ajycs5jKAVucl3huvTYwqs+
	dTjOCZ0IOv/N2hlxlLCvFxuruI6D85s=
X-Google-Smtp-Source: ABdhPJy96teFx0XInY5J/vY7s7uju6PGKpiOG4g01N+DVXJV+EoWtuJUvCgVqe+awz0ieeSgJYHYaw==
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr10687027ply.117.1595645325868;
        Fri, 24 Jul 2020 19:48:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:c16f:613f:b5e6:25b7])
        by smtp.gmail.com with ESMTPSA id d18sm7117799pjz.11.2020.07.24.19.48.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 19:48:45 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] packagegroup-security-tpm: add more packages for building
Date: Fri, 24 Jul 2020 19:48:42 -0700
Message-Id: <20200725024843.14793-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200725024843.14793-1-akuster808@gmail.com>
References: <20200725024843.14793-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm.bb   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index 25126ef..3844c7f 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -11,6 +11,11 @@ SUMMARY_packagegroup-security-tpm = "Security TPM support"
 RDEPENDS_packagegroup-security-tpm = " \
     tpm-tools \
     trousers \
+    pcr-extend \
+    tpm-quote-tools \
+    swtpm \
+    openssl-tpm-engine \
+    libtpm \
     ${X86_TPM_MODULES} \
     "
 
-- 
2.17.1

