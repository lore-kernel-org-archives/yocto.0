Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FA4C19F2A
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 21:07:06 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.7085.1659215216496520512
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:06:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KwRN7iAt;
 spf=pass (domain: gmail.com, ip: 209.85.214.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id x7so7341658pll.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ml9o0RQ8ntrRLApLoHpz9+4QRLt91S9YkwHUwBtCE04=;
        b=KwRN7iAtkw6wbbLX8wIahDtczoHZhZqEXw2olU1aJOrVkgZVb6uW3S1aHr+FVsU4G8
         ayuyXuCytH5QE1BFK7u1R1MiAWuHSMeD0DlTcrMRt1N431/7yaZM1/nwpsY/L/neaatB
         FM51ev4/YYfMIUgskR821pBoS6TUlsuDBlBRmKrtP/pwLmlEc8KDmb5GArYP872wVeOs
         cNkIxvtpm/d/bNPcCjvcqIx1GZtL09ch3NHNIFIdPRdBmajayviF1ncseGbLrI1zOH+0
         jLGT7dzOct35yTDvLBWAa9ZXd5t82IbIUbERb2T10aNI+fgnIigkfFsewVhugoYRS1P1
         DtHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ml9o0RQ8ntrRLApLoHpz9+4QRLt91S9YkwHUwBtCE04=;
        b=sw+GTqLx5LiTk8eiv3iqw5ABYKN5i1nmEsB5U1v96CDgzj5em2M1LFA+g5H6zaFAxe
         LsDa/dx+b0OjiVqa3W2go+eij8VkY856/b+1iYBx0EeI3ZQKKzmZTYQT0gC1GqUzBiA+
         y9bVlZK2mUEASWQl+UoSmdxMIY4dxzZ1Jbb2v2xCfJlBy43VRA1LbkR3qHq+wXdY0NJO
         x8/PFme+tuhIKSenWQ2KzRK/c4jpqB1c0iIeciu2HJw9CtL7ho5Zpj1+QvxRAD812AEg
         JDXz+Wa5947NS3c9bgFzBujP1U6fLLvNSVxGM9OQsccj3b/f5T/jisHJuq+o/yAnEk2l
         zi5g==
X-Gm-Message-State: ACgBeo0yJCBDWdpl50QpMx7ubCrHqfJWQjWDhseXDSqPjXFIyYTzMylw
	DInmjjU1Vu6hImgEk5Key64+erx9wuw=
X-Google-Smtp-Source: 
 AA6agR6iiJwo43/VYjzGOZkhwB8HKawSMtQQsyjLAMXumkv5ZWpS3uAWsfpQxoJaD1W/aFYNcohomw==
X-Received: by 2002:a17:903:4051:b0:16d:b32f:3c6c with SMTP id
 n17-20020a170903405100b0016db32f3c6cmr9693079pla.13.1659215215396;
        Sat, 30 Jul 2022 14:06:55 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 d188-20020a6236c5000000b0052c7ff2ac74sm5420809pfa.17.2022.07.30.14.06.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 14:06:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: add chipsec pkg to
 grp
Date: Sat, 30 Jul 2022 14:04:53 -0700
Message-Id: <20220730210453.1142318-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 21:07:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57698

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index a960631..821ebf6 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -42,6 +42,8 @@ RDEPENDS:packagegroup-security-utils = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
+RDEPENDS:packagegroup-security-utils:append:x86 = "chipsec"
+RDEPENDS:packagegroup-security-utils:append:x86-64 = "chipsec"
 RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail"
 
 SUMMARY:packagegroup-security-scanners = "Security scanners"
-- 
2.25.1


