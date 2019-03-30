Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93759E00D1B; Sat, 30 Mar 2019 14:09:01 -0700 (PDT)
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
	*      [209.85.215.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21595E00B1B
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:09:00 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id p6so2819936pgh.9
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=VHhharY+ovd2d2KVyVSoEDNV3QlEMUR4XTgZUi29gio=;
	b=s0lqQDceZhfzwxxdu/5tK4MYP0hSLaL0TxMZd7nSUjUtVwZorjMJDCURqM7A2P7Ilx
	jUwnBZb0goiXdmcWEMnyyWJ3NoiBmvgCWMVeLpRU26i+kCk+ax3uOr1s2uEJiDa8LLWd
	U6OUVflnW4OmqAOnCynZMqf3ZQ2KBBSUS86yRCpaMaiCZwmDhBeVWNHFpxo4vfn+mJcP
	gRqxPhPiA5tl7kHfxgmoDQBRBANSDn2U25HUaD53Sb14Cp8npjipzq8IxxFEw7HABdRE
	5+8qZmlpzYP7RaqY6+TOxapOYE+1Ssd+R0Tl8Xyejr/EY7PLJoGW738G/xC+8ULpKWvU
	4RbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=VHhharY+ovd2d2KVyVSoEDNV3QlEMUR4XTgZUi29gio=;
	b=LV3lirx6Lbhur6ly3C6myX7zF2SPpoYgYCswv4eIHP7z5iJ8o+itPNudOP9NfA9Y+i
	1OVwVw3eB7BSP7FhPMIgsxE7yU4yiq6y3G9iogQ04CP7YNtnWE8qR3oi0tjE6j1lqmDm
	NXjh04sjBBf/bMcNB9MVRQW0Jin2GO+h9pOaNOzrmjXPue06uugmye6lCWFkgCbWaU4A
	nuB4I5SdCkX7O1JbGniTlM6mxMdcyOY+9Om7y0A4xu0gFCEEstEPZcvGbgcEAdEbxgAb
	GcegozIxG370P1aNoTzlMn+OTwW3Qq4Jpihlx/mNygcgq+wk8fs9EZZGML/aNfXQ/+FZ
	X9yQ==
X-Gm-Message-State: APjAAAUBaDt/ExN6kGCPqTrQI8l9l0jxms9GsRf/0HyZpB18uXC/TrmQ
	UZa+oUh7kC8sV/aBIurjvt77xXL/
X-Google-Smtp-Source: APXvYqwT/J5UFZLutNSWtSiWT+CtVf+XsAOBFjgZ7PLCyer4GNP9yLndHToddkpO/jUzIcatemq/kg==
X-Received: by 2002:aa7:8c13:: with SMTP id c19mr31695707pfd.225.1553980140369;
	Sat, 30 Mar 2019 14:09:00 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	i25sm7354040pfd.52.2019.03.30.14.08.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Mar 2019 14:08:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Mar 2019 14:08:58 -0700
Message-Id: <20190330210858.6508-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] clamav: add basic runtime tests
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
X-List-Received-Date: Sat, 30 Mar 2019 21:09:01 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/clamav.py | 38 ++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/clamav.py

diff --git a/lib/oeqa/runtime/cases/clamav.py b/lib/oeqa/runtime/cases/clamav.py
new file mode 100644
index 0000000..fc77330
--- /dev/null
+++ b/lib/oeqa/runtime/cases/clamav.py
@@ -0,0 +1,38 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class ClamavTest(OERuntimeTestCase):
+
+    @OEHasPackage(['clamav'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_freshclam_help(self):
+        status, output = self.target.run('freshclam --help ')
+        msg = ('freshclam --hlep  command does not work as expected. ', 
+           'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['clamav.ClamavTest.test_freshclam_help'])
+    def test_freshclam_download(self):
+        status, output = self.target.run('freshclam --show-progress')
+        match = re.search('Database updated', output)
+        #match = re.search('main.cvd is up to date', output)
+        if not match:
+            msg = ('freshclam : DB dowbload failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 1, msg = msg)
+
+    @OETestDepends(['clamav.ClamavTest.test_freshclam_download'])
+    def test_freshclam_check_mirrors(self):
+        status, output = self.target.run('freshclam --list-mirrors')
+        match = re.search('Failures: 0', output)
+        if not match:
+            msg = ('freshclam --list-mirrors: failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 1, msg = msg)
+
-- 
2.17.1


