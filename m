Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web10.8293.1603976282796452058
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 05:58:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=IzwfMg9z;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.166.170, mailfrom: jdmason@kudzu.us)
Received: by mail-il1-f170.google.com with SMTP id p10so2885056ile.3
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2020 05:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VZiRUgWMEV6L7gWxPHLcdrhDT/DrCzPy+2lRc1Mo0e8=;
        b=IzwfMg9zoX17sQHSPRthqj5FygmIadumcR/DrMdZvQsBXYmaO4xMnfdwFAnGXeEdQC
         wWZPCoV8HDbURqMhAJG8bwYGejswysfF7x+UokOvo6XKA57X99MMI+225WpP36mv6/Ry
         5WdIedHrY2khSLUiP4x4uWdAYTIs9hFZffF+bIvgED2eZ02AZsP3smYVSp7OBYxLy9GI
         s4ptQtG/BA+wlKPetYCXP0AJRTNCVyF+dc6q2WsVcdcWbop8oN5td5yCN3zEoPafeUGk
         o+0e1InKuRViAq/C5E3Vsxk5YabhqujIGBqHl6y3cDcH2CCet0G6Lj85VaxBD5m2EPGy
         GRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VZiRUgWMEV6L7gWxPHLcdrhDT/DrCzPy+2lRc1Mo0e8=;
        b=Z1egpuZ3ft9i1JOZRqYaViSLzwBWgW0g9g236SDB270BlBMNbFOuZzaccMKAtt2Z70
         B47KH0GTvOqtySD6SclFOaMoUnjSQ2igeiTetWsjY/2hAhDyIo8CX3JAVzpmxPlb9GWA
         HxgtX0+4B7NaPiCLvWCKcmc9J4nAuXWpNsH4VKuSCByJ0ZfXubylqD8dI3AYDA5zFqVY
         6VsoZoedMLKQJGWLzVmB+wLGz5ZjHgFp5PBoPu259/JNexzjMKUB6pEa9pDEqJz34/Dk
         vje5Ac8jKlu3Zz2K8zdAceASn7VLO4w9Uht0IEN+FeNTj6gCqu8KV6a2QWOpkEiDNKZA
         JKEQ==
X-Gm-Message-State: AOAM530ggdcMExUfMuwRRtVXkpP50Ly+4OGNbTcggSNB++Vu6yi9r4jn
	NFahom9cH9klxl8OP4aO8FyXyPfvLs7GPhol
X-Google-Smtp-Source: ABdhPJxUppoC0nNs5oq6kuI84pybyM42meG0R26axq1aXfoIc8eG8nBrrjzdmtU9fj+3XsiJeM4sRw==
X-Received: by 2002:a92:5b42:: with SMTP id p63mr3238438ilb.139.1603976282024;
        Thu, 29 Oct 2020 05:58:02 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id g8sm2095813ioh.54.2020.10.29.05.58.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 05:58:01 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel: add Zephyr RTOS version 2.4.0 support
Date: Thu, 29 Oct 2020 08:57:57 -0400
Message-Id: <20201029125757.20823-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update Zephyr to the latest version.  Tested via zephyr-philosophers on
qemu-cortex-m3.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 classes/zephyr-kernel-src.bbclass                      | 10 +++++-----
 ...phyr-kernel-src_2.3.bb => zephyr-kernel-src_2.4.bb} |  0
 2 files changed, 5 insertions(+), 5 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src_2.3.bb => zephyr-kernel-src_2.4.bb} (100%)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index 50e46af030ec..d2452231352d 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -1,18 +1,18 @@
 #Set relevant variables based on Zephyr kernel version
 
-PREFERRED_VERSION_zephyr-kernel ??= "2.3.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.4.0"
 
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default  = "b8c78e254ff875680e99c9f131fbe285c4575927"
+SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
 SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
 
 
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.3-branch;name=default \
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
            git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
           file://0001-cmake-add-yocto-toolchain.patch \
         "
 
-PV = "2.3.0+git${SRCPV}"
+PV = "2.4.0+git${SRCPV}"
 
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
@@ -21,7 +21,7 @@ ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
 
 python () {
     src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
-    if src_pn == '2.3.0':
+    if src_pn == '2.4.0':
         return
     else:
         bb.error("Unsupported Zephyr kernel version requested")
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.4.bb
similarity index 100%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.4.bb
-- 
2.20.1

