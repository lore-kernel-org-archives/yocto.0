Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5807.1613823531820630940
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=GFnaMwFW;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B633838C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:51 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id a17so40235582ljq.2
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BnWBsLevqhnBKvX5u27YzeeGEUwuMhqDdyGNSa3WPrs=;
        b=GFnaMwFWIb3P+SCnRWlvtH/7rg9LQBWy0K+HrpqwxpRKkp1p/wtalAuwLERwKEnnlh
         s9fdy4UCcyP1ng5S0tweAb7ZPUDKibCHhk2v19xNxFmyqWWZDRopBTs7y6U3VZwPDmPA
         L+Rymw5TbeDOjVWvIO5a7EOGXotZJn+KYp/FXBNOaNeSJIuGVKbL3nrbEmcDOboE7y/d
         uj2dDem1pC/UiuFgrhSgLy5wLWfVlrkAlJ6uf2kgJ8Uh7TyYiH0uTJ7FD8OrddAOT+En
         hB9gQ6RsnVyLSsV4qfCFP7DS3K9VXRfSBbec2vzd5HfqNYUNSDrr09j4r3++EbGKd9Iu
         9+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BnWBsLevqhnBKvX5u27YzeeGEUwuMhqDdyGNSa3WPrs=;
        b=pwh7L0X0hBYSQQN8IeEQgjhdXbsefFDRWsQOzcEMqI/VY6aCoPA4k28+fDb2JKvIIj
         PreSam0TOn69/jOjPE0FHTtzEhYxgGybeCHNOzYOHlvdTQxISCYs/hmJJEy7egpHU2E5
         LtuHx123B9OA5ovK8mBj5sxqcQ2pPipsHCliT1vmxI5o9be1B+ZXa2mFrVZlQo8LcEs0
         e27PgVHtl8WhJhFu+F6IQOlHZF92vxM8tm6gs20cXPY/EuV6LMWDBY5KnIGrd9sNNmBs
         MUEpDcsLTi65v3vzXu/+8RjMJXus6GDbTOJwxy2jiUyoCIb+q212DC9CulTBxEOtbN9x
         g+9A==
X-Gm-Message-State: AOAM5312aBjgwRntNKxStTsYg1R6w+n3BDjNbLplgC3aJrIDO7OZVpGa
	lyOjVGKF4sdmKmGMgU1Avozqxt0E7pDf2Q==
X-Google-Smtp-Source: ABdhPJyVyPKc0b4UH8euo6OSnqCl/2drpHUyDIRWBlPmnaksgkvke4CUTK6qPMHECu22k004GSkuoA==
X-Received: by 2002:a05:6512:31d3:: with SMTP id j19mr8818324lfe.495.1613823530129;
        Sat, 20 Feb 2021 04:18:50 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:49 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 6/8] README.md: update according to the refactoring in ima-evm-rootfs.bbclass
Date: Sat, 20 Feb 2021 13:18:20 +0100
Message-Id: <20210220121822.1873572-7-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 meta-integrity/README.md | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 4607948..5048fba 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -73,8 +73,10 @@ Adding the layer only enables IMA (see below regarding=
 EVM) during
 compilation of the Linux kernel. To also activate it when building
 the image, enable image signing in the local.conf like this:
=20
-    INHERIT +=3D "ima-evm-rootfs"
+    IMAGE_CLASSES +=3D "ima-evm-rootfs"
     IMA_EVM_KEY_DIR =3D "${INTEGRITY_BASE}/data/debug-keys"
+    IMA_EVM_PRIVKEY =3D "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
+    IMA_EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_ima.der"
=20
 This uses the default keys provided in the "data" directory of the layer=
.
 Because everyone has access to these private keys, such an image
--=20
2.29.0

