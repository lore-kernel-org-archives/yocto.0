Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AB3C636D3
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 13:26:22 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web10.22720.1675257976834421883
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 05:26:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B4XxG579;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1636eae256cso19187346fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 05:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=AajxYQ0aebsiRUXl8PLvxG/lXTrhiJyrndFKKHDygb4=;
        b=B4XxG579vAdbL7JppchdSC5GP7aPunJX4enbJTF/H1/sznga8v2+DG8OpbHtWnIpvU
         cwK/I76WAQXFSQBAFDPi2AhqSZdlP2PJzpSpeGaeq0IKXHwCte5FVGi9CZoM9Jbu+LuT
         m2Lp3uD/6KoukGUNds9W3PXOFtGeTqekaF7w8NgcF5QxU601p0fxebOqa4NpxToJ2bCB
         HDHhV/izivbCW7wUdzwpBSbBdReJi+TzV8gX03hrhVyki2vbK8Y6Ze2QHTUWqnCUQoFi
         EC9C4yfMhN45kQ1wntGBYMz8F07l4zxGY2qbJDXltB1wXEPfN4N2eNWNW1cmKI0nkAJ5
         RZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AajxYQ0aebsiRUXl8PLvxG/lXTrhiJyrndFKKHDygb4=;
        b=74tuhe419wIpntXuhKBV+AeJ1YH/t0hFGVf7NZAy+eJlmtbWLo38TMfpdPQ9KuDj0k
         FSb3V2TRjaiadJ4KWaQY2IPx7BXL2RJaz/DWO3Vttm43A0NwYDLCVgdQz5KPpm1t1rHN
         bLk6nZNXvPFyjlal9kzPvY/ztR6QV2IrdMQ88e4YeGSamk2IUSBPrzd5eQRUBQlvkRPF
         CjBgtlIJsIjpyErljlf4mv6w+sombkgQlFdJZN2WqMLQBUAc3WWBjR+sVr17kfJkigfI
         nJZX47GzsoDnEH2bjUJOrn/qirfPs49h3Mjc1PUoY7MpboHJehUlKcnhElZITNQlluVA
         S7TA==
X-Gm-Message-State: AO0yUKVE+e9YpLTpYLAOFX0QqM365EIHk4pk9+xwEF+jC+lIF7nnPOZE
	IxYXRgMdKlz8PKFLmQEAlca4bmh/9Y4=
X-Google-Smtp-Source: AK7set8meeTlXZEm+Jsr9PxHiqQ62bUw1cXEN++f9fVUpRZ821m4u+lblAxwgLSqbQs/pRZNYwAsKg==
X-Received: by 2002:a05:6871:58e:b0:163:1c97:9a3b with SMTP id u14-20020a056871058e00b001631c979a3bmr1053441oan.45.1675257975821;
        Wed, 01 Feb 2023 05:26:15 -0800 (PST)
Received: from mvwork.attlocal.net ([2600:1700:9190:ba10::32])
        by smtp.gmail.com with ESMTPSA id y15-20020a4acb8f000000b0049fd5c02d25sm5010622ooq.12.2023.02.01.05.26.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 05:26:15 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [kirkstone][meta-tpm][PATCH 1/3] oeqa/swtpm: add swtpm runtime
Date: Wed,  1 Feb 2023 08:26:12 -0500
Message-Id: <20230201132614.2840970-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 13:26:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59129

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 50eff83d428598630d5277904eeeb4b668c31c22)
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
2.37.3


