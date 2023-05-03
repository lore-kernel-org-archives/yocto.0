Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C17C77B75
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 21:16:12 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.34181.1683148566318286464
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 14:16:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=mNEorZ8h;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-55aa1da9d4aso43541087b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 14:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683148565; x=1685740565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57r2VL3qnGq0io5ISevLyuOj6VkLxOFMJAQsCqvzjsY=;
        b=mNEorZ8h+X3X09J0n951rtsjlhN+vrp+qPxnsLrVWcDE0zQzVtzHsTaagJ77LLWc29
         YI1a8B0+v26s+hcSvsh5Izk4OLTAnqj24aH8B89pG3Q/flftwhW2y89n13JhJigMG1Wu
         F2MW3uo08VoSnIxfdPMO9tjB0l2NL3pm46JjMq8QLLi9nw5OaZIVSBFws5zUa3u97Tx0
         0AHHty5QyEWxFKdfMqhATJbdzTstqMY/uX5vhjqcaxwokchLwWBXsTzT9/kkzeBriy+/
         Kv6Ivbh+VPakgdAYvuvxPUN5duuc8e0tggVFvAkRftjbeifsY9/TL8tjV2qQ9JJjzJCG
         EdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683148565; x=1685740565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=57r2VL3qnGq0io5ISevLyuOj6VkLxOFMJAQsCqvzjsY=;
        b=G128q9OnxK0P75+QLc0epXL4YDYpGVJU4sSqJIySORBJw1sINiXISVih4Cc0XHyjkS
         LLGMRsVsBMLix//epm/VG7ays/twYcNCVefl4trPEhUMRULWLNGCWTUAV2tOQfWJiyAG
         mD4CmVVb2Dhe+rtFbvHnq9plWhIa14zXBjYFTXrdstTlhrhQQE4fZNp6nGE0qgW5tyww
         ncfxs5kOD+XX0ZX1ftZR9SHP/V1y11dEFsy5K69jWeex+HvCCx366BFk9Ili9d0ueSLL
         8kngYH4lX3TJ+1I3Ejn5b63Fb9oI+aNFhhOkY9pKPlMXF89en/9ot8Z9q837Fm35YQDQ
         HOGQ==
X-Gm-Message-State: AC+VfDwmQUKwAVPierWHF2scbzg3jTC1mIoChQfSlKJSz01ozchZvSsH
	tSbR/94KMB6XOdS3HiN94SSITQK+Ayo=
X-Google-Smtp-Source: ACHHUZ4an3GVVdK1gIR8m2RAwhUZZEExILRsl8icSThzjKMCiDL4xx8T90fC2wJtCf0TX3SyjVRn1A==
X-Received: by 2002:a81:4ec6:0:b0:55a:c39:9a14 with SMTP id c189-20020a814ec6000000b0055a0c399a14mr14441020ywb.13.1683148565136;
        Wed, 03 May 2023 14:16:05 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bd6d:128a:1e7c:110b])
        by smtp.gmail.com with ESMTPSA id n64-20020a817243000000b005569567aac1sm6936214ywc.106.2023.05.03.14.16.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 14:16:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] openembedded-release: drop as os-release does this now
Date: Wed,  3 May 2023 17:16:02 -0400
Message-Id: <20230503211603.2209701-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230503211603.2209701-1-akuster808@gmail.com>
References: <20230503211603.2209701-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 21:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59859

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openembedded-release_1.0.bb               | 32 -------------------
 1 file changed, 32 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb

diff --git a/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb b/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb
deleted file mode 100644
index 0ad427d..0000000
--- a/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb
+++ /dev/null
@@ -1,32 +0,0 @@
-inherit allarch
-
-SUMMARY = "Operating release identification"
-DESCRIPTION = "The /etc/openembedded-release file contains operating system identification data."
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-INHIBIT_DEFAULT_DEPS = "1"
-
-do_fetch[noexec] = "1"
-do_unpack[noexec] = "1"
-do_patch[noexec] = "1"
-do_configure[noexec] = "1"
-
-VERSION = "0"
-RELEASE_NAME = "${DISTRO_NAME} ${DISTRO} ${VERSION}"
-
-def sanitise_version(ver):
-    ret = ver.replace('+', '-').replace(' ','_')
-    return ret.lower()
-
-python do_compile () {
-    import shutil
-    release_name = d.getVar('RELEASE_NAME')		 
-    with open(d.expand('${B}/openemebedded-release'), 'w') as f:
-        f.write('%s\n' % release_name)
-}
-do_compile[vardeps] += "${RELEASE_NAME}"
-
-do_install () {
-    install -d ${D}${sysconfdir}
-    install -m 0644 openemebedded-release ${D}${sysconfdir}/
-}
-- 
2.25.1


