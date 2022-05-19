Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44ED1C433F5
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 22:35:38 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.2067.1652999737701644320
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HPLwL2gW;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id q76so6223703pgq.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ac0LKZUgJrBTwofmoyy+5SwKYji1Tc/4tXHpohXKGYs=;
        b=HPLwL2gWdSftZ+H1zgSI5rCRmvLrm8StF6bmlFYyZ+yZkX5h87dtAd2zYGmLLQ/TBn
         BPdfIwLLWL3ACnSMJpAdClS3wN5Z/h3qevMO3GbDD/iO1ZFghAdICgmBCEvNMnf/eE1P
         xbOCVRaBovyitWFP0p1nBJSOM2qU2KWV1LyAh0f7s8Ksgy+8W8JTMF4qCBqqWvKx3fXb
         zTWWTSuNzX1OLTybWiFnDTpH6ODczQ3BJgaiIqbelJruZ+/Hoz6jNc6AsRHJE9nc8eJf
         ppul+DkUFQSZDsJ6SVbM8GPcocYtUfWGhjLKs9lZOGypdsJmVE/Ugg+R71wLNz0SMvxl
         l7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ac0LKZUgJrBTwofmoyy+5SwKYji1Tc/4tXHpohXKGYs=;
        b=RZ228NscKdtvATxgr496osBjnl/cNQ+r4Y8NUbGgQb0UiMDXj2hDeOQzA+fE8ofFDX
         mO02m0FS6jnsDUBaN2LMIgLkYUf0IpUH6sVfQZQ+uhWmqVGDavO+5R6Wb6RNMG7pBUVN
         nyk6xgSejKlQOGBYsC+mFIV5ozGa2E2uWENX/wzTOLBpD1tdSHGI4UgdDKiiB7N/8/NH
         DL6eMIGaWSkvbCrKvHGn9O2G7cQJa7ZwefT4BjMVX7sUUg9qwDJkg7QQTLFyg/PKK5VU
         emH7hqvYo6xsrtTGdj64paxVfEcqiomeDC4fYUFtdCDk2FEBsNHjCdXmAtKpBdEJsIAk
         j4GA==
X-Gm-Message-State: AOAM530DXRV4UDNtJm/09ife0naFusRgdZaSJZsqpgBse0lP4bQp7rrj
	3E7ruoSI+ih/INJUyIXVaRpRROSNItSOXw==
X-Google-Smtp-Source: 
 ABdhPJypNsfzHEBzm/oRGVIXJp2lkcoBgy1Z+gHR9VfvSvHuI194OFBivLirUfxWxvHxMn3CsKJn0Q==
X-Received: by 2002:a65:5b0e:0:b0:3f5:d7c2:b3b3 with SMTP id
 y14-20020a655b0e000000b003f5d7c2b3b3mr5807017pgq.256.1652999736805;
        Thu, 19 May 2022 15:35:36 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:eff7:a795:a3a0:cee8])
        by smtp.gmail.com with ESMTPSA id
 y17-20020aa78f31000000b005107a4d5096sm203277pfr.30.2022.05.19.15.35.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 15:35:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] oeqa/cases/tpm2: fix and enhance test
 suite
Date: Thu, 19 May 2022 15:35:31 -0700
Message-Id: <20220519223531.3851892-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519223531.3851892-1-akuster808@gmail.com>
References: <20220519223531.3851892-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 22:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57143

local.conf
TEST_SUITES = "ssh ping tpm2"
IMAGE_INSTALL:append = " swtpm tpm2-pkcs11"

RESULTS:
RESULTS - ping.PingTest.test_ping: PASSED (0.05s)
RESULTS - ssh.SSHTest.test_ssh: PASSED (2.19s)
RESULTS - tpm2.Tpm2Test.test_tpm2_pcrread: PASSED (1.06s)
RESULTS - tpm2.Tpm2Test.test_tpm2_pkcs11: PASSED (1.17s)
RESULTS - tpm2.Tpm2Test.test_tpm2_swtpm_reset: PASSED (0.59s)
RESULTS - tpm2.Tpm2Test.test_tpm2_swtpm_socket: PASSED (307.72s)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py | 41 +++++++++++++++++--------
 1 file changed, 29 insertions(+), 12 deletions(-)

diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
index c6f9d92..c2c95e7 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -16,28 +16,45 @@ class Tpm2Test(OERuntimeTestCase):
         if expected_endlines:
             self.fail('Missing expected line endings:\n  %s' % '\n  '.join(expected_endlines))
 
-    @OEHasPackage(['tpm2-tss'])
-    @OEHasPackage(['tpm2-abrmd'])
     @OEHasPackage(['tpm2-tools'])
-    @OEHasPackage(['ibmswtpm2'])
+    @OEHasPackage(['tpm2-abrmd'])
+    @OEHasPackage(['swtpm'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
-    def test_tpm2_sim(self):
+    def test_tpm2_swtpm_socket(self):
         cmds = [
-                'tpm_server &',
-                'tpm2-abrmd --allow-root --tcti=mssim &'
+                'mkdir /tmp/myvtpm',
+                'swtpm socket --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init &',
+                'export TPM2TOOLS_TCTI="swtpm:port=2321"',
+                'tpm2_startup -c'
                ]
 
         for cmd in cmds:
             status, output = self.target.run(cmd)
             self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
 
-    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_sim'])
-    def test_tpm2(self):
-         (status, output) = self.target.run('tpm2_pcrlist')
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_swtpm_socket'])
+    def test_tpm2_pcrread(self):
+         (status, output) = self.target.run('tpm2_pcrread')
          expected_endlines = []
-         expected_endlines.append('sha1 :')
-         expected_endlines.append('  0  : 0000000000000000000000000000000000000003')
-         expected_endlines.append('  1  : 0000000000000000000000000000000000000000')
+         expected_endlines.append('  sha1:')
+         expected_endlines.append('    0 : 0x0000000000000000000000000000000000000000')
+         expected_endlines.append('    1 : 0x0000000000000000000000000000000000000000')
+         expected_endlines.append('  sha256:')
+         expected_endlines.append('    0 : 0x0000000000000000000000000000000000000000000000000000000000000000')
+         expected_endlines.append('    1 : 0x0000000000000000000000000000000000000000000000000000000000000000')
+
 
          self.check_endlines(output, expected_endlines)
 
+
+    @OEHasPackage(['p11-kit'])
+    @OEHasPackage(['tpm2-pkcs11'])
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_swtpm_socket'])
+    def test_tpm2_pkcs11(self):
+         (status, output) = self.target.run('p11-kit list-modules -v')
+         self.assertEqual(status, 0, msg="Modules missing: %s" % output)
+
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_pkcs11'])
+    def test_tpm2_swtpm_reset(self):
+         (status, output) = self.target.run('swtpm_ioctl -i --tcp :2322')
+         self.assertEqual(status, 0, msg="swtpm reset failed: %s" % output)
-- 
2.25.1


