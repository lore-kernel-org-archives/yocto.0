Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CF15C47DD9
	for <webhook@archiver.kernel.org>; Sun, 25 Feb 2024 17:14:02 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.1173.1708881238792900240
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Feb 2024 09:13:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i5JojgTv;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-608ceccb5f4so6118297b3.3
        for <yocto@lists.yoctoproject.org>; Sun, 25 Feb 2024 09:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708881238; x=1709486038; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FLBIjkheFniLfVluyo5hFdOdmWMoO005MlnKA1hjkhI=;
        b=i5JojgTvmE1mKEB60wG1zJpF4CdZenKE5rd6Ur+oaEPVfuQji71aPnD4XQGx8razVF
         YVqeY/xK6wkc3JuCKQ+oFDUwD2ijp1KklAIlcbTboZ/uFIdShCR921UpaDe4gKh/wpmX
         /GyFeWftMxS+TpHZ1mhlO3pBJK3aSFpLj6zx4i6Bu2VElfjh1t5oUXuikyJFDhXUkOac
         HvnAAQnxHuUNuVd48phS082ibafgRud33w6d/dCmDxfr4Xejavox/G5ogLT3WfXbCNsB
         /r6POrIaz/MyK0O85ICeGo8qvkMmMkgLItxTuKhyp0OA1s2IYnIqAeWmB/L7iRjt9WvN
         qTBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708881238; x=1709486038;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FLBIjkheFniLfVluyo5hFdOdmWMoO005MlnKA1hjkhI=;
        b=a5JggtI0wgmn1B2Axr8vIceaoKXyJbPoCrRXYyt1iHH9k8sobWWR44+MhS5CCpz47j
         60OZEYhA5NdGIzfAQtCWn3zmwKNExHwy4RIR2iJBuuWxh72g17Bex8Tr4XAzxvWaqpOw
         /8/xQ/5fCa/edE6j1O7mrdPiRtFORIKroU+kcc4RgcXY6UIypnCIFGtW+WnExYkCXkve
         K1i68ocKWCBi4Ws4ocNpRv1GC8B5bQW0TyLYBhruW3Xm91cRLW7dRTuacpQGRmH+PFyM
         p8IrrdvbgNHCRbaqyC/tZW/B+PdJzp/ISAWrVcD9sC4ogNB4sT/oV/u09At2Wk3Hzcrj
         VgSw==
X-Gm-Message-State: AOJu0Ywiiq16RX9adBoaokScDP1h/m5zTFRjeYRXlCeCmnYnlX2+jKAI
	UdJ4+j80hHzFuEhUN9F/6V3+uPAGgGrGrhoYCZjr6/7AVlLEIgO4/o7i9wcP
X-Google-Smtp-Source: AGHT+IF8iAk1KGZYopxObbOCWFlscmRKkbckVwezra8RRzUvWJMkeerRtwt96YhjnBVS85w2m7scpA==
X-Received: by 2002:a81:be0b:0:b0:607:7c29:8f4f with SMTP id i11-20020a81be0b000000b006077c298f4fmr4522825ywn.13.1708881237065;
        Sun, 25 Feb 2024 09:13:57 -0800 (PST)
Received: from keaua.mvista.com (108-243-27-252.lightspeed.tukrga.sbcglobal.net. [108.243.27.252])
        by smtp.gmail.com with ESMTPSA id j128-20020a0de086000000b00607b37e2c74sm794908ywe.118.2024.02.25.09.13.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 09:13:56 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] meta-security: Drop ${PYTHON_PN}
Date: Sun, 25 Feb 2024 12:13:55 -0500
Message-Id: <20240225171355.81994-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Feb 2024 17:14:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62598

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
V2] Fix typo in python3-pyinotify changes
---
 .../python/python3-flask-script_2.0.6.bb           |  2 +-
 .../python/python3-pyinotify_0.9.6.bb              | 14 +++++++-------
 .../fail2ban/python3-fail2ban_1.0.2.bb             |  2 +-
 .../recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.9.0.bb  |  6 +++---
 recipes-ids/suricata/suricata_7.0.0.bb             |  6 +++---
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb
index 377ad02..ba0f974 100644
--- a/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb
@@ -10,5 +10,5 @@ PYPI_PACKAGE = "Flask-Script"
 inherit pypi setuptools3
 
 RDEPENDS:${PN} += "\
-    ${PYTHON_PN}-flask \
+    python3-flask \
     "
diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
index 963fcfe..9acdf54 100644
--- a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
@@ -3,13 +3,13 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ab173cade7965b411528464589a08382"
 
 RDEPENDS:${PN} += "\
-    ${PYTHON_PN}-ctypes \
-    ${PYTHON_PN}-fcntl \
-    ${PYTHON_PN}-io \
-    ${PYTHON_PN}-logging \
-    ${PYTHON_PN}-misc \
-    ${PYTHON_PN}-shell \
-    ${PYTHON_PN}-threading \
+    python3-ctypes \
+    python3-fcntl \
+    python3-io \
+    python3-logging \
+    python3-misc \
+    python3-shell \
+    python3-threading \
 "
 
 SRC_URI[md5sum] = "8e580fa1ff3971f94a6f81672b76c406"
diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
index 135e97c..bf5f87d 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
@@ -54,7 +54,7 @@ do_install:append () {
 do_install_ptest:append () {
     install -d ${D}${PTEST_PATH}
     install -d ${D}${PTEST_PATH}/bin
-    sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
+    sed -i -e 's/##PYTHON##/python3/g' ${D}${PTEST_PATH}/run-ptest
     install -D ${S}/bin/* ${D}${PTEST_PATH}/bin
     rm -f ${D}${PTEST_PATH}/bin/fail2ban-python
 }
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.9.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.9.0.bb
index e0def0f..9dea957 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.9.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.9.0.bb
@@ -24,9 +24,9 @@ do_compile:append() {
 do_install:append() {
     cd ${S}/tools
     export PYTHONPATH="${D}${PYTHON_SITEPACKAGES_DIR}"
-    ${PYTHON_PN} setup.py install --root="${D}" --prefix="${prefix}" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --optimize=1 --skip-build
+    python3 setup.py install --root="${D}" --prefix="${prefix}" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --optimize=1 --skip-build
 
-    sed -i -e "s:${PYTHON}:${USRBINPATH}/env ${PYTHON_PN}:g" "${D}${bindir}"/tpm2_ptool
+    sed -i -e "s:${PYTHON}:${USRBINPATH}/env python3:g" "${D}${bindir}"/tpm2_ptool
 }
 
 PACKAGES =+ "${PN}-tools"
@@ -44,4 +44,4 @@ FILES:${PN} += "\
 INSANE_SKIP:${PN}   += "dev-so"
 
 RDEPENDS:${PN} = "p11-kit tpm2-tools "
-RDEPENDS:${PN}-tools = "${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
+RDEPENDS:${PN}-tools = "python3-pyyaml python3-cryptography python3-pyasn1-modules"
diff --git a/recipes-ids/suricata/suricata_7.0.0.bb b/recipes-ids/suricata/suricata_7.0.0.bb
index a52f081..a01b3d9 100644
--- a/recipes-ids/suricata/suricata_7.0.0.bb
+++ b/recipes-ids/suricata/suricata_7.0.0.bb
@@ -104,9 +104,9 @@ do_install () {
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
 
-    sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${bindir}/suricatasc
-    sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${bindir}/suricatactl
-    sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${libdir}/suricata/python/suricata/sc/suricatasc.py
+    sed -i -e "s:#!.*$:#!${USRBINPATH}/env python3:g" ${D}${bindir}/suricatasc
+    sed -i -e "s:#!.*$:#!${USRBINPATH}/env python3:g" ${D}${bindir}/suricatactl
+    sed -i -e "s:#!.*$:#!${USRBINPATH}/env python3:g" ${D}${libdir}/suricata/python/suricata/sc/suricatasc.py
 }
 
 pkg_postinst_ontarget:${PN} () {
-- 
2.34.1


