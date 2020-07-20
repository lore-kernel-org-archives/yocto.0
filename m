Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.30060.1595212462207160003
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jul 2020 19:34:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GVmaVwRW;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id k71so9436994pje.0
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jul 2020 19:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=PZ2EjwzEMnRWAIg5YJeYBhdDo96JWCB6wkIU2ACC2LU=;
        b=GVmaVwRW6ZzXrP8Y2XSSeE/t1gDWOQnwLaFcsOdUqG1ax+98Hdx0UOOo3S8+GOn2m8
         BW2SFSe0bL1lf1LUuVBUpMcI+cZx24tmOWTO+7IGdjyoJ5H61Yr0TdNetWK+ztKEU9an
         Fi0UKLid7kuw/AxbSyphkC6DBntORNRodAT+255nBfgHy3D70NXFd3g2SHCAr/as2+3W
         d8UlhF061f3ZNWDwmC6xZqtZpfaBbdfoafW0CF1QtxvMwUks1jwpkK3NbfiJx5W1+zEg
         618aY3LozNs+4vD7FBNCUJrFpgtvMawvOkWebJYH4dN5hnIlV27cX97iJGOWst7ar3QN
         lEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=PZ2EjwzEMnRWAIg5YJeYBhdDo96JWCB6wkIU2ACC2LU=;
        b=ram0FWIa9hMs/IIqeHLv1ZdqC9FUt4lGQg4JHByQn6OFaCGONJ7/LjrDUoew+ZFOEP
         8s0+M8uOw9MWpRw07fwoT5mHN6WOe2sXj+qZMQre7EN18MiocNex0SZsPIiiffaVY1Gn
         Q5As5Pg6RbSJZ8nnm6CXwG1oZmtpEYAhLnR1iewKYc6WbL+vRv1j4iaMRfQjx6nHFk1t
         OkLrm8huwP3KdP0qT3LcT97YU1FW1sSg6O/jXjfq7GpCZH0d58zIH7CV0O5iBqFWRaMt
         jtLOw6cnHOtRhOyAbvmu/C3HbG8OJjvJseZU5bv0hNnGt9/fT2eqwObyFyqvR0uNl4Ye
         kLaA==
X-Gm-Message-State: AOAM533iEBRqXorW9rgNc9TuZm41eJxYmh0VezuERe3z3i6ioCZyY3To
	WHVK27Ffi2KU6RA1z1X1/oYkV91jfnw=
X-Google-Smtp-Source: ABdhPJwrl+uGjybrxi2Q88Uksul/wne0I0WYIyuQxiootJDL9W5pr5Et9G/9IJD0OPV0L2xqlgp10A==
X-Received: by 2002:a17:90a:2846:: with SMTP id p6mr21266706pjf.163.1595212461391;
        Sun, 19 Jul 2020 19:34:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y19sm13598723pgj.35.2020.07.19.19.34.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2020 19:34:20 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] lynis: update to 3.0.0
Date: Mon, 20 Jul 2020 02:34:18 +0000
Message-Id: <20200720023418.16791-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_2.7.5.bb => lynis_3.0.0.bb}  | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_2.7.5.bb => lynis_3.0.0.bb} (89%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
similarity index 89%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
index 245761c..2d59623 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
@@ -8,8 +8,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "fb527b6976e70a6bcd57036c9cddc242"
-SRC_URI[sha256sum] = "3d27ade73a5c1248925ad9c060024940ce5d2029f40aaa901f43314888fe324d"
+SRC_URI[sha256sum] = "3cc165f9007ba41de6d0b693a1167dbaf0179085f9506dcba64b4b8e37e1bda2"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.17.1

