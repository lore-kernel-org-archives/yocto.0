Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EABDFC7EE30
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.41607.1683658643096682156
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=PwWif3h7;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-30786c6082dso2583733f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658641; x=1686250641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uTG9v7UT9PqUHXDM7SKfSlMyAOxVTJ89xs/zTkcfeA0=;
        b=PwWif3h7zIVNjoUW0mcGLbIkmIJ8tEV1NfMeFbba7m6ob4iyk3ON0qRx6pjicTaqSa
         FIr+CiDykrz99We428FU/ReajafwsjtQcic7W5vRI+w0A/5onovwR9NV22WZs4tGAn2s
         w027IfhbrmIUah4Jlvv+ky68ME5w46m14n+FkfvJ75VxNbvWiOnUDJPG34/ROJK+aMBr
         ttqVCO8aGVbG44WT1e32JCMbkR9K7aquuPEhQp3Z0Ah5GoocXGuljBeX74zc0PReTdvz
         fPsIfTTA1g/lmqFB7NpkvWszTj0lrIImbZoONrvNZrbZL3yjSfnz1SfhB3pQKQkWwFPc
         bxow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658641; x=1686250641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uTG9v7UT9PqUHXDM7SKfSlMyAOxVTJ89xs/zTkcfeA0=;
        b=NdrMVNSbn8Zz56C6W3UWA2MUaaOCCzsL77p8blheK2BHwLADycgdxq5YdA2veYTYEo
         vf/bxXxGZGpBVytzbNlTwNL6PNfH0ZWuPJ6RnaDbMAq/xCRCEUvxyVtMW4Q/MKKA/7JX
         v2q+Kcx0WfnaG0dIxJFMABxIX+Tk9GZtuL3lpD6hw+07v9E+7uIdS3nUy0PLmXJJRDlf
         qRF9trGMRibhz1ZGQKcRJJjJUQ1jxYIeaehKhV6Q2uqowBNnbHtWhcc9UPqhGCEJXqvX
         ODjhzkehksD1l3nsFQJjPgsBKNpkha9i/TBfIWG7l7QKl65m5jG9ENzfA4EOeDbXuIpj
         dFTg==
X-Gm-Message-State: AC+VfDxM/UZu4dsMPZexxzJOm0iYYyc0wfgpevT023CBqWQ0SQrkx45c
	8eB+kfDnCTZMbn0jDJr7jLYJ9OtPu8Gar2TQ
X-Google-Smtp-Source: ACHHUZ5C1uLYej20FiaUsr+FLh8JJbigh+l9qIbd7KV3qv5xbOa9T3a0zJpSu588pIbiJbTergY0Fg==
X-Received: by 2002:a5d:5910:0:b0:307:a7af:402c with SMTP id v16-20020a5d5910000000b00307a7af402cmr1959275wrd.41.1683658641006;
        Tue, 09 May 2023 11:57:21 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:20 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 7/8] Revert "ima: Fix the ima_policy_appraise_all to appraise executables & libraries"
Date: Tue,  9 May 2023 18:56:30 +0000
Message-Id: <20230509185631.3182570-7-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59952

This reverts commit cb8f26d82a35ba56f3bd40cd6ba105de03602a4b.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../files/ima_policy_appraise_all                        | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
index 3498025..36e71a7 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
@@ -25,12 +25,5 @@ dont_appraise fsmagic=0xf97cff8c
 dont_appraise fsmagic=0x6e736673
 # EFIVARFS_MAGIC
 dont_appraise fsmagic=0xde5e81e4
-# Cgroup
-dont_appraise fsmagic=0x27e0eb
-# Cgroup2
-dont_appraise fsmagic=0x63677270
 
-# Appraise libraries
-appraise func=MMAP_CHECK mask=MAY_EXEC
-# Appraise executables
-appraise func=BPRM_CHECK
+appraise
-- 
2.34.1


