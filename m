Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A81C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 13:26:22 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web10.22721.1675257977308982260
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 05:26:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nGNJguBs;
 spf=pass (domain: gmail.com, ip: 209.85.161.46, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f46.google.com with SMTP id i11-20020a056820012b00b00517518d79f6so1119145ood.10
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 05:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvGELKTnIMKp0N0IjA6E6qzX52EB7HGMyJYxGFg73AA=;
        b=nGNJguBsZIGYEyICMYKY8oAOFwgVqdt2C+bmU/gitW3/XGmc8JBBChjpH/nU8DH1q2
         1Hw4MS9OddogQfStGA0B3o0qege4eWinTuVgwZSpmRYbQEOCRYz3SRQiQAQvIn0BSQJY
         2Yt5vgGnoqrTrQf2Hz28wuD9oPaI0qKX0/2RQkBUgYv7ICNl3QCuN+sC2RTqc/oSYifN
         9MUv+N3AAVOaUhSEor0CqQMQwR4heSr8LOsLRWDBU7e4kCoiuO41xeo6CE6gVSpiAjBL
         TF9EduPp5hUfGVC+HWLPs/XffUUTkSZ7iVooZMWyjBiJEMfLABjXJXZXIqHgwi8pmzAo
         otlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvGELKTnIMKp0N0IjA6E6qzX52EB7HGMyJYxGFg73AA=;
        b=EVuBKHa/sQj81+vHgc5wGXdOpamZ7wFOehwyT54yJ05lije0JkvPXfGHZR6CVu9dRa
         Jh1NxqtVGsrYwYRPIFqqZ/kR1acv3Z8m6fGotDsfN86EknQaQ+6plFFJNWDitAFNtF24
         joNTLkHKlD6qndTpcepJBHrxvNo6A8ZZYPFHj/k6tt3p6mVwPam/4O7m5FNZUpxUgU2r
         bHQJ3SmZiJM9D8wHewEr0mdeOuoa+Bar8seKeYQrbxqmCIIyKnPW72xnIF5mB/a5uBOf
         znKlf9jINgoKfX6SgTTH549YKcP4HeBywl0/Y3IRtvkfBw4J7igbAjDi7Pj85ULifrC7
         pH3g==
X-Gm-Message-State: AO0yUKVvFDSDzb//MaFG8W2amfHwG4edv10ygcqs36E9xoFy5CYKE9HX
	UqdYTJ8S+JrnA5hF0BH+ppOA2eMpRaI=
X-Google-Smtp-Source: AK7set+/c0hufXkbTYJN88mZJgqnkIFg6rk5JM0SxEp8L8oIXOsRqUqt9zvh7sVlWT+6D66S0XUQew==
X-Received: by 2002:a05:6820:1a9e:b0:4a3:fbd7:c32a with SMTP id bt30-20020a0568201a9e00b004a3fbd7c32amr7712398oob.2.1675257976350;
        Wed, 01 Feb 2023 05:26:16 -0800 (PST)
Received: from mvwork.attlocal.net ([2600:1700:9190:ba10::32])
        by smtp.gmail.com with ESMTPSA id y15-20020a4acb8f000000b0049fd5c02d25sm5010622ooq.12.2023.02.01.05.26.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 05:26:16 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [kirkstone][meta-tpm][PATCH 2/3] oeqa/tpm2: fix and cleanup tests
Date: Wed,  1 Feb 2023 08:26:13 -0500
Message-Id: <20230201132614.2840970-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230201132614.2840970-1-akuster808@gmail.com>
References: <20230201132614.2840970-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 13:26:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59130

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 3db9e08300c3d5e3f7b6e4e6cb743a914ed3f00b)
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


