Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.2268.1602955882375548121
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 10:31:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tsH/j3Cq;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d23so2881526pll.7
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 10:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=QiM/TivHiJ8S3dbyFQh45zfMzfJCyrhxI0ThlTnb9Mw=;
        b=tsH/j3CqVA1e7I92+8smAga/rHpIHx2def1vZ3oOVIz7dsLC6VSpH4jCYAFLq9d84+
         lGNPhP8MM/Ty16xEg3lQt7Q+QFaAnD1YWphDrzmdJkyVQ1PJAkf/xUZUReUXJGG0BOfw
         uuk+VosLChhX984t2z0SQRt//MMcxbK6BCzcurJwEL/iC7iN3xRmFukukudGzFHtztgV
         bGQPRsWEquk1mW1VdQ5piaVf59gScQp/TkG/g68EZRdb+3lrFGOfjn3fbqCtBZtRQ7Ot
         nVprk8bB9WKsvlJ088JrtgGskaoJMtRn9SFXJ+xAzFHW1C2hGHG0vyqNpontePVqi/d9
         1Hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=QiM/TivHiJ8S3dbyFQh45zfMzfJCyrhxI0ThlTnb9Mw=;
        b=IsKn7PqknH95UVlPNjl2eyW8NXoucsjiYHdjMUZLohPlzqqAsudECDZoEpXmjYm3CS
         EEt0ZN8u7no8cv6t3lTc9sJxNhbSxQYovIdzhOIK4fuoG5w5OcyNiYjXYIdG94x9ydC5
         Jm+njp4XNUbEWUEDUiikB1BSBuDWdw6TFCKUPpWX6Rve+iHfE5Nd08EXRhat/qsSPfJO
         ekaoWYfOKs9oTuKfbJzIX5tuzpblaVKWjlV0U8ch+wxphuepljBlieAXsLtPsuuI+zYd
         VDKMzzSWCvmnRlTU2NTGQpSifM//l8stNrS06tAH2XsDS6pTFCaSoQnVwr7+dPUgfI0y
         xzpg==
X-Gm-Message-State: AOAM531+oQbT1ZlsIoeK11eVhzkA0sOxLz1OXC6qtrphyUGcXyKIoZXN
	odMK0ZgkqiA9dc8b743RudM0o4pevSE=
X-Google-Smtp-Source: ABdhPJyShcWfY6OPysbyUK9nJnm6S769y6HzqSwYxDZJkd088U+Bt6rE4wPBdGCLRfzKXEC0Mr0eVg==
X-Received: by 2002:a17:90a:e453:: with SMTP id jp19mr10035666pjb.34.1602955881426;
        Sat, 17 Oct 2020 10:31:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id q2sm1176849pfb.106.2020.10.17.10.31.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 10:31:21 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 2/2] apparmor: fix QA warning with systemd enabled
Date: Sat, 17 Oct 2020 10:31:18 -0700
Message-Id: <20201017173118.21919-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201017173118.21919-1-akuster808@gmail.com>
References: <20201017173118.21919-1-akuster808@gmail.com>

ERROR: apparmor-2.13.4-r0 do_package: QA Issue: apparmor: Files/directories were installed but not shipped in any package:
  /usr/lib/systemd
  /usr/lib/systemd/system
  /usr/lib/systemd/system/apparmor.service

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index c1f038f..ba58fc5 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -190,7 +190,7 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
+FILES_${PN} += "/lib/apparmor/  ${systemd_system_unitdir} ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 # Add coreutils and findutils only if sysvinit scripts are in use
-- 
2.17.1

