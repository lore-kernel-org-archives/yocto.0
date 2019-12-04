Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2291.1575427204458487474
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:40:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lMhPbXZs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50DFFE010AA; Tue,  3 Dec 2019 18:40:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBFFDE0085D
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 18:40:03 -0800 (PST)
Received: by mail-pj1-f67.google.com with SMTP id w23so1243302pjd.2
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 18:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=z9eAxZ1TWCeQuHZoMT/C5maAdb99NV/Tv0jWQqWpRfg=;
        b=lMhPbXZs/dlXkFAFZz9Z0IeqRtdSph2I9zsBxKQZF0bbVte0AUMStERMOOyLqOLBuN
         OfZbl8WsZM85157LdzIgAT3r9xXJkujR0h40oPOUR0JyotxPoOEff/4Ca4cdEbhQNFVl
         5/+srrBYTtVeXJbCSS+LwQH8eUgC4MMqJ1FFNpL2yCcde+CHV9Uj+7D/KLijSUm/4HHn
         j8stBwgbzoIFWI/FaelVxk+0hsEKXTvaKSRWWuAJZ4PqJeThCqi96di8+mbG99DnoQe+
         Sa0DfcGdhmzvmpMgNCqRVhcSw87mU0i2kJLfFyax62sWhkp3YHF48uC1f0ROfVbDsyI1
         uOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=z9eAxZ1TWCeQuHZoMT/C5maAdb99NV/Tv0jWQqWpRfg=;
        b=jW8AwxuPQpZ2BZ5Ogt5719dvNeSMrS17VUVLQC90WhRQHSHRI/I8AC4uvOZmOIGISP
         RlcoW9PlCOYM+kjeyyQCGo9pTzkte2yh9yAXtUqP9T3o/VRHEgCGR0NBTEY4Q3bo+5Z5
         vMtrQ8pmwuPiC9g5VZPbCm05YRU9JX26L5vQFWVUz2UiWmx0sV3MhGCuISIueppRdhPH
         LOYo17qI4y3cxDOrSLI9zbpF8HtlJKKXtxbVYcsZ2NFwz+JJVpgzWGDn90lsaExKYwW7
         4xuPgZpNBTIW6SY6FXNOpbNr345aS01CQmY0z3jODtUqQlvcOIiOir0MHaTBxKwtgezz
         B8pg==
X-Gm-Message-State: APjAAAVPgvT++UAA5jHSusUfQAFWwuTRoIBUjkRkqg7phKHSVEACEVYU
	9Xm+iMFwX9oUL8LbEdDwDWOPE9yV
X-Google-Smtp-Source: APXvYqxAiFsZYFuGC19wo6yARFxH+FtVYdHQPbtHVHPPUFQaI6oq/PoXOrstP3SuSl6G9TPrE0WUxw==
X-Received: by 2002:a17:90a:e2d4:: with SMTP id fr20mr787645pjb.85.1575427203096;
        Tue, 03 Dec 2019 18:40:03 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w4sm4316863pjt.21.2019.12.03.18.40.02
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:40:02 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 4/5] tpm2-tss-engine: update to tip to us tss-tools 4.0.x
Date: Tue,  3 Dec 2019 18:39:57 -0800
Message-Id: <20191204023958.31799-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023958.31799-1-akuster808@gmail.com>
References: <20191204023958.31799-1-akuster808@gmail.com>

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

