Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web12.10005.1581269363673370544
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 09:29:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7gXYEY7;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id y1so1838271plp.7
        for <yocto@lists.yoctoproject.org>; Sun, 09 Feb 2020 09:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=cxZmKUiyxkYEtUqDqs75VmPekQib1/T1Ic5GVUWoNRE=;
        b=o7gXYEY7QRererBe/RHWD6XNAzshH0AxaYksRepsLz3B6tWmzpoWYqpY2b878agPKL
         igkTUmmi+APTCQYGlHaEetpqgHrBXhRIySNKPWdF/Tff/CriQFGRxPpnzQCZ6nv+7X9L
         OHIlW2QDr5RUuk8dPPbquhu/IsHPIXy0JMspmFJpbgwVMAab5/qhgo4uuH3prytu4jim
         HP4ckH+JMb7gaTzkU7E3bl0bFdIq5bEV/idxgXU7dXFCpswi3dVAaWW6G/zL7aoJAogH
         x1qtZN78obP+S4G3yGl4cT4rb62zHj0mYvx/IsxhTE2VTh15Xb7I8/zg1GppkMVChIzu
         qOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=cxZmKUiyxkYEtUqDqs75VmPekQib1/T1Ic5GVUWoNRE=;
        b=B0ld6oq/8MH98XHEO/uTpQ0U8dqHjoV2tJZ/boTnpfMmqAFAb2K1jLA/UKVBS46qER
         Z0+Wj9cbOFcpMbjiM4+fMDFqp8FzVPuQ5FeZknr1t9P1HgTf8ZUvqRfn3behPcFPuzbY
         99Kd7ENeOiPC9iJhwg07//vutrr9b4PAcn/iVOlCL4uUD+/Zd9AYS0u2j1zuubGpNXOs
         Ioyt/NDG3QHy7vhHErISu2GHKwF3XCvspePplWDVBvAqD1jWd5MpIcCClWOqe/1Aolup
         0cakaa80hZ69P1/4GBU9sH0kjMnjd76qdMJQogzMt63lUzTK/z9uBxXE/WLCZj8eaQNc
         5d8A==
X-Gm-Message-State: APjAAAXUOTEjcK5yXGc32xj0MEXNf/CiMetTKiXiUYZnG38O3nS+UZMO
	nqPEO6DbipOy7BtzE7t8SOthaufX
X-Google-Smtp-Source: APXvYqz8HYHgLpdJUJFw61GyEngpiDJJNez63h4q2liAZ9YMKIGS3mGF9vgMfefNovqj5IzsNqx3Ww==
X-Received: by 2002:a17:90a:db0f:: with SMTP id g15mr15477080pjv.40.1581269362686;
        Sun, 09 Feb 2020 09:29:22 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:154b:3780:5122:4aa9])
        by smtp.gmail.com with ESMTPSA id y1sm9685994pgi.56.2020.02.09.09.29.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 09:29:22 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tools: fix compile issue with new gcc
Date: Sun,  9 Feb 2020 09:29:20 -0800
Message-Id: <20200209172920.1496-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

fixes:

releated to issue:
https://github.com/tpm2-software/tpm2-tools/issues/1561

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb  | 24 -----------------
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  | 26 +++++++++++++++++++
 .../tpm2-tools/tpm2-tools_4.1.1.bb            |  2 ++
 3 files changed, 28 insertions(+), 24 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
deleted file mode 100644
index a6068e6..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-SUMMARY = "IBM's Software TPM 2.0"
-
-LICENSE = "BSD"
-SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
-
-SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm1332.tar.gz"
-SRC_URI[md5sum] = "0ab34a655b4e09812d7ada19746af4f9"
-SRC_URI[sha256sum] = "8e8193af3d11d9ff6a951dda8cd1f4693cb01934a8ad7876b84e92c6148ab0fd"
-
-DEPENDS = "openssl"
-
-S = "${WORKDIR}/src"
-
-LDFLAGS = "${LDFALGS}"
-
-do_compile () {
-   make CC='${CC}'
-}
-
-do_install () {
-   install -d ${D}/${bindir}
-   install -m 0755 tpm_server  ${D}/${bindir}
-}
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
new file mode 100644
index 0000000..0e875ec
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
@@ -0,0 +1,26 @@
+SUMMARY = "IBM's Software TPM 2.0"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+DEPENDS = "openssl"
+
+SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+           file://remove_optimization.patch \
+           "
+SRC_URI[md5sum] = "13013612b3a13dc935fefe1a5684179c"
+SRC_URI[sha256sum] = "fc3a17f8315c1f47670764f2384943afc0d3ba1e9a0422dacb08d455733bd1e9"
+SRC_URI[sha1sum] = "a2a5335024a2edc1739f08b99e716fa355be627d"
+SRC_URI[sha384sum] = "b1f278acabe2198aa79c0fe8aa0182733fe701336cbf54a88058be0b574cab768f59f9315882d0e689e634678d05b79f"
+SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb014124011221a492147d4c492584e87af23e2f842ca6307641b3919f67a3f27f09312c0"
+
+
+S = "${WORKDIR}/src"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
index e90dcfe..aee4d3b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
@@ -15,3 +15,5 @@ SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fa
 SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
 
 inherit autotools pkgconfig bash-completion
+
+CFLAGS_remove = "-O2 "
-- 
2.17.1

