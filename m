Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.12903.1599890964583521512
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 23:09:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yz6OJC5k;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id l191so7957198pgd.5
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 23:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=It4053Rpql71QIZudXzbvfd2MjnmJ7hJioVjXtXCUeo=;
        b=Yz6OJC5k8X2E1IVwqUCFv+isbdQY6Sz386TWC87IhB+oSQ5XDsF6mmLkOueLJtGRoU
         jlfF7Essiaa2hJW+3lLglEmchdFbPwlsY/VsUrWdtAMJCPjNR+81MegWh4uBMUBr5kyE
         xPoH44hxuORt3zxMyzbvv42+Z27qvTqk4NKRkK9hhyD13VTHHwupJBmFalG7KbNcLFs/
         oiOX7vVNt+Dr5oU23qW7COThbuNcDX0JjtsGpA40cUGM5SfXK9Ye4w/47jHybb0NCTYs
         HsYG+h5YNoQJ8v1pMN44cYhS7YrwYnRIOalKL9ZtlKpDwiwMB7NkM+OMWTQQ5gp0/r0u
         e3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=It4053Rpql71QIZudXzbvfd2MjnmJ7hJioVjXtXCUeo=;
        b=oD9fGGcaFXvm7PYJ8SX6VioEP0LzzIvIjuC28pzB3ZcrL2LBxESeOLiOlVfKRVLtll
         iDRcDkTXUl5TKoIgWVuhZ++umCb59YgonyFJfahuXOaLo01m3+maU3W/kO6Rgr4QIdEP
         MAZ23JSry95fYR1yhA+J5CJmBL0QKlETFxhaIepfdhC4dfre9h2ecj7riRzDhdXDuNtM
         JUemue3fd19MJAGgYyIlCNpikSfZzvLqmi/Lab0BO1I87n2kaCKmrCc1sA3gyQjNMWE2
         KCoW1PmKdLxcSo4AiwhqTUrGxNJ408+9lGURNokGiWOtpocPGiToQk7stZpX7+3m04w4
         bEQQ==
X-Gm-Message-State: AOAM532VVI27gFtRSht1mN5BtiX8UqYB1wVfKt/edWaJtVg/uGfYl/ug
	IxLv9M4zo/l6wB7QHS84ut90H2vYlHM=
X-Google-Smtp-Source: ABdhPJyfHOzdOE2rdmVD7ZHk+e5ioqmcivTXXPSaF7t4GQCBBcCUdRBzwqSb1WhAzr7usm8Yl++j6Q==
X-Received: by 2002:a62:7ed5:0:b029:13e:d13d:a086 with SMTP id z204-20020a627ed50000b029013ed13da086mr5124006pfc.29.1599890963437;
        Fri, 11 Sep 2020 23:09:23 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9d9a:aa32:31fc:b6f0])
        by smtp.gmail.com with ESMTPSA id z4sm4019986pfr.197.2020.09.11.23.09.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 23:09:22 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: dont include suricata on riscv or ppc
Date: Fri, 11 Sep 2020 23:09:21 -0700
Message-Id: <20200912060921.10943-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index c6342fd..6aa0d6c 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
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

