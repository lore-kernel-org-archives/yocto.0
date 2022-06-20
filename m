Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58502C43334
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 03:37:10 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.25939.1655696228390772296
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bgtj2g6h;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 g16-20020a17090a7d1000b001ea9f820449so9518548pjl.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SyVkvmK+K3EBmF0hBCWqcc0P4zoTY8r4GoaFifOa5Vk=;
        b=bgtj2g6hbyeuApmrBkX6Xhx5++pohJiKDEUiXkzjEApxgDqaVyTM8Y9fcLm8CrQRE/
         bi1qbGoRatbEuMG5V6BpAqC/uATzwqLLamzEqVcoMOEYIAtTJcEvW4XO/rlsbTPdI8/U
         pEQojGzsowEAzH+QGsDrDQDufJ/izj44hcDOjUoJhklwITwxwfod5PgaZaO1esmTHXI/
         8ZnI5NfKbHbaO9GtrYkwj1NlN9KJtsaGvG0tDBKWHPbif4YMXpfhHuXpJpa/cHaPMPgl
         n0j1vipCHila7nuG7zwUR+iIEQYGCb5o+pUt92SXo4eWTESGxGVaMOPxnB7+1cT9vkZ8
         sr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SyVkvmK+K3EBmF0hBCWqcc0P4zoTY8r4GoaFifOa5Vk=;
        b=yIJln7KLyWHE4crKAdwgtn2d9qg6+kRDafjApJQJZ4DqVEe00xHpuE/VbSeWWgzAfX
         MA1DZleyjCZJZkvaAy76KM21mt6HgF5MTguQz+H6GC3cW+IcvoYfS36yIpt3BnrZfG+1
         9oM9Vg1/fGO3U2/dHDRZCFctoH92iaPF0DS2WQziJOIskUwIBYd3wbqvoRvTsHLwLhYX
         ZSTevuGLBgixh2kIziciQKETt0PIMBZPuK1gX3AyE7bt+Cpez0eQowoBzI1RhcnFWh1p
         832a7On31aQUPSYC8dQlTKSNmoJ5gL6dMQo1MaFDwhKRE/nqcTNitIngEwdr6/kXG01j
         6yaA==
X-Gm-Message-State: AJIora/aTUoMfuCO1R0df+oWVRDkni2OTfZgB9F4L6ycZtd7nAERfzu5
	ltdpQpfY/MmThPgHJ7K6fovC6A7QaO4=
X-Google-Smtp-Source: 
 AGRyM1sZECj7EcNG4EM3vRDzDITRYugYQei1XJkJ7/ecHjQT/5Y+7ErkVI470Y860NUovCQmhm/Rew==
X-Received: by 2002:a17:902:ea07:b0:16a:2833:3207 with SMTP id
 s7-20020a170902ea0700b0016a28333207mr2486719plg.86.1655696227260;
        Sun, 19 Jun 2022 20:37:07 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 n5-20020a170902d2c500b00163d6164889sm7425536plc.236.2022.06.19.20.37.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 20:37:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] oeqa/clamav drop depricated --list-mirror
 test
Date: Sun, 19 Jun 2022 20:35:02 -0700
Message-Id: <20220620033504.994851-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 03:37:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57356

Fix download test

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/clamav.py | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/lib/oeqa/runtime/cases/clamav.py b/lib/oeqa/runtime/cases/clamav.py
index cf83937..e0cad8f 100644
--- a/lib/oeqa/runtime/cases/clamav.py
+++ b/lib/oeqa/runtime/cases/clamav.py
@@ -1,4 +1,4 @@
-# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+# Copyright (C) 2019 - 2022 Armin Kuster <akuster808@gmail.com>
 #
 import re
 from tempfile import mkstemp
@@ -48,21 +48,8 @@ class ClamavTest(OERuntimeTestCase):
         self.assertEqual(status, 0, msg = msg)
 
     @OETestDepends(['clamav.ClamavTest.test_ping_clamav_net'])
-    def test_freshclam_check_mirrors(self):
-        status, output = self.target.run('freshclam --list-mirrors')
-        match = re.search('Failures: 0', output)
-        if not match:
-            msg = ('freshclam --list-mirrors: failed. '
-               'Status and output:%s and %s' % (status, output))
-            self.assertEqual(status, 1, msg = msg)
-
-    @OETestDepends(['clamav.ClamavTest.test_freshclam_check_mirrors'])
     def test_freshclam_download(self):
         status, output = self.target.run('freshclam --show-progress')
-        match = re.search('Database updated', output)
-        #match = re.search('main.cvd is up to date', output)
-        if not match:
-            msg = ('freshclam : DB dowbload failed. '
-               'Status and output:%s and %s' % (status, output))
-            self.assertEqual(status, 1, msg = msg)
-
+        msg = ('freshclam : DB dowbload failed. '
+            'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
-- 
2.25.1


