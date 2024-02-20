Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28BDBC5475B
	for <webhook@archiver.kernel.org>; Tue, 20 Feb 2024 17:32:17 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.19311.1708450331780143608
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Feb 2024 09:32:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PF47qiuP;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-607d9c4fa90so58270407b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 Feb 2024 09:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708450331; x=1709055131; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=acpmp3IvNEgA1IanF5pctzaxApNkByFvcq/fiyKOYxQ=;
        b=PF47qiuPm6qEV+BCQYt0eC/Axby4CLaz7NJJFqGZdPu/vW1UYFSRVcC0lRk18Nt7vP
         Y673XAmp/zxp7QbvbBXHTd5TJ2HiPDauARSakX9dCvlU/QpAJU0s2J+Wrtc7j5H7xd0z
         lURfxq5jQkE4avwSqhttxwflctfCbSdynSbuuIF//SiIu/x0qbMxNbyvqqrLUZfuo3uF
         q0qXEAG00/Hyl9gMiX3N2rQY//a/hO3w0Ag+JppTZC3VvCDlNq+3NCdn75JjNshqsR/V
         TzKfO9n8UoT+W1GiGmGpOQF67iYBM1ZllVlZ+MP1DxBEln3Cd1LfZSokalkJaLSnOhHW
         VOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708450331; x=1709055131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=acpmp3IvNEgA1IanF5pctzaxApNkByFvcq/fiyKOYxQ=;
        b=XbG7FpHyvgn0cwmGhRzdGCys1blc1OlCRc8wfSAP5F2fpjDhqhPjIlSJv5u1IwRa1S
         EOinXR8hCYP/C6f84JUSPYBMaLH7UZwkqy9sDJh+MHfSeKDeFkmvJeUENlN1cQ8pDA/B
         ncmAnhWwjLBp21amzSFkAk7tmjUGxeVYJyn4AfARLFo8eV74pUIjYE6IngAhUb8V3FW+
         ZPIMaZj6RSpaJgZLCUQstj9Vh5MTEGS1QM3tqjCFQ7aFxgcDjhE9h1sSDeleyHwQ8gmp
         N7koC414lnh7jWcLZrmr88ebrz1IL1h6OnOgXYZO8nvGFt6mVg9jtRBKpwqFj1Gnp5CR
         XmVg==
X-Gm-Message-State: AOJu0YxP508hUY260UngGp8tF4jFO4iOj9sRWrv6SLpWgy/Kl4X79btT
	WLNzp65vic6ghfHRsnohRuoWD03UYCpZWDHMlmA3j5oDxkc56jsqw3RtaR9c
X-Google-Smtp-Source: AGHT+IFMdUSgIUminb1vafXjUjO+EXtUc2/akkvUGXZi0gl4xjmUZlusgK0XgZ6ezcGGfKaenAeHEA==
X-Received: by 2002:a81:6c0f:0:b0:608:7488:8691 with SMTP id h15-20020a816c0f000000b0060874888691mr1065629ywc.38.1708450330487;
        Tue, 20 Feb 2024 09:32:10 -0800 (PST)
Received: from keaua.attlocal.net (108-243-27-252.lightspeed.tukrga.sbcglobal.net. [108.243.27.252])
        by smtp.gmail.com with ESMTPSA id s4-20020a817704000000b0060788326365sm2205026ywc.0.2024.02.20.09.32.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 09:32:09 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] meta-security: Drop ${PYTHON_PN}
Date: Tue, 20 Feb 2024 12:32:09 -0500
Message-Id: <20240220173209.1761469-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Feb 2024 17:32:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62551

Signed-off-by: Armin Kuster <akuster808@gmail.com>
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
index 963fcfe..9cc54f4 100644
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
+    pyhton3-ctypes \
+    pyhton3-fcntl \
+    pyhton3-io \
+    pyhton3-logging \
+    pyhton3-misc \
+    pyhton3-shell \
+    pyhton3-threading \
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


