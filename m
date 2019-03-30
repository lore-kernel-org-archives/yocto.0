Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07DAFE00D2F; Fri, 29 Mar 2019 19:07:28 -0700 (PDT)
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
	*      [209.85.215.170 listed in list.dnswl.org]
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF08E00D1B
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 19:07:27 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id z9so2025981pgu.10
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 19:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Rmz3RJWfnZIkEC5+cnQRbUHGGJ1xE8OWtGsKoxXoI9o=;
	b=gzn+IYNUPwz5OmECOz4VVSzuzRKdMmYSSivA8Srvqv5CYXgGeFBO8moL5TtptxzDXo
	s2ALSZ4tLEtnvnyYDFAi3pRpG27ZQAD5vKPZq8iPsTBq19sBx1Knjxy2d/3/8cmXXNE+
	VUc5YWGl4bYUUoeGRFNhl16NeqV2NVJZyG7es3WyXf+NCT6gPcRq/nxm0RWWVxRdPbP8
	jRcJjXAIcyo6y300Bs2OSY3zTyNxoFPIG8Fq8YpEIDFrwjqh5Jfbj9iHGbsRBBjALGOV
	VBRG5X55tsIIegxn9puoo0FX2Vyja1XGELUhJfqftvhtSwISXgeccDf1PpMR3jKbH2Sg
	hLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Rmz3RJWfnZIkEC5+cnQRbUHGGJ1xE8OWtGsKoxXoI9o=;
	b=pkNfk3t8Tb1JWq+x2Amj/Y9Xc12KUbnfHh9d898p2r3qaWPOa+XUNH/GXzWKEsRzvh
	sVHIsvU6nGBi0C+/WjyxSH+1MZ8NRChh+jDJytV2SF5+M8dm7oLyS/V8lV4unrrLgKdc
	sEbGri4ZH2YiP9bQ9TtBYy8LPJm9VsY5mKXtcM6HxalkS+wROU2cuDeqehBbUpVdDi3T
	xISAjxZ/ZSdKGlXYNW6Ig+YOmZSv0dTv6fi7f/1V9pq7mHUulbM7/mNyjGvgDEGurK6H
	BFl3vf8MnRRO/wk8jPAjj+CciruTodMoZm1FuTZ5JNEt/YqwjKUk+FTNzuaxZgPq7E3e
	TDmw==
X-Gm-Message-State: APjAAAUEHT+5AhX22kuPPc8MuY5MEJBGw+vhFmt3v8UVb3+dPjZh+7+d
	l+LfNuaH/SIbI9MpoPgB05LaPSJd
X-Google-Smtp-Source: APXvYqwqbNy1At+b3BgWDG8MqrivTPJytccQlNGcoqNOWTkGO/8mqAzWhVhc7yQ+aIP+DKYveppYCQ==
X-Received: by 2002:a63:5460:: with SMTP id e32mr49355664pgm.401.1553911646729;
	Fri, 29 Mar 2019 19:07:26 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n82sm5976702pfi.63.2019.03.29.19.07.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 19:07:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 19:07:24 -0700
Message-Id: <20190330020724.22279-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH] suricata: add runtime testing
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
X-List-Received-Date: Sat, 30 Mar 2019 02:07:28 -0000

Today there are no failures so set the trigger to zero.

[v2]
fix match string
and conditional

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/suricata.py | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/suricata.py

diff --git a/lib/oeqa/runtime/cases/suricata.py b/lib/oeqa/runtime/cases/suricata.py
new file mode 100644
index 0000000..17fc8c5
--- /dev/null
+++ b/lib/oeqa/runtime/cases/suricata.py
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
+class SuricataTest(OERuntimeTestCase):
+
+    @OEHasPackage(['suricata'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_suricata_help(self):
+        status, output = self.target.run('suricata --help')
+        msg = ('suricata command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 1, msg = msg)
+
+    @OETestDepends(['suricata.SuricataTest.test_suricata_help'])
+    def test_suricata_unittest(self):
+        status, output = self.target.run('suricata -u')
+        match = re.search('FAILED: 0 ', output)
+        if not match:
+            msg = ('suricata unittest had an unexpected failure. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
-- 
2.17.1


