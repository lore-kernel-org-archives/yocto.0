Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web12.2919.1602957822317219811
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TejnSuHZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id o9so2895350plx.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qWqdn8hI0z6SSffRAX62sSIPI9FFcNmtmkh53xGjRxg=;
        b=TejnSuHZjpFV/UetC03p6FS4iwPpy6ftbh0SL6K2wkD/JLCcBxMcoWSVopmVFF0EsG
         xTOdk1KtgsMz4SzV2fEojkUqjjf+WOB99+HuOrc3sLxyRWy2n3sCpkU7Whp/JC8yNwtm
         WeAqE8EnfeQHN5SWyCKQh5DyZxJCLwpgL0YEWzdCa5p1clC7ISWEFHpOsmOJoeZ+xZYl
         GMjZdBAWkhm4pfvdTMHQwNZLgR3xv2FsusCR2/4BLVWkc625OEEcEqzmF+SVggMNPiKA
         QD7h1aQ2wj3qxV9zvhZZDqeuXTyKI4sY6mYqywzv/Gj69T24PDvlZWiZMj+s80+Q1y1g
         HNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=qWqdn8hI0z6SSffRAX62sSIPI9FFcNmtmkh53xGjRxg=;
        b=W43ifsOFvbm0CUsPNQ/G+b1Vo6TSpyko2pBuDu2EVaxMplXl3CrAb/sHWEcnKjevhK
         C35e9pNhhsotGeSeLohN8b8bt0dNpXvJU0JDz3Ql1bMUKbv5VWQpeVXJfagWizGmpaRk
         HxDUCbBGnuwnBHUuV+3XDPwdgoIaeB3lcxTj9YLMptHEpUPX7HZ/is8+d3mCOpjqeIn7
         rYw3lC5b+ZeQm2sC5jIE+bMwWySjr9a3Cd6zEqWNgojBc8fygP0mT40SSu8Sm7BlXy2U
         bgKb9wCoIXAI4eUr7I7irtL93lIzzLtz8CsC+CRNOmDUmLPhnITrcV9dQFhM2Zexmp66
         g4wQ==
X-Gm-Message-State: AOAM531ZgyR0CD0yrZvWcLlMlL+iJ2hjKfJU3Gcey0aEAmhxAaM2dLkA
	8CIlemi0fhAVTp7GVfVnJ+Cgxc0d/dE=
X-Google-Smtp-Source: ABdhPJzUpK/PUNz/ZRC1YXBvMOcVUUxhgbA2wxA8oyc186zEC2+gw3YcjeDGGI7+Mj33A0yUvND8FQ==
X-Received: by 2002:a17:90a:b287:: with SMTP id c7mr9882771pjr.141.1602957821706;
        Sat, 17 Oct 2020 11:03:41 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:41 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 06/32] sssd: disable build secrets
Date: Sat, 17 Oct 2020 11:03:03 -0700
Message-Id: <9fdaf248f55065e97abd58e9809b453e1eda683a.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Kai Kang <kai.kang@windriver.com>

It requires http_parser.h to build secrets:

| configure: error:
| You must have the header file http_parser.h installed to build sssd
| with secrets responder. If you want to build sssd without secret responder
| then specify --without-secrets when running configure.

The header file is from package http-parser[1] rather than apache2. But
there is no recipe http-parser in openembedded. So disable build secrets
for sssd and remove related systemd service and socket files.

Reference:
1. https://github.com/nodejs/http-parser

Signed-off-by: Kai Kang <kai.kang@windriver.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 7831969f8caa399d88d49833800fafe7324b8a59)
---
 recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 7ea1586..2c3c803 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -39,8 +39,7 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
 
 PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
-PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
@@ -60,6 +59,7 @@ EXTRA_OECONF += " \
     --without-python2-bindings \
     --enable-pammoddir=${base_libdir}/security \
     --without-python2-bindings \
+    --without-secrets \
 "
 
 do_configure_prepend() {
@@ -85,6 +85,7 @@ do_install () {
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
 
+    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} = " \
     sssd-pam-priv.socket \
     sssd-pam.service \
     sssd-pam.socket \
-    sssd-secrets.service \
-    sssd-secrets.socket \
     sssd.service \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
-- 
2.17.1

