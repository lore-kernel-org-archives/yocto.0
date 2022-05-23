Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08ECAC433FE
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:09:15 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web08.27961.1653314947376016385
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cXpAIsqV;
 spf=pass (domain: gmail.com, ip: 209.85.214.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id b5so6155979plx.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=USrJTpBQ15ZogmOMjh4/dG2jDBBSVmp6154FTrZzokw=;
        b=cXpAIsqVYSGEFCHL9cT1+DW4OvMJ4Kpfg3PR0OBWl7nv+pv5oPSadgU8MYZ8TZhEjV
         15Bh9NyZuoyEbywVBu7Fp3cPVmBD6ZhH3h037IH9KmvtAero5B3bP3NmxIDq53EusLAd
         /5k/k+E7xsDv5vbC6+5CZyoa9oMClSTx82dkENbEK7XWfYsABr7D/UMbgr5NT7HsTrHu
         S61VmsqznsK+wVh8XDeUZizSiQ+TesgbYy26v9V/IrifNG/6QAtOmZxSoK+jkCQlsMEj
         QFxGJ0+E9O3/nY04ApbJINJI6JwJwrCiyJoGB6VVy3oEsIcsESr0UjSvTkg/3pzbIyHn
         AZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=USrJTpBQ15ZogmOMjh4/dG2jDBBSVmp6154FTrZzokw=;
        b=PN5z06apkt+VaKkB9ZiePttJ1GruQ6sZAcsDU0nr97haNEi8QEGHl+aez1rTPU9pf5
         tSrRqUz0RYGJ+hxivXKLG7++MF1BT+Fkb9FmbQfPiVvpN5+2pnf0pe5blYjpIQhXubi6
         GaVXpAe57KjHWrjEanX9oyhOlj/dMMDkn7cbajiy8vMV7n37v76KnpAkKCE+XEM80UTy
         rwCmDFbpO/nCuJ2BY5hCquFm+jaPp3Ie4IFYNizW63NzuetCH581aP/i6Ev3Vkxbbtx7
         bXOAl4ZHxpKZzFINXTsoIvzHO45zyYUV/sbqKjuXamOah+y96lrNYQWZFnJjpHg9jedG
         jK8w==
X-Gm-Message-State: AOAM5328Ymvt4+JCg0l9kVjs+JJvPEgXTZwLeNXrEvsJdS2vwdjCotKj
	yVUfoYTOvafy2McPx3qTORDqP2/tMJd/Jg==
X-Google-Smtp-Source: 
 ABdhPJzdIPsfebCIw/WSoAO88BGJzGPeFJwsvv0cWCRIVn3xlHanQUWg8YavYpA8e5BAsxwcleXRcg==
X-Received: by 2002:a17:903:40c8:b0:162:39b5:9eb7 with SMTP id
 t8-20020a17090340c800b0016239b59eb7mr562222pld.87.1653314946554;
        Mon, 23 May 2022 07:09:06 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 6-20020a17090a0f8600b001cb6527ca39sm7466846pjz.0.2022.05.23.07.09.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 07:09:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][v2][PATCH 3/3] oeqa: add parsec runtime tests
Date: Mon, 23 May 2022 07:09:01 -0700
Message-Id: <20220523140901.35347-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523140901.35347-1-akuster808@gmail.com>
References: <20220523140901.35347-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:09:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57160

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
v2]
Add parsec-cli-tests.sh to mix
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 meta-parsec/lib/oeqa/runtime/cases/parsec.py

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
new file mode 100644
index 0000000..547f74c
--- /dev/null
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -0,0 +1,33 @@
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
+        status, output = self.target.run('echo library_path = "/usr/lib/softhsm/libsofthsm2.so" >> %s' %(toml_file))
+        status, output = self.target.run('echo slot_number = 0 >> %s' %(toml_file))
+        status, output = self.target.run('echo user_pin = "123456" >> %s' %(toml_file))
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
+                'parsec-cli-tests.sh'
+               ]
+
+        for cmd in cmds:
+            status, output = self.target.run(cmd)
+            self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
-- 
2.25.1


