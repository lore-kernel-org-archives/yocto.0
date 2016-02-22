Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16CA2E00C31; Mon, 22 Feb 2016 07:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3393E007B5
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:12:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 22 Feb 2016 07:12:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,484,1449561600"; d="scan'208";a="908653499"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2016 07:12:47 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Feb 2016 09:15:00 -0600
Message-Id: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[PATCHv2][autobuilder] 1/4] autobuilder/lib: Add buildsteps module for provide helpers
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

Add ShellCommandCleanEnv helper for run command in a clean
enviroment a shell for run the command can be specified also
the variables to preserve in the new enviroment.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/lib/buildsteps.py    | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/lib/buildsteps.py

diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
new file mode 100644
index 0000000..3693a7a
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -0,0 +1,42 @@
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
+import os
+from buildbot.steps.shell import ShellCommand
+
+DEFAULT_SHELL = 'bash'
+
+class ShellCommandCleanEnv(ShellCommand):
+    def __init__(self, factory, argdict=None, **kwargs):
+        shell = DEFAULT_SHELL
+        if 'SHELL' in kwargs:
+            shell = kwargs['SHELL']
+            del kwargs['SHELL']
+
+        if 'PENV' in kwargs:
+            preserve_env = kwargs['PENV']
+            del kwargs['PENV']
+        else:
+            preserve_env = ['HOME', 'PWD', 'PATH',
+                            'http_proxy', 'https_proxy',
+                            'ftp_proxy', 'no_proxy', 'GIT_PROXY_COMMAND']
+
+        env_command = self._get_env_cleaned_command(shell, preserve_env)
+        self.command = "%s \'%s\'" % (env_command, self.command)
+        ShellCommand.__init__(self, **kwargs)
+
+    def _get_env_cleaned_command(self, shell, preserve_env):
+        pe_cmd = ''
+        for pe in preserve_env:
+            pe_cmd += "%s=\"$%s\" " % (pe, pe)
+
+        return "env -i %s %s -c " % (pe_cmd, shell)
-- 
2.1.4


