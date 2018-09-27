Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6192BE00A54; Wed, 26 Sep 2018 20:39:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB13E00A0C
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 20:39:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Sep 2018 20:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,308,1534834800"; d="scan'208";a="76542968"
Received: from pkhetan-mobl2.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.138.15])
	by orsmga008.jf.intel.com with ESMTP; 26 Sep 2018 20:38:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2018 15:38:33 +1200
Message-Id: <20180927033833.9041-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH] update: fix regression caused by previous temp dir fix
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
X-List-Received-Date: Thu, 27 Sep 2018 03:39:14 -0000

In c26604146a74149487a1a2dfc40d40d53aa68bdf I made a fix to change where
the bitbake code writes out bitbake.lock and other files it creates
during parsing, but didn't adequately test it and it turns out our
call to delete the temp directory races against bitbake deleting
bitbake.lock and bitbake.sock. For now the simplest way to deal with
this is to ignore the errors since we don't care about these files,
we just want the temp dir gone.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index eb04fc44..97b84372 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -16,6 +16,7 @@ from datetime import datetime
 import re
 import tempfile
 import shutil
+import errno
 from distutils.version import LooseVersion
 import itertools
 import utils
@@ -39,6 +40,14 @@ class DryRunRollbackException(Exception):
     pass
 
 
+def rm_tempdir_onerror(fn, fullname, exc_info):
+    # Avoid errors when we're racing against bitbake deleting bitbake.lock/bitbake.sock
+    # (and anything else it happens to create in our temporary build directory in future)
+    if isinstance(exc_info[1], OSError) and exc_info[1].errno == errno.ENOENT:
+        pass
+    else:
+        raise
+
 def check_machine_conf(path, subdir_start):
     subpath = path[len(subdir_start):]
     res = conf_re.match(subpath)
@@ -828,7 +837,7 @@ def main():
             logger.debug('Preserving temp directory %s' % tempdir)
         else:
             logger.debug('Deleting temp directory')
-            shutil.rmtree(tempdir)
+            shutil.rmtree(tempdir, onerror=rm_tempdir_onerror)
     sys.exit(0)
 
 
-- 
2.17.1


