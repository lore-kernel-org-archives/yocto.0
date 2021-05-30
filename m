Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web09.34156.1622395108399666316
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 10:18:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lzIUxU/e;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id x10so3122606plg.3
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 10:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XtykbzUvh7s1vLL7jChqVgKFMfKFHOQPWY+mX1KtbXI=;
        b=lzIUxU/efBNwZrEUfKK3XrLYgObQRNucOuMchh1IW67Kwb2ov1f9e2SL1+nIMGpKmm
         uUu3O09err2jeXZTXOYFaHMv2F1qKFRMKA1iy3AAolo+Cy9AT/TZ24Y/eYXimzYls6uu
         BmU1ikHCx6EptLrFHUdP9DTYXJ4gWmq/SvCqRMJjP9pkmZpM6BQZqM2zV+zzyc6nyzW+
         nKp/wQXfoXOYvdnjNsffaWpgYxQ3EBL1mpW9hg47fqKeL1g6E5JFBOqFtq1f/tFzxiXm
         XcT4jdQ49wSII1vL3WWZCRoRm1RMCso1d6+o5qrikEou/eVlz7+LwMVv8Lzx/ZRuLP/Q
         TgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XtykbzUvh7s1vLL7jChqVgKFMfKFHOQPWY+mX1KtbXI=;
        b=ku+EfniM9DFj6ygStq75O5ir1hvIOU0fxvsNYueLGcyYtTPbau43K/Kfq5otIWTN52
         doH1PxZSfG5qCJNsPF6lsGfIvo3uG94UvijeX1XrveAZ34qz/jNqeMpsY34i2q/m6IkS
         4U+sHyHepFIf2Px9fDqyjzeA7juvqj3QurdnjBtaWkdIFP/1IJkYdcLM31C+IJ0XzviK
         /rgISMtj4zKTw6iLYbb6a3F8N2NfRJgqT/dUkJmnDSFinGdC/vahU4y414VVYwApL0A9
         HK7sVY5hoMLfaxd3vdHo5/lApd9MP52ltLm4LHNLv+056fgOCoEoLE2ku/zXJaxdEN+P
         gdAw==
X-Gm-Message-State: AOAM531fnq8aOMevYsXCEN7URz16BFHTwUhEAALayVLS/5Sd4tabCM9L
	dC/v+A165Ogt6MbbCAe4GwN2ApJtYOy9Ig==
X-Google-Smtp-Source: ABdhPJwmPUulPC8LQ9qlJkIIrsnRFpdgB00435kRaFnH0mjBq9XXgWue8Ab2uYkbBEuJ/ygntWDyzA==
X-Received: by 2002:a17:902:b58a:b029:fe:735f:ddbf with SMTP id a10-20020a170902b58ab02900fe735fddbfmr16371513pls.68.1622395107808;
        Sun, 30 May 2021 10:18:27 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x1sm8572548pjk.37.2021.05.30.10.18.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 10:18:27 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] initramfs-framework: fix YCL issue.
Date: Sun, 30 May 2021 17:18:22 +0000
Message-Id: <20210530171824.571143-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210530171824.571143-1-akuster808@gmail.com>
References: <20210530171824.571143-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../initrdscripts/initramfs-framework.inc       | 16 ++++++++++++++++
 .../initramfs-framework_1.0.bbappend            | 17 +----------------
 2 files changed, 17 insertions(+), 16 deletions(-)
 create mode 100644 recipes-core/initrdscripts/initramfs-framework.inc

diff --git a/recipes-core/initrdscripts/initramfs-framework.inc b/recipes-core/initrdscripts/initramfs-framework.inc
new file mode 100644
index 0000000..dad9c96
--- /dev/null
+++ b/recipes-core/initrdscripts/initramfs-framework.inc
@@ -0,0 +1,16 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append = "\
+    file://dmverity \
+"
+
+do_install_append() {
+    # dm-verity
+    install ${WORKDIR}/dmverity ${D}/init.d/80-dmverity
+}
+
+PACKAGES_append = " initramfs-module-dmverity"
+
+SUMMARY_initramfs-module-dmverity = "initramfs dm-verity rootfs support"
+RDEPENDS_initramfs-module-dmverity = "${PN}-base"
+FILES_initramfs-module-dmverity = "/init.d/80-dmverity"
diff --git a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
index dad9c96..dc74e01 100644
--- a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
+++ b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
@@ -1,16 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_append = "\
-    file://dmverity \
-"
-
-do_install_append() {
-    # dm-verity
-    install ${WORKDIR}/dmverity ${D}/init.d/80-dmverity
-}
-
-PACKAGES_append = " initramfs-module-dmverity"
-
-SUMMARY_initramfs-module-dmverity = "initramfs dm-verity rootfs support"
-RDEPENDS_initramfs-module-dmverity = "${PN}-base"
-FILES_initramfs-module-dmverity = "/init.d/80-dmverity"
+require ${@bb.utils.contains('IMAGE_CLASSES', 'dm-verity', 'initramfs-framework.inc', '', d)}
-- 
2.24.3

