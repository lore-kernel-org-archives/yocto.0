Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 234C8C43334
	for <webhook@archiver.kernel.org>; Fri, 10 Jun 2022 04:04:37 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web12.22741.1654833875781493664
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 21:04:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iEYEHDc1;
 spf=pass (domain: gmail.com, ip: 209.85.215.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 129so23687092pgc.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 21:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WvvN25v6jbmvCNPADjkgtAhaEX1SRh5PzTSfuMzv+0k=;
        b=iEYEHDc1nvkU42afjytZ35FvjDRatC51ePQLzc8Wqo312+EC7CrkcDLllKAwG3oseL
         H9zdzNSfI1wWVblJ0efbMw94c753ZCmbqSEN1O3X90ER72FKp2lWp1dYUFTTabS73LJY
         3VlrHB+BinDwturUIRn6/D1FYmjqAMuo2/fJTyR1waKzFj5RNjckmPFTetyYyhLBCWvy
         UIegbaJdfK08m0qw7ATN/HmsCQFgnuZe2tAAJZCncxTPJ1cxeiQCGW3YAGjEIqHn5Rk6
         VYp/n6Ys1xLQwbTF1NhO5DNevZTc3iSRd0Wgbr0yi5YDBmF8DuSL766ltGWn6ARSpZik
         UUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WvvN25v6jbmvCNPADjkgtAhaEX1SRh5PzTSfuMzv+0k=;
        b=jG9utYfEf7kdv6RCdAniQAvjurJ+8VKBMu9WVNqPP2pTyoF0wrJmOH5EtVICEtLyVM
         2wxD6v8J6Bq0q90ljeqNf/PchIPLC91KOP2zaeDq6oIPF+zTNymhxArRh/8oovR7uS4j
         BL4vW7Edm6WvWUCG1bgrNrqxjdg4x1hKAKyCRHjREa+p+hLarMSx6A0eGBF4J9EmDzo1
         Rn35v91+7qZut+QJNQXst1RFfZnRQVQU3qT4Jus4H21nB3Xm/A1wBMZTZoZ2sEFmpWJT
         eYn0SJ3ekenCaMAxG8/HGCfK2V+EjtTp/tP1W26Ss3g1WGvHy5uqReCW7X5TSep0dYKr
         XYvQ==
X-Gm-Message-State: AOAM533P6iZf1YwzPN5yVekeSNpY26sBfbWNPKtGNnPwxQbJ1mW+PLWq
	ePLxl9OvksSTAa3AnsYXHoBcQupMuWM=
X-Google-Smtp-Source: 
 ABdhPJy3STDUJ1i1qtnrYWKe1SBDUC6yTNPDX2RYWzOGc75JFak4ZRHaE77PG6uFeDVDopuLB4I6XA==
X-Received: by 2002:a63:c00c:0:b0:3fc:dc35:6192 with SMTP id
 h12-20020a63c00c000000b003fcdc356192mr36954121pgg.7.1654833874680;
        Thu, 09 Jun 2022 21:04:34 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 f1-20020a635101000000b003fba1a97c49sm17786631pgb.61.2022.06.09.21.04.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 21:04:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCh] oeqa: fix checksec runtime test
Date: Thu,  9 Jun 2022 21:02:32 -0700
Message-Id: <20220610040232.599932-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jun 2022 04:04:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57317

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/checksec.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/oeqa/runtime/cases/checksec.py b/lib/oeqa/runtime/cases/checksec.py
index e46744c..53e6c1d 100644
--- a/lib/oeqa/runtime/cases/checksec.py
+++ b/lib/oeqa/runtime/cases/checksec.py
@@ -19,7 +19,7 @@ class CheckSecTest(OERuntimeTestCase):
 
     @OETestDepends(['checksec.CheckSecTest.test_checksec_help'])
     def test_checksec_xml(self):
-        status, output = self.target.run('checksec --format xml --proc-all')
+        status, output = self.target.run('checksec --format=xml --proc=1')
         msg = ('checksec xml failed. Output: %s' % output)
         self.assertEqual(status, 0, msg = msg)
 
-- 
2.25.1


