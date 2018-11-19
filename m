Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D4D4E00C93; Mon, 19 Nov 2018 13:19:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07651E00C82
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:12 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id h193so258908ita.5
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=1sLzR16uZLJczJ9lOJzGt4domUlXIrWyvJeC4ziZhgM=;
	b=MqHweHcQZezCysNq21fTsUg6uStSd4Tr/u+Lj2wYhUbCNmlXuPo4mMHXZHC75rJxr3
	43Mp/WdR2TBQ8NUTRrarfL0ZgJQG9fIu254/7RqDteFaqIvO9kdPRo6ej27g/CHpoXUI
	jarEsp2w6XddBN/c/ZnS9dBZ7oXsuVK5/gD1vkx8PERdn8mSwsuMn927ruDQWij/YKma
	JHjC03GM9tMigS+hemd07gcymfZMRh6JrPNd4DrPgQ3Dl72fYf0r082N3cI7tRfW1j0V
	upYnToXy95EoJVYHydtSvc8gkCiER7wFvE4UjHjRoyZYjNhKMHGwQbM8Ie2wQJhx0Jo+
	+aLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=1sLzR16uZLJczJ9lOJzGt4domUlXIrWyvJeC4ziZhgM=;
	b=HG2nkioCV6jwZhcnR+1ruFJYJ4zRCuDvTCMfZ0VcSazuB6YazcrnBUBNJ/vbwV7x0d
	CV5pK03wP6tcqEQpSolffuTdyuLNSlnlbj2WzKvK0cCqhij7R/b+PwuB/6gUKvAtPrFv
	1Z6HmOxiJx/empipL69hlw1TtvX9JgPAEThapXz6XHa0fecXvEzVd1EJqpbDcgNHh7dF
	iPuFBPTh6A44LF30SZocAg3++cZzwz7a0C0Nv/IQ1+abGp0mKr0Lfg9KD6UxebCdzXND
	Izzk4FTqJzYnsMK4u1A87lsHZYo2gAn+fBKARm1gabrJU7rIUekg1rbdNQk1yF1BFyso
	07UA==
X-Gm-Message-State: AGRZ1gIc2+ZytPkrCQqu4+jyA4V5UmmOKGH9SgN7RCrHnZethGpelE3V
	QthotBYqPVQVnXv3gonpfS5FYP7+Tt8=
X-Google-Smtp-Source: AJdET5fGkL4YG8xiATblBHyYi7RqGrWq9YkUbZVfnV7k/mVeCFcMMsWvZR6WlDZjSVfoMx6Ci+BJRg==
X-Received: by 2002:a02:9b26:: with SMTP id o35mr21765262jak.23.1542662351288; 
	Mon, 19 Nov 2018 13:19:11 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	d199sm1195542itd.31.2018.11.19.13.19.08
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 19 Nov 2018 13:19:09 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 15:17:52 -0600
Message-Id: <20181119211752.18963-6-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181119211752.18963-1-JPEWhacker@gmail.com>
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
	<20181119211752.18963-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2 5/5] oeqa/sdkmingw: Add test cases
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
X-List-Received-Date: Mon, 19 Nov 2018 21:19:13 -0000
Content-Transfer-Encoding: 8bit

Adds test cases to verify that gcc, binutils, gdb, and pkg-config are
functioning in the MinGW SDK

