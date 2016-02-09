Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC4CFE00D98; Tue,  9 Feb 2016 14:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 855CEE00C8C
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:17 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243974"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:16 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:14 -0600
Message-Id: <1455057798-3213-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>,
	benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 05/16] tests/toaster/helpers.py: When execute bash remove interactive mode.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <limon.anibal@gmail.com>

Bash interactive mode isn't useful so remove it.

Signed-off-by: Aníbal Limón <limon.anibal@gmail.com>
---
 tests/toaster/helpers.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/toaster/helpers.py b/tests/toaster/helpers.py
index 49f34da..7b82e88 100644
--- a/tests/toaster/helpers.py
+++ b/tests/toaster/helpers.py
@@ -8,8 +8,8 @@ VENV_NAME = 'venv'
 SHELL_CMD = os.environ['SHELL'] if 'SHELL' in os.environ else "/bin/bash"
 
 def _execute_command(directory, cmd):
-    subprocess.check_call([SHELL_CMD, "-i", "-c", "cd %s; %s" % \
-        (directory, cmd)], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
+    subprocess.check_call([SHELL_CMD, "-c", "cd %s; %s" % \
+        (directory, cmd)], stderr=subprocess.STDOUT)
 
 def _execute_command_venv(directory, venv, cmd):
     _execute_command(directory, "source %s/%s/bin/activate; %s" % \
@@ -22,7 +22,7 @@ def toaster_clone(directory, repo, ref='master', rm=False):
         else:
             raise IOError
 
-    subprocess.check_output([SHELL_CMD, "-i", "-c", "git clone %s %s" % \
+    subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
         (repo, directory)], stderr=subprocess.STDOUT)
     _execute_command(directory, "git checkout %s -b %s" % \
         (ref, TOASTER_TEST_BRANCH))
-- 
2.1.4


