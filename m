Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EEF2E00CED; Thu, 21 Mar 2019 17:27:01 -0700 (PDT)
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
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D63E006D8
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 17:27:00 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id b12so232068pgk.0
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 17:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=wTaGWC8mw4rq45zefJAZmBAmAvnIbL0ZzV38j50da50=;
	b=PI/StN4tzC6Sq3R5mQtrtqdP06Rnsdx32M7fN0x+zZ1UR03kz8IBlsVgqqsoXedk7c
	4EGsZ291kis8EeYI8SXcFygwn490YjZ6RBch44QPeZbaj5ki+1beQABrOlT+AyLCybp5
	Pujzvsq+2NvA38PJW8/KFY13u27IGCd576eVdm0VmXD4M8TT+CactCBd+nJrcIVvorI3
	j/Nxig1rK7gK/iYXzj8fQr/Dr1qfsn7P5rr0F/v9Ige67n41VA/jYRXceu5M+I4cEwKO
	yEexJJH1vDAPRTgGZ0TEWsDplMzcbouvUeNZrxzi1NLMnh01DtJnDJSef+IFNY5KKEhc
	Lh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wTaGWC8mw4rq45zefJAZmBAmAvnIbL0ZzV38j50da50=;
	b=TDxd9HKBek5BKwA6mSpFcSjwzYB7NABdNDbwFoRUTqQ7OogZ8WUOqFKbSkZnq99Jn1
	4UBZoPcwlnvC/3DxgHV0nihO1OLO+ebxb1e1tMpIlxEZi+OgUGLm3+2oBw+A5ZGSQEh6
	+YlCebm+DrMtzvKj0Gkw1nSIBoAiQx9cpNW9M7/kwQIyVIVO18ygcBd6paG4GiDyTtlS
	t5A7UlZo5A9BVCglgHrC5aq9zYC4ve2uqfXyQ4GZRzwEtqbj6eHlwvVGhnKC5kaX8adr
	jDNJ/3vKCKEmvqwnqP1HxcZ8Lfel157MeAjtSybrNfouH4KRGN0IQk95dvYs4+2XjcFz
	d9fg==
X-Gm-Message-State: APjAAAWf0nXWpOIgGEDbjoSXEFGZ+TevTHUGRtJxrclRkH39cRcNjB8r
	K3fcRKCY+CKwdOhJGbJak4yYh803
X-Google-Smtp-Source: APXvYqzyTA/rTEF4f7rRd7CZf5+J5DL/QrhQ7z4ICbv/Hr1bvzUxQgwBk/AKLF+gwo0WFjrXx8yWjQ==
X-Received: by 2002:a65:6546:: with SMTP id a6mr6122226pgw.296.1553214419520; 
	Thu, 21 Mar 2019 17:26:59 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	i126sm7574849pfb.15.2019.03.21.17.26.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Mar 2019 17:26:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Mar 2019 17:26:57 -0700
Message-Id: <20190322002657.5503-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] meta-tpm: add runtime test for tpm2
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
X-List-Received-Date: Fri, 22 Mar 2019 00:27:01 -0000

This runs a basic tpm test using the simulator

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py | 41 +++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 meta-tpm/lib/oeqa/runtime/cases/tpm2.py

diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
new file mode 100644
index 0000000..d92b15c
--- /dev/null
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -0,0 +1,41 @@
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class Tpm2Test(OERuntimeTestCase):
+    def check_endlines(self, results,  expected_endlines): 
+        for line in results.splitlines():
+            for el in expected_endlines:
+                if line == el:
+                    expected_endlines.remove(el)
+                    break
+
+        if expected_endlines:
+            self.fail('Missing expected line endings:\n  %s' % '\n  '.join(expected_endlines))
+
+    @OEHasPackage(['tpm2.0-tss'])
+    @OEHasPackage(['tpm2-abrmd'])
+    @OEHasPackage(['tpm2.0-tools'])
+    @OEHasPackage(['ibmswtpm2'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_tpm2_sim(self):
+        cmds = [
+                'tpm_server &',
+                'tpm2-abrmd --allow-root --tcti=mssim &'
+               ]
+
+        for cmd in cmds:
+            status, output = self.target.run(cmd)
+            self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
+
+    @OETestDepends(['tpm2.Tpm2Test.test_tpm2_sim'])
+    def test_tpm2(self):
+         (status, output) = self.target.run('tpm2_pcrlist')
+         expected_endlines = []
+         expected_endlines.append('sha1 :')
+         expected_endlines.append('  0  : 0000000000000000000000000000000000000003')
+         expected_endlines.append('  1  : 0000000000000000000000000000000000000000')
+
+         self.check_endlines(output, expected_endlines)
+
-- 
2.17.1


