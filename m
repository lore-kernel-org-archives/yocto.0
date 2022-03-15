Return-Path: <ralph.siemsen@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2006BC433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:23:48 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.13219.1647361427431830382
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:23:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=c3MMCrEx;
 spf=pass (domain: linaro.org, ip: 209.85.219.52,
 mailfrom: ralph.siemsen@linaro.org)
Received: by mail-qv1-f52.google.com with SMTP id im7so15391532qvb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P7ogQOXlDNGV2KLqvTmMttCtbc3su599CG1VE/U5zKQ=;
        b=c3MMCrExjDfX9lDPxPqQHP1A5yWA1pekzQpw3t0GQdeDG4I8JhBTGyJXgCZ/o+zYO4
         JtvzuV2PfpNnjuoQGKgEtu6TPOpM980rtH9lnia+Nj6K5HMtQXHEendm4oZ9kFDHGQDS
         f1ceSCuC1FgK2bOPkHgygE1V2qCSXPkAsnCuXLwah+oq5gOejyMv7L8zDR4Q0g1l0Ziz
         NEWCMBJEUtf9wMMvhiv21cxoTl1L74Gj9D/0QHpoDvfPvDyfzxxr9ZT7GfwoOt5cPLrJ
         ANvi8QHS/VUfUWHHj1B+xq+3UEfwfP48Ehqg9OJaflRxz5uzILGiSH1/qVbUEGWIP0xL
         KDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P7ogQOXlDNGV2KLqvTmMttCtbc3su599CG1VE/U5zKQ=;
        b=F8/3gGfbt/KAQYAUJmO04ZlnKyDndMRfBxPj/xHHK/sgHg1hpXQDKyTpT+DLiel+jl
         32ArOYHnHtVY0Yew508ueCKFB7T7YKqVcFX63TpPUvqMtwgg81sszIyRGzxDX9/KXDud
         TrPZfW6mUGYwyGorznMyXvgb7U1afFtZ6pQB5Ki0kkOVSOUbRqueJDa6nENqj1/L4XqP
         JxFbnoPhv7g0uKBKi6xbfxRGFbrzP7KsyZTU7ZgzPGE9DprPUw3Vota4kjRLqPnvm+sd
         eIKvAAvj6LWfGfFQB+FB3BP9Bdbi3/+97V/TawupCfsuSnNzLaTEfDd7HId9iXSLfPzN
         nTdw==
X-Gm-Message-State: AOAM532pVFGAVw9csl3VgDYKq+lTmrJbQDKNRABHfgjXlpBsmtCiziTO
	4zu5qndfLZa07aoQBq1D0BGlObkk3PAS7w==
X-Google-Smtp-Source: 
 ABdhPJzWpBJjMb6lRstmqB0tbHVORBo7gS/vF2RlDUIVC8d+5MesqXYlAr2JfTFO+TzzwsmwjoV+VA==
X-Received: by 2002:a0c:fba6:0:b0:432:4bee:d7f3 with SMTP id
 m6-20020a0cfba6000000b004324beed7f3mr21796713qvp.59.1647361426554;
        Tue, 15 Mar 2022 09:23:46 -0700 (PDT)
Received: from maple.netwinder.org (rfs.netwinder.org. [206.248.184.2])
        by smtp.gmail.com with ESMTPSA id
 p17-20020a37a611000000b0067b2b2c41fasm9667943qke.81.2022.03.15.09.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 09:23:46 -0700 (PDT)
From: Ralph Siemsen <ralph.siemsen@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
Subject: [meta-security][dunfell][PATCH] tpm2-tools: update to 4.1.3
Date: Tue, 15 Mar 2022 12:23:41 -0400
Message-Id: <20220315162341.2453146-1-ralph.siemsen@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:23:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56447

Minor version bump from 4.1.1 to 4.1.3, containing two fixes:

4.1.3 - 2020-06-02
* tpm2_create: Fix issue with userauth attribute being cleared if
policy is specified.

4.1.2 - 2020-05-18
* Fix missing handle maps for ESY3 handle breaks. See #1994.
  https://github.com/tpm2-software/tpm2-tools/pull/1994

Details of changes
https://github.com/tpm2-software/tpm2-tools/commits/4.1.X

Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
---
 .../{tpm2-tools_4.1.1.bb => tpm2-tools_4.1.3.bb}       | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_4.1.1.bb => tpm2-tools_4.1.3.bb} (50%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
similarity index 50%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
index f013fa1..39854d5 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
@@ -11,10 +11,10 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 SRC_URI += "file://0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch"
 
-SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
-SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
-SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
-SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
-SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
+SRC_URI[md5sum] = "48e0f58232b6a86fe4d007acf12af283"
+SRC_URI[sha256sum] = "bb5d3310620e75468fe33dbd530bd73dd648c70ec707b4579c74d9f63fc82704"
+SRC_URI[sha1sum] = "b2cef4d06817a6859082d50863464a858a493a63"
+SRC_URI[sha384sum] = "996c33201c92bcbdbf8f11f84d25a8e2938c330fb7fb66a47eafb3c5a41fab9bcb9a769dc20226accdea2486b626bd68"
+SRC_URI[sha512sum] = "bf1ba9f8a4e12c71987650b309710574cc796e78d26c5de1cae77b0e150cea0f3b3695e56415be1994c4a6ad90e8f991d5db603138933fd21c46f7b86148a9b4"
 
 inherit autotools pkgconfig bash-completion
-- 
2.25.1