[YOCTO #13020]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 lib/oeqa/sdkmingw/cases/binutils.py     | 55 +++++++++++++++++++++++++
 lib/oeqa/sdkmingw/cases/gcc.py          | 47 +++++++++++++++++++++
 lib/oeqa/sdkmingw/cases/gdb.py          | 20 +++++++++
 lib/oeqa/sdkmingw/cases/pkgconfig.py    | 18 ++++++++
 lib/oeqa/sdkmingw/files/testsdkmakefile |  4 ++
 5 files changed, 144 insertions(+)
 create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py
 create mode 100644 lib/oeqa/sdkmingw/cases/pkgconfig.py
 create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile

diff --git a/lib/oeqa/sdkmingw/cases/binutils.py b/lib/oeqa/sdkmingw/cases/binutils.py
new file mode 100644
index 0000000..fdd5a47
--- /dev/null
+++ b/lib/oeqa/sdkmingw/cases/binutils.py
@@ -0,0 +1,55 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+import os
+import unittest
+
+from oeqa.sdkmingw.case import OESDKMinGWTestCase
+
+class BinutilsTest(OESDKMinGWTestCase):
+    td_vars = ['MACHINE']
+
+    def setUp(self):
+        super().setUp()
+
+        self.copyTestFile(os.path.join(self.tc.files_dir, 'test.c'))
+
+        machine = self.td.get("MACHINE")
+        if not (self.tc.hasHostPackage("packagegroup-cross-canadian-%s" % machine) or
+                self.tc.hasHostPackage("^gcc-", regex=True)):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain a cross-canadian toolchain")
+        if not (self.tc.hasHostPackage("packagegroup-cross-canadian-%s" % machine) or
+                self.tc.hasHostPackage('binutils-cross-canadian-%s' % machine)):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain a binutils")
+
+        self._run('%CC% -c -g test.c -o test.o')
+        self._run('%CC% -o test test.o -lm')
+
+    def test_strip(self):
+        self._run('%STRIP% -s test')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_ar(self):
+        self._run('%AR% -rcs lib.a test.o')
+        self._run('%CC% -o test lib.a -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_ranlib(self):
+        self._run('%AR% -rc lib.a test.o')
+        self._run('%RANLIB% lib.a')
+        self._run('%CC% -o test lib.a -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_objcopy(self):
+        self._run('%OBJCOPY% -g test.o test_no_debug.o')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test_no_debug.o'))
+        self._run('%CC% -o test test_no_debug.o -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_objdump(self):
+        self._run('%OBJDUMP% -S test.o')
+
+    def test_nm(self):
+        self._run('%NM% test.o')
+
+
diff --git a/lib/oeqa/sdkmingw/cases/gcc.py b/lib/oeqa/sdkmingw/cases/gcc.py
new file mode 100644
index 0000000..7294bf5
--- /dev/null
+++ b/lib/oeqa/sdkmingw/cases/gcc.py
@@ -0,0 +1,47 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+import os
+import unittest
+
+from oeqa.sdkmingw.case import OESDKMinGWTestCase
+
+class GccCompileTest(OESDKMinGWTestCase):
+    td_vars = ['MACHINE']
+
+    def setUp(self):
+        super().setUp()
+
+        self.copyTestFile(os.path.join(self.tc.files_dir, 'test.c'))
+        self.copyTestFile(os.path.join(self.tc.files_dir, 'test.cpp'))
+        self.copyTestFile(os.path.join(self.tc.sdk_files_dir, 'testsdkmakefile'))
+
+        machine = self.td.get("MACHINE")
+        if not (self.tc.hasHostPackage("packagegroup-cross-canadian-%s" % machine) or
+                self.tc.hasHostPackage("^gcc-", regex=True)):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain a cross-canadian toolchain")
+
+    def test_gcc_compile(self):
+        self._run('%CC% %CFLAGS% %LDFLAGS% test.c -o test -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_gcc_compile_and_link(self):
+        self._run('%CC% %CFLAGS% -c test.c -o test.o')
+        self._run('%CC% %LDFLAGS% -o test test.o -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test.o'))
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_gpp_compile(self):
+        self._run('%CXX% %CXXFLAGS% %LDFLAGS% test.c -o test -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_gpp2_compile(self):
+        self._run('%CXX% %CXXFLAGS% %LDFLAGS% test.cpp -o test -lm')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
+    def test_make(self):
+        if not self.tc.hasHostPackage('nativesdk-make'):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain make")
+        self._run('make -f testsdkmakefile')
+        self.assertIsTargetElf(os.path.join(self.test_dir, 'test'))
+
diff --git a/lib/oeqa/sdkmingw/cases/gdb.py b/lib/oeqa/sdkmingw/cases/gdb.py
new file mode 100644
index 0000000..f1bde7a
--- /dev/null
+++ b/lib/oeqa/sdkmingw/cases/gdb.py
@@ -0,0 +1,20 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+import unittest
+
+from oeqa.sdkmingw.case import OESDKMinGWTestCase
+
+class GdbTest(OESDKMinGWTestCase):
+    td_vars = ['MACHINE']
+
+    def setUp(self):
+        super().setUp()
+
+        machine = self.td.get("MACHINE")
+        if not (self.tc.hasHostPackage("packagegroup-cross-canadian-%s" % machine) or
+                self.tc.hasHostPackage("^gdb-", regex=True)):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain a cross-canadian toolchain")
+
+    def test_gdb(self):
+        self._run('%GDB% -ex quit')
diff --git a/lib/oeqa/sdkmingw/cases/pkgconfig.py b/lib/oeqa/sdkmingw/cases/pkgconfig.py
new file mode 100644
index 0000000..24185a0
--- /dev/null
+++ b/lib/oeqa/sdkmingw/cases/pkgconfig.py
@@ -0,0 +1,18 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+import os
+import unittest
+
+from oeqa.sdkmingw.case import OESDKMinGWTestCase
+
+class PkgConfigTest(OESDKMinGWTestCase):
+    def setUp(self):
+        super().setUp()
+
+        if not self.tc.hasHostPackage("nativesdk-pkgconfig"):
+            raise unittest.SkipTest(self.__class__.__name__ + " class: SDK doesn't contain nativesdk-pkgconfig")
+
+    def test_pkg_config(self):
+        self._run('pkg-config --list-all')
+
diff --git a/lib/oeqa/sdkmingw/files/testsdkmakefile b/lib/oeqa/sdkmingw/files/testsdkmakefile
new file mode 100644
index 0000000..b5cac86
--- /dev/null
+++ b/lib/oeqa/sdkmingw/files/testsdkmakefile
@@ -0,0 +1,4 @@
+test: test.o
+	$(CC) -o test test.o -lm
+test.o: test.c
+	$(CC) -c test.c
-- 
2.19.1


