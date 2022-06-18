Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AFD8C43334
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.9244.1655559884983115860
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Xf9LQ0d8;
 spf=pass (domain: gmail.com, ip: 209.85.215.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 184so6333290pga.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Vl8szZlL2MUy2kmcCrLn69Qb7nqFPWOZjTzg90WdklY=;
        b=Xf9LQ0d8Y9bJyuKx0Y3Y9xkKYY7zlAvOrr6PUcX2wpX/UHMqvH2CU7fnPCZXp5i6d5
         J2eEPHmFYHiBnpkbsgrxYrNTlzn6jbtW2RtZQmHhUjfEhzWxYLIOr9317s+rBZMb0Gvi
         oGGablc79l67x7+LhyGgZAPM/PmTK/HTq78+eGuI/s7e0qwvCunIzT3ePLBJSdWWqkT4
         62cb9hdpCk6flgde0a2eIxCwrMn73ij2QYZBfX5x5xHGFg5n2/EeKbCcvgXMUThN0LnR
         BwP6jlYD7SwrXH3VvopNyEkaJpHgluOMOA9My/VVY7LImzcwEBzqGQQb6bNbPyr2DlsC
         JG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vl8szZlL2MUy2kmcCrLn69Qb7nqFPWOZjTzg90WdklY=;
        b=NMSE+D8o4D8fn+YoqOM3Bwcrj1tMbezKti7vfTFVn4oYtg+RWdldufUQxSILF4BJd7
         8o/57ruacfbTGYVMu2YfX4H2I5l/7/ZBs/GrZ7+eKApnECBWBlqxZCEG4qsBmHaqXdiP
         29s4ikLKYxTodgIIkXOZ4BVCzHvQY9YNzQ7weBABI+sWmMaSilK5v40SNwcml9r0a19B
         wy3WkE/zJKxvYD7DXVTv625nb6hq3djAPntxLs/05pbVqGrkYt0Yk6hXwFPtscahv+8r
         AQj0wM62hKLsojNDdn4PD6J8+9GoKFImzRA4keI4HxbJT4aPJrd5FEPRkxvNIJzv11Jr
         0iwQ==
X-Gm-Message-State: AJIora/jYj0VoCEvgfYDQp99/HLQ/9ivtcMxQUV7g7t69eRxNYsLwCt7
	+MX7P0N0uEXAfReEW73vUgF1445rTrU=
X-Google-Smtp-Source: 
 AGRyM1uwWK8lXlvR+PUsPXZq+iDLqJTT4wSnlej9+UEBpJNRsOnZucBiMAAoLXSkYW0Op3qq0GeDcg==
X-Received: by 2002:a63:7909:0:b0:40c:6cba:b1d0 with SMTP id
 u9-20020a637909000000b0040c6cbab1d0mr4196948pgc.353.1655559884115;
        Sat, 18 Jun 2022 06:44:44 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/9] oeqa: add aide test
Date: Sat, 18 Jun 2022 06:44:31 -0700
Message-Id: <20220618134435.2370878-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57347

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/aide.py | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/aide.py

diff --git a/lib/oeqa/runtime/cases/aide.py b/lib/oeqa/runtime/cases/aide.py
new file mode 100644
index 0000000..4c7633c
--- /dev/null
+++ b/lib/oeqa/runtime/cases/aide.py
@@ -0,0 +1,26 @@
+# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class AideTest(OERuntimeTestCase):
+
+    @OEHasPackage(['aide'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_aide_help(self):
+        status, output = self.target.run('aide --help')
+        msg = ('Aide help command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['aide.AideTest.test_aide_help'])
+    def test_aide_dbinit(self):
+        status, output = self.target.run('aide --init')
+        match = re.search('Number of entries:', output)
+        if not match:
+            msg = ('Aide db init failed: output is:\n%s' % output)
+            self.assertEqual(status, 0, msg = msg)
-- 
2.25.1


