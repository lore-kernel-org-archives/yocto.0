Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web08.2856.1616185237648056847
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 13:20:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUEncwur;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id ha17so5226962pjb.2
        for <yocto@lists.yoctoproject.org>; Fri, 19 Mar 2021 13:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6Z9wQjm1qCC2SsLOcNRrvnA1SZ3OkxOajXtrA8KAC1Q=;
        b=nUEncwurQLlDkm/P81qOA/caPOAtTqS/9H2bwpMLBJvW4goJ0TBF770UanMUy+K5+D
         UzS8X3VFyLhbFvbGaT3250iqcg6kBAz883u/5lWduAaGAQQg3HoErw7Xf8k0hSJiQZ+w
         xDX+rKjP7IS2tx8cGlXPbM0tevMu09IhNf0rIdoNyfu1cgt30LbJz6TJ0BqIb2N6p3aO
         x+ZesAqxMvY0Bv4WqJSmeLZtvQCTu2M0Hz6/GNvQQyGC7gWeYlGNVB9S5hCTbaGnmC9h
         q+mQ8nU8fym+YeLfWLhWoGR/MagM+lIuIpheFlF5FpxuIqiPed6a8TnAXRvurViRyHnX
         af+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6Z9wQjm1qCC2SsLOcNRrvnA1SZ3OkxOajXtrA8KAC1Q=;
        b=ev45pOzlXx5lbv99L9k2WNKtzt6YuAXjgPW5XsYygoyArOzbMOWb+x/soG/5HLbFp/
         6bHXFO6AIxGSI3GCZ8clZ11GkRFfchQDhW9wmQnGuTc3XIOUr9PIrKYpyyuD/5MJcxhZ
         tkAP51eobpUktDqy7WW7pLNJzONuEP6CEm2WwwSZFizEsy+5cTU2WC3PL9MlAvaflF8J
         vzYQC9ZmQAp088YVaTIcBVLf7tM8GzDm2q+ol4VJ34vvR7KHL1zhw1rarFUIj4le4dcZ
         GnhnyW7bpemuAmDl4vP9U1H38RXTR4n0RweTk5K2Vdv3kmWZv/QIe3mD+cSX0VINvB4H
         oNuw==
X-Gm-Message-State: AOAM531tkZIQusOeQ+BJYDpccVUm8i1vntBqA1h25I76jZ5Xj9pqWr5n
	TjK6xjxPczQ8dtdN9TT0wQ9neX7qw2c=
X-Google-Smtp-Source: ABdhPJyhDtg12/ItRD17Hg+XK1Jk4YKcVXqZXF1usAKLHX6Pp1DBvMsVUANio5eEi0jSvSZHae78rA==
X-Received: by 2002:a17:902:e84a:b029:e6:d1ee:a1ed with SMTP id t10-20020a170902e84ab02900e6d1eea1edmr8533559plg.78.1616185236802;
        Fri, 19 Mar 2021 13:20:36 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w189sm6116371pfw.86.2021.03.19.13.20.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 13:20:36 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] tpm2-tss-engine: update 1.1.0
Date: Fri, 19 Mar 2021 20:20:33 +0000
Message-Id: <20210319202034.3375427-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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
2.25.1

