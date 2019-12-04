Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web09.2237.1575426968484465680
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nBfCKKMT;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id ay6so2500000plb.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=z9eAxZ1TWCeQuHZoMT/C5maAdb99NV/Tv0jWQqWpRfg=;
        b=nBfCKKMTfjNSs+10poAdEw1J3v0EWx6XvYjrYzR8b63qS1Kc2IdbyJVAaZmUcrMMIC
         LpeHssFJmBvAPsadAPfMTXLqMy3fwGW3l63QS8hUTP3cECvE6G/s0oDU8v/GwjdIIJ9u
         OYTYmFT4/3KqDS3RdraBTsCzvSdo1TIlwvVj3BrKD5pqgW99tl+MGtY+Q05OuF4x3hRL
         23mL8CI1V34uEoZe4BKoTp8IKLizxKLV0gF8pByGEppOroV2hVBq2EdoEYM12jinpa3r
         ozqjvo0rYoBnmV6EzXLDvCAfy4T+f7Yy0rUTsFhF4V8XpOJNGv2KKnI7Qjbcjxz3inag
         xO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=z9eAxZ1TWCeQuHZoMT/C5maAdb99NV/Tv0jWQqWpRfg=;
        b=U7V91d2gO3f/FssZfSvV0nG5SWaNl3n7344AQJbWVnNX5cyQdWBytb+u8dhMKLnI9n
         8DIGzEbpzoefVC7wAGSIy0rC08G8idHYtYm2GsK7x+8UBHGkzc2hE2AD8gOGEdbW4ooL
         4TAlkbemxZEjz08j+PAWWu38N363nLheP+y6HnAXs2Pv5n+WOTeUEI59+ME3E8E0Jzv+
         MBXBgO6YcesS/tctb7jGfmVA6ERSQVpDivZZmltHBJN9wqWzxKSMr6Y3OYHm4IaGiYac
         FHwJ4RJbx1lOvCJH1YL09hxSRMi2BfJTrmMkpLARFhnvA42zZyVBQGO4co5zgOOMLJqa
         riqw==
X-Gm-Message-State: APjAAAXk10YexoeIlJdTE0MP2crplRzLFBKKj25IFBSupp6uQaOsUKji
	Gb6Px6rwwJpeBjJSwvOuJk0wqH4r
X-Google-Smtp-Source: APXvYqwFmP7ktACpEYCM3yg648lBuOTRqToWLVqpy+qhBlz0rKrnw1aMkkDNTKurfZQBd9S870x4Rg==
X-Received: by 2002:a17:902:a615:: with SMTP id u21mr1271631plq.44.1575426967767;
        Tue, 03 Dec 2019 18:36:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:07 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] tpm2-tss-engine: update to tip to us tss-tools 4.0.x
Date: Tue,  3 Dec 2019 18:36:00 -0800
Message-Id: <20191204023602.31748-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023602.31748-1-akuster808@gmail.com>
References: <20191204023602.31748-1-akuster808@gmail.com>

LIC_FILES_CHKSUM update to be true BSD-3-clause text

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
index 8825737..3641b1b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -2,13 +2,13 @@ SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for Ope
 DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
 
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=7b3ab643b9ce041de515d1ed092a36d4"
 
 SECTION = "security/tpm"
 
 DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
 
-SRCREV = "e1bbabe29377e45282d753a1b103625c420a19cf"
+SRCREV = "fdc8f65dfc8bad8b5a3aed181fae338267308f70"
 SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git"
 
 inherit autotools-brokensep pkgconfig systemd
-- 
2.17.1

