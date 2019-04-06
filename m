Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 827A3E00D52; Fri,  5 Apr 2019 23:37:16 -0700 (PDT)
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
	*      [209.85.215.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1FC0E00D38
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 23:37:07 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id y3so4208959pgk.12
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 23:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ZgFg93onhVAp0qmPNTwmgIA1xYVGgozAxRqssiQj4/I=;
	b=kpbnSMquMojrWsEZOZSY/wN0zIIPDtY0yVVcj7XDw0RWmQJWZFpknF92d2mrnTj5zb
	h8SxyMca97AJvq+SYTx+i6cDeLLpIlpe8gKNQVevnfYTtBmzWcr/BxhIWAuGN7RKj1Ex
	JZ1rCuztsPN9sxtHXUe9SZdsKU467iGNes0PigWwMbl4CwYDucCBWEnDczho0wUi4wkR
	IUz4QpY/GIGFBlDLx/I/OMkt2soeD5cqiztrq6P21FOj2UPP02i1h0vNEAdp6iBo8Zjs
	88jeqVzpnWxM26HL9BaO81m7czwCr3pnDd3j4JHItGDSkBS+LzmjSLnZwP0vYhucDllp
	lljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ZgFg93onhVAp0qmPNTwmgIA1xYVGgozAxRqssiQj4/I=;
	b=JFVZltrJhzFN7BhFU19g0pC5fueNWFtrdZ/2XJcEm2NWLx13s1nOWWGp3RXw8u0Z6L
	y6zElPzpR0t7bs0jnLlovtW1T3XtOVgsOVGrgnhcUnsZ+/WSvI7t+w0J/qpJGX7CIT4f
	u61uVhwZKc2NbkM9YR4OibbFSTSY7iI92P4tXNSqt0Hwyt1MNq6qK257+cYXDCv1wzZi
	CQIIVQZDbPBVckrNmrNaP9UsaJLtDwpKCP1isTNmUbytHQmbhtEb4MJsAZLK45WTbMdK
	nEHEXozewI5P7LiMaj/qsQokW7BgNp1JroDv4uMz0JoZFXyK0RfON+5qEeNzt8e4pe56
	4pog==
X-Gm-Message-State: APjAAAUxhTMLG6VSVJiC9sYVkYIpj6RwWwLBs9830mLzV1+N5Qhg8/Qm
	fy9mnC1KiWUyN64g2Fr4rU+BdotIVHU=
X-Google-Smtp-Source: APXvYqz68QDQuRhbs03Irq4rTEwRzsfcPqWpPKcdHQ8zDc9NMJmEVRpNIylrQUiRivokidao5WzGbw==
X-Received: by 2002:a65:6150:: with SMTP id o16mr16231467pgv.285.1554532627182;
	Fri, 05 Apr 2019 23:37:07 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	h1sm11519235pgs.67.2019.04.05.23.37.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 05 Apr 2019 23:37:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 12:06:53 +0530
Message-Id: <1554532613-27895-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1554532613-27895-1-git-send-email-akuster808@gmail.com>
References: <1554532613-27895-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] clamav runtime: add resolve.conf support
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
X-List-Received-Date: Sat, 06 Apr 2019 06:37:16 -0000

and ping test too

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/clamav.py | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/lib/oeqa/runtime/cases/clamav.py b/lib/oeqa/runtime/cases/clamav.py
index fc77330..647861c 100644
--- a/lib/oeqa/runtime/cases/clamav.py
+++ b/lib/oeqa/runtime/cases/clamav.py
@@ -1,6 +1,7 @@
 # Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
 #
 import re
+from tempfile import mkstemp
 
 from oeqa.runtime.case import OERuntimeTestCase
 from oeqa.core.decorator.depends import OETestDepends
@@ -9,6 +10,20 @@ from oeqa.runtime.decorator.package import OEHasPackage
 
 class ClamavTest(OERuntimeTestCase):
 
+    @classmethod
+    def setUpClass(cls):
+        cls.tmp_fd, cls.tmp_path = mkstemp()
+        with os.fdopen(cls.tmp_fd, 'w') as f:
+            # use gooled public dns
+            f.write("nameserver 8.8.8.8")
+            f.write(os.linesep)
+            f.write("nameserver 8.8.4.4")
+            f.write(os.linesep)
+
+    @classmethod
+    def tearDownClass(cls):
+        os.remove(cls.tmp_path)
+
     @OEHasPackage(['clamav'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_freshclam_help(self):
@@ -18,6 +33,19 @@ class ClamavTest(OERuntimeTestCase):
         self.assertEqual(status, 0, msg = msg)
 
     @OETestDepends(['clamav.ClamavTest.test_freshclam_help'])
+    @OEHasPackage(['openssh-scp', 'dropbear'])
+    def test_ping_clamav_net(self):
+        dst = '/etc/resolv.conf'
+        self.tc.target.run('rm -f %s' % dst)
+        (status, output) = self.tc.target.copyTo(self.tmp_path, dst)
+        msg = 'File could not be copied. Output: %s' % output
+        self.assertEqual(status, 0, msg=msg)
+
+        status, output = self.target.run('ping -c 1 database.clamav.net')
+        msg = ('ping database.clamav.net failed: output is:\n%s' % output)
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['clamav.ClamavTest.test_ping_clamav_net'])
     def test_freshclam_download(self):
         status, output = self.target.run('freshclam --show-progress')
         match = re.search('Database updated', output)
-- 
2.7.4


