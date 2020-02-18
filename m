Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.5703.1582040206455528111
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 07:36:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eYZPiOff;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id y8so8203166pll.13
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 07:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=LazXbSfsTnTjruJ/X5nxyxKEEtnCy2kMutXEBig5CFM=;
        b=eYZPiOffutS+33scylAZwtrGyFLo+deCjj2kUi2n4zHVyU9kkGPaL/lSe9EE0pGUeA
         oaohyrXbAu0OEvsY4yWbw9GMLc9sG8GbHSWe5nwywY3dUj1y+JK2hQyRGR9scrjU/rMI
         3niJhV6/uElRR2zbN5T4X9Jjz6RqZPIF2PoPMm5jJEfQAANr3hwO8KWnaFLMB+JHHOsh
         n6zPHC/vwlucZeSagXwcX38NONeQN2tuagF5X8fzly/hyKBeYhearsn5UtOWvpc6FJkW
         kxyG/FZSaW4oaxNflgJq5BHQwnJYWfbY08clW0uCf66vg2truOGc3KLP7GU+H/ISIrLV
         fH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=LazXbSfsTnTjruJ/X5nxyxKEEtnCy2kMutXEBig5CFM=;
        b=Y4ZJim9ZdHZjzZiI+XEN6WoGoFc8ivDytxVB+7A6I/mgsJBfr8O08carBQedTESSfb
         oP24jCvd1NXCQJ3j1jdXTNs/QeRzz12r8Empi98cXO1OwpbGHoXjmtrWmda00o/AXkuS
         FHw8r0YmqSbO3DY8EKcV3QaG1nK0twk76EW3W4rdepH8kdAaly/uVBtbCy90inX7TFGa
         e0Izsc4RpsYINICh3ADarXXPsYgGvHqiRdP3imc5F3CSQJ2jIeEhHy/yNAiWb6pUUrxB
         94WChSqY/szHRE/p12uBn1IQt47fvRcFvmLqMD5zPfaVFPW/E8KYPaj6531U9IhJpD2n
         TD7A==
X-Gm-Message-State: APjAAAWGmGuN9WzO2xIPWfmTy5NEt6ph2U/gvLsNs2nQu2HUz/h1yKnv
	18BEOl1uTxanfFf9TtYDWMouc5In
X-Google-Smtp-Source: APXvYqyS2MWXTYcqVQPdenpVJHFQr1X4Su8LEI5u9MrYRxiOwUGnSvJmAUpjKgTKuPzlnXLEVwhVlQ==
X-Received: by 2002:a17:90a:f012:: with SMTP id bt18mr3424699pjb.8.1582040205368;
        Tue, 18 Feb 2020 07:36:45 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:103:47a6:6829:8136])
        by smtp.gmail.com with ESMTPSA id s23sm3569152pjq.17.2020.02.18.07.36.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 07:36:44 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] clamav: add bison-native to depend
Date: Tue, 18 Feb 2020 07:36:43 -0800
Message-Id: <20200218153643.11933-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

fixes build issue:
clamav/0.101.5-r0/git/config/ylwrap: line 176: yacc: command not found

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.101.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.101.5.bb b/recipes-security/clamav/clamav_0.101.5.bb
index a4c32e1..984fb22 100644
--- a/recipes-security/clamav/clamav_0.101.5.bb
+++ b/recipes-security/clamav/clamav_0.101.5.bb
@@ -4,7 +4,7 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack"
+DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack bison-native"
 DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native"
  
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
-- 
2.17.1

