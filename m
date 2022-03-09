Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E49A9C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 10:24:43 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.4004.1646821482858890931
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 02:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mUGJhFs0;
 spf=pass (domain: gmail.com, ip: 209.85.218.47,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id r13so3884954ejd.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 02:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMynHnGDhk9Av66j1bAKnnzyYA3WXU+9XzWTj6VQmzM=;
        b=mUGJhFs0SWU7jONLLePPvV9ni5R2yJwSuBiyrvO6mGpBR5a1U0Oh069DR+B1ba98I7
         rMV1psAMhK1j92pQXzIc2V0xhV6vHfTE+FZmckBg4j5U4QS+UHRBjHa7YvhR0W0jaYbr
         EX0u5qlAL9yoxWKPHmRat3BcWYov54t+GdUWp5SKkKK2JRbTAOEfSkr1xaMQOSYdt85W
         0Dgw1vSOUrDLwnvZe6XhYibHVtjS/0cX9blNZr3nBA21vD3uUt0oMalcltz4WKfSwRsv
         wMPs+GH54N+qpxVQZBhOpeNZFZgOkDx/nZYKUSi4tGWnxW+JxwiRiFbKCBiOWRAtuUMG
         s5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMynHnGDhk9Av66j1bAKnnzyYA3WXU+9XzWTj6VQmzM=;
        b=AOIkdJG5jKGJTrWSS0TYuM/7LocTPu1YDAGDebwJxrjJoc0fECwYZkSAg99/yH8DTu
         nmVnjJ9nozwRO6B2+seXQhedty2RjI+93HVsfMMA22rddVDoRz52IgnzfzHQfdOIxq+f
         KMVbfvj4GLHpqN+XUB9LBla3bRQBjpmlpIjxnqhb8WUDcfaSeaU5XeH4zsdQhX8mvHxj
         z9ySOX+fYzpda2KQmimXaK4cOj7H5eNHfEN5vPGA/TnPBii8J6SYvK0VPI4UoQKO/WVo
         FOG0G1xRE5hF2cBXSUfi4C78y7Rp0eIGkunuLa6bOoW5l1/FUwTcVYX8igKWcsdf51JM
         1NeQ==
X-Gm-Message-State: AOAM5301gCIyQkk+b7EO3lYN4EZZdxw8+lkoEhH+2rYnxjInXbscjXCz
	RECvSA3HgV0p8WKNUR6t3kLafAFR/X6861cV
X-Google-Smtp-Source: 
 ABdhPJxt1ZcoCGOiMQvg0/x1g4/5Rn83icorYPqmZtNwLL9exyqv3n+jVg4UesCmcJcbemqPR1G1lg==
X-Received: by 2002:a17:906:58cb:b0:6db:58a1:3858 with SMTP id
 e11-20020a17090658cb00b006db58a13858mr4748343ejs.429.1646821481006;
        Wed, 09 Mar 2022 02:24:41 -0800 (PST)
Received: from tony3oo3-XPS-13-9370.home ([5.179.189.178])
        by smtp.gmail.com with ESMTPSA id
 l9-20020a170906078900b006dac5f336f8sm549088ejc.124.2022.03.09.02.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 02:24:40 -0800 (PST)
From: davidegarde2000@gmail.com
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-kernel: Add CVE_PRODUCT to fix cve-check
 lookup fail
Date: Wed,  9 Mar 2022 11:23:30 +0100
Message-Id: <20220309102330.46475-1-davidegarde2000@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 10:24:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56402

From: Davide Gardenal <davide.gardenal@huawei.com>

Add CVE_PRODUCT override to fix a lookup problem when performing cve-check,
if not setted it will search for the recipe name, that in this case depends
on the recipe used to build zephyr (eg. zephyr-philosophers)

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index e060a95..ea20a18 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -1,6 +1,8 @@
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
+CVE_PRODUCT = "zephyr"
+
 inherit cmake
 
 # This file might be included from other places (like other layers) and not
-- 
2.32.0


