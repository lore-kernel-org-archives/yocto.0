Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web12.11743.1618929684942697877
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 07:41:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xz5W7WXr;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id d25so1660550oij.5
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 07:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=orwn67scH1TuW0aY160FlsHYpErN1kQU0zVFDjFGmOc=;
        b=Xz5W7WXraDAaGj5/XNF/EXWesW+8OuveW+BbPl7ownD98PDYNmTX8WKK+j84eTzPDw
         Kq9fIVewheaN0EaGMpGGhKi7gsO2SChPC7LFy0zD5S6wdQJPfepFB1tQvLlJmjoq2K+P
         REhLce1Inj2Ofryit1/dMPofK25KsEJ+XLoUH0C/AJwMVOLk80Yh63nawz1LerlhQIWD
         iyhSibM7ix00wlNo2SS3pjqnvK8+68GciVNY9ZQeemIajjsf3kpaBhr97ZxpZi8aVdZe
         1Lh2yxTw0hoYGXLe2XkPNVo1kjPET/NeBVLBxnuV73LR631X+81/pVt2G6Jbu+VsCO+z
         yMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=orwn67scH1TuW0aY160FlsHYpErN1kQU0zVFDjFGmOc=;
        b=muOkxBvg6vAleTh+jlRJik31XI+1b08pl+6jw8q30C++bcLgPwdNpBYa1Yz4WRW0Iu
         GxzXbeltLx8+aRbGSl/nSwqPcuGacnsEWso5WYLEtYPZKN/lZ+qrHoda4Aq7iw9+PGta
         KWzWZzMrI+4VRQBGz7F0CLqV9JV8FcEbAj0+RlLHtE9rOSZBJdZnW2z3iv9Pr/IS0S9e
         gp2IYm0ArKeeqZzNv/21TRTd0bgr7BLvt9Ux2+UNEP38CyDlK1S5mrdOiih/wDyb4fRF
         JXl2bAZgXnl2G909I2ZSYR2iMGxT+gdtS/sBod0yRJqjtQnbgovVQgYuHMtci0eO1mtG
         Z5Og==
X-Gm-Message-State: AOAM530TzcKDy0NP6tZO5UJ1dAkEp0iUUpDQR4cMJwOtuEcCMfQFS97h
	8TtFXvRPhzMyozdLk28GoAJ4KuirJhsQJw==
X-Google-Smtp-Source: ABdhPJzsaMVCzLKj4m2bEaqvS0zWl+amh3JsX6/pw9E3p4BYwwNQ1GUI1KKb5vAuebacgCoHF365xA==
X-Received: by 2002:aca:4709:: with SMTP id u9mr3322899oia.98.1618929684046;
        Tue, 20 Apr 2021 07:41:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:eda2:54f2:452e:fbfe])
        by smtp.gmail.com with ESMTPSA id p15sm4284362otl.23.2021.04.20.07.41.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 07:41:23 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: exclude apparmor in mips64
Date: Tue, 20 Apr 2021 07:41:21 -0700
Message-Id: <20210420144121.30087-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 9ac0d2c..a6142a8 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -80,6 +80,9 @@ RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
 
+RDEPENDS_packagegroup-security-mac_remove_mips64 = "apparmor"
+RDEPENDS_packagegroup-security-mac_remove_mips64le = "apparmor"
+
 RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-- 
2.17.1

