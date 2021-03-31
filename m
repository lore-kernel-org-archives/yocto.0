Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.1969.1617162686166476620
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 20:51:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpAGNIa+;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id ay2so7221282plb.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 20:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=HQosNAuVhqLy5xbLmJxt+R0seJPHDA1DDqIWoNYo5PA=;
        b=gpAGNIa+/zbagE2yfQtSAirSpGtfWTVWzmJ5hfQ4Mw0xem78dcUToJw61JhRkZOeZs
         PgtW3qo+VhnNa3e9/eJw+mPSgGXK0EiBX9WINkvLo1C0aqfWv8yw4pouVdS88HuuY1lp
         iZxnvVoqkakhZJls0OCYIb7CfJvbaTTedwWBwm2Ib8VBY/GvNUoh0bWts2dySRPf0SPD
         T9KRLMt+6BqoMWYhD77tICmaPvisM5Y+vJzdeDu4Sc5rKMP8UcyP9DsseBkw+02P6CNo
         FK+xF6zuob3RsgaYqZfMynscfL9BsV6TKmCXNh+ryuRiLy0ZIdg+j2xGYy4trzNpBJnG
         cOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=HQosNAuVhqLy5xbLmJxt+R0seJPHDA1DDqIWoNYo5PA=;
        b=QEtRYEn8YY8H4GyV20It5LSoXFw8XkB9OA51EC0wE4lPbK0bAY8TtNv7UCDiuolGjz
         /GY7Yb6DyR4+2LE+rOTk/KifWCC1yOl1BhDd4SwA34Doc0KTgObOLB8bUbqmKJuABnAs
         5Tyr/AvcWkSN+Mq/FJZ0vjBKtf/8egU4dzAgcuaHVoyUUaLH1Rc7WTOGFFNI5ALzvZy2
         eJ1lHfRy74z5CzZmLBeS2BVqcJYchpsRCwRwEu+G72JefSwLwqCMRU/Xy3u+p1Bqekap
         RVXRmOdBEHz4DDtEpc8DH7CbbRg3kFkWVXC/0wj2cc8zAVycRZFjTe57FI1rJPckj3h/
         PQ5g==
X-Gm-Message-State: AOAM5322PqNgske3Mh0VF3kzhP/+xXI41NDnf+XUuLwe2GobvQr37gH6
	liK9sNP+QrkqXhy41JaIekA04kfA7U8=
X-Google-Smtp-Source: ABdhPJwW0GdXGa24QnGhJxmmknkXDTac4NhfU5BEVysyHE688JcsJm3APZ9ELlNw308G+Is1gOwrDw==
X-Received: by 2002:a17:90a:d507:: with SMTP id t7mr1538553pju.54.1617162685409;
        Tue, 30 Mar 2021 20:51:25 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20e0:2ff7:e997:1a04])
        by smtp.gmail.com with ESMTPSA id s8sm500713pjg.29.2021.03.30.20.51.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 20:51:25 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] python3-privacyidea: upgrade 3.5.1 -> 3.5.2
Date: Tue, 30 Mar 2021 20:51:20 -0700
Message-Id: <20210331035123.15205-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ython3-privacyidea_3.5.1.bb => python3-privacyidea_3.5.2.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/mfa/{python3-privacyidea_3.5.1.bb => python3-privacyidea_3.5.2.bb} (96%)

diff --git a/recipes-security/mfa/python3-privacyidea_3.5.1.bb b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
similarity index 96%
rename from recipes-security/mfa/python3-privacyidea_3.5.1.bb
rename to recipes-security/mfa/python3-privacyidea_3.5.2.bb
index fb84411..cd0acf8 100644
--- a/recipes-security/mfa/python3-privacyidea_3.5.1.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "c10f8e9ec681af4cb42fde70864c2b9a4b47e2bcccfc1290f83c1283748772c6"
+SRC_URI[sha256sum] = "26aeb0d353af1f212c4df476202516953c20f7f31566cfe0b67cbb553de04763"
 
 inherit pypi setuptools3
 
-- 
2.17.1

