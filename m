Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D05E00D42; Fri, 19 Feb 2016 08:12:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F93FE00D00
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 08:12:37 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 19 Feb 2016 08:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,471,1449561600"; d="scan'208";a="655723880"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2016 08:12:36 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Feb 2016 10:14:46 -0600
Message-Id: <1455898489-10556-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCH][autobuilder] 5/8] buildsteps/ToasterRunTests.py: Add step for run toaster tests. buildset-config.toaster/toaster-tests.conf: Add ToasterRunTests step.
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
X-List-Received-Date: Fri, 19 Feb 2016 16:12:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.toaster/toaster-tests.conf         |  1 +
 .../autobuilder/buildsteps/ToasterRunTests.py      | 31 ++++++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py

diff --git a/buildset-config.toaster/toaster-tests.conf b/buildset-config.toaster/toaster-tests.conf
index 22ac176..c471c92 100644
--- a/buildset-config.toaster/toaster-tests.conf
+++ b/buildset-config.toaster/toaster-tests.conf
@@ -15,5 +15,6 @@ steps: [{'SetDest':{}},
         {'GetBitbakeVersion': {}},
 	{'ToasterSetupVenv': {}},
 	{'ToasterStart': {}},
+	{'ToasterRunTests': {}},
 	{'ToasterStop': {}},
        ]
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
new file mode 100644
index 0000000..392b600
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
+        cmd = "DISPLAY=:1 toaster-test --run-all-tests;"
+
+        self.command = oe_cmd + venv_cmd + cmd
+
+        ShellCommandCleanEnv.__init__(self, factory, argdict, **kwargs)
-- 
2.1.4


