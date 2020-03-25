Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
 by mx.groups.io with SMTP id smtpd.web11.9355.1585136661169859702
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7RHC5JP;
 spf=pass (domain: gmail.com, ip: 209.85.167.67, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f67.google.com with SMTP id t21so1473273lfe.9
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VEkeC6Du0KGW4oMwjfLNWPC3RUxnNbJjquUmOdH/H/g=;
        b=O7RHC5JPw8Vv53z3B/IS/vB4hSCtPlq2kx4qpafe8N2FBrEZO86f6LU/xUHrc2wZHX
         GnL2n+0WNLsjM3Sqbg4BxNfER7NABtCbwyO9/y0+Oli4CH4SE//cUdVZLZ5B9uiJkozR
         hSP31gVRGFj3fcUcKQg2CTSF0eVbvUXk6puf0GRhcePtBT84Rp0xOxNxNwItOnQDQrRb
         lBPWV9hzrngTuVEMSgNcvihcyRuQlcEqPXF+tiN6N8j8N4IxWOQVQjsaYFqN4dynzr3q
         v4Q1tCSFWSo4lSzL+jtdXzJEFEfWKfCsCuDOLE0eY29e1vpslBGCNQgvNVjjXoBrFIjb
         qvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VEkeC6Du0KGW4oMwjfLNWPC3RUxnNbJjquUmOdH/H/g=;
        b=UblVCTOMYpmnsTPWRXjNee0W9MK3EpiHGaHFAHalF/LOvnu8Ll6riMrhBG/rn21dIs
         EK/0XdCAQhPVEV8fzV78lH9YnHhP5Wuz+fpHRyOuGVB+P+rB7Osnv3rYXJTRKALJAuId
         A/nUpx5lviwgMg5rjUYdYX2/TA/qfZaJYKOhz0k9tEEJXgwkNRgVeY6H/OcLDyFwUYF4
         Ga45dThWtiowGrj7e1gWIGu+0Cpn3przXPbxNl9AzkDMKH8p22oJgqxl8TDyHRsMYuGl
         Buj9iQ8kSZZysPMPgIePUZXK7B7Bp7RmnEpOQGnNp/UfTD4lBl9chEhs6DyR9hMliq4L
         Y94Q==
X-Gm-Message-State: ANhLgQ2dxN7iITtHngxSxyc1yukzzBDCVGwzMX3baOV9Ciyj8/45mj4I
	RRW1ujguT34gCLnh9lJksfdsIOqyBCo=
X-Google-Smtp-Source: ADFU+vsvgA5rgwRBJgqJKX+hNgySRlQmNBuJASDAiWGlwymcd0t4iy9R53e1udRtwGoDteV3vRekPQ==
X-Received: by 2002:ac2:42d9:: with SMTP id n25mr2033333lfl.97.1585136629072;
        Wed, 25 Mar 2020 04:43:49 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:48 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 2/6] sssd: Add autofs PACKAGECONFIG
Date: Wed, 25 Mar 2020 12:43:15 +0100
Message-Id: <20200325114319.2115155-2-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

autofs was previously on by default, so add it to the default
PACKAGECONFIG.

The systemd files are only installed when --with-autofs is passed to
configure, so conditionally add them to SYSTEMD_SERVICE.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index b0b7038..24cc003 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -33,10 +33,11 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     ac_cv_path_NSUPDATE=${bindir} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
-PACKAGECONFIG ?="nss nscd"
+PACKAGECONFIG ?="nss nscd autofs"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
+PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
 PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
@@ -96,8 +97,7 @@ CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
 INITSCRIPT_NAME = "sssd"
 INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
 SYSTEMD_SERVICE_${PN} = " \
-    sssd-autofs.service \
-    sssd-autofs.socket \
+    ${@bb.utils.contains('PACKAGECONFIG', 'autofs', 'sssd-autofs.service sssd-autofs.socket', '', d)} \
     sssd-ifp.service \
     sssd-nss.service \
     sssd-nss.socket \
-- 
2.26.0

