Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C43C77B6F
	for <webhook@archiver.kernel.org>; Sun,  9 Apr 2023 16:16:24 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web10.23459.1681056981946969010
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Apr 2023 09:16:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=YIrjnw3Q;
 spf=pass (domain: gmail.com, ip: 209.85.128.172, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-54c12009c30so170127627b3.9
        for <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 09:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681056981; x=1683648981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=gzYHsbyMVL5oFNcEraF1yt7J2TJ1epmq9zMjpbJ5Mug=;
        b=YIrjnw3Q/C2XLSf64fcaxwF/iqcg9Pn//22duQ5kaiF32lAWiE7z6RKs4XkFBW0RLH
         eZfDNJ3qXDn9O2rBPtw+2AQi5zy1vxBFR7++QV0okC/AVrInO97Eq/OnZyAZBXyRL5xL
         ooGchC8R/MfbCwPXKh1ClKHLaRCld24iTJoNLVwGfhHqRL37A6MiXkLpO9+wswRtTLbT
         sG7bhRBtLxs0Jd8gi0wBOT73RUKqBPpWGF8ahC0phoisRWJn1nr6/iR7YmlP8YsjAVYp
         M8AUHsL0z49zf/ldlVrvYWgW7ykRTU+IO1bjSD5p7H+e70QG6I9mNi42K2aSeggspQhi
         Y2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681056981; x=1683648981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gzYHsbyMVL5oFNcEraF1yt7J2TJ1epmq9zMjpbJ5Mug=;
        b=w72QhGzikeHsrLdNYbXbZXn+0f1z7aZCpaSGWAKqlro57JAXBHS8S9+XBsTuWHbYlz
         MjyaKKfKyPpEL3i8w62hmSZho+8tVYZ/O6/8hVzdIM3CRsyqA5qruhl30B5Y7U/CfhL5
         qbzFrPHg1FoC3FUXOIqQBBIZeVzBafVrIpZ07Ys2o08eoMRjhUx3Hcl2l8ENIYmITh4z
         vwh/ya6DcSBTbO8vuDTBE0b9kLPHNW2QV6h+gMjUbmyZTugiYOZH3h6FARWaPp1hIbk+
         9Azf+QESK8S+TUNNUHRYEFxdtgDTy1b4nMx7X0FTkCjZ6NM62EDiXa+433HK46hUfAbS
         nRMA==
X-Gm-Message-State: AAQBX9eQDxPTgMcexYmzA2kxyBUUJJgRle+zsxPB3lRn8o+vNivdJtBB
	TQNKJXnCBkOEMItwic0Qq/DblPGnhtLxRg==
X-Google-Smtp-Source: AKy350b2CgoY8YAIPHus4OPZLA1vDIsNYCBDLv/zcC2z1eaEQ8HsNZsskRaK1w9gMMxRPF+jCEganA==
X-Received: by 2002:a0d:d54f:0:b0:541:7193:e136 with SMTP id x76-20020a0dd54f000000b005417193e136mr5724090ywd.23.1681056980655;
        Sun, 09 Apr 2023 09:16:20 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:47d6:87b6:cfbc:dcc5])
        by smtp.gmail.com with ESMTPSA id j135-20020a81558d000000b0054f2d0a7008sm46894ywb.2.2023.04.09.09.16.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 09:16:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 1/2] parsec-tool: update SRC_URI hash
Date: Sun,  9 Apr 2023 12:16:18 -0400
Message-Id: <20230409161619.120499-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 16:16:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59646

FIxes:

ERROR: Missing SRC_URI checksum, please add those to the recipe:
SRC_URI[parsec-tool-0.6.0.sha256sum] = "f51d5d7f0caca1c335324b52482fa5edbf6c9cfd2e6865e5cb22716d52dcb367"

Needed to have the package version included in the name.

Fixes:
ERROR: parsec-tool-0.6.0-r0 do_populate_lic: QA Issue: parsec-tool: LIC_FILES_CHKSUM points to an invalid file:
and
error: manifest path `/home/akuster/oss/clean/poky/build/tmp/work/cortexa53-poky-linux/parsec-tool/0.6.0-r0/parsec-tool-0.6.0//Cargo.toml` does not exist

Set S to CARGO_VENDORING_DIRECTORY/BP to fix the LIC_FILES_CHKSUM and compile errors.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
index c729406..6095ae1 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.6.0.bb
@@ -7,9 +7,9 @@ inherit cargo cargo-update-recipe-crates
 
 SRC_URI += "crate://crates.io/parsec-tool/${PV} \
 "
-SRC_URI[parsec-tool.sha256sum] = "f51d5d7f0caca1c335324b52482fa5edbf6c9cfd2e6865e5cb22716d52dcb367"
+SRC_URI[parsec-tool-0.6.0.sha256sum] = "f51d5d7f0caca1c335324b52482fa5edbf6c9cfd2e6865e5cb22716d52dcb367"
 
-RDEPENDS:${PN} = "openssl-bin"
+S = "${CARGO_VENDORING_DIRECTORY}/${BP}"
 
 do_install() {
   install -d ${D}/${bindir}
@@ -19,6 +19,8 @@ do_install() {
 
 require parsec-tool-crates.inc
 
+RDEPENDS:${PN} = "openssl-bin"
+
 # The QA check has been temporarily disabled. An issue has been created
 # upstream to fix this.
 # https://github.com/parallaxsecond/parsec-tool/issues/94
-- 
2.25.1


