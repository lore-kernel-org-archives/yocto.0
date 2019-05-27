Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BF45E00D4F; Sun, 26 May 2019 21:56:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E2F8E00D47
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:53 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id z26so8847038pfg.6
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ZlbQExUUn/lnNpdwwBnOEARSABqRfYTp3VQB50kPPog=;
	b=A4CaULIOrQZFHYBjDpJdeM7trRkaopXJm3x2zhdG7qfsuu9XkVN6ALVD2oVN1Dd8/9
	GGHX9/p/0k99NYmIMSIMklhTtKoP8a0oWrR/qP5axYQFl4+IwpZ5ydo/H1hK/E4kp7Ed
	rgz5JbSl/FSEMMYRNrccZPyo1O0kO2cAd2FLjZRZTKZARM5O7Da64Lqkg2fCWKEn4s71
	OHjdWwWmz0recaeghDe+RYtGlp2BXWh2baMdoojRX69jC4JyYAQIIyY6ublDXcjg1/rJ
	6vidPVmbcQO2sDNG93dH65vqgE1zOjvVNGdtpVw57Mdv7DCCgInTv0mYhA1J+RvwtFwN
	Pmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ZlbQExUUn/lnNpdwwBnOEARSABqRfYTp3VQB50kPPog=;
	b=COqyydV9vXSe+mzh8386P+OXx4Fy5MzpNGl2nq1/vucYkgjrRDjwg13c4C4CGjErW3
	hufSjigYAt2jxAZnuOvGKJ0IHDKetSAn1VttA13FmHXXyBC9dOE9+r/vILeRrMePJ/xp
	/Q3wvUNT43qtpWnxxu4dnm1javxscruijbJnXJzhVsw6+syzS7Lg+VsXeCm0amlwuOoH
	XI3NQDi5ntslruKEWFg+mqvBJ4beLUO66aj1MTILVcj1rje2IUGjzZvb/6QVFeuMbUq5
	7Mn+FV3gtzcj0/6b+g0G8aJG2e1C6raSU1cYXw/+1xDoD1GQ8EN+0em/lY9bE/m7lkHJ
	ic1A==
X-Gm-Message-State: APjAAAWni1kjIzCgBaCdQkelxKD0n/39ICr7azlWw6dG6dZpt1ARQDCz
	Zl5IFq5QzBYxmkMnuff5xGXn6y9Z
X-Google-Smtp-Source: APXvYqyX94fmwmlXLHSsKhP6ubEHVwLF6jKv6A0fbHdk7z651mYubAZOhdmwM2TiCryuMTgpBm6V/A==
X-Received: by 2002:a63:ed09:: with SMTP id d9mr7193075pgi.419.1558933012835; 
	Sun, 26 May 2019 21:56:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:40 -0700
Message-Id: <20190527045641.18884-14-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 13/14] runtime qa: moderize ima test
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
X-List-Received-Date: Mon, 27 May 2019 04:56:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/lib/oeqa/runtime/__init__.py  |   0
 meta-integrity/lib/oeqa/runtime/cases/ima.py | 129 +++++++++++++++++++
 meta-integrity/lib/oeqa/runtime/ima.py       |  82 ------------
 3 files changed, 129 insertions(+), 82 deletions(-)
 delete mode 100644 meta-integrity/lib/oeqa/runtime/__init__.py
 create mode 100644 meta-integrity/lib/oeqa/runtime/cases/ima.py
 delete mode 100644 meta-integrity/lib/oeqa/runtime/ima.py

