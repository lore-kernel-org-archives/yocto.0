Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web09.2238.1575426969848544892
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cUaXGBRc;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id t21so2331657pjq.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=oGq4eHgt7YFcTqL8uRBMbVlTjXkFvXX+g6lflG4N7Ts=;
        b=cUaXGBRcXJimDV8Q3hAPsLt2pWYuAKdCHrIAwZNPoNV6sGEfR60fV1U+eRrux1PXww
         eyaqzy7HrGMuNlnFzdYBSR1yMhqtrTFjsPihxZJSDYJNmuPb6xzTLBZIZMQOMGmEHAKg
         IM6V0FmqfJVQhaNDWgcyyGYFjq8Okr6oylHPIjXD8IirpM9r324faGJ/G9nIWbyQdhw1
         U+DNztHl3F+xmbkWlcaZLCtuvqsEEucFwtvwQ/4N6VwJsCQMdKpdOE8BLLcqGHPc991B
         b5WsBr4AVY0/loZddwufmUpDdOCeCN1xFkqy2uec8rxIPoBJ5wC36oh1xVSBYVY9dwka
         +RFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=oGq4eHgt7YFcTqL8uRBMbVlTjXkFvXX+g6lflG4N7Ts=;
        b=WhhKn3CvNEUkcw3EgN1WHXP6uyes/elOAqkdifsIHBwU+Jji50oraVrmzA2+APEfaC
         MIGwPEd6YDubqPubVVWKk/19m+T7j1Nct5WWaNaPx3ebhaOxA/fHMU6ZiGo127YQZT9q
         CeNxkJLtAT5/KfyX/GqkEKoDZJ9yIkLlDl1WRvI6gU0t/3OL+zA2ANnnGdwfRudltFwy
         SxDAZFWHNAEyNSC0far5iBWedM0PA/0xH7E2KJvmzMmlsDuMen5Ce24eMDMhs/o/+CpC
         ifc5z1MwwZ4yQrELd2ARbQFNQbNLbwykD7YQDeRYEj2wPhMwzswSH9YVXjPsqpCdvVR5
         fOeg==
X-Gm-Message-State: APjAAAWrHw+FSHki6fm/ZxE992Wr7reZZCIrC54tvkdv9t3RKaKHpQRZ
	n+oEL6HWB7ziQDlchi4BTj+ppUG6
X-Google-Smtp-Source: APXvYqwezAftbfIV+pkmD1rKaRHNmwLgGpueoeAPuxP8G34ccQDskbx4+/BtmhvFwAYIO01eYeJlpQ==
X-Received: by 2002:a17:902:b70b:: with SMTP id d11mr1204416pls.48.1575426968712;
        Tue, 03 Dec 2019 18:36:08 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:08 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] tpm2-totp: update to 0.2.0
Date: Tue,  3 Dec 2019 18:36:01 -0800
Message-Id: <20191204023602.31748-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023602.31748-1-akuster808@gmail.com>
References: <20191204023602.31748-1-akuster808@gmail.com>

LIC_FILES_CHKSUM update to be true BSD-3-clause text
Drop patch included

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/litpm2_totp_build_fix.patch         | 36 -------------------
 ...{tpm2-totp_0.1.2.bb => tpm2-totp_0.2.0.bb} |  6 ++--
 2 files changed, 3 insertions(+), 39 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
 rename meta-tpm/recipes-tpm2/tpm2-totp/{tpm2-totp_0.1.2.bb => tpm2-totp_0.2.0.bb} (79%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch b/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
deleted file mode 100644
index c147054..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-C99 fixes:
-
- src/libtpm2-totp.c:172:13: error: format '%li' expects argument of type 'long int', but argument 3 has type 'size_t' {aka 'unsigned int'} [-Werror=format=]
-|          dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
-
-src/tpm2-totp.c:343:23: error: format '%ld' expects argument of type 'long int', but argument 3 has type 'uint64_t' {aka 'long long unsigned int'} [-Werror=format=]
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/src/libtpm2-totp.c
-===================================================================
---- git.orig/src/libtpm2-totp.c
-+++ git/src/libtpm2-totp.c
-@@ -169,7 +169,7 @@ tpm2totp_generateKey(uint32_t pcrs, uint
-     if (rc != TPM2_RC_INITIALIZE) chkrc(rc, goto error);
- 
-     while (*secret_size < SECRETLEN) {
--        dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
-+        dbg("Calling Esys_GetRandom for %li bytes", (long int) (SECRETLEN - *secret_size));
-         rc = Esys_GetRandom(ctx,
-                             ESYS_TR_NONE, ESYS_TR_NONE, ESYS_TR_NONE,
-                             SECRETLEN - *secret_size, &t);
-Index: git/src/tpm2-totp.c
-===================================================================
---- git.orig/src/tpm2-totp.c
-+++ git/src/tpm2-totp.c
-@@ -340,7 +340,7 @@ main(int argc, char **argv)
-                             localtime (&now));
-             chkrc(rc, exit(1));
-         }
--        printf("%s%06ld", timestr, totp);
-+        printf("%s%06ld", timestr, (long int)totp);
-         break;
-     case CMD_RESEAL:
-         rc = tpm2totp_loadKey_nv(opt.nvindex, &keyBlob, &keyBlob_size);
diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
similarity index 79%
rename from meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
index 8a2504d..0dad673 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
@@ -9,9 +9,9 @@ DEPENDS = "autoconf-archive libtss2-dev qrencode"
 
 PE = "1"
 
-SRCREV = "15cc8fbc8fe71be9c04c3169ee1f70450d52a51a"
-SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.1.x \
-           file://litpm2_totp_build_fix.patch "
+SRCREV = "994b4203e4769baefa6e7719915629bc8210e90a"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.2.x \
+          "
 
 inherit autotools-brokensep pkgconfig
 
-- 
2.17.1

