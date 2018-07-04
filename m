Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44743E011FD; Tue,  3 Jul 2018 23:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB738E00CEE
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 23:07:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2018 23:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,306,1526367600"; d="scan'208";a="54981680"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by orsmga006.jf.intel.com with ESMTP; 03 Jul 2018 23:07:46 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Wed,  4 Jul 2018 14:07:24 +0800
Message-Id: <1530684444-8440-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Wed, 04 Jul 2018 06:07:49 -0000

Patch fix on utils:getconfig:expandresult function to handle the expansion
This patch is to add a condition to handle unicode entries as dict & list
have been handled during expandresult.

janitor/clobberdir: [line 46]: changes
from : trashdir = ourconfig["TRASH_DIR"]
to   : trashdir = utils.getconfig("TRASH_DIR", ourconfig)

scripts/utils.py:  [line 41-47]: added
getconfig invokes only unicode entries and handles the data expansions.
This allows ${BUILDDIR} to be expanded, to retain ${BUILDDIR} in ourconfig[c],
we should never invoke utils.getconfig("BUILDDIR", ourconfig) in our scripts
unless we intend to change the BUILDDIR paths.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 janitor/clobberdir | 5 ++---
 scripts/utils.py   | 8 ++++++++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/janitor/clobberdir b/janitor/clobberdir
index 5dab5af..5e04ed7 100755
--- a/janitor/clobberdir
+++ b/janitor/clobberdir
@@ -43,11 +43,10 @@ if "TRASH_DIR" not in ourconfig:
     print("Please set TRASH_DIR in the configuration file")
     sys.exit(1)
 
-trashdir = ourconfig["TRASH_DIR"]
+trashdir = utils.getconfig("TRASH_DIR", ourconfig)
 
 for x in [clobberdir]:
     if os.path.exists(x):
         trashdest = trashdir + "/" + str(int(time.time())) + '-'  + str(random.randrange(100, 100000, 2))
         mkdir(trashdest)
-        subprocess.check_call(['mv', x, trashdest])
-
+        subprocess.check_call(['mv', x, trashdest])
\ No newline at end of file
diff --git a/scripts/utils.py b/scripts/utils.py
index db1e3c2..373f8de 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -26,6 +26,7 @@ def configtrue(name, config):
 # Handle variable expansion of return values, variables are of the form ${XXX}
 # need to handle expansion in list and dicts
 __expand_re__ = re.compile(r"\${[^{}@\n\t :]+}")
+__expansion__ = re.compile(r"\${(.+)}")
 def expandresult(entry, config):
     if isinstance(entry, list):
         ret = []
@@ -37,6 +38,13 @@ def expandresult(entry, config):
         for k in entry:
             ret[expandresult(k, config)] = expandresult(entry[k], config)
         return ret
+    if isinstance(entry, unicode):
+        entry = str(entry)
+        entryExpand = __expansion__.match(entry).group(1)
+        if entryExpand:
+            return entry.replace('${' + entryExpand + '}', config[entryExpand])
+        else:
+            return entry
     if not isinstance(entry, str):
         return entry
     class expander:
-- 
2.7.4


