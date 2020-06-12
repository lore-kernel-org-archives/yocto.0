Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web12.25020.1591982067065006192
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DBaz05WP;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id a127so4586286pfa.12
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mSNLGA9mn2JntzRX6CcvNo3IXhPxQA97xPq0M+qMu8E=;
        b=DBaz05WPGC+tIgedb25j6DVxHGCg9EeCNOll4Ddr8gVqZ3qKE0eJGukG2X/z05FkTX
         K6HsqPvbHF6iRY+5x7BBBJOH0LZAUH6n2bdt32YpZrOpoKWbuRlSskXpKc/8jn5GXUQ0
         PvHWO33uMP/xSJVOo4OrgzzK38QlW8qgL8BklV/qoFY4dnazKOkESIviLCsH0TxAGguX
         zye3296tnXz7F8uMq3tItK5zsSQEqTuWZJ9kfxI6MI8Q8J2qeeRjMObT/qoYqTsyBkEF
         6+0j+wQF+KM1knkVSe2hMYgzP58yzJmVqmC7BQNfcYEN220/831Wia4g9vk6lpcBBM3L
         uBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=mSNLGA9mn2JntzRX6CcvNo3IXhPxQA97xPq0M+qMu8E=;
        b=MiN/cqJ1P81HVT0PdHyemjf6jydug2EJXy8y7ti5I8H9qJvbofxSr/FcB5PB2JfQKV
         qk2F+MHviqk15ZHVnOpkr+OotYzwcxEjVuokT+BLPA6F3/BoFPpDOjt5X4f43Ha90C2W
         kxYUnzsDC7geBApUqYzr6eRlImj9KKZmX+UvUMWJXYDRgVamaBlC/SGf/ilM1lwHw9ge
         hq2qu9yCoXPSCsqqpiKUq16mIa0hPzFrfRC1Zq1EMG3NY9eja/USWqRBIpbOAMnAIm1s
         u6kvNuFEbmAfaaLFUs/dvopa/fqWgeUSaJS8+oYgjSk0ZPrQuU/fquMWYhxeFj2JE0G/
         t+hQ==
X-Gm-Message-State: AOAM531cF2ggxIVGhtblLVkeJURWOc0Ip9TLNC8hRKRu7i+V6vO8myPU
	xyZ9x5t5BE3fVVV4X801pBrvO/GF
X-Google-Smtp-Source: ABdhPJzrwD0IZkd4ep1adO2R7g7hHuqBF07vhee3LhUpUxtuzgokmz6/l7mA5Fr1JJxdB+/YbxoSVw==
X-Received: by 2002:aa7:96d7:: with SMTP id h23mr13242999pfq.320.1591982066380;
        Fri, 12 Jun 2020 10:14:26 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:25 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] tpm2-pkcs11: update 1.2.0
Date: Fri, 12 Jun 2020 10:14:20 -0700
Message-Id: <20200612171422.3380-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612171422.3380-1-akuster808@gmail.com>
References: <20200612171422.3380-1-akuster808@gmail.com>

add yaml package
Updated LICNESE

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-pkcs11_0.9.9.bb => tpm2-pkcs11_1.2.0.bb}    | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_0.9.9.bb => tpm2-pkcs11_1.2.0.bb} (67%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.2.0.bb
similarity index 67%
rename from meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
rename to meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.2.0.bb
index 351e03e..ce2dac0 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.2.0.bb
@@ -2,15 +2,14 @@ SUMMARY = "A PKCS#11 interface for TPM2 hardware"
 DESCRIPTION = "PKCS #11 is a Public-Key Cryptography Standard that defines a standard method to access cryptographic services from tokens/ devices such as hardware security modules (HSM), smart cards, etc. In this project we intend to use a TPM2 device as the cryptographic token."
 SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=93645981214b60a02688745c14f93c95"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0fc19f620a102768d6dbd1e7166e78ab"
 
-DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools"
+DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools libyaml"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
-           file://bootstrap_fixup.patch \
-          "
+SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=1.X \
+           file://bootstrap_fixup.patch "
 
-SRCREV = "6de3f6f9c6e0a4983f3fb90e35feb34906f8aea7"
+SRCREV = "8d8f137f65f1d61d66cc191947b59c378f23e97d"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

