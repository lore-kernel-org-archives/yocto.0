Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB30CC61DA4
	for <webhook@archiver.kernel.org>; Sat, 11 Feb 2023 15:28:15 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web11.11135.1676129285738729142
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Feb 2023 07:28:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iR9Wy2Qo;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id r28so6908078oiw.3
        for <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 07:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QyfmGozTHzUsOgSmxMh1mJQD2MPvmNlPOZ+nhQ5lZQc=;
        b=iR9Wy2Qo2GuJtf6AhFeHlkrw1BWAvcYvtoieYPvIiHlnpROd0Dw+jgezmN4aOL1MEt
         UcClVFbxMdvbcjl/1OgbDctu1aXBLDsKkx97DROxyGhpR+55mVMVyuyJAi0zuPoReYj4
         5LJq8KSQnpddXWRyZ58LKtvqyVNsm7fG8exloqlE1v49VcHwmUW8+GBUJ81nSlrRleUn
         xeUOMJZL/ghlBSDmjig8i6THFlbI5URwT66J4xBP3oG/7P+BUTqUrdflxc6YS616bMjr
         fa7ryY4srUHxVH7xnW3mCmE/Kl6CoeVk+eQdBzm0Ji4RCNOkKAEX8XSnaEUw4YOM/mKi
         3lfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyfmGozTHzUsOgSmxMh1mJQD2MPvmNlPOZ+nhQ5lZQc=;
        b=ENu7ngUt9H7DOCqS4Bxg8uC99seGizawVegCumoCjYSOyw57uA115X/yqjHLxe0KZn
         xCTMAuv2bHs1Lik8W+4Auy/SEH3bg+GthiZ+E6RNWA1STBxt/PfJlrkv3s8lavOebOSb
         Vll8f8+cEccbiLyOYC8k6wbLdOAoLiFv9ZS9Uge7y8fCqQ5JSIKd1zSmexmAU1nw7hsE
         2jlGJvFqiaQqocR0/AgXbOlwUIkfqyh0VCM3V9QaZ79PGHd10gwwpGpKq9KsOLVx6Ypj
         54oz4uZqvXL7RXqgVSHgzjfd0D/XFNkcEkPpqQEZcQb3Li/JxaeU65wV+hYJxwD7lspU
         g97w==
X-Gm-Message-State: AO0yUKVFKHoX6+ekVZDdMwkcRo3wFA3XSFdRmuPWbt7Xo7K1Itj+O3Lm
	NQ12cptDe80XDZTl9xHIdj4mdS0A5E8=
X-Google-Smtp-Source: AK7set9vxuw0KWi0o/k4VZpWe/UQRpOkuRneN5WKg8YGYvEwCUMtJAf6hQGrHHN0P6sOZfJVhRyCeg==
X-Received: by 2002:a05:6808:483:b0:378:7ea4:fb4d with SMTP id z3-20020a056808048300b003787ea4fb4dmr8671383oid.29.1676129284723;
        Sat, 11 Feb 2023 07:28:04 -0800 (PST)
Received: from mvwork.mvista.com (99-157-111-72.lightspeed.tukrga.sbcglobal.net. [99.157.111.72])
        by smtp.gmail.com with ESMTPSA id v16-20020acaac10000000b0037aaf36d173sm3347710oie.3.2023.02.11.07.28.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Feb 2023 07:28:04 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [lirkstone][meta-security][PATCH 1/2] oeqa/tpm2: fix and cleanup tests
Date: Sat, 11 Feb 2023 10:26:01 -0500
Message-Id: <20230211152603.497253-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 15:28:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59210

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 5f2ba567ca691192e875ff94d0d746440311e7af)
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
index c2c95e7..e64d19d 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -1,11 +1,19 @@
-# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+# Copyright (C) 2019 - 2022 Armin Kuster <akuster808@gmail.com>
 #
 from oeqa.runtime.case import OERuntimeTestCase
 from oeqa.core.decorator.depends import OETestDepends
 from oeqa.runtime.decorator.package import OEHasPackage
-
+from oeqa.core.decorator.data import skipIfNotFeature
 
 class Tpm2Test(OERuntimeTestCase):
+    @classmethod
+    def setUpClass(cls):
+        cls.tc.target.run('mkdir /tmp/myvtpm2')
+
+    @classmethod
+    def tearDownClass(cls):
+        cls.tc.target.run('rm -fr /tmp/myvtpm2')
+
     def check_endlines(self, results,  expected_endlines): 
         for line in results.splitlines():
             for el in expected_endlines:
@@ -19,20 +27,19 @@ class Tpm2Test(OERuntimeTestCase):
     @OEHasPackage(['tpm2-tools'])
     @OEHasPackage(['tpm2-abrmd'])
     @OEHasPackage(['swtpm'])
+    @skipIfNotFeature('tpm2','Test tpm2_startup requires tpm2 to be in DISTRO_FEATURES')
     @OETestDepends(['ssh.SSHTest.test_ssh'])
-    def test_tpm2_swtpm_socket(self):
+    def test_tpm2_startup(self):
         cmds = [
-                'mkdir /tmp/myvtpm',
-                'swtpm socket --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init &',
-                'export TPM2TOOLS_TCTI="swtpm:port=2321"',
-                'tpm2_startup -c'
+                'swtpm socket -d --tpmstate dir=/tmp/myvtpm2 --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init',
+                'tpm2_startup -c -T "swtpm:port=2321"',
                ]
 
         for cmd in cmds:
             status, output = self.target.run(cmd)
             self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
 
-    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_swtpm_socket'])
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_startup'])
     def test_tpm2_pcrread(self):
          (status, output) = self.target.run('tpm2_pcrread')
          expected_endlines = []
@@ -49,7 +56,7 @@ class Tpm2Test(OERuntimeTestCase):
 
     @OEHasPackage(['p11-kit'])
     @OEHasPackage(['tpm2-pkcs11'])
-    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_swtpm_socket'])
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_pcrread'])
     def test_tpm2_pkcs11(self):
          (status, output) = self.target.run('p11-kit list-modules -v')
          self.assertEqual(status, 0, msg="Modules missing: %s" % output)
-- 
2.37.3


