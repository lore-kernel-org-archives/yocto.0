Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71BDE00D2C; Fri, 29 Mar 2019 18:49:53 -0700 (PDT)
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
	*      [209.85.210.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E49E00D00
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 18:49:52 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id i19so1860509pfd.0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 18:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=e6ETpTUtKcTseSyDUnqOp/9PMiAaZ8QOXUHBV5F/3LE=;
	b=UrQK/yoN6IsuAZvL/kHtzro6UgU0kjHXUJjOyyfc8ce3FoSmYUnhlN338QnreJ2USv
	Y6t4YzJkGcb+1rm9wsFibj7YHefFVVt24tLFJqlgNysUyuIqMSmvX+mzNxb7MhDquLEX
	YOGGzEbm7+QAtvy4900KRlN1aO1PcQvBuEr49UJQwMDfU4kynuUrguoi3SD6gY8uQ40r
	EDFWVJOlFD+2bI3tAMbY8H1Xg07QGugrbTa424VXoYVwhGCT7k5VKJGh1nVXDHGS/gNA
	IK3ezaF8To56fhkdeXnDyTh6QqyXx0JS/MIA11syVVxNEU+B27yeLEDuKGp+cw7y9F/u
	XmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=e6ETpTUtKcTseSyDUnqOp/9PMiAaZ8QOXUHBV5F/3LE=;
	b=TpBWZMSANsPzyCpS55CGO/erR83zO6TEK6Kz0OUIMnLdrHCnTP/eTeZyfFcuYFrSyh
	KmnWB+KcbFA2nWHMw6m03SJSocRT9636OAdW3rOI6EK5ixvtOlYjnzr+j19L9lAKEHDs
	8iIEgA5Q9iI3bmkHgflSWdr2sRflvNjNKVHC3U+Ydx4iFeaRspMvZd8Ap5JGAEyXrF7X
	9XLmDdMUiRgjvFnKasm+muEw7W20IX1G2Zlh2GAaedBl+uY2E8bGSSqwE3bOxPa6UmYl
	qxF8CwqCrdIBEw3oxXZIOeXRld6w1kPkanrdWHxNJcXr6rQLWmAaKUDOH3FWhu7SVxfH
	hmWw==
X-Gm-Message-State: APjAAAXOl+izPSoGoj61HVibeYRV9zc1Y6K8raWpeJHjOmUhmh66LiZ5
	iAgRGVUJkrOC0VpYXs1t+Ogtmxfa
X-Google-Smtp-Source: APXvYqzMPBQW4k4KoW9i0NadvfqQ5+soqOqNUG9ei6GS5X08VpjWmJxP3MzxsBFWH6IJs4sdvV+T3Q==
X-Received: by 2002:a63:5452:: with SMTP id e18mr49428962pgm.386.1553910592040;
	Fri, 29 Mar 2019 18:49:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u10sm3843627pgr.2.2019.03.29.18.49.51
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 18:49:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 18:49:50 -0700
Message-Id: <20190330014950.19229-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tripwire: add runtime test
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
X-List-Received-Date: Sat, 30 Mar 2019 01:49:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/tripwire.py | 47 ++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/tripwire.py

diff --git a/lib/oeqa/runtime/cases/tripwire.py b/lib/oeqa/runtime/cases/tripwire.py
new file mode 100644
index 0000000..659724d
--- /dev/null
+++ b/lib/oeqa/runtime/cases/tripwire.py
@@ -0,0 +1,47 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class TripwireTest(OERuntimeTestCase):
+
+    @OEHasPackage(['tripwire'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_tripwire_help(self):
+        status, output = self.target.run('tripwire --help')
+        msg = ('tripwire command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 8, msg = msg)
+
+    @OETestDepends(['tripwire.TripwireTest.test_tripwire_help'])
+    def test_tripwire_twinstall(self):
+        status, output = self.target.run('/etc/tripwire/twinstall.sh')
+        match = re.search('The database was successfully generated.', output)
+        if not match:
+            msg = ('/etc/tripwire/twinstall.sh failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['tripwire.TripwireTest.test_tripwire_twinstall'])
+    def test_tripwire_twadmin(self):
+        status, output = self.target.run('twadmin --create-cfgfile --cfgfile /etc/tripwire/twcfg.enc --site-keyfile /etc/tripwire/site.key -Q tripwire /etc/tripwire/twcfg.txt')
+        status, output = self.target.run('twadmin --create-polfile --cfgfile /etc/tripwire/twcfg.enc --polfile /etc/tripwire/twpol.enc --site-keyfile /etc/tripwire/site.key -Q tripwire /etc/tripwire/twpol.txt')
+        match = re.search('Wrote policy file: /etc/tripwire/twpol.enc', output)
+        if not match:
+            msg = ('twadmin --create-profile ; failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['tripwire.TripwireTest.test_tripwire_twadmin'])
+    def test_tripwire_init(self):
+        status, hostname = self.target.run('hostname')
+        status, output = self.target.run('tripwire --init --cfgfile /etc/tripwire/twcfg.enc --polfile /etc/tripwire/tw.pol --site-keyfile /etc/tripwire/site.key --local-keyfile /etc/tripwire/%s-local.key -P tripwire' % hostname)
+        match = re.search('The database was successfully generated.', output)
+        if not match:
+            msg = ('tripwire --init; Failed for host: %s. '
+               'Status and output:%s and %s' % (hostname, status, output))
+            self.assertEqual(status, 0, msg = msg)
-- 
2.17.1


