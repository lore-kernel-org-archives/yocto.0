Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E6D9C54751
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 08:46:03 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.8975.1724834759226589974
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 01:45:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=UHlVQ0ce;
 spf=pass (domain: mvista.com, ip: 209.85.214.177, mailfrom: vanusuri@mvista.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20227ba378eso58495015ad.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 01:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1724834758; x=1725439558; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NmK6Pf++rZtAyZBXc6UgW5BfD5wxg7hxPa2YaFeZow4=;
        b=UHlVQ0ceZ7HDx2cbh4NNAH24NGpS5M5+KyFyEAfcrG9FS/ppzQlk0CG7OUeka/P493
         aKluFsL64pHEhPwmpNAy6RMY7/bj2aqpHrf/8+fxpSOoJEO50py8E4XhwMwTsGFVwJhL
         +umkJr+VkdMFZQ/YY0WL3Xz28g5ZygQfB5Fho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834758; x=1725439558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmK6Pf++rZtAyZBXc6UgW5BfD5wxg7hxPa2YaFeZow4=;
        b=qla3TBuj4Ws5Xne8p8yevTmYWHwvqtWpjFSU8hKykCwQI4hD4Iguce9gt2ISiosacX
         7ybiYLv3kAZAKCTM4yrK+6K2Iovtr8Nc8PymoynUU2Wuy3hjvIXvd4qpNuiQMV/zlu1S
         KUJPUzNycN0VGADi4qO5rDJZPTSKw3Zhp6yPXXoek12qsBJ2v2vEHRhpURo04Nyg38qK
         K/D1PTgjtng87pNnau+k0QE7Ns3h//is1ZY88gQAW/fIpPf5IDz4/0BKS0+L2q7VbZeW
         uKKLn+1BvLni8/hc+OKMCEyp2PUeMM3AnLq5lN16RXLnaNmD6D56OxUvhc+4KreC0oQs
         B7Eg==
X-Gm-Message-State: AOJu0YwYJ9M814GlMpFoGF8RzRmnkCzsheljDgou5RmsUHOJXeXOtzIF
	UWFA+g0DKjXkw84sPmUujV0YRR1ZYDl80FA20V+rbJ4kGGUAogkfBGPvpKBhI60WsVhYPW+vjCD
	Bncw=
X-Google-Smtp-Source: AGHT+IGxkQ4XNxYvO6xzBvUvVZmzwkvrX9HLIgtoAdSTB0mbpRM1YIRAs29JVj1UBzBAWsS7lAsRCg==
X-Received: by 2002:a17:902:cec5:b0:1fd:791d:1437 with SMTP id d9443c01a7336-2039e4415f4mr184345705ad.6.1724834757928;
        Wed, 28 Aug 2024 01:45:57 -0700 (PDT)
Received: from MVIN00020.mvista.com ([2401:4900:882e:d10d:44e8:323d:994b:bdf1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-203855e20d9sm94888365ad.139.2024.08.28.01.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:45:57 -0700 (PDT)
From: vanusuri@mvista.com
To: yocto@lists.yoctoproject.org
Cc: Vijay Anusuri <vanusuri@mvista.com>
Subject: [meta-security][kirkstone][PATCH] tpm2-tss: upgrade 3.2.2 -> 3.2.3
Date: Wed, 28 Aug 2024 14:15:46 +0530
Message-Id: <20240828084546.256924-1-vanusuri@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 08:46:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63755

From: Vijay Anusuri <vanusuri@mvista.com>

Changelog:
https://github.com/tpm2-software/tpm2-tss/releases/tag/3.2.3

Includes Security fix:
CVE-2024-29040

Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
---
 .../tpm2-tss/{tpm2-tss_3.2.2.bb => tpm2-tss_3.2.3.bb}           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.2.2.bb => tpm2-tss_3.2.3.bb} (96%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
similarity index 96%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
index 4d2c911..8bfc7db 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.3.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
            file://fixup_hosttools.patch \
            "
 
-SRC_URI[sha256sum] = "ba9e52117f254f357ff502e7d60fce652b3bfb26327d236bbf5ab634235e40f1"
+SRC_URI[sha256sum] = "6279a9a1983ea6ffe41925067b7f0de3a6ed95020a30e7c97d80fa2754259534"
 
 inherit autotools pkgconfig systemd useradd
 
-- 
2.25.1


