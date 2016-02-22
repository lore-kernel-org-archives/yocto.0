Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0582DE00C4C; Mon, 22 Feb 2016 07:12:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD8E7E00838
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:12:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 22 Feb 2016 07:12:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,484,1449561600"; d="scan'208";a="908653508"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2016 07:12:47 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Feb 2016 09:15:01 -0600
Message-Id: <1456154103-13478-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
References: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCHv2][autobuilder] 2/4] autobuilder/buildsteps: Add Toaster buildsteps.
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
X-List-Received-Date: Mon, 22 Feb 2016 15:12:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adds Toaster buildsteps for setup toaster environment (installs
requirements), start/stop a toaster instance and run tests.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../autobuilder/buildsteps/ToasterRunTests.py      | 31 ++++++++++++++++++++
 .../autobuilder/buildsteps/ToasterSetupVenv.py     | 31 ++++++++++++++++++++
 .../autobuilder/buildsteps/ToasterStart.py         | 32 +++++++++++++++++++++
 .../autobuilder/buildsteps/ToasterStop.py          | 33 ++++++++++++++++++++++
 4 files changed, 127 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterSetupVenv.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStart.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStop.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
new file mode 100644
index 0000000..141768c
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
@@ -0,0 +1,31 @@
+'''
+Created on Feb 15, 2016
+
+__author__ = "Anibal (alimon) Limon"
+__copyright__ = "Copyright 2016, Intel Corp."
+__credits__ = ["Anibal Limon"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Anibal Limon"
+__email__ = "anibal.limon@linux.intel.com"
+'''
+
+from lib.buildsteps import ShellCommandCleanEnv
+import os
+
+class ToasterRunTests(ShellCommandCleanEnv):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "ToasterRunTests"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        self.description = "Running toaster tests..."
+
+        oe_cmd = "source ./oe-init-build-env;"
+        venv_cmd = "source venv/bin/activate;"
+        cmd = "DISPLAY=:1 toaster-test --run-all-tests --verbose"
+
+        self.command = oe_cmd + venv_cmd + cmd
+
+        ShellCommandCleanEnv.__init__(self, factory, argdict, **kwargs)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterSetupVenv.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterSetupVenv.py
new file mode 100644
index 0000000..54cf1e7
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterSetupVenv.py
@@ -0,0 +1,31 @@
+'''
+Created on Feb 15, 2016
+
+__author__ = "Anibal (alimon) Limon"
+__copyright__ = "Copyright 2016, Intel Corp."
+__credits__ = ["Anibal Limon"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Anibal Limon"
+__email__ = "anibal.limon@linux.intel.com"
+'''
+
+from lib.buildsteps import ShellCommandCleanEnv
+
+class ToasterSetupVenv(ShellCommandCleanEnv):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "ToasterSetupVenv"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        self.description = "Creating virtualenv..."
+
+        oe_cmd = "source ./oe-init-build-env;"
+        venv_cmd = "virtualenv venv; source venv/bin/activate;"
+        install_cmd = "pip install -r ../bitbake/toaster-requirements.txt;"
+        install_tests_cmd = "pip install -r ../bitbake/toaster-tests-requirements.txt;"
+
+        self.command = oe_cmd + venv_cmd + install_cmd + install_tests_cmd 
+
+        ShellCommandCleanEnv.__init__(self, factory, argdict, **kwargs)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStart.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStart.py
new file mode 100644
index 0000000..14cf9db3
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStart.py
@@ -0,0 +1,32 @@
+'''
+Created on Feb 15, 2016
+
+__author__ = "Anibal (alimon) Limon"
+__copyright__ = "Copyright 2016, Intel Corp."
+__credits__ = ["Anibal Limon"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Anibal Limon"
+__email__ = "anibal.limon@linux.intel.com"
+'''
+
+from lib.buildsteps import ShellCommandCleanEnv
+import os
+
+class ToasterStart(ShellCommandCleanEnv):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "ToasterStart"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        self.description = "Starting toaster..."
+
+        oe_cmd = "source ./oe-init-build-env;"
+        venv_cmd = "source venv/bin/activate;"
+        start_cmd = "../bitbake/lib/toaster/tests/helpers.py -a start" \
+            " -d $(readlink -e ../)"
+
+        self.command = oe_cmd + venv_cmd + start_cmd
+
+        ShellCommandCleanEnv.__init__(self, factory, argdict, **kwargs)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStop.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStop.py
new file mode 100644
index 0000000..6fda0e8
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStop.py
@@ -0,0 +1,33 @@
+'''
+Created on Feb 15, 2016
+
+__author__ = "Anibal (alimon) Limon"
+__copyright__ = "Copyright 2016, Intel Corp."
+__credits__ = ["Anibal Limon"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Anibal Limon"
+__email__ = "anibal.limon@linux.intel.com"
+'''
+
+from lib.buildsteps import ShellCommandCleanEnv
+import os
+
+class ToasterStop(ShellCommandCleanEnv):
+    alwaysRun = True
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "ToasterStop"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        self.description = "Stopping toaster..."
+
+        oe_cmd = "source ./oe-init-build-env;"
+        venv_cmd = "source venv/bin/activate;"
+        start_cmd = "../bitbake/lib/toaster/tests/helpers.py -a stop" \
+            " -d $(readlink -e ../)"
+
+        self.command = oe_cmd + venv_cmd + start_cmd
+
+        ShellCommandCleanEnv.__init__(self, factory, argdict, **kwargs)
-- 
2.1.4


