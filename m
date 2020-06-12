Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.25019.1591982066674020007
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvyREb1O;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id e18so4401291pgn.7
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=V2fnrDqTKFOLvF4gqv+pHue839E4m/38a59VcpPMTdg=;
        b=WvyREb1O3oD2oBxr0cSpZ1pf45zaHFqLZzogppJbvZzjKo3TX1LlReNbVfejqwFn5r
         aMu1BTaOBcSfAB1ArwAjienPzpU3Pofy/eeAp+TWGH17Srjx1G1ZcOGzG8mRXf4xNX/1
         P3WoflUHOvVnhACa7YxS+dyVj6uKh/rEZoTTaspgeVceISSdZy4ARKxIlrJMCPw6WLK5
         DuOLmYX+8bNFftAn83A3U1t0HxmJHt3zz+qCquiXvYGBPkoisoXP/jaUB54sMFVfXJN0
         HxoM5g4ljIXcVZZ1ywQ0WhL+YdKRIRn7UYuS4EuJH9MZBtBFI0CmggiETFO1tKQHLjUH
         tumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=V2fnrDqTKFOLvF4gqv+pHue839E4m/38a59VcpPMTdg=;
        b=XKDXHiPsWCuUSneQzXMsVY+MQK+G4Zpsr8sgrdurWrUjE0iIHiq0ZjhkvJ8LvEwYJy
         rRlAQIE3kmjd0LHIEQIFy10RQubfm2a+YQKL9EsH+THHrkMyX8mJ7LF34tLjQAQ5OPd7
         eHG9jB901Zy8f4/g7RGBYI7TCVJSsJdwou1qKPuuwsoUGpUWCK9r1fF9krt4qmJtRtJy
         XBonH+J1ylfJRJbMf/EfYjgn6uA+Zd8Z1bZ7DAbNRXB0macg1FlcvNzLusuKWhI7dLj2
         lG74x9vZTW2XMwNJQoOsKxhOulBTT67KhlWrZ1ulYKW6kYXjv0sOrDswBjsaM0pp+Wgy
         /f8w==
X-Gm-Message-State: AOAM530mObS91C9U/2yFD7K6UCSKGLz3+0iW8/ME9Cc93cg/TQL4tu2E
	i/+fhimHsyrHzdrktKs+LZ+28Hjk
X-Google-Smtp-Source: ABdhPJyNHl1ekppBfVpFvYLwj2Fw9hms1DbqUR5jK6xQPznHJT+vw1vgboUFshYbsiT3Xf5xeHNLWw==
X-Received: by 2002:a62:7547:: with SMTP id q68mr13159230pfc.202.1591982065585;
        Fri, 12 Jun 2020 10:14:25 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:24 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] tpm2-tss-engine: add branch to SRC_URI & update to tip
Date: Fri, 12 Jun 2020 10:14:19 -0700
Message-Id: <20200612171422.3380-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612171422.3380-1-akuster808@gmail.com>
References: <20200612171422.3380-1-akuster808@gmail.com>

LICENSE changed to BSD 3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
index 3641b1b..ebd6d53 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -1,15 +1,15 @@
 SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL." 
 DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
 
-LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=7b3ab643b9ce041de515d1ed092a36d4"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb"
 
 SECTION = "security/tpm"
 
 DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
 
-SRCREV = "fdc8f65dfc8bad8b5a3aed181fae338267308f70"
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git"
+SRCREV = "24f1383cc6befde44d6f01a51ea653304d844ffd"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git;branch=v1.0.x"
 
 inherit autotools-brokensep pkgconfig systemd
 
-- 
2.17.1

