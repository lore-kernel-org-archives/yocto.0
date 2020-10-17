Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.2937.1602957837392323369
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyButMK2;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id a1so3250374pjd.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=kPXjAE9njQ0Tx6GzsHUPwHxk1WUM53kc0s1UTF84TOk=;
        b=eyButMK2XGv2kX/KbYm2WYADyQpLzC+9H4mkwh7hXXgbau60EJk+axIGSJotskP2pY
         wCtK3CkmSmj7n4WjMTvGIKLPauO3XExs/urmQCdnB1JowuaLbZy07vzxinx6KMX4zbTl
         nbl4z6MWjOqNiK22jE+lbZwvHtg+v+pNX5l7rHZcC2VPvz/uGpvuX5+UML7S9lNmgg98
         FJo3UYpigPShZ5ShvWq+5nLff12uC0/7KFk2vQPpk1ctvf+veGWrtILwZKRWRsGQ/Why
         0rfB0GbZX8XWFsK5WRjqHCnHJYWefMebO9v0yDC8P+44MFLt80TNZ5GwDeW8CdEG8Y3j
         IwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=kPXjAE9njQ0Tx6GzsHUPwHxk1WUM53kc0s1UTF84TOk=;
        b=LeTW89e/3x6frIUL1Yrc3btSEB8ee9U6b1zRCY9OkwyZTdu53N1i2BqRS9XW3N11sP
         dIbfLZws63jOolFJWR7p+Vdn4DpZrdaBuFZBZP+E+l1b1+Ca51H9zfA9Yvadd7B7/Ith
         AjJO3OzamV7j3U5pwnesfZSWaP9dEEFlSJMPQ4PlAf5eT8/TXeabEMpqUpYqNqhdgMlK
         YCeSqg/IITTkk0A+vTSyidaRCQpNyQ8f7UpSjGimrDKslgzWkiIkzQIYidkBvplz0QSu
         c6eXxElwl1Q9xIYybTeSAe/OrYsD4g17SN9IYDEeVTbqU9yEdln173vdkQGr2VtuKoF8
         s4iA==
X-Gm-Message-State: AOAM532sccEEuUUxrhRBStDUAH3TCV1Y/WJkYL+9zv1QIPSLtHTdPCUf
	yTtb4bbMe5ttgnzKHYbUy95zXLOCSiw=
X-Google-Smtp-Source: ABdhPJzf1sZSw+fSMGyyX66JsUavSwHSwiX2o/l4s0uazBDvgTDTdiZkTsKqjUaE/Cms+NU+tDHM5g==
X-Received: by 2002:a17:902:59d8:b029:d3:d115:66d9 with SMTP id d24-20020a17090259d8b02900d3d11566d9mr9490600plj.84.1602957836791;
        Sat, 17 Oct 2020 11:03:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:56 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 20/32] packagegroup-core-security: dont include suricata on riscv or ppc
Date: Sat, 17 Oct 2020 11:03:17 -0700
Message-Id: <59e5512023f5549b8442470290f42f3f814b2348.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit caf76696e8669ee48339c13f01042da9e52515ae)
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 539ea2a..72ca0f4 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -55,7 +55,7 @@ SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS_packagegroup-security-ids = " \
     tripwire \
     samhain-standalone \
-    suricata \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata",d)} \
     "
 
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
-- 
2.17.1

