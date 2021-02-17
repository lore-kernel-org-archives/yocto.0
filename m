Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.7840.1613570978659090079
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 06:09:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mqv3y9hJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: liu.ming50@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id t4so2438759ljh.11
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 06:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4zSfV1d2ZEkRVrkrlVeLBkt53XDdfmYlwhYxsY6N1Sc=;
        b=mqv3y9hJYse0Dr3P+C/dR37qhMu+G73uOiIzy01ZbgjyQ1L7TAfNHUfn+21SRpFo73
         aDIfKT6gbKdUQeHYcsDar4hT6fhfkn8J1A24otWAQMmUn1Oui39gCB55KYntJKOO/VAK
         1J42k54qfq7qU51G6C27ilEuKBFQN9/NmMQuGxBPQvpVETVbometY7GSYDtCljnhytxQ
         rQZjNJUDXJBLwJ1hwtErvTG6rnmqYXDqYpRwQ/SIl7O89d3ZETgzWbHN0XVnrbqed9RX
         4YIBOv9FrxY2ffievPpglw3Tddnwo3ATJwc2xRYwiJS18L0AAp8uTjdjiOWBwIjDYs2V
         qmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4zSfV1d2ZEkRVrkrlVeLBkt53XDdfmYlwhYxsY6N1Sc=;
        b=q7JVsY3I12S/kUXEWIx2b+GIi5g2EffBzG6rsjQrDCfdYcOF/8kpgLvDiBt3hGa6iw
         05zNOn7YARJJnAKjtgQg4/hda50x7PNGvYVLQ+WhWalZGL+gJS20/T5xRdjryl7098hd
         9mVBIQ7M3wQNQIypgqYjbAi/XEIKKkfervaQjCvImAIsQyUI/7hMZRCSgVCBWLtdXQMK
         bWSW5hf2CAmzvULpurCsJyAdvjXntGMSGUZ195h9Shp6dU/HiJrn09uTU3TTFRnaTPnL
         DV7VLnYBkFPbJv/0sJgLWGtfuvhaWgdGy40GT24vGS5Mn9n4m4tSUbgMXZkuJU+GrBJc
         F3xw==
X-Gm-Message-State: AOAM531+EdfxvhZoQuVHTEzxDLYZNutPV81CbIRxOSRdxQD7IgXPWY1C
	WTTYdxFSZJAyKwkLrsQIkJM6wC1ZVOs6vg==
X-Google-Smtp-Source: ABdhPJz6a+o7Nkz9+IkEw8G7juLqg2bW9OM/6PLkctz5Y6ls0GHphPEC8146XrhXAsUMJPuno8Q/ag==
X-Received: by 2002:a2e:9c41:: with SMTP id t1mr6211465ljj.345.1613570976764;
        Wed, 17 Feb 2021 06:09:36 -0800 (PST)
Return-Path: <liu.ming50@gmail.com>
Received: from localhost.localdomain ([90.129.215.157])
        by smtp.gmail.com with ESMTPSA id q26sm253363lfc.254.2021.02.17.06.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 06:09:36 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@lists.yoctoproject.org,
	openembedded-devel@lists.openembedded.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH 1/5] ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
Date: Wed, 17 Feb 2021 15:09:25 +0100
Message-Id: <20210217140929.987752-2-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210217140929.987752-1-liu.ming50@gmail.com>
References: <20210217140929.987752-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ming Liu <liu.ming50@gmail.com>

'ima' does not have to be in native DISTRO_FEATURES, unset it to avoid
sanity check, this fixes a following error:

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 7f649c2..bd85583 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -26,6 +26,7 @@ S = "${WORKDIR}/git"
 inherit pkgconfig autotools features_check
 
 REQUIRED_DISTRO_FEATURES = "ima"
+REQUIRED_DISTRO_FEATURES_class-native = ""
 
 EXTRA_OECONF_append_class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
 
-- 
2.29.0

