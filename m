Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDD4C19F2C
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 19:40:46 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.6310.1659210041480869750
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fI7vlCh9;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id f7so7589910pjp.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=E4x83DfPI/9b65pLHHzZcWg15aS9fiiDL7B+r9RyhfQ=;
        b=fI7vlCh9rZ1Hv4r7trBpb+YHGRgDYV9TCXUGIWWpAWs+OcMv+/GY//QHqjQnRDwhhl
         p8hR4qxDEQlAsfC3n6M1G3rxe8S/7c4+aBkxffjZJdaWpwQpWiuZX+VA7yEKDLxbmxFI
         LWhc5XvdzI0VxWsXUjhe40hEzn3ii/eqMEkxElMS4up3YKnE8IjtZI0+e0QlOlAe9g9i
         pmbTRTzqTC9GSGNNOasZWVQclfmU94HaE9yRggeXBXkuRqcRZ1H7sJTIMQfjH8SlID9K
         qxblyT2k2AFFputcQMyuhLiZWj4vmli6J+ogJy3qWxJv0bZaABsTUVCk5SMHjTPtsu9w
         K7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E4x83DfPI/9b65pLHHzZcWg15aS9fiiDL7B+r9RyhfQ=;
        b=zvn1NWWLT0BXhca3ep3DrDnBYnoxhg3cxEUQ19gwL3FAVughUXQnqPQHYOdV45RbUH
         /qni9gWUQ35vQa5TdKJfuaIERaMdao2IySK7YjX2fiVkMCxcwUzC5LQedaBqqRTxhPv8
         URN6INUvBssfrq/tWPRF5g9qxTZmp3gpv0gtNwT8qnvySOSGtrpsuZrcny9z3gTLoKbk
         LVWw20UAs4fgyrP03cVfNn4yscBbWHZOlvtFTvFEaF1XGkNND48JVFXmti9Ph5zV6OeC
         Rgg8zNISO/YaI8EX6xSFezXpXLTA/769Ln9AwXvaudZveY6ebpCaZjIZ8e84fHOatZju
         0hiQ==
X-Gm-Message-State: ACgBeo3brcghFdHdQ2H9lKmw/8VB7O5pklGwFaFjXd0qPfMnF9e2tv1F
	xPE4x2Mnc/9NESs2rgvHDO/g7U17Bjg=
X-Google-Smtp-Source: 
 AA6agR7HLXJdJoSioSUPDL8q6u9+DXwn24JAKcA2u6Syv/JmM+U58n4Pm+ylT+EwUPEQ52s9rm/INQ==
X-Received: by 2002:a17:902:6ac7:b0:16d:7cc:fdcb with SMTP id
 i7-20020a1709026ac700b0016d07ccfdcbmr9505735plt.9.1659210040530;
        Sat, 30 Jul 2022 12:40:40 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 p2-20020a170902a40200b0016a0bf0ce32sm6115665plq.70.2022.07.30.12.40.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 12:40:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] packagegroup-core-security: add krill to
 pkg grps
Date: Sat, 30 Jul 2022 12:38:34 -0700
Message-Id: <20220730193834.1084392-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220730193834.1084392-1-akuster808@gmail.com>
References: <20220730193834.1084392-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 19:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57697

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 1c1cb8b..a960631 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -38,7 +38,7 @@ RDEPENDS:packagegroup-security-utils = "\
     sshguard \
     firejail \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "google-authenticator-libpam", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "google-authenticator-libpam krill", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
-- 
2.25.1


