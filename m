Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F0DCC433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 15:48:23 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.7895.1645804102470305370
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:48:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OC5OI3Y7;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 bx9-20020a17090af48900b001bc64ee7d3cso5119070pjb.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=puM300CbpbUT2VauxwFybPMRg1N6gSdhSibtX7domF8=;
        b=OC5OI3Y7jmHL/SEXbCrntInYOlpnjTvP9tAKpB7X0OB2cG+n2/pfkgxa+xgM9fGFVq
         BpYhVPbBNKXxs1Z2iSHyii0MWF+OJ/WX/OJgE6ScXq/WX/w8B0uelB7lscJNTJE3iyQh
         xNeB3dWxCtIIQ1dptH4ExN5Oso+7VPiOWlje9QXQDjJPP1Mt9GeQX7Cb4sRsemh23nUG
         g3sAEfp4K0xb93Jod3WPnFzdJJKNOg2/nWBnZvxZjoudYinh8IZH3Ic5tShBc56JDkTP
         ///rkx1+8FMauLU0eFmCoT4qO7kqVSQdB+mFUZlOEmO7f8WxvTEqX9qLLqVD9zN+F/jq
         BWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=puM300CbpbUT2VauxwFybPMRg1N6gSdhSibtX7domF8=;
        b=EIidD6fBXL+98V99f93cktyaoRBMAhrqOtQeuqapbNWgzcPzWvzGidJxd4ZLEjxO+2
         KvrEHVsC3lvHEjMFktMxJp0q4wyM/cirohPP1oP8Ao36Ttfg8rxJb7O9tW/nV3rhezAQ
         UBuIxcEAPaOWMvXe7k8eczQeqiutcExW9gDGwC13TkziEoMo3BhogLj0bcBPN/VkdbMq
         3gKsEPsc8Mu+4r7NElI/MbpSJYoeT5kw5Ei4sHiYnIbfkmUeGUT6qBb1TtQN5oNbM0qD
         8jvSIEKzInF+84RjrqcPVc+hzDKQ8Fleo2z7VG/quHYYqBGogoD32iD8ddvGQkGpl0zo
         GmpA==
X-Gm-Message-State: AOAM532arvIJ2pmbBcgr8phmWcNQpHkVLBCIK9QYHygVxR16LIRYrwC9
	vVCyM1WK37uT9n4FnKo+mk+z802Pb3c=
X-Google-Smtp-Source: 
 ABdhPJy+e29l0E8VGB4EWL/8TLRGI8bAYWlgrpYlxirT8yozNEZ81j4/vB5cOvYGmhzKFhfIOSh0Jg==
X-Received: by 2002:a17:903:24f:b0:14f:73fa:2b30 with SMTP id
 j15-20020a170903024f00b0014f73fa2b30mr8004309plh.174.1645804101590;
        Fri, 25 Feb 2022 07:48:21 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:59da:4980:6faa:1736])
        by smtp.gmail.com with ESMTPSA id
 a38-20020a056a001d2600b004f0f0f852a4sm3796074pfx.77.2022.02.25.07.48.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 07:48:20 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] README.md: fix typo
Date: Fri, 25 Feb 2022 07:48:18 -0800
Message-Id: <20220225154819.2005707-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 15:48:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56281

Fix typo in parsec-tools to parsec-tool

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index bb4c2b9..85e0d10 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -80,7 +80,7 @@ Manual testing with runqemu
   This layer also contains a recipe for pasec-tool which can be used for
 manual testing of the Parsec service:
 
-    IMAGE_INSTALL:append = " parsec-tools"
+    IMAGE_INSTALL:append = " parsec-tool"
 
   There are a series of Parsec Demo videos showing how to use parsec-tool
 to test the Parsec service base functionality:
-- 
2.25.1


