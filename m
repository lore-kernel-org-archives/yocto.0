Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.22367.1615131326704498253
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iwi/y+aS;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id u18so3659373plc.12
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Vi3JSQMLAdgmDDaA4eLJrX0QaeTcOANx0PihPMQSu6Y=;
        b=Iwi/y+aSb/EMz9Gv6jJxptm6/JhJpZIsrVIPwCqU1BqZFS+2DVdgCzCftg3Pe53QxD
         aYCdEIyjbKFug1ru9xB1KG82UDHV9xVHryiqmalUOE6Mr0AOZHyG4BBHbtIIik2d5bcz
         70jGOE1dZibA9+IMMHt8XyBUTReXoQ+RCYojnxMJCnK3+0IP7JJ+eS7w/54hIS7piVoK
         eZWtJala1bYYuIeiMWwLGBbQd1LI+korpEtM/UMQYnqsZb5usGx3TQFz+FRX+McJx8q8
         Che7FmRYtQPB7X44juaYtIS9rIWHzNYCCiSybvzza7ci04x/iJCM99bMiLD58CtzTIaJ
         7jmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Vi3JSQMLAdgmDDaA4eLJrX0QaeTcOANx0PihPMQSu6Y=;
        b=LNHsLLRa45L09NfUZcKe76MEaa8aVqXshIlgQ5TxSMxTjJXpXhLfGiXCXxB8Y7JQ7B
         ss2UhPO0e/8brZ9mM0YaN6VeD/fGnj7EmckkPfSBFq4fC+VWd3keR7NOHZMEP6rDxqwk
         ZO+NoXDIS72wC6ThHwH3fgxyfmDSPMLGmHI1P44xJBujj4GJipwFzBLC0KdQrccfPGDX
         P7M9Qv/V+UIyt2cko/mWL2QLnZkhbe6AvIHmBfQp2ioXkwWM1OTFb8Fxh/+xaWQ8+7sb
         FS9SVyHWeYj3PcDnrT9+jzRGJTg0M3GnsbKjfaNuRChD+noYj1WvlQDfc62nE++9icGg
         Wjqg==
X-Gm-Message-State: AOAM530aw0IJc/nHeL54jKhcsB5jIVTbnDHp/EOKk0vDynEZ0oUCqm2q
	2Ao9iQT4VRbU6Y0b8VMhW0kva4Y1kT0=
X-Google-Smtp-Source: ABdhPJy2nWpuKwu18S5mePP8rQYlJRQJt+ZEjzy8l77x6zHnG6QGB+DqrSLG7KHUdjSB2BoMgzE61w==
X-Received: by 2002:a17:903:1cb:b029:e5:f712:c13c with SMTP id e11-20020a17090301cbb02900e5f712c13cmr10487418plh.22.1615131325992;
        Sun, 07 Mar 2021 07:35:25 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:25 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 8/8] tpm2-tss-engine: update 1.1.0
Date: Sun,  7 Mar 2021 07:35:17 -0800
Message-Id: <20210307153517.5761-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

LIC_FILES_CHKSUM hash changed between branches.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-tss-engine_1.0.1.bb => tpm2-tss-engine_1.1.0.bb}  | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss-engine/{tpm2-tss-engine_1.0.1.bb => tpm2-tss-engine_1.1.0.bb} (88%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
similarity index 88%
rename from meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
index ebd6d53..5395695 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
@@ -2,14 +2,14 @@ SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for Ope
 DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
 
 LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=7b3ab643b9ce041de515d1ed092a36d4"
 
 SECTION = "security/tpm"
 
 DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
 
-SRCREV = "24f1383cc6befde44d6f01a51ea653304d844ffd"
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git;branch=v1.0.x"
+SRCREV = "6f387a4efe2049f1b4833e8f621c77231bc1eef4"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git;branch=v1.1.x"
 
 inherit autotools-brokensep pkgconfig systemd
 
-- 
2.17.1

