Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDEA4E00D38; Thu, 28 Mar 2019 22:28:28 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B17C6E00D2A
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:27 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id z9so626907pgu.10
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Gwp3Ik7SjOnq7Wlmd+reEdAd6jqeT9ID5wS5pLUd/F0=;
	b=nzb+jav40uBrmKXJuurRjFdnIuKMD/vb0tNBkXBE3nFL7/RbLpsM0gPkyVxP6rifuX
	lEt+kDctT/9X+AhX6/FUl5SmHUUnpaXstgiEA85IivEhjaxgSJNZesyYfC9E8MGKdol7
	1mCUkbRF/Hl7gz0O4yExIs4DoUKgI8AAq4nHqX6JvtOLMSqrqBksa8jDeyO4ggQusR19
	IPrFusrnRktAkIVA4FOgIJkn4QqPPus84jSoBQSacjQTv2aTW/KPzZRk0EZkCjCoCUF4
	sZnHAtPry1STbt/ivyHJPhIe/qLUkOVHf8WIOz2cSL3N1lI7IwE93/N0aU9tXVlCoLsi
	wpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Gwp3Ik7SjOnq7Wlmd+reEdAd6jqeT9ID5wS5pLUd/F0=;
	b=XWzDUpSB+aeICu0VCFOR8ugNtFUZ1wb0A7/2TdYYRB9VBAqQ0h+WsiG//VfN0tIekt
	u8iMlRO+J+yUJz/SCG5WTavTCtMGibO3FkLlPk0jnJzrPA61oFxRUIKnwN0dBXBL1zB3
	+rUg0Fl+z+OJVSjgMGc8CPsJt3G/IPQe85nh4bT+2twDs9sE5KBzfkUUn8VozOMsv856
	P4WZovRZFEalwRY1+bxLaelBjryICz8Yy0CjYGx3mysczAWAvzj84JceG/szWA9fZcvo
	IaunOTxeIhEV986UXhwY70nVD1ZTNO1TO3CZHvIYcYUEOaCUsD9MdqbPzWw+yZmfrH7S
	isyw==
X-Gm-Message-State: APjAAAV6VdiYS51HhjiuwCuu15RI+/wudsCIhXa7bVY5iRuoP2Yzp5g/
	c6CzLmuSAEEYC7iwBO3N05+Mck0k
X-Google-Smtp-Source: APXvYqy0o2YooCPK7ZaA7EyjmGaWvM6MlbKdOJVt6dPtrZXOyb1ONsQh/yRiu5BRxhmZYMtWZSekwQ==
X-Received: by 2002:a65:5049:: with SMTP id k9mr30562880pgo.229.1553837307136; 
	Thu, 28 Mar 2019 22:28:27 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f9sm1133978pfd.10.2019.03.28.22.28.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:28:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Mar 2019 22:28:21 -0700
Message-Id: <20190329052821.13718-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190329052821.13718-1-akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/5] sssd: Add basic runtime test
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
X-List-Received-Date: Fri, 29 Mar 2019 05:28:28 -0000

This does some basic testing and checks.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/sssd.py | 37 ++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/sssd.py

diff --git a/lib/oeqa/runtime/cases/sssd.py b/lib/oeqa/runtime/cases/sssd.py
new file mode 100644
index 0000000..4644836
--- /dev/null
+++ b/lib/oeqa/runtime/cases/sssd.py
@@ -0,0 +1,37 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class SSSDTest(OERuntimeTestCase):
+
+    @OEHasPackage(['sssd'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_sssd_help(self):
+        status, output = self.target.run('sssctl --help')
+        msg = ('sssctl command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 1, msg = msg)
+
+    @OETestDepends(['sssd.SSSDTest.test_sssd_help'])
+    def test_sssd_sssctl_conf_perms_chk(self):
+        status, output = self.target.run('sssctl domain-status')
+        match = re.search('ConfDB initialization has failed', output)
+        if match:
+            msg = ('sssctl domain-status failed, check sssd.conf perms. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['sssd.SSSDTest.test_sssd_sssctl_conf_perms_chk'])
+    def test_sssd_sssctl_deamon(self):
+        status, output = self.target.run('sssctl domain-status')
+        match = re.search('No domains configured, fatal error!', output)
+        if match:
+            msg = ('sssctl domain-status failed, sssd.conf not setup correctly. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
-- 
2.17.1


