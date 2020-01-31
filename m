Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web11.541.1580429976666381134
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 16:19:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tar3FUX5;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id a6so1992460plm.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 16:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=koqZaunsBczKd5L1IJuUmar9WIHIwC7ImhqoDXMDMAU=;
        b=tar3FUX56LkVQrfU8n04Ika2vQe1pRHG8upJM0Tt3JW0jxr/17kuiOkKW7LOLFv3hw
         hOpM6o2y1hZMr2bBhbgY3CFbeuvAfesmxr5fgSZh3qfmdRbK/wQjbhEmFtd77PSEpdtt
         jedIyjQmcTjMuDoVHYObDA8f5ymr0+WOQ42lNjVrvVon+KuVFZs5nyUZ5mwEInYS5a9N
         ZbZ3+FKnoYy6vnTASnwt/m89D7S37gQL3Ii5xiNwAR7K68IoDuQQqCUKfOHrWHzeDGcF
         sOvaNvPzvBGpnv7er5TYF8ASokUT940a/17+8OWW0YrFYmSPWAnNjHay8TPvcfyRk6eJ
         n7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=koqZaunsBczKd5L1IJuUmar9WIHIwC7ImhqoDXMDMAU=;
        b=Lv3WmYEMb9j+Atps+K9DRw7x6CLtt8PAxkiYZyDrQtAUaoV/GGqfyg082FOovGHjdK
         UfQWFGFKgL2yIuISi7MS527PIYrelfND553yjdZ782DTrhFy842PcQFc/XuxPV7YCQyC
         kN4Rk+Z15I0ekkrb3XyFF7VWoGl/wZ0qs53RK8VQYUNVoIdPGdI2JmXvUwKZDIRtqPwf
         yuPKzGHFhiIVtasEKoWCgg41cYRvgUBSjOe1L3yL+4pc7r+rCjdxEzfCiue8p3ekguCO
         J3dTgAoeJlZUqsZgRs34IRRTvXVS+0UA8dBVB1xhS1lssxbnuwAt7dgPGcfhdNY98lZ7
         gMMQ==
X-Gm-Message-State: APjAAAVYjEGmLxVPdtrApuaZKz2EynTTKO0718gccT/2nxld2q+CUDe6
	PHkylNAiewzHRuRlJ5ixxgRQfO+K
X-Google-Smtp-Source: APXvYqy49+QqOy1fNFobovjzsu1B82KDy7jqD/VnzCxaOGvWIT9WE3B0Afzd+KVGPxHZxwekohUrtQ==
X-Received: by 2002:a17:90a:f88:: with SMTP id 8mr9355155pjz.72.1580429975927;
        Thu, 30 Jan 2020 16:19:35 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9979:cdb6:7624:d076])
        by smtp.gmail.com with ESMTPSA id d69sm4766474pfd.72.2020.01.30.16.19.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 16:19:35 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] config.py: remove mpc8315-rdb
Date: Thu, 30 Jan 2020 16:19:34 -0800
Message-Id: <20200131001934.30590-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/config.py b/config.py
index 7dbd5e7..b210275 100644
--- a/config.py
+++ b/config.py
@@ -51,7 +51,6 @@ trigger_builders_wait_shared = [
     "qemux86-64", "qemux86-64-alt",
     "qemux86-64-x32", "qemux86-world",
     "edgerouter",
-    "mpc8315e-rdb",
     "genericx86", "genericx86-alt",
     "genericx86-64", "genericx86-64-alt",
     "beaglebone", "beaglebone-alt",
@@ -70,14 +69,14 @@ trigger_builders_wait_quick = trigger_builders_wait_shared + [
 ]
 
 trigger_builders_wait_full = trigger_builders_wait_shared + [
-    "qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt", "qemux86-world-alt",
+    "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
     "qemux86-64-ptest", "buildperf-ubuntu1604", "buildperf-centos7", "qemux86-64-ltp",
     "qemuarm64-ptest", "qemuarm64-ltp", "meta-intel"
 ]
 
 trigger_builders_wait_releases = {
-    "sumo" : trigger_builders_wait_shared + ["qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt", "qemux86-world-alt",
+    "sumo" : trigger_builders_wait_shared + ["qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
                                              "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-centos"]
 }
 
-- 
2.17.1

