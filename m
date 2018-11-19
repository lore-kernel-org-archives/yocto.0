Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77C65E00C41; Mon, 19 Nov 2018 13:19:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F14B2E00C59
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:18:56 -0800 (PST)
Received: by mail-io1-f67.google.com with SMTP id s22so11461749ioc.8
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=OtjPnoTKkNQNeNx3Jexl7hABWT+/TOVNYROI5gHN248=;
	b=WxCus4lCW4DodAYUo6Ezp23s5XL5saUZTgJXuS87czDSg0DU90TYrYYq0/MZ5hGCln
	lWencnHc+A3sJLVEhVosnWT6vuSa0oRLYVRTI8l060vhn9QVuRPHEJldQfKqRY/RdtS3
	dcz1I/FIzk8HcenoAaO4MB7n526rq09zWH/M5eCNTHdjoN4btzISe9jLgvo+tWmcw3aj
	9ajiwiKXIb8unD+eEQgSk6T0cYbppAa8AF/tBIch8Cb+XBsKYvdyY1sSoF3Lqq3tGQEy
	aH13/1NZYQwN9yL1l1BSj9r8dEsS2apiKPSd57u1Uifl5waMppdufe/9hReWf3Lw1Jo7
	I/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=OtjPnoTKkNQNeNx3Jexl7hABWT+/TOVNYROI5gHN248=;
	b=oJDD1EAlj3qoMLP3CdlyMpHbCIzQDq6qvYr6fXVTzp/R077ym0rYxe1FoEDaFItcMf
	zBmPG13PQJ2CnjmWuc8WZm17uv4bS3YoExD2P6AukjHtP5f4ulQ94icBakJynqvxQWyY
	JfZaozGqAFltkn/1OpO5w+CO8XPNmh7cW6m/q3py6Cg+6CamDOJKfAafQl5SC4lmqaez
	XCcBOVkOf48/AHHY5xci2RJHyILYD7pdOVMhP4G5gixSe9wSxUPJMAJ5lTYN7iA0M02D
	sJvZojtQ0O+s1dyqPr+YhBpsNbNQz80CiKMaUeotGCTypI8qKxP/opU2sQlIrOnJbqDW
	hMtA==
X-Gm-Message-State: AGRZ1gKNLUHBQi1s0HS0AM7FVJcn/f9onu/vvuHIh2psO3CRT99lBTVz
	qN5Lx/UEC0B88J5mVgnotZwyKNmop0g=
X-Google-Smtp-Source: AJdET5fq2WH6SJe7zsSqvwf5xOU3AoWRhMl5iNkBDYELTmIWm6kbTsq7fugGYmg2UQSdo/dZWUXycg==
X-Received: by 2002:a6b:c8c9:: with SMTP id
	y192mr17874210iof.183.1542662335910; 
	Mon, 19 Nov 2018 13:18:55 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	d199sm1195542itd.31.2018.11.19.13.18.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 19 Nov 2018 13:18:54 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 15:17:48 -0600
Message-Id: <20181119211752.18963-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181119211752.18963-1-JPEWhacker@gmail.com>
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
	<20181119211752.18963-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2 1/5] Add SDK test case framework
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
X-List-Received-Date: Mon, 19 Nov 2018 21:19:00 -0000
Content-Transfer-Encoding: 8bit

Adds the framework for testing SDKs that ties into the oeqa test
framework. This allows commands like:

 $ bitbake -c testsdk ...

to be run for MinGW SDKs.

The test framework currently executes all tests under Wine in lieu of
having access to actual Windows machines.