diff --git a/meta-integrity/lib/oeqa/runtime/__init__.py b/meta-integrity/lib/oeqa/runtime/__init__.py
deleted file mode 100644
index e69de29..0000000
diff --git a/meta-integrity/lib/oeqa/runtime/cases/ima.py b/meta-integrity/lib/oeqa/runtime/cases/ima.py
new file mode 100644
index 0000000..0c8617a
--- /dev/null
+++ b/meta-integrity/lib/oeqa/runtime/cases/ima.py
@@ -0,0 +1,129 @@
+#!/usr/bin/env python
+#
+# Authors:  Cristina Moraru <cristina.moraru@intel.com>
+#           Alexandru Cornea <alexandru.cornea@intel.com>
+
+import string
+from time import sleep
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+from oeqa.core.decorator.data import skipIfNotFeature
+from oeqa.core.decorator.data import skipIfDataVar, skipIfNotDataVar
+import bb
+blacklist = ["/usr/bin/uz", "/bin/su.shadow"]
+
+class IMACheck(OERuntimeTestCase):
+
+    @classmethod
+    def setUpClass(cls):
+        locations = ["/bin", "/usr/bin"]
+        cls.binaries = []
+        for l in locations:
+            status, output = cls.tc.target.run("find %s -type f" % l)
+            cls.binaries.extend(output.split("\n"))
+
+        cls.total = len(cls.binaries)
+
+
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_ima_enabled(self):
+        ''' Test if IMA policy is loaded before systemd starts'''
+
+        ima_search = "ima: "
+        systemd_search = "systemd .* running"
+        status, output = self.target.run("dmesg | grep -n '%s'" % ima_search)
+        self.assertEqual( status, 0, "Did not find '%s' in dmesg" % ima_search)
+
+
+    @skipIfNotFeature('systemd',
+                      'Test requires systemd to be in DISTRO_FEATURES')
+    @skipIfNotDataVar('VIRTUAL-RUNTIME_init_manager', 'systemd',
+                      'systemd is not the init manager for this image')
+    @OETestDepends(['ima.IMACheck.test_ima_enabled'])
+    def test_ima_before_systemd(self):
+        ''' Test if IMA policy is loaded before systemd starts'''
+        ima_search = "ima: "
+        systemd_search = "systemd .* running"
+        status, output = self.target.run("dmesg | grep -n '%s'" % ima_search)
+        self.assertEqual( status, 0, "Did not find '%s' in dmesg" % ima_search)
+        ima_id = int(output.split(":")[0])
+        status, output = self.target.run("dmesg | grep -n '%s'" % systemd_search)
+        self.assertEqual(status, 0, "Did not find '%s' in dmesg" % systemd_search)
+        init_id = int(output.split(":")[0])
+        if ima_id > init_id:
+            self.fail("IMA does not start before systemd")
+
+
+    @OETestDepends(['ima.IMACheck.test_ima_enabled'])
+    def test_ima_hash(self):
+        ''' Test if IMA stores correct file hash '''
+        filename = "/etc/filetest"
+        ima_measure_file = "/sys/kernel/security/ima/ascii_runtime_measurements"
+        status, output = self.target.run("echo test > %s" % filename)
+        self.assertEqual(status, 0, "Cannot create file %s on target" % filename)
+
+        # wait for the IMA system to update the entry
+        maximum_tries = 30
+        tries = 0
+        status, output = self.target.run("sha1sum %s" %filename)
+        sleep(2)
+        current_hash = output.split()[0]
+        ima_hash = ""
+
+        while tries < maximum_tries:
+            status, output = self.target.run("cat %s | grep %s" \
+                % (ima_measure_file, filename))
+            # get last entry, 4th field
+            if status == 0:
+                tokens = output.split("\n")[-1].split()[3]
+                ima_hash = tokens.split(":")[1]
+                if ima_hash == current_hash:
+                    break
+
+            tries += 1
+            sleep(1)
+
+        # clean target
+        self.target.run("rm %s" % filename)
+        if ima_hash != current_hash:
+            self.fail("Hash stored by IMA does not match actual hash")
+
+
+    @OETestDepends(['ima.IMACheck.test_ima_enabled'])
+    def test_ima_signature(self):
+        ''' Test if IMA stores correct signature for system binaries'''
+        passed = 0
+        failed = 0
+        for b in self.binaries:
+            if b in blacklist:
+                continue
+            status, output = self.target.run("evmctl ima_verify %s" % b)
+            if status != 0:
+                failed += 1
+            else:
+                passed += 1
+
+        if failed == self.total:
+             self.fail("Signature verifications failed (%s)" % self.total)
+
+        #bb.warn("pass: %s, fail: %s, Total: %s" % (passed, failed, total))
+
+    @OETestDepends(['ima.IMACheck.test_ima_enabled'])
+    def test_ima_overwrite(self):
+        ''' Test if IMA prevents overwriting signed files '''
+        passed = 0
+        failed = 0
+        for b in self.binaries:
+            if b in blacklist:
+                continue
+            self.target.run("echo 'foo' >> %s" % b )
+            status, output = self.target.run("evmctl ima_verify %s" % b)
+
+            if status != 0:
+                failed += 1
+            else:
+                passed += 1
+
+        if failed == self.total:
+             self.fail("Overwritting verifications failed (%s)" % self.total)
diff --git a/meta-integrity/lib/oeqa/runtime/ima.py b/meta-integrity/lib/oeqa/runtime/ima.py
deleted file mode 100644
index 2e5b258..0000000
--- a/meta-integrity/lib/oeqa/runtime/ima.py
+++ /dev/null
@@ -1,82 +0,0 @@
-#!/usr/bin/env python
-#
-# Authors:  Cristina Moraru <cristina.moraru@intel.com>
-#           Alexandru Cornea <alexandru.cornea@intel.com>
-
-import unittest
-import string
-from time import sleep
-from oeqa.oetest import oeRuntimeTest, skipModule
-from oeqa.utils.decorators import *
-
-@tag(TestType = 'FVT', FeatureID = 'IOTOS-617,IOTOS-619')
-class IMACheck(oeRuntimeTest):
-    def test_ima_before_systemd(self):
-        ''' Test if IMA policy is loaded before systemd starts'''
-
-        ima_search = "IMA: policy update completed"
-        systemd_search = "systemd .* running"
-        status, output = self.target.run("dmesg | grep -n '%s'" %ima_search)
-        self.assertEqual( status, 0, "Did not find '%s' in dmesg" %ima_search)
-        ima_id = int(output.split(":")[0])
-        status, output = self.target.run("dmesg | grep -n '%s'" %systemd_search)
-        self.assertEqual(status, 0, "Did not find '%s' in dmesg" %systemd_search)
-        init_id = int(output.split(":")[0])
-        if ima_id > init_id:
-            self.fail("IMA does not start before systemd")
-
-    def test_ima_hash(self):
-        ''' Test if IMA stores correct file hash '''
-        filename = "/etc/filetest"
-        ima_measure_file = "/sys/kernel/security/ima/ascii_runtime_measurements"
-        status, output = self.target.run("echo test > %s" %filename)
-        self.assertEqual(status, 0, "Cannot create file %s on target" %filename)
-
-        # wait for the IMA system to update the entry
-        maximum_tries = 30
-        tries = 0
-        status, output = self.target.run("sha1sum %s" %filename)
-        current_hash = output.split()[0]
-        ima_hash = ""
-
-        while tries < maximum_tries:
-            status, output = self.target.run("cat %s | grep %s" \
-                                            %(ima_measure_file, filename))
-            # get last entry, 4th field
-            if status == 0:
-                tokens = output.split("\n")[-1].split()[3]
-                ima_hash = tokens.split(":")[1]
-                if ima_hash == current_hash:
-                    break
-
-            tries += 1
-            sleep(1)
-
-        # clean target
-        self.target.run("rm %s" %filename)
-        if ima_hash != current_hash:
-            self.fail("Hash stored by IMA does not match actual hash")
-
-    def test_ima_signature(self):
-        ''' Test if IMA stores correct signature for system binaries'''
-        locations = ["/bin", "/usr/bin"]
-        binaries = []
-        for l in locations:
-            status, output = self.target.run("find %s -type f" %l)
-            binaries.extend(output.split("\n"))
-
-        for b in binaries:
-            status, output = self.target.run("evmctl ima_verify %s" %b)
-            if "Verification is OK" not in output:
-                self.fail("IMA signature verification fails for file %s" %b)
-
-    def test_ima_overwrite(self):
-        ''' Test if IMA prevents overwriting signed files '''
-        status, output = self.target.run("find /bin -type f")
-        self.assertEqual(status, 0 , "ssh to device fail: %s" %output)  
-        signed_file = output.strip().split()[0]
-        print("\n signed_file is %s" % signed_file)
-        status, output = self.target.run(" echo 'foo' >> %s" %signed_file)
-        self.assertNotEqual(status, 0 , "Signed file could be written")
-        self.assertIn("Permission denied", output,
-                      "Did not find expected error message. Got: %s" %output)
-- 
2.17.1


