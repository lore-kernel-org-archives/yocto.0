Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.2166.1626169565233070075
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 02:46:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QZP2wwR5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id g16so19731694wrw.5
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 02:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k6JY2qDdR7yw7T5Yd3Gj09zkBd+nq6/pfnBVIMdZnps=;
        b=QZP2wwR526vaMmLn1aIib/YmbWdXmduAw4WglPQFVL4p7Ky4uNVq/PG93c4pjA1hZL
         XzK5JrYZeJxU35U6AtMfAnnjS3bcIKM81MCkKtveTO0EJZvXGGvAsA61o7Oj2dUwJDQT
         Y/RdMn0wmawXgPaKR63MFebSbzmgAnujXmiTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k6JY2qDdR7yw7T5Yd3Gj09zkBd+nq6/pfnBVIMdZnps=;
        b=ZACa5Ji0T2IbXgljMXlvq+4UHcEGHG4xyYYCu92eIeiwmVPWe9Q3XGDtaUn0mMonVB
         DMzi3hmA2IpDzCVw0xVhANNwRGWAs85kdiyveu4sKBS6r2Qt/+PAaNLbRvgj2twBuOIL
         errx1TsMIY9On8J6Ui9SmcjvTR9SD6GtAXLyOL08ekxz5fyF67xR7cxrqckZDcm6U5pA
         3AUOb/Fqb/eYxdxAQhWriBxMbBqkfYHJd6ZN9hDAna8xnnmJ7dYpdZZmBtBkME0Ww1S7
         wsryY/TPyaU/zFMxz3NzaOrpLanAT/A18GpUWZCAcFXtcAj6C4oFkqM9y5XR75Sh0bPS
         m5Dg==
X-Gm-Message-State: AOAM533EeFdJhrGBcDX0n6KDXtZW1JC2OqM8eCpOyn1rDmESJKVz8lZJ
	P6pbWqkyn12+MdOr+Pge+Tu3QFFF2/Ir/g==
X-Google-Smtp-Source: ABdhPJw6fZcaHvQhcpmuztg4KuTmUh8uGd0t41HAZL8TlJ/lyWg523h+5TSfDspgHv/2wT628uiqmQ==
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr4522055wrt.126.1626169563521;
        Tue, 13 Jul 2021 02:46:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:75f6:1c36:9e06:6891])
        by smtp.gmail.com with ESMTPSA id m32sm1803719wms.23.2021.07.13.02.46.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 02:46:03 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Use pregen-hostkeys on all qemu targets
Date: Tue, 13 Jul 2021 10:46:02 +0100
Message-Id: <20210713094602.2863655-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rather than just ppc/mips, use the pregen-hostkeys on all the qemu targets
since this is using a lot of time on the autobuilders when we don't really
need to. This should avoid some of the testing failures seen on qemuarm
recently.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/config.json b/config.json
index 4f6044e..1c52d60 100644
--- a/config.json
+++ b/config.json
@@ -71,6 +71,9 @@
         "arch-qemu" : {
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
+            "extravars" : [
+                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
+            ],
             "step1" : {
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
@@ -91,6 +94,9 @@
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
+            "extravars" : [
+                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
+            ],
             "step1" : {
                 "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk",
                 "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
@@ -383,16 +389,10 @@
         },
         "qemumips" : {
             "MACHINE" : "qemumips",
-            "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
-            ],
             "TEMPLATE" : "arch-qemu"
         },
         "qemumips-alt" : {
             "MACHINE" : "qemumips",
-            "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
-            ],
             "TEMPLATE" : "altcfg-qemu"
         },
         "edgerouter" : {
@@ -409,16 +409,10 @@
         },
         "qemuppc" : {
             "MACHINE" : "qemuppc",
-            "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
-            ],
             "TEMPLATE" : "arch-qemu"
         },
         "qemuppc-alt" : {
             "MACHINE" : "qemuppc",
-            "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
-            ],
             "TEMPLATE" : "altcfg-qemu"
         },
         "qemux86" : {
-- 
2.30.2

