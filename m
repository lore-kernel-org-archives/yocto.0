Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C090E00CB9; Sun, 31 Mar 2019 10:29:05 -0700 (PDT)
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
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B2FE00B5C
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id 188so3362768pfd.8
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=uEYn2fpOjOC/e691xtfCIhefr/PY05k5jqrb9RqXITQ=;
	b=YutlhgnmTzzaJKgDzZfaFvn9mJKOxYHmD21BokryPrYDKhThFxRaQcsr3lEeViV571
	ijClxIXkTIVuwwhLJ74Gkqa/xGizXfrfnbKH/miruHTuRzl2k1YBcY9OozCiOdY6MZ2a
	OhABq+tIaKAnijDAEDlDdztXcgmNQDvQbbQMwLxfSyqhWkKKtXTR6CFqnioihPjYAb9D
	b2YUrlseEqwvWo78RFYhSBm2Yo4hqPtIAolhJxtZcKyetQvs/FUz1o/Rd3fBcTtFzvK3
	jF6vE0OdxvhafZJpbtMWQQEGp45yiLdsvdWtrPeM8hWVE+ErrE/E7Qn84aOsqxDwxATu
	LbLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=uEYn2fpOjOC/e691xtfCIhefr/PY05k5jqrb9RqXITQ=;
	b=k+6lHUjMUU1Pv0x88CxfyBJ/qWQeIzmQ2kDvw3vBK61hIAWzzdwSYsl4UKD7d+ykyJ
	n2qqraDwEIJzRmVuOSdIVb4H8uSBGl6STQwlsVMQ1l9PI/EkYdFzX4328OTSQeonRJbQ
	xqVqtnS8tWL+8djt047byGHyxA89cWnbX+l4NmKlNJE9sZtZQIN+5DmGk3uG0+goIclB
	m7WVuK7NfscTMTRo/NaBm1MBxcTkA1erLEDJWb/WBiuycHc6KozJ0lnuBqZMcyz24vJh
	uNsgh0oofKSeI5lnPNC7/SPPBtIJFYBldpP45d7QMKudHBuRwlZDiFkvwjAbFiTTfxOI
	AeAQ==
X-Gm-Message-State: APjAAAXiV3Y0yqNxjzm+WHgQ57CxRqnB5sTtiqHMFEt3V+YJDz6OekB9
	IIKmnjlNV4EcgLtjuWe+VtO9Aag8
X-Google-Smtp-Source: APXvYqx7U93t7jc2NCNuMlyt05wXLxek6AcGKzd5slxUuFqv+TY5EVEFhNCuMsAHJEiUJ2IMAxVfSA==
X-Received: by 2002:a63:1659:: with SMTP id 25mr13132156pgw.275.1554053343337; 
	Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j16sm10333893pfi.58.2019.03.31.10.29.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 10:29:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 31 Mar 2019 10:28:58 -0700
Message-Id: <20190331172900.28894-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331172900.28894-1-akuster808@gmail.com>
References: <20190331172900.28894-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/4] apparmor: add basic runtime test
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
X-List-Received-Date: Sun, 31 Mar 2019 17:29:05 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/apparmor.py | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/apparmor.py

diff --git a/lib/oeqa/runtime/cases/apparmor.py b/lib/oeqa/runtime/cases/apparmor.py
new file mode 100644
index 0000000..e2cb316
--- /dev/null
+++ b/lib/oeqa/runtime/cases/apparmor.py
@@ -0,0 +1,27 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class ApparmorTest(OERuntimeTestCase):
+
+    @OEHasPackage(['apparmor'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_apparmor_help(self):
+        status, output = self.target.run('aa-status --help')
+        msg = ('apparmor command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['apparmor.ApparmorTest.test_apparmor_help'])
+    def test_apparmor_aa_status(self):
+        status, output = self.target.run('aa-status')
+        match = re.search('apparmor module is loaded.', output)
+        if not match:
+            msg = ('aa-status  failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
-- 
2.17.1


