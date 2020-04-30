Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
 by mx.groups.io with SMTP id smtpd.web12.76.1588278203345189393
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 13:23:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBjvLgRK;
 spf=pass (domain: gmail.com, ip: 209.85.219.67, mailfrom: jumpnowtek@gmail.com)
Received: by mail-qv1-f67.google.com with SMTP id ep1so3755077qvb.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 13:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yUHp/GlZj5XQKZiaOTZsAEw0/NowmR0mvhb+0rqDZb0=;
        b=pBjvLgRK4ReLLg+cXmMT15nnwkMCNAJwcxgcBMuCg0P9eRFuBJmoSycmewkm8AC+Cq
         WIrDfyDA+666fCMS+gf7GmG2Q+CimyeWd4jHgLapwZf3pGsD4Dvl7YRCLWol5zB/8bqJ
         lZlpoDyzbMyw5Dl8DXIKDNQ6igqc5TXewiauaI3PGS8uTLXzxwD0dwx35jd1F1VvceUr
         zB8hIFOg7AdC17+wEJBr6zSkeXd1zp7o30qiuK+nS/rTVpOJIfMlwHyMdVtJe2eHqTv9
         1fVhFAjjoG14x8E6U7gEMDrRDptJfzlaosjCrgApW1+Vzqckk8cdgf3QWLkCZOXKgGXo
         jfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yUHp/GlZj5XQKZiaOTZsAEw0/NowmR0mvhb+0rqDZb0=;
        b=Kz9WuN0ve+zy1a2BpnxkmmDNnyE87c1QggCvy4MhQIxx+BR9QPQqsJVURREWa/E3mM
         r+hLp5Eu9s/3nt9cO1qoo7E6ru6LW1WDYlHOOO9aR5F83slLhXS7GsMzjb568kZw4PM3
         qiC6/BF9QrxefmkBMTCu7B8u8GiJfohVvPJqDUWaO4gvYETtfi0Cij83TQ+3H3UGYWEL
         hcKbOjPgNTAHYJ6USMog8ov6/aMJHkFqkLZpoYf27C0heLFqOqsix2hf8tbNSLPuJgDN
         CDEW0TI6cpfS6Khe28hs2/0xmTU7Mkzujd/eAncNf2MFMNcAJ5d5DSFKhr+J973crZ45
         b63A==
X-Gm-Message-State: AGi0PuYIcj54BKJkmuCNTQoD1AK6kJeOk9MdqxPGkUwFMWAhfPE12Kt1
	D1WAC/DeDA0d/Z8YdipqLFpE5hSO
X-Google-Smtp-Source: APiQypIAQLmWB1eDG2NQdr0Xhv9VBTSTq+RZhgHe/tCIPQeS+/w1bYd8X34nvNv5dYa5j9jwKZwbew==
X-Received: by 2002:ad4:4e65:: with SMTP id ec5mr787348qvb.32.1588278202168;
        Thu, 30 Apr 2020 13:23:22 -0700 (PDT)
Return-Path: <jumpnowtek@gmail.com>
Received: from fractal.jumpnow (c-76-23-219-244.hsd1.me.comcast.net. [76.23.219.244])
        by smtp.gmail.com with ESMTPSA id p2sm953724qkm.65.2020.04.30.13.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2020 13:23:21 -0700 (PDT)
From: "Scott Ellis" <jumpnowtek@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@lists.yoctoproject.org
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [yocto][PATCH] openssl: Fix dependency loop with PACKAGECONFIG cryptodev-linux
Date: Thu, 30 Apr 2020 20:23:11 +0000
Message-Id: <20200430202311.11303-1-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.17.1

Applies to both zeus and dunfell

ERROR: Nothing RPROVIDES 'cryptodev-module-native' (but virtual:native:/home/scott/poky-zeus/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb RDEPENDS on or otherwise requires it)
ERROR: Required build target 'openssl' has no buildable providers.
Missing or unbuildable dependency chain was: ['openssl', 'rpm-native', 'python3-native', 'openssl-native', 'cryptodev-module-native']

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 meta/recipes-connectivity/openssl/openssl_1.1.1f.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
index aa4ef6f48a..a952fae728 100644
--- a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
+++ b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
@@ -32,7 +32,7 @@ PACKAGECONFIG ?= ""
 PACKAGECONFIG_class-native = ""
 PACKAGECONFIG_class-nativesdk = ""
 
-PACKAGECONFIG[cryptodev-linux] = "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-module"
+PACKAGECONFIG[cryptodev-linux] = "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux"
 
 B = "${WORKDIR}/build"
 do_configure[cleandirs] = "${B}"
-- 
2.17.1