[YOCTO #13020]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine-sdk/i686-mingw32.conf          |  1 +
 conf/machine-sdk/include/mingw32-common.inc |  7 ++
 conf/machine-sdk/x86_64-mingw32.conf        |  1 +
 lib/oeqa/sdkmingw/__init__.py               |  0
 lib/oeqa/sdkmingw/case.py                   | 87 +++++++++++++++++++++
 lib/oeqa/sdkmingw/cases/__init__.py         |  0
 lib/oeqa/sdkmingw/context.py                | 69 ++++++++++++++++
 lib/oeqa/sdkmingw/testsdk.py                | 42 ++++++++++
 8 files changed, 207 insertions(+)
 create mode 100644 lib/oeqa/sdkmingw/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/case.py
 create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/context.py
 create mode 100644 lib/oeqa/sdkmingw/testsdk.py

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index 5090168..fef48b5 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -1,3 +1,4 @@
 SDK_ARCH = "i686"
+TESTSDK_WINEARCH = "win32"
 
 require conf/machine-sdk/include/mingw32-common.inc
diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 733d092..71e8d45 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -26,6 +26,9 @@ SDKPKGSUFFIX = "nativesdk-mingw32"
 
 MACHINEOVERRIDES .= ":sdkmingw32"
 
+TESTSDK_CLASS_NAME = "oeqa.sdkmingw.testsdk.TestSDKMinGW"
+TESTSDKEXT_CLASS_NAME = ""
+
 WINDRES_mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 RC_mingw32 = "${WINDRES}"
 
@@ -39,3 +42,7 @@ DISABLE_STATIC_mingw32 = ""
 
 # disable security flags
 GCCPIE_mingw32 = ""
+
+# wine and wineserver are required to test MinGW SDKs
+HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk-mingw', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk-mingw.bbclass"])) else ''}"
+
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index fc53822..188debc 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -1,3 +1,4 @@
 SDK_ARCH = "x86_64"
+TESTSDK_WINEARCH = "win64"
 
 require conf/machine-sdk/include/mingw32-common.inc
diff --git a/lib/oeqa/sdkmingw/__init__.py b/lib/oeqa/sdkmingw/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/lib/oeqa/sdkmingw/case.py b/lib/oeqa/sdkmingw/case.py
new file mode 100644
index 0000000..169c143
--- /dev/null
+++ b/lib/oeqa/sdkmingw/case.py
@@ -0,0 +1,87 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+import subprocess
+import os
+import tempfile
+import shutil
+import bb
+
+from oeqa.core.utils.path import remove_safe
+from oeqa.sdk.case import OESDKTestCase
+
+from oeqa.utils.subprocesstweak import errors_have_output
+errors_have_output()
+
+class OESDKMinGWTestCase(OESDKTestCase):
+    def setUp(self):
+        super().setUp()
+
+        self.test_dir = tempfile.mkdtemp(prefix=self.__class__.__name__ + '-', dir=self.tc.sdk_dir)
+        self.addCleanup(lambda: bb.utils.prunedir(self.test_dir))
+
+        self.wine_test_dir = self.tc.wine_path(self.test_dir)
+
+    def copyTestFile(self, src, dest=None):
+        dest_path = dest or os.path.join(self.test_dir, os.path.basename(src))
+        shutil.copyfile(src, dest_path)
+        self.addCleanup(lambda: remove_safe(dest_path))
+
+    def fetch(self, url, destdir=None, dl_dir=None, archive=None):
+        if not destdir:
+            destdir = self.test_dir
+
+        if not dl_dir:
+            dl_dir = self.td.get('DL_DIR', None)
+
+        if not archive:
+            from urllib.parse import urlparse
+            archive = os.path.basename(urlparse(url).path)
+
+        if dl_dir:
+            tarball = os.path.join(dl_dir, archive)
+            if os.path.exists(tarball):
+                return tarball
+
+        tarball = os.path.join(destdir, archive)
+        subprocess.check_output(["wget", "-O", tarball, url])
+        return tarball
+
+
+    def _run(self, cmd):
+        import shlex
+
+        def strip_quotes(s):
+            if s[0] == '"' and s[-1] == '"':
+                return s[1:-1]
+            return s
+
+        command = ['wine', 'cmd', '/c', self.tc.wine_sdk_env, '>', 'NUL', '&&', 'cd', self.wine_test_dir, '&&']
+
+        # Perform some massaging so that commands can be written naturally in
+        # test cases. shlex.split() in Non-posix mode gets us most of the way
+        # there, but it leaves the quotes around a quoted argument, so we
+        # remove them manually.
+        command.extend(strip_quotes(s) for s in shlex.split(cmd, posix=False))
+
+        return subprocess.check_output(command, env=self.tc.get_wine_env(),
+                stderr=subprocess.STDOUT, universal_newlines=True)
+
+    def assertIsTargetElf(self, path):
+        import oe.qa
+        import oe.elf
+
+        elf = oe.qa.ELFFile(path)
+        elf.open()
+
+        if not getattr(self, 'target_os', None):
+            output = self._run("echo %OECORE_TARGET_OS%:%OECORE_TARGET_ARCH%")
+            self.target_os, self.target_arch = output.strip().split(":")
+
+        machine_data = oe.elf.machine_dict(None)[self.target_os][self.target_arch]
+        (machine, osabi, abiversion, endian, bits) = machine_data
+
+        self.assertEqual(machine, elf.machine())
+        self.assertEqual(bits, elf.abiSize())
+        self.assertEqual(endian, elf.isLittleEndian())
+
diff --git a/lib/oeqa/sdkmingw/cases/__init__.py b/lib/oeqa/sdkmingw/cases/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/lib/oeqa/sdkmingw/context.py b/lib/oeqa/sdkmingw/context.py
new file mode 100644
index 0000000..edabcbd
--- /dev/null
+++ b/lib/oeqa/sdkmingw/context.py
@@ -0,0 +1,69 @@
+# Copyright (C) 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+import os
+import subprocess
+
+from oeqa.sdk.context import OESDKTestContext, OESDKTestContextExecutor
+
+from oeqa.utils.subprocesstweak import errors_have_output
+errors_have_output()
+
+class OESDKMinGWTestContext(OESDKTestContext):
+    sdk_files_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "files")
+
+    def __init__(self, td=None, logger=None, sdk_dir=None, sdk_env=None, wine_prefix=None,
+            wine_arch=None, target_pkg_manifest=None, host_pkg_manifest=None):
+        super(OESDKMinGWTestContext, self).__init__(td, logger, sdk_dir, sdk_env, target_pkg_manifest, host_pkg_manifest)
+        self.wine_prefix = wine_prefix
+        self.wine_arch = wine_arch
+        self.wine_sdk_dir = self.wine_path(sdk_dir)
+        self.wine_sdk_env = self.wine_path(sdk_env)
+
+    def get_wine_env(self):
+        env = os.environ.copy()
+
+        # Turn off all Wine debug logging so it doesn't interfere with command output
+        env['WINEDEBUG'] = '-all'
+
+        env['WINEPREFIX'] = self.wine_prefix
+        env['WINEARCH'] = self.wine_arch
+
+        # Convenience variables to make test cases easier to write
+        env['SDK_DIR'] = getattr(self, 'wine_sdk_dir', '')
+
+        return env
+
+    def wine_path(self, p):
+        """
+        Converts a host POSIX path to a path in Wine
+        """
+        o = subprocess.check_output(['wine', 'winepath', '-w', p], env=self.get_wine_env())
+        return o.decode('utf-8').rstrip()
+
+
+class OESDKMinGWTestContextExecutor(OESDKTestContextExecutor):
+    _context_class = OESDKMinGWTestContext
+
+    name = 'sdk-mingw'
+    help = 'MinGW sdk test component'
+    description = 'executes MinGW sdk tests'
+
+    default_cases = [os.path.join(os.path.abspath(os.path.dirname(__file__)),
+            'cases')]
+
+    def register_commands(self, logger, subparsers):
+        super(OESDKMinGWTestContextExecutor, self).register_commands(logger, subparsers)
+
+        wine_group  = self.parser.add_argument_group('wine options')
+        wine_group.add_argument('--wine-prefix', action='store',
+            help='Wine prefix (bottle). Default is $SDK_DIR/.wine')
+        wine_group.add_argument('--wine-arch', action='store', choices=('win32', 'win64'),
+            default='win64', help='Wine architecture. Defaults to %(default)s')
+
+    def _process_args(self, logger, args):
+        super(OESDKMinGWTestContextExecutor, self)._process_args(logger, args)
+        self.tc_kwargs['init']['wine_prefix'] = args.wine_prefix or os.path.join(args.sdk_dir, '.wine')
+        self.tc_kwargs['init']['wine_arch'] = args.wine_arch
+
+_executor_class = OESDKMinGWTestContextExecutor
+
diff --git a/lib/oeqa/sdkmingw/testsdk.py b/lib/oeqa/sdkmingw/testsdk.py
new file mode 100644
index 0000000..85fe3c6
--- /dev/null
+++ b/lib/oeqa/sdkmingw/testsdk.py
@@ -0,0 +1,42 @@
+# Copyright 2018 by Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT)
+
+from oeqa.sdk.testsdk import TestSDK
+from oeqa.sdkmingw.context import OESDKMinGWTestContext, OESDKMinGWTestContextExecutor
+
+class TestSDKMinGW(TestSDK):
+    context_executor_class = OESDKMinGWTestContextExecutor
+    context_class = OESDKMinGWTestContext
+
+    def get_tcname(self, d):
+        """
+        Get the name of the SDK file
+        """
+        return d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.xz")
+
+    def extract_sdk(self, tcname, sdk_dir, d):
+        """
+        Extract the SDK to the specified location
+        """
+        import subprocess
+
+        try:
+            # TODO: It would be nice to try and extract the SDK in Wine to make
+            # sure it is well formed
+            subprocess.check_output(['tar', '-xf', tcname, '-C', sdk_dir])
+        except subprocess.CalledProcessError as e:
+            bb.fatal("Couldn't install the SDK:\n%s" % e.output.decode("utf-8"))
+
+    def setup_context(self, d):
+        """
+        Return a dictionary of additional arguments that should be passed to
+        the context_class on construction
+        """
+        wine_prefix = d.getVar('TESTSDK_WINEPREFIX') or d.expand('${WORKDIR}/testimage-wine/')
+        bb.utils.remove(wine_prefix, True)
+
+        return {
+            'wine_prefix': wine_prefix,
+            'wine_arch': d.getVar('TESTSDK_WINEARCH') or 'win64'
+            }
+
-- 
2.19.1


