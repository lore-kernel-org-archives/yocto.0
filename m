Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.2258.1575426965700665257
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbwMU7q3;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id w7so2477352plz.12
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=HRIkf/XLojNT2WHcDbLTPKBfnTW9c/mG4x/UQ25g98Q=;
        b=gbwMU7q3tND8uX9rkJ1d3NVKw+OX3NOQH+73rq4wo1/Tc5yexKYvvvg5ZCf97vfC0Q
         Mzk/xWG+yEvB9VsvOfIR9aYmVK5Wb2zRaNQnji6KTb9P1bOwg6zT93OBvnFvYEsW/nyG
         v7vvJ+OneUSoNfjtD8C5N8nX1D092/Mu3UwlGJ/MJxjS8pfweG8FELoDZ48bitJDMMIB
         5XCl+O9TxQXZfgrhhAuQJtE8733P36BFtezCeoMEHMbPGq/3ffxUFtDz890n/8BUYFIU
         H+hyV9qrvhPclTzQaqQa+zEnglwiDC4h/DOeLSPeAD24Ml0BFlA7RU3nyPnR1nqb8gBH
         iCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=HRIkf/XLojNT2WHcDbLTPKBfnTW9c/mG4x/UQ25g98Q=;
        b=BsaLU04yVq/6iTMxziTY4BjU7CtGYplseAMjeoqXz8tDdNNjxq5c+PCa/YrhlB8B9x
         +FL9oGRcUnwf82oDXT6GeJ4kU/+lGk9u1Y6g9l52qfEcb4UxIA9hef4zk2t3hkt4ULbl
         VJSrpk3XL6fuwy01zAfCnNSL8taKeRWaIEO3e15euzv6eh1w/B6krWe778vXqBv3YKy5
         J3LLsHkjPddQtaLBlP3D7gpl7+q2frxLYQYaEVlJZbAPHiGiOtJiFJBAd1ct4Xv36tXf
         87//qQHaIZh/r/UGXRCeGwQ2QcYLthVmgq1etq8Nc065pcRpHSmh63VWAM94+PlkCRSE
         RKDw==
X-Gm-Message-State: APjAAAU2fXnlSydIGa5+X/usX8R3207JnNUIg67khL4ntHnaO+V3XYnN
	aWdrADtFqD/jWnoD/AJuEhrHykjV
X-Google-Smtp-Source: APXvYqzs3p6h0JFZO5uK4dZ7MphGUTK6mpZ5L3Tp9dVbrPafY5syGejlV19oGwd7N8WuKXm4/1AUkg==
X-Received: by 2002:a17:902:9f83:: with SMTP id g3mr1154397plq.161.1575426964922;
        Tue, 03 Dec 2019 18:36:04 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:04 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] tpm2-pkcs11: update to tip
Date: Tue,  3 Dec 2019 18:35:57 -0800
Message-Id: <20191204023602.31748-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
index 2185749..351e03e 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -10,7 +10,7 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
            file://bootstrap_fixup.patch \
           "
 
-SRCREV = "caf20c04651029626466c59d88b36c05cc6ea20b"
+SRCREV = "6de3f6f9c6e0a4983f3fb90e35feb34906f8aea7"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

