Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDF27E00D2C; Fri, 29 Mar 2019 20:14:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE4FE00D1B
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 20:14:01 -0700 (PDT)
Received: by mail-pf1-f172.google.com with SMTP id 188so1909726pfd.8
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 20:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=qVDL9Nq0KeCvHbCnlwNGX7hbcdxCVZloT2yP5HIoJsA=;
	b=Xx9mturMljzOeFrlf9Exvs98zMhig5wpCFtvcHptDwBXLJ1KtpFMUxI/go1tes3mEp
	pn9Itn9buS0engfBJDg8JFAQaBC8Gr5JeV3qmGhY7Se/9BZKCqBVYvsOMecnTc+H6iwv
	R5ycZfDaq2P07si/y3Lmom5K1kBaPFyuN1UmhBJXegqiW8sZfVy/MJDaNAgP7Puhp85J
	Ai85QTOpbb6N3gMwHDlRd27BoA6eZnV37e2/gnQTEIfwWZQ919RJYQM+I5c7nvHev+Wk
	/TLcFd4uh977lh19IN7gc+YUqHGBfiGL53YilhkbKCP7gWnu/t1qdmOuuPvt6jpCfbge
	wXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=qVDL9Nq0KeCvHbCnlwNGX7hbcdxCVZloT2yP5HIoJsA=;
	b=qzpYJVh9aRlUM0VNpFP/U/7/IvCqI9hR0wFk2aD2n9O+Xyh/pYYLGvidKcjVEqzpnD
	u9veYo0xTAyV03+y7yWXVRNVPxdtM9Gs3zZtpb1U3mu6xEEY/ig/vnyIcQsL7b3HI0Gh
	3U43LZ22HUMCcYQsOsdHtcxqAl78NaDnIXv7x6lORtM/F6ZiHY2zUZxujOzo5GaX878y
	cJ3jfSf2E8XavmgjVAA2U8LNgYPXeWAQjseHxufqSoo1Q0KWT6G3elEEnD0gV/Kk20je
	vHE1XI4uiEch/F3hc8vQtazuT6Udw6Vh+ac7Xw54fdGByeZl3hecv7GEJ7aUpmHtNYJo
	kRrg==
X-Gm-Message-State: APjAAAVE8rTjOp62jrv6DYY+ftU2GL4wIyYj10FDhKLTSx1gk/wR+iLj
	pko1n5gLRRuFn9Suhfs5ZdYL1FtV
X-Google-Smtp-Source: APXvYqyFIMljh2S2gj+VrEUqYRpkNTygjr1yob66L2EQcBK/LmT+0ggJ0yxyT2y596/pIjlLPWFGsg==
X-Received: by 2002:aa7:8518:: with SMTP id v24mr50346760pfn.219.1553915641328;
	Fri, 29 Mar 2019 20:14:01 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	r10sm5580610pfn.188.2019.03.29.20.14.00 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 20:14:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 20:13:58 -0700
Message-Id: <20190330031358.10018-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330031358.10018-1-akuster808@gmail.com>
References: <20190330031358.10018-1-akuster808@gmail.com>
Subject: [meta-security][v2][PATCH 2/2] samhain: add basic runtime test
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
X-List-Received-Date: Sat, 30 Mar 2019 03:14:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/samhain.py | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/samhain.py

diff --git a/lib/oeqa/runtime/cases/samhain.py b/lib/oeqa/runtime/cases/samhain.py
new file mode 100644
index 0000000..e4bae7b
--- /dev/null
+++ b/lib/oeqa/runtime/cases/samhain.py
@@ -0,0 +1,20 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class SamhainTest(OERuntimeTestCase):
+
+    @OEHasPackage(['samhain-standalone'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_samhain_standalone_help(self):
+        status, output = self.target.run('samhain --help')
+        match = re.search('Please report bugs to support@la-samhna.de.', output)
+        if not match:
+            msg = ('samhain-standalone command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 1, msg = msg)
-- 
2.17.1


