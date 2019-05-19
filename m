Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9511FE00D11; Sun, 19 May 2019 13:55:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BBB6E00C46
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 13:55:09 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id z16so5734803pgv.11
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 13:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=4K70bxIOSqHWawhwO6dNa7tIvO3Jh7eJbo3d/X/yRfc=;
	b=p8Dqtsuai/mdsXJowa0iZlheWiMf/HAI+XgENsFKqpRBevwURgxgxWYCmB077wjiJf
	ITJhND6riYmGaKk0+68hiIufbIyzGHA00n9jqDXCUcMiVaKqv7qjKKToMsRDpvfS4aGK
	6+P8ktNMd80U13gK68FSnk6R5fcgrAVe3CWjSL8o5814m60FZx2a91TzkLItmXGyvjQ3
	h7DyCRgx5Qo3akdcemuODNQtpMuycbqlf0EyLD0qwRWL8zi52sKDIKVSMftaT61ywpVG
	I3+5Lp5ozV+xKQ73JtIleXBhEMUovoFTVNQA45GwxIK0w6M491FAUBtfNueWDzm82pN/
	8zZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=4K70bxIOSqHWawhwO6dNa7tIvO3Jh7eJbo3d/X/yRfc=;
	b=XhIblwOH11gkReKu/zd6SNkRe1U4o357dVKRFgwIomZ35AE5GwrM2FJ2bW497LrArB
	jwPUa2kFKRvtgE1H1U7b6NSdFda+gIAHVNhPM10nTqBbBwwdG77/qGMPU5fmRKwqr+Ww
	z2pj/aH1fg26SoUXbxvGz+EiGEhzw2Xo4cYMGUXLfuJrPWC2UhMvs0/xdGmgLKYkgIAk
	+hfkIiLcPxm+ddA5liFnf6gwE7WQpgTNTV7jet2c5nTXNT13dWxFzEKYHPv4aVOv9haF
	peK/nLKcjWYSsRaAC03tZAfP5Nh4Vm1zFeAhnUSzPn709f3m8UNkIHcF7ZgkH+xqXhY5
	rV9A==
X-Gm-Message-State: APjAAAVmGWcxVWLRuM+Ox8uL7qX8aSSk/Eb7N1ZRLyZ6BRj1mwnidxei
	+3pe+9uyofYLvL+a0tHmR5aK33sr
X-Google-Smtp-Source: APXvYqyKWLW6s3xaBOPSQftlXpviBv+sG9+lj3bTKavp7fA38HZN3tNX4FF3y1kjHNWCzVn+0yNp0g==
X-Received: by 2002:a62:4d04:: with SMTP id a4mr4223316pfb.177.1558299308614; 
	Sun, 19 May 2019 13:55:08 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c17sm11043155pfo.114.2019.05.19.13.55.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 May 2019 13:55:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 19 May 2019 13:55:06 -0700
Message-Id: <20190519205506.2579-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] checksec: add runtime test
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 May 2019 20:55:10 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/checksec.py | 33 ++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/checksec.py

diff --git a/lib/oeqa/runtime/cases/checksec.py b/lib/oeqa/runtime/cases/checksec.py
new file mode 100644
index 0000000..ff6d2f3
--- /dev/null
+++ b/lib/oeqa/runtime/cases/checksec.py
@@ -0,0 +1,33 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class CheckSecTest(OERuntimeTestCase):
+
+    @OEHasPackage(['checksec'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_checksec_help(self):
+        status, output = self.target.run('checksec --help ')
+        msg = ('checksec  command does not work as expected. '
+                'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['checksec.CheckSecTest.test_checksec_help'])
+    def test_checksec_xml(self):
+        status, output = self.target.run('checksec --format xml --proc-all')
+        msg = ('checksec xml failed. Output: %s' % output)
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['checksec.CheckSecTest.test_checksec_xml'])
+    def test_checksec_fortify(self):
+        status, output = self.target.run('checksec --fortify-proc 1')
+        match = re.search('FORTIFY_SOURCE support:', output)
+        if not match:
+            msg = ('checksec : fortify-proc failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 1, msg = msg)
-- 
2.17.1


