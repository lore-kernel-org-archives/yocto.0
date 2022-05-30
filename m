Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04DFDC433FE
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:55:01 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.37557.1653922499973965020
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:55:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bATWLpRn;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id o17so148941pla.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xoSvSXY08/+lVTmuOqA78fvDHZ3y+0m5RBT0A3FUBF4=;
        b=bATWLpRnd8usUy2cvSZd9wcK61VDZYHO8zkYLgKfpjkCuFp2PrSkAOB4knFBsbK860
         omuIn0EpvWfMZk6v0IPTJXRQa6dYHZW+2B0rbkmlhGg3TuxYzBfP9R9NkLsunuexnIJb
         +hFl3A/r07yTPmoijvunHjqYV6wCgP2S9YbsShONzPivhVisiLZ0L3HXDAPSxbWcl+TD
         pxX/W4slmT0lbev4mI6vK0BllsrciwEW0BO1TKaIDIsyCEX2gHJWgCCIZDGbKq02ngqH
         dmJS0M51U0UsQtB0bsU7KyJzK5vrbYl09PItVhvkhgmNFWoo3PwzpFiHDHkdjyyRAPkQ
         T9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xoSvSXY08/+lVTmuOqA78fvDHZ3y+0m5RBT0A3FUBF4=;
        b=PHWuUt7Bqa0Pf7jHNiMRie8K+GuFWCl4Rc2OoBFzWNaccjrLFO7Qd3dIxyXTSgkSFO
         sTzq6RqU2StgQ1QVsK7yuLPVFSr/+dXwNsjSlq64UUaPQzZvSkko4OhW9A577Uq5CHLh
         ia80F3WUWhGmCksAfZ5tcdnA/j3Rs1UUHQZ9Spz5JEjP3wPEMzqIXv1EL9zlT1L5YqAd
         ZOom1SLpdkGGoS/QD56Yh/rcbPBmVmFClqElvES0kE1hn2kZ/LOGsii+Q3k99EN3MXjA
         97ExRchLt2ZEwJWXrSZ6NxqAuICXTAmLft12ja+vT/0kH+GUKg0Aafcz8R/w8gMV7zXb
         S8+w==
X-Gm-Message-State: AOAM532z5VN+Fbev61vXB3/FbLzAExlCyRBfZuxbRMFoKH3uHO5AHo/S
	wTE5MYAjoTLDK2FlKR7m9X6aMzWrp94=
X-Google-Smtp-Source: 
 ABdhPJymKAo99abNCPsBhQr7jujOQWXJQQBummGlYROGcF/JOhmoDp0eY4fXEvVJ+cVN4UE7UiUwTQ==
X-Received: by 2002:a17:902:d54c:b0:163:e1ca:6c7d with SMTP id
 z12-20020a170902d54c00b00163e1ca6c7dmr5234299plf.161.1653922499173;
        Mon, 30 May 2022 07:54:59 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q13-20020a170902b10d00b00163c9ad14efsm3480339plr.143.2022.05.30.07.54.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 07:54:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][PATCH 4/5] oeqa/swtpm: add swtpm runtime
Date: Mon, 30 May 2022 07:52:51 -0700
Message-Id: <20220530145252.4059103-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530145252.4059103-1-akuster808@gmail.com>
References: <20220530145252.4059103-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:55:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57222

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/swtpm.py | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 meta-tpm/lib/oeqa/runtime/cases/swtpm.py

diff --git a/meta-tpm/lib/oeqa/runtime/cases/swtpm.py b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
new file mode 100644
index 0000000..df47b35
--- /dev/null
+++ b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
@@ -0,0 +1,24 @@
+# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
+#
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+from oeqa.core.decorator.data import skipIfNotFeature
+
+class SwTpmTest(OERuntimeTestCase):
+    @classmethod
+    def setUpClass(cls):
+        cls.tc.target.run('mkdir /tmp/myvtpm2')
+        cls.tc.target.run('chown tss:root /tmp/myvtpm2')
+
+    @classmethod
+    def tearDownClass(cls):
+        cls.tc.target.run('rm -fr /tmp/myvtpm2')
+
+    @skipIfNotFeature('tpm2','Test tpm2_swtpm_socket requires tpm2 to be in DISTRO_FEATURES')
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    @OEHasPackage(['swtpm'])
+    def test_swtpm2_ek_cert(self):
+            cmd = 'swtpm_setup --tpmstate /tmp/myvtpm2 --create-ek-cert --create-platform-cert --tpm2',
+            status, output = self.target.run(cmd)
+            self.assertEqual(status, 0, msg="swtpm create-ek-cert failed: %s" % output)
-- 
2.25.1


