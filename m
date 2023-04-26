Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F279C7EE24
	for <webhook@archiver.kernel.org>; Wed, 26 Apr 2023 14:18:49 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.9249.1682518727538311569
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Apr 2023 07:18:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=sWnGRJ1n;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-54f8d59a8a9so86845657b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 07:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682518726; x=1685110726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RsN6C4/E6+Tx3eOPeslY0x26Nny6hztk1Q/4Heqco/g=;
        b=sWnGRJ1nRu2eim+ocwVFKjmUunlMxATem/ZPglYZJJX/zbyMn4oDkgQ7YPC0iJBKQO
         aHWLWcZ4chQqkXTetFpKXtW/G+KcrhyVpgLWMHlUc2Q7p0ez+tlLH9rd3/ZkCLpDRTTA
         KPk3rxWs89/2TSG4kwDk/BHs8jpTJlXfQAPJZvB3rUywS47KYILMUsp02tjxPco0ldrc
         dLPJVGRygiOF7D8PAikA7OLxxkDM1mjJtl4Ymo447mCWV8s/P0f7kL/9MILsE02izPOt
         PL0i0D4LGIc3DGg/KB2Dc9IC96E8tNszo3bqfdwC9c08oKg+w+YjIjCCmKNBuvnqltfY
         qJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682518726; x=1685110726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsN6C4/E6+Tx3eOPeslY0x26Nny6hztk1Q/4Heqco/g=;
        b=TTmr3YiW4XwoN8ZgVWaNi0e8qaU45/RfUi8ttgBPhcCnyBYvVRX101Ulk08BwXFvmr
         4zb/8oac1XEDKZppvSb8TjPx52vWrZ7JZLJoK4m0CvTPAzZ3HP3ZPg1MByu0Xd6XIhZ8
         x92jVlOP7uw6Xz2YJrw4t41Og5weM6ZfWdxLX88j4c868ssAU4nuy2Q5ugE9+EhUBCaU
         8CUIbGIVHPEvyEwc9bCE4z76o92Tj2GxLsxWkHnZFnLo4VPA0hRsYVRokJ/4Cq5r+XgS
         8btVWpKdvraxT5XcQH/PaCZYeltv3+tlOzoBtP+WtELIroNHurJBnOP65UmwBHf/HhZv
         I48Q==
X-Gm-Message-State: AAQBX9c+7V/fMka+eptqOE/vfJnhMiW/N/1PLhwmlEojGPt/qJtPkT7t
	qUKdskWZWh5X4HqD97Scr/qtXvfGxNs=
X-Google-Smtp-Source: AKy350ZpPJILL6/pZLQ/MlQTNbyee5ATPWAeTqHK0LUSmDCBphyIft5O/0NplHdseoO6S9z9oQxQZw==
X-Received: by 2002:a81:9115:0:b0:555:d0a0:fc1c with SMTP id i21-20020a819115000000b00555d0a0fc1cmr13422326ywg.11.1682518726477;
        Wed, 26 Apr 2023 07:18:46 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dca5:ab45:75c1:b60d])
        by smtp.gmail.com with ESMTPSA id p71-20020a0de64a000000b00545b9498c1asm4214462ywe.12.2023.04.26.07.18.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:18:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] libtpm: update to 0.9.6
Date: Wed, 26 Apr 2023 10:18:40 -0400
Message-Id: <20230426141840.764144-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230426141840.764144-1-akuster808@gmail.com>
References: <20230426141840.764144-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 14:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59787

include: CVE-2023-1017 & CVE-2023-1018

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_0.9.5.bb => libtpm_0.9.6.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.9.5.bb => libtpm_0.9.6.bb} (89%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
similarity index 89%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
index cf80064..a860319 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
@@ -2,7 +2,7 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "df1c3e98d697f3c1f09262d2ba161a7db784d6cc"
+SRCREV = "f8c2dc7e12a730dcca4220d7ac5ad86d13dfd630"
 SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.9;protocol=https"
 
 PE = "1"
-- 
2.25.1


