Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F71BC5472D
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 06:20:10 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.7104.1724826008981148797
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Aug 2024 23:20:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=YrpHNf+z;
 spf=pass (domain: mvista.com, ip: 209.85.216.51, mailfrom: vanusuri@mvista.com)
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2d3c0d587e4so4508236a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 23:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1724826007; x=1725430807; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XjbFBuDvrAR12It/FMBZNONL4ZBwRGT7nzoTKP187do=;
        b=YrpHNf+zr/55E92wEG2sPMePKG3pCdKK03cRLZ8yR+Tv5rN6uBPdV+txOysHTBFi2Y
         54z+VcLuBZIyhJb1tL2GBXqkI4YcQHFCZqjHOMwxta+lem4x4G/x2tNbd9pe9F8MU+3Z
         735Ui1JWMxceqMaHOXYecEqfyHwYg6OfqyR4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724826007; x=1725430807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XjbFBuDvrAR12It/FMBZNONL4ZBwRGT7nzoTKP187do=;
        b=gg62vZ3C79QWJbqF/xG+Br8WAWCYX0n8lqkEXWGU57Rf+t9tr9d48XYk11guoP7Xsy
         CgL8bt68D2XipjmFwot4bbKCwf88lohMrSjVYj39kaFSnHZhfX6lBtxIF4sv4c292lBI
         Bgh+apZmlysZK919X86IebqQ3GzGaBhJsWVtURvFpDBeUlpBqdI4OU3jiOrCsr3eXtCA
         GttuB4bDPyKJkbuhImrtbQeNyF17oGGUf4FS4CjQ2MdVQd7y9QEGbJ6vOzU0YkN3xGxo
         rC43+Z7BFVSh6sR9ooCtRn6yRte43V1cRDSYkH1DUK3TiqU6kPAgo8030roxJtfPtEfs
         5Orw==
X-Gm-Message-State: AOJu0YwDXF3hAbktoZrpOXidThhYrRmeQVqiQLzeUasSbe/jzwU8RB/N
	x9agZuNaKnP3inTUVSEayfPdo7Do2TynhT9Rk9qqOi36A0yDKz+KieRZtmXDB7ASPkD+uP15X45
	huAw=
X-Google-Smtp-Source: AGHT+IFUhT2qJyFtKKXcN9xsHhlZqAiMyTJW3AUYSisPQ63IVubH/rU9yqQL9wY4fD3NCxFJszFuNA==
X-Received: by 2002:a17:90a:d490:b0:2ca:7636:2217 with SMTP id 98e67ed59e1d1-2d8440a87edmr987150a91.2.1724826007363;
        Tue, 27 Aug 2024 23:20:07 -0700 (PDT)
Received: from MVIN00020.mvista.com ([2401:4900:882e:d10d:44e8:323d:994b:bdf1])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8445db943sm728383a91.9.2024.08.27.23.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 23:20:06 -0700 (PDT)
From: vanusuri@mvista.com
To: yocto@lists.yoctoproject.org
Cc: Vijay Anusuri <vanusuri@mvista.com>
Subject: [meta-security][scarthgap][PATCH] tpm2-tss: upgrade 4.0.1 -> 4.0.2
Date: Wed, 28 Aug 2024 11:49:55 +0530
Message-Id: <20240828061955.51623-1-vanusuri@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 06:20:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63754

From: Vijay Anusuri <vanusuri@mvista.com>

Changelog:
https://github.com/tpm2-software/tpm2-tss/releases/tag/4.0.2

Includes Security fix:
CVE-2024-29040

Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
---
 .../tpm2-tss/{tpm2-tss_4.0.1.bb => tpm2-tss_4.0.2.bb}           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_4.0.1.bb => tpm2-tss_4.0.2.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.2.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.2.bb
index dceebc2..e668115 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.2.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
            file://fixup_hosttools.patch \
            "
 
-SRC_URI[sha256sum] = "532a70133910b6bd842289915b3f9423c0205c0ea009d65294ca18a74087c950"
+SRC_URI[sha256sum] = "e5f9b6055c29cb8d653ec7576853ff3863aa65dbd9cf4b3638ae8e8e7ce968ea"
 
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
-- 
2.25.1


