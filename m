Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.42797.1593975490919716858
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:58:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKafEImj;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id t11so11201836pfq.11
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=QH2GF7nOMf0avCxTP8xZCU993CEjr7U3rR7zWyxxmAk=;
        b=WKafEImjNys/Yf1EzScESvykSLnA1LDigrgtUtcPWKo2AtBKRyvNN7EdeYB6DX9Ubq
         lWX8ihDmxVjVXt2VfFATg+U+Qr5MruZKm0TSlW6KVCta00SXi5Qr0Vt+hF619J5n24Tr
         4vyAF+EY1zMFYLFxGvaf8bwUMeOyrxbuK5xe8x/vIGMwwOyQjIjOGBYFCrPnjs1WnI6V
         lnJI9McCDEvnR1SbhpMhGJZMeTIqC/iZKo33Jn9e5iWn59NuAPFlNr9V/SkrfTxggLjl
         Vr28RjAAoQh+U53cF6hHTVNKKZpIXqBrnyuFL8aVeU+auRCIIp8sQU2DAbjzbMfDYuR1
         GD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=QH2GF7nOMf0avCxTP8xZCU993CEjr7U3rR7zWyxxmAk=;
        b=P0IxZJZYRmvJ/LETlqlYIhXrHorKT6CXLp22J+XGpCdx8xzGP1n8Vm3tBNZtp7eQap
         bZGyEsSV0ljxJDwbjq4pM5MXW5FmwqRiwhGAd0pLkgTxZVfVEmeLiPUGf/VvUE8B/oUG
         yWZce70mJFKTaqlmh/F4QGW+6uR1dq3hwCpVXE1hp9xTuzdv98bnYIZjTRiU4+E2F2Tw
         sXRlaY9czg6xUx0os+Eh7IJJLtzex3giBw2PiDNTSa1euo/P5ZJoBIPx7iGpC/Qm8I5m
         B04f3gsaw9OcFY27T4eszwA22azT1Eq5b5LCV1C3RI+kg6hp0IVWigBYWF6xdQ5znNsZ
         3jVQ==
X-Gm-Message-State: AOAM531yvMDJy/CoYUnz81si/aqTFxWBadFquylIHlSOl1CW7mRkJZGA
	wFeWkxyz33rGYXgnq8js+b951yv4Qns=
X-Google-Smtp-Source: ABdhPJyR0S2umwQ0tehJVR4UAbBUFxfcr0rPQ2GekR6RcBTgBoal9mGym7Uwy+yUX0gMEwYcOIRsug==
X-Received: by 2002:a63:3c2:: with SMTP id 185mr38209605pgd.46.1593975490060;
        Sun, 05 Jul 2020 11:58:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id d5sm15464534pjo.20.2020.07.05.11.58.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:58:09 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] python3-oauth2client: add recipe
Date: Sun,  5 Jul 2020 11:58:04 -0700
Message-Id: <20200705185808.3912-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-python/python/python3-oauth2client_4.1.3.bb | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-python/python/python3-oauth2client_4.1.3.bb

diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb b/recipes-python/python/python3-oauth2client_4.1.3.bb
new file mode 100644
index 0000000..b84b4ca
--- /dev/null
+++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
@@ -0,0 +1,9 @@
+SUMMARY = "Add version info to file paths."
+SECTION = "devel/python"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc"
+
+PYPI_PACKAGE = "oauth2client"
+SRC_URI[sha256sum] = "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
+
+inherit pypi setuptools3
-- 
2.17.1

