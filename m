Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EB5CE00D4C; Wed,  8 May 2019 08:31:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76EBBE00D3D
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 08:31:08 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id c6so5474007pfa.10
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 08:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=LCl6geRIPbzaaqi2pB1ekgeMhKNmO7nmkOSHEnPy+jM=;
	b=t8PumS8RLAh7A6B6z+UmK1HyJ47Me857crx2K9xF9DcFGZ7ayN5CmO566xYU6SPFJA
	lQtwmzGINXsZGrAcnsSyk5WO9e/RgCwLkjJcOSeFIT1wusv/+pZtEHvZM7QZ3/DI1RMq
	DMYXKnn4wlhzvCqh2bOgdbdjU2Oj/2iRK0jxUldVaevpLejQVSOi7Eg+QGtNEIwMbWd6
	Lg4VGJZnYQvSdauKimaVwoPZ87Su4eB5m3joqMLG2sJmvB1xDqjiLdM6aDTj9pRfrJGr
	gjI/NCH2HTj4nkG80s7TM9GgBIJ8pzILHKIfrthFjKYSuUm+oR987+Mvr1BBMXscaeC1
	Tg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=LCl6geRIPbzaaqi2pB1ekgeMhKNmO7nmkOSHEnPy+jM=;
	b=g/Owl6ac7O8u6JZrKjX6dsw8G5tVv1mFZlsUiFYonStY9UQHofneBabfKmBZ/OSjRi
	fGSzEL29mMWQNiVZqFmdEH+QFpOvdeJzl5MFtU3JRHHa8JPO4tI9/hBw9Jvs6dOwspdP
	YimmKcdfPmJ1Q+veYbP4smW4+Hh0Ek4a/IC8b7O2P2Wu7jPNMZEcbXUiQ2jyqAnPVN+x
	c3qVnLMWUbte2VyqVDTMPnljS1bhreSgQU3YFI/+SiITiVZx6paEpnvUGgoRb8uVKbAb
	CmByFA82TGS+8m82MZfdX07R324fJxTZqHUgYJmwZd5eZEoHI1WFDvZN2kjwJVB/6Hix
	jngg==
X-Gm-Message-State: APjAAAVRWZgcDiMe0c42/VoiOFegz5JSR8XRfEpIwMw4grJAL0f9Nm5v
	mKf77czcDXQL0GEfDoNDvQufYctE
X-Google-Smtp-Source: APXvYqxUr3BhZqY+TduWxmQ2Otyi/HAnlHvpwPtguHiDoZns77a50q49/U0GXhjoK54vkPXoqR7I+A==
X-Received: by 2002:a63:d615:: with SMTP id q21mr28202321pgg.401.1557329467326;
	Wed, 08 May 2019 08:31:07 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c17sm21529687pfn.173.2019.05.08.08.31.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 May 2019 08:31:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2019 08:31:05 -0700
Message-Id: <20190508153105.945-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] samhain: add more tests and fix ret checks
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
X-List-Received-Date: Wed, 08 May 2019 15:31:09 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/samhain.py | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/lib/oeqa/runtime/cases/samhain.py b/lib/oeqa/runtime/cases/samhain.py
index e4bae7b..5043a38 100644
--- a/lib/oeqa/runtime/cases/samhain.py
+++ b/lib/oeqa/runtime/cases/samhain.py
@@ -1,6 +1,7 @@
 # Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
 #
 import re
+import os
 
 from oeqa.runtime.case import OERuntimeTestCase
 from oeqa.core.decorator.depends import OETestDepends
@@ -11,10 +12,32 @@ class SamhainTest(OERuntimeTestCase):
 
     @OEHasPackage(['samhain-standalone'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
-    def test_samhain_standalone_help(self):
+    def test_samhain_help(self):
+        machine = self.td.get('MACHINE', '')
+        status, output = self.target.run('echo "127.0.0.1 %s.localdomain  %s" >> /etc/hosts' % (machine, machine))
+        msg = ("samhain can't append hosts. "
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
         status, output = self.target.run('samhain --help')
-        match = re.search('Please report bugs to support@la-samhna.de.', output)
+        msg = ('samhain command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['samhain.SamhainTest.test_samhain_help'])
+    def test_samhain_init_db(self):
+        status, output = self.target.run('samhain -t init')
+        match = re.search('FAILED: 0 ', output)
+        if not match:
+            msg = ('samhain database init had an unexpected failure. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['samhain.SamhainTest.test_samhain_init_db'])
+    def test_samhain_db_check(self):
+        status, output = self.target.run('samhain -t check')
+        match = re.search('FAILED: 0 ', output)
         if not match:
-            msg = ('samhain-standalone command does not work as expected. '
+            msg = ('samhain errors found in db. '
                'Status and output:%s and %s' % (status, output))
-            self.assertEqual(status, 1, msg = msg)
+            self.assertEqual(status, 0, msg = msg)
-- 
2.17.1


