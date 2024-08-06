Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790BCC52D6F
	for <webhook@archiver.kernel.org>; Tue,  6 Aug 2024 09:43:39 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.3570.1722937416897116306
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Aug 2024 02:43:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=bmX1WjYY;
 spf=pass (domain: mvista.com, ip: 209.85.216.53, mailfrom: vanusuri@mvista.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2cf213128a1so268115a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 02:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1722937416; x=1723542216; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E9H4VEuvSgeuWlQdJRFaipXQscKbeS9QwN9X8W4VGiI=;
        b=bmX1WjYYLwFJp5KLjx8jYMRinXnSBPXsjHcuhgJtApv3WB6B4t9ugzayFWCEn361/5
         bEMcSTcmvAAfxzxvy4jyP23SYidnb/khDlwjAwJBO1xNOJls0T5aZQl9ZQ0KsTtfmies
         AlMbVHwoqM1LUb+2vhtZs+X0dQfe1z99XqVVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722937416; x=1723542216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E9H4VEuvSgeuWlQdJRFaipXQscKbeS9QwN9X8W4VGiI=;
        b=bw7Kw/so4T2t5FyrLD+v7rD780YrLeGuyjAY8vE5y+6w3lALL0YpWJVn/L7bO5MB6h
         SLE77t/QIaY4q3OlyJ0+Qi2qWcddOzmhctDVjnLOLphweWAdIZcfddidnqcfdU/hZHYz
         LLjip0lNgstApgQ39PdASoLnPzPfTsOOCRyPQ/6qBsk6mHnjGM9pYJjSe3pplrAvtHyb
         tKoEsO6HqEoc2F5kb5mCaiTbfOWrzJ0usSR6ihZXa1VcD7O93SUojH+r0fdSb9qy+/nh
         myCavgg+/2TwbHGNkL+wBmO8NkWFwOpA7yytbTY2rCejyWSIaUGK/4YnqXmYCI3uKWdv
         Hn3w==
X-Gm-Message-State: AOJu0YwmdKpVWdDOXl8oprpKHS05QdlM/mfbOwAmQRGbWxLGEO9Qlqbz
	Jv8DWPdPeGVlxm6Nkvn0m0qeN50fO8oVqMS51EZ803tSHg04KmigYH0XJHsBXseR2+0dRF8KKRt
	O9no=
X-Google-Smtp-Source: AGHT+IFxjBt9CPZHGmWG+4OpiZ/Egqi9jgqbbQ2dl22zNgQbb1vVR93LQtA+IAAF97SpSmhS2YSv4w==
X-Received: by 2002:a17:90b:1dcb:b0:2cd:4100:ef17 with SMTP id 98e67ed59e1d1-2cff9526106mr13201154a91.31.1722937415768;
        Tue, 06 Aug 2024 02:43:35 -0700 (PDT)
Received: from MVIN00020.mvista.com ([2401:4900:882d:87fe:8e12:822c:a024:3c9f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc42f9d3sm12143390a91.18.2024.08.06.02.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 02:43:34 -0700 (PDT)
From: vanusuri@mvista.com
To: yocto@lists.yoctoproject.org
Cc: Vijay Anusuri <vanusuri@mvista.com>
Subject: [meta-security][master][PATCH] tpm2-tools: Upgrade 5.5 -> 5.7
Date: Tue,  6 Aug 2024 15:13:24 +0530
Message-Id: <20240806094324.7354-1-vanusuri@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 09:43:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63662

From: Vijay Anusuri <vanusuri@mvista.com>

Include Security fixes:
Fixed CVE-2024-29038
Fixed CVE-2024-29039

Changelog:
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6

Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
---
 .../tpm2-tools/{tpm2-tools_5.5.bb => tpm2-tools_5.7.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.5.bb => tpm2-tools_5.7.bb} (83%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
similarity index 83%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
index 9bad758..bb422cf 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
@@ -8,7 +8,7 @@ DEPENDS = "tpm2-tss openssl curl"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "1fdb49c730537bfdaed088884881a61e3bfd121e957ec0bdceeec0261236c123"
+SRC_URI[sha256sum] = "3810d36b5079256f4f2f7ce552e22213d43b1031c131538df8a2dbc3c570983a"
 
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
-- 
2.25.1


