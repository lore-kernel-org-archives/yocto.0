Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00585C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:55:11 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.37679.1653922501194268746
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:55:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pVI8RXFQ;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 v11-20020a17090a4ecb00b001e2c5b837ccso4876779pjl.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SiHekeI5hZk6dbvdj1qmtcOWqCUYk0zqcI/P50WEkIg=;
        b=pVI8RXFQWOK1tDh4YEvEY1ULqpr5uhnd5VesSNAo/Tiqb29wn2dpQKKNSEFcQsugkW
         Qyu9TMHhjFE/lIuVavT+Exw8YLWuHL5Emon6fPcxqCsp4Kv0VDrHPRI/iTagqAPObaOo
         ovhM2rB/uGYlNW9KDaINsjbJiLgoKjLgzcE2VbGeJKzge2EvH/3TLDcMr3j0yAQtRGGS
         VI+DYcppz8UUAMftiakY8o1xYMzv6jVAZy9WjOkeW8o5pzhAn/fGcmo3O4DKNrjqavz1
         GnSOPY1cFit7a9ZqqndlVnVkK0c79fidBNxgZEmlDEEPx+vHnLCiKM5ueeGuGCuXHquC
         beHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SiHekeI5hZk6dbvdj1qmtcOWqCUYk0zqcI/P50WEkIg=;
        b=aRqnxYWzLxaOyLjT09NCVf4NWlb3aMHumgYcLk4MHrN00e46iRRZcrUeT9uD2iBrUU
         1ZWxnRCr6yffvy+wvcxbtMT645t8aWtxqm1wgWFwZuhef51w2TM+ZAyDzh4bUrfAvEyg
         XMOBPdatu/RhFsNVoFWyLI/iZdUXEL6H6Jh8WdPsHw001W6vjWu0b7vo5dXDAkAS5GMw
         ojKs71CLwrnitu3X2dVD19ii16b+49KMHe8fyROJZxW2HZA+19ZTTOsiJMSblCVZ5Stp
         G3BZU2a3Ik3joGiG7HlOmhB4TFEJ8b8FkXyZCCtYtuSNjsc+TqvTCLA1ffnRtwQpQyZA
         975A==
X-Gm-Message-State: AOAM5315FhrVW9hfS5LxZtwP4ecq6cBlhbGBLpUWttyl045yKmhN0+KE
	A10aqCG+y0AwjonrijjKm5+8J7aOCUE=
X-Google-Smtp-Source: 
 ABdhPJxmUyNiMbY3tIr/GaIzTYgxOaGMAXG5BYTLkm4x4/K/nyLNRGelxJWlIkda9OUloiupvBDvjA==
X-Received: by 2002:a17:902:db07:b0:163:5374:6732 with SMTP id
 m7-20020a170902db0700b0016353746732mr19844709plx.15.1653922500401;
        Mon, 30 May 2022 07:55:00 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q13-20020a170902b10d00b00163c9ad14efsm3480339plr.143.2022.05.30.07.54.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 07:54:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][PATCH 5/5] oeqa/tpm2: fix and cleanup tests
Date: Mon, 30 May 2022 07:52:52 -0700
Message-Id: <20220530145252.4059103-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530145252.4059103-1-akuster808@gmail.com>
References: <20220530145252.4059103-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:55:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57223

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
2.25.1


