Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EF1CCA482
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 19:04:42 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.13089.1654369477862308897
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YKwuww1H;
 spf=pass (domain: gmail.com, ip: 209.85.215.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id y187so9753488pgd.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Ntx3xjw2niW58hcBCJhy9yfD7acWUsTqzw3jM0Nqgzw=;
        b=YKwuww1H3n+qODHJRpO2cnBY99XIrYCQncwjMPEDwUWyflO/JidsFxzb+Rer/TPc1j
         joe3t8QrmqB4nKEcpzt4LRnKnv/6rsy96F0ODHkp4ZdEge6V5Om22Gl2nFvMHjEkGs6J
         nGCzPRUID1KDs1CM6SVW6/uL72IlY9DY7h2KADmG9c9E+kN/hIw+Jm9lJouW5FXVLvre
         UH3rj3pRfE+uBLVAIUOQFW/SWKhf7dIGzVXi0VFMVTLG6Glhiq+UB93KCyhGpGo5/8DV
         SDQpWPuPggakQIyz4pbfYP6kw1aE3Q5hQlvMTyAhSb3Iue9wScm1bbGdoGIy4mW7E/WR
         42Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ntx3xjw2niW58hcBCJhy9yfD7acWUsTqzw3jM0Nqgzw=;
        b=KjCke1EapU/ADWUbWFWrChEDGMZyhAqw7mGd7wF9Kwsf9S26lxGnbY5nnjw470rt7n
         7iDGGEj/cslIcCZGyFnWqD80KfdYFY1uO0s2+Eh4+KQHn2biAkfsU9DhiBoqrK8zM9MZ
         MZm98HIb3gn8xmd61Xb4D05BVUmkANF0GcKF2qwusJZ091g9P2xwsnHznuvkVrmtLPah
         G4VBxGrB6gUQbqkrAXnCWA9U1yNQ01GXCJ2vYkUGg9ls0ElmE7vlx2h1uwQMT2dQ01Or
         bZcUnotprbViMXC14EFMgsznl24C5tEp2+aZW7lf791KL3QyyIUw/ZuVRPbU+Soa7D4G
         FH3A==
X-Gm-Message-State: AOAM533S/czyqbTBmJw5zYY+mbDgOZeCE25Rj6CpSZmWCBaUKgnFPgYI
	vwkogkEjWnIQN+4g1sezPnb1ahjzB3I=
X-Google-Smtp-Source: 
 ABdhPJwyvyE1WMWQ2rNYyy78eacBGFPh4pmNNYBes1b1CZzh5fMDANXBsPr4qc3cseYm8NrjR+kHsQ==
X-Received: by 2002:a63:e348:0:b0:3db:7729:c0fe with SMTP id
 o8-20020a63e348000000b003db7729c0femr13700763pgj.482.1654369476976;
        Sat, 04 Jun 2022 12:04:36 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 u1-20020a1709026e0100b0015e8d4eb231sm7633298plk.123.2022.06.04.12.04.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 12:04:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] packagegroup-core-security: drop arpwatch
 for riscv from pkg grp
Date: Sat,  4 Jun 2022 12:02:27 -0700
Message-Id: <20220604190230.3700475-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220604190230.3700475-1-akuster808@gmail.com>
References: <20220604190230.3700475-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 19:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57260

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index b20ef31..40ff06b 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -42,7 +42,7 @@ RDEPENDS:packagegroup-security-utils = "\
 
 SUMMARY:packagegroup-security-scanners = "Security scanners"
 RDEPENDS:packagegroup-security-scanners = "\
-    arpwatch \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " arpwatch",d)} \
     chkrootkit \
     isic \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
-- 
2.25.1


