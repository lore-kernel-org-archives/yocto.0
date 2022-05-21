Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 703D6C433F5
	for <webhook@archiver.kernel.org>; Sat, 21 May 2022 18:56:52 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web09.8797.1653159405905044030
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KxoYoa/h;
 spf=pass (domain: gmail.com, ip: 209.85.210.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id y41so10311418pfw.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=hGiAYvyadsZDYnTms/vx8Y9gJoQGoDNYsapEN/pC0ZY=;
        b=KxoYoa/hC1RQchSMfmbS0t5U+FswiMivsQUCEm8aeTJJ37onEVju0EoNmxLXLKhiug
         bazNeBS4xCzDTf2AgxhVrHHaFzOgvhDWyY8NasgG0O4ya1yMGdseQBcmf7bNMhcTRxqj
         Y1SOZkOusSzYJq7eDY1QXC+x4/c3/FjypVbpv7RodJJJ7J7YqxzGNVVq3oxS4QvXIUvc
         bPdmYOwgOTnzvG869os32E9pQHWlbw9jCcMNq9nFkHhmplEP/VPiWW3YP9aOfL8q9YwZ
         NbUnAGtNyrwKO0QH9i2tbIOyj/i5Lcuvi/uFCrB6isM+gFqpeBo01hU0NF5KDr6zbVIJ
         sJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hGiAYvyadsZDYnTms/vx8Y9gJoQGoDNYsapEN/pC0ZY=;
        b=2qfjpG6yZ0MxXir+eWSY14utZWQjLXlUXNzONFYIVDMlgZEmFXvFM7VP8YlGUaqCKo
         K4/XxWzXdw/GIKiztb6KO7flHLNYrcaCsSBevVrEuCtzWwk6uFcVFzRGPfT+PggZKoqt
         66YSfE+Pcx/ow3tXvDXgHIIn3J5n4KK24S7dAniIxhe+vN7cNh7I/bnStbCzGG6WdH8p
         Sw2T8va5Cx2Ma1aIwaITJDAsqOp8brSd7bRVmF+kNFOOKEexsEcBhlF1teu++SJe9IsY
         XgrpP3RE1ajD9wQMzB4gP7stIsST7CZpxT9coluC0T0ysPpgmc14crho0jC4rFItIHcq
         n2IQ==
X-Gm-Message-State: AOAM530e1bRF6W6wZZv/xvnstKoAcDMDFu5Cm6a/Z66zNoTBdF0ndVzC
	CL4QH27fMaZNlg31A1AA97XTfW+vJZk=
X-Google-Smtp-Source: 
 ABdhPJwenLGcJSTkleTzfJ0E2aa8SdYtbvx1zwadcJThXG8EvhBjxcSWTS45l55vaRDJ+6T83qWEIg==
X-Received: by 2002:a05:6a00:134c:b0:518:7a03:168a with SMTP id
 k12-20020a056a00134c00b005187a03168amr5948796pfu.50.1653159405081;
        Sat, 21 May 2022 11:56:45 -0700 (PDT)
Received: from keaua.T-mobile.com (c-98-207-193-87.hsd1.ca.comcast.net.
 [98.207.193.87])
        by smtp.gmail.com with ESMTPSA id
 s1-20020a170902ea0100b0015e8d4eb1c1sm1931300plg.11.2022.05.21.11.56.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 11:56:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 3/3] oeqa: add parsec runtime tests
Date: Sat, 21 May 2022 11:56:40 -0700
Message-Id: <20220521185640.143194-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220521185640.143194-1-akuster808@gmail.com>
References: <20220521185640.143194-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 May 2022 18:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57152

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 meta-parsec/lib/oeqa/runtime/cases/parsec.py

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
new file mode 100644
index 0000000..d07028c
--- /dev/null
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -0,0 +1,32 @@
+# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+class ParsecTest(OERuntimeTestCase):
+    @OEHasPackage(['parsec-service'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_parsec_service(self):
+        toml_file = '/etc/parsec/config.tom'
+        status, output = self.target.run('echo -n library_path = "/usr/lib/softhsm/libsofthsm2.so" >> %s' %(toml_file))
+        status, output = self.target.run('echo -n slot_number = 0 >> %s' %(toml_file))
+        status, output = self.target.run('echo -n user_pin = "123456" >> %s' %(toml_file))
+        cmds = [
+                '/etc/init.d/parsec stop',
+                'sleep 5',
+                'softhsm2-util --init-token --slot 0 --label "Parsec Service" --pin 123456 --so-pin 123456',
+                'for d in /var/lib/softhsm/tokens/*; do chown -R parsec $d; done', 
+                'mkdir /tmp/myvtpm',
+                'swtpm socket --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init &',
+                'export TPM2TOOLS_TCTI="swtpm:port=2321"',
+                'tpm2_startup -c',
+                'sleep 2',
+                '/etc/init.d/parsec start',
+               ]
+
+        for cmd in cmds:
+            status, output = self.target.run(cmd)
+            self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
-- 
2.25.1


