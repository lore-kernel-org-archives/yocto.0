Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.1724.1615249245875355151
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Mar 2021 16:20:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aRoGz07H;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 16so1128338pgo.13
        for <yocto@lists.yoctoproject.org>; Mon, 08 Mar 2021 16:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=DBY3YhuC9oXxcgo0FNU+0TtoUVs3QoS3c+1Ps8M3khk=;
        b=aRoGz07H6Gc7Pas5aypmVlhp5dfqiVsI97+6uxGgh07suRcyfGK49e+TCYz4EeLK56
         EqH0XCBTGfblr/eZkW/b79I+dWe9YSKmWu3ULwNCMa8fS/hO+jHHEuFi26XA+oElGtfn
         asyQPhQGzr+6lrqICVj2e7XGNxbQw/QGacsfuv5o67W0zv7O//RGj4SSVaqU/VdEV9wL
         hS5xELEWsXzrIvuIEPV7BHxt9rJzZOyZdnaLBMsrAe6379A2PAgGCBcttTcqUL9Tdf3G
         ex0921334LtMjJhTlRuuybBmC7TCaC77/TXiHUm+9ocYRbEiTkchJ8FMlutQkAnF0boZ
         84Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=DBY3YhuC9oXxcgo0FNU+0TtoUVs3QoS3c+1Ps8M3khk=;
        b=Uys4PEWVLxAZdWoS6pWm1dFTDaH6fjss0cz2k0xSzkiGOeEnFMVLtFuLiO/pe0LikX
         v4VeS0E/sRAKi4lwIIJTYeO2EXCBvGaGyGMDo4k5iZQCTVUEhpOnfHo4E+V04TIiJfmB
         T9zqA6o0FoLZGCgeUF0QBKz3oKUWkTz/2EhNhAwNIxbKe4s1CiasdzavkJWIjSDkZE03
         iwk5/NdNI1PUQeb2IhSq7azOt+rYOabs3jYKjdvi2lWQzVmyXSCco03jO+GNQQXufmD4
         NrhgRWTst+e110xT9aX5Pe5UbMl0KED2p+l1nb+Ea+06srVEurtPXpo23s95JmrH3v/o
         JRWA==
X-Gm-Message-State: AOAM5336zUv27OsLgEQfMzsWfDEH3//19YGHaTQCh1eqQPIN5afQV3tE
	yuW2AwbRysq9AaF4+Gdkpdg2AKzJSJU=
X-Google-Smtp-Source: ABdhPJzcsh8FejLghGgQuHT3i8J9rEN5K8Y4hTgKyP+CtLdXzblVsr48JFuiIfFRuIplrzbJpXwjGw==
X-Received: by 2002:a63:f14e:: with SMTP id o14mr1894710pgk.260.1615249244799;
        Mon, 08 Mar 2021 16:20:44 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e146:975e:a94d:41cc])
        by smtp.gmail.com with ESMTPSA id i4sm5121950pfo.14.2021.03.08.16.20.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 16:20:44 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: fix building with ptest enabled
Date: Mon,  8 Mar 2021 16:20:42 -0800
Message-Id: <20210309002042.20445-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Use new structure for testing.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/files/run-ptest            | 2 +-
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-security/fail2ban/files/run-ptest b/recipes-security/fail2ban/files/run-ptest
index 9f6aebe..64d07d5 100644
--- a/recipes-security/fail2ban/files/run-ptest
+++ b/recipes-security/fail2ban/files/run-ptest
@@ -1,3 +1,3 @@
 #!/bin/sh
 
-##PYTHON## fail2ban-testcases
+##PYTHON## bin/fail2ban-testcases
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 6767d80..b480c76 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -35,8 +35,9 @@ do_install_append () {
 
 do_install_ptest_append () {
     install -d ${D}${PTEST_PATH}
+    install -d ${D}${PTEST_PATH}/bin
     sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
-    install -D ${S}/fail2ban-testcases-all-python3 ${D}${PTEST_PATH}
+    install -D ${S}/bin/* ${D}${PTEST_PATH}/bin
 }
 
 FILES_${PN} += "/run"
-- 
2.17.1

