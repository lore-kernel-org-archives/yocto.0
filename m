Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web12.30421.1585498437348177586
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 09:13:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nJ6aPAO1;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id h11so5704335plk.7
        for <yocto@lists.yoctoproject.org>; Sun, 29 Mar 2020 09:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=BXxW6ololMhXZc8y/dXN6HdgtQQgzMqpQ8uEGAm3y8o=;
        b=nJ6aPAO1vHSCle7luFA5p3PphOcowJZ9GGuSzEHtqyzEAwUNLXIBb6s7dX4SGAfAII
         qGksxkQcNGyNoeDyazh/t9b/26Xl1/2+O50vB1HZZIvA3SJ3F3Ds3yAJkH6rnoBZlzri
         VboE3j3SzquGERF/KNpjZx4J5R2pj1LW6Lh8++tqsNPT8v1AaNNGe273gQLMMCNraYaI
         DqakFkP/o/mbD/sGK8NjZR//u548yJUaYemtuaP9s0oOq8IN+QUVwM4dGzep4+vnmAoH
         eU7VX7mZjOXQxzvBAuVuvz1DxZuUrzCkgwsVVC8+NnOABUx4OVYwiUVVweIuxcuuJgNg
         m1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=BXxW6ololMhXZc8y/dXN6HdgtQQgzMqpQ8uEGAm3y8o=;
        b=qquoGdMuFkaxZaETtFtVdbYFUFhb+sdlOdwRfOMGNqJM9+YIgmAy6l99NEJUAtJj+7
         Scl8suCDMQTHyIawCBqN9pnjB/5rlcCTih6UVoyxsAxoBaF+YQjRQrKAUmMvluyxWpJD
         xW+8Bqv2CYzR6C99ZsoN7CVVz6emLlygGqxkdrVBJtS5PvBdr2Kis0VUpAUonwRhnCz3
         dMufwIg2bKTN/2RcLcSx2vQ3++EGsDSqTcyD07Mnhn/Ypstxvb6EldIQ4BZJRTyOWCRi
         CepugAprmGnOend6AsVpg+H7+y3sdMOCdfQUiT5q3MMP8MLHB1/hsY0jiXGwSZDb7g9t
         G8DQ==
X-Gm-Message-State: ANhLgQ3yruxNZupTvWNTctebX3nGP9PZu4/o+kaVBzx2DA1n+CYmposv
	yZ42TQ2YBlImqVv+OogSSNpO3gPb3Yc=
X-Google-Smtp-Source: ADFU+vtPuaVAUA7g491fR7gPETtj6SPUr9eLwoR9/gXrfazG760xB5eU/JU4XN6ikJX3JUG4o3S2ag==
X-Received: by 2002:a17:90a:e88:: with SMTP id 8mr1897263pjx.0.1585498436264;
        Sun, 29 Mar 2020 09:13:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:57e:643:320a:bfdd])
        by smtp.gmail.com with ESMTPSA id 189sm7878857pgh.58.2020.03.29.09.13.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 09:13:55 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] buck-security: fix runtime issue with missing per module
Date: Sun, 29 Mar 2020 09:13:54 -0700
Message-Id: <20200329161354.17653-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/buck-security/buck-security_0.7.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
index f6cbe3c..179eeda 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -32,13 +32,13 @@ RDEPENDS_${PN} = "coreutils gnupg net-tools perl perl-module-data-dumper \
                   perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
                   perl-module-lib perl-module-posix perl-module-term-ansicolor \
                   perl-module-time-localtime pinentry perl-module-pod-usage \
-                  perl-module-pod-text \
+                  perl-module-pod-text perl-module-file-glob \
                  "
 
 RDEPENDS_${PN}_class-native = "coreutils net-tools perl perl-module-data-dumper \
                                perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
                                perl-module-lib perl-module-posix perl-module-term-ansicolor \
-                               perl-module-time-localtime \
+                               perl-module-time-localtime perl-module-file-glob\
                               "
 
 
-- 
2.17.1

