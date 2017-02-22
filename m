Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12430E009DA; Wed, 22 Feb 2017 09:12:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF65E009AD
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 09:12:17 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 22 Feb 2017 09:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,195,1484035200"; d="scan'208";a="68345112"
Received: from jgperezc.zpn.intel.com (HELO jgperezc-MOBL1.zpn.intel.com)
	([10.219.4.33])
	by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2017 09:12:16 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed, 22 Feb 2017 11:12:42 -0600
Message-Id: <1487783562-22965-3-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1487783562-22965-1-git-send-email-jose.perez.carranza@linux.intel.com>
References: <1487783562-22965-1-git-send-email-jose.perez.carranza@linux.intel.com>
Subject: [qa-tools][PATCH 3/3] testopia_update: Fix options verification for config and params
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
X-List-Received-Date: Wed, 22 Feb 2017 17:12:18 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

A function was created to handle the load of options separately for
configuration and parameters

Signed-off-by: Anibal Limon <anibal.limon@linux.intel.com>
Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/testopia_update.py b/testopia_update.py
index 1c2db63..9b35188 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -17,6 +17,17 @@ ACTIONS = ('create', 'update')
 BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
 CATEGORIES = ('AUTO', 'MANUAL')
 
+def load_opts(args, opts_list, opts):
+    for to in opts_list:
+        if to in vars(args):
+            arg = getattr(args, to)
+            if arg:
+                setattr(opts, to, arg)
+        if not hasattr(opts, to):
+            logger.error("%s: Requires testopia %s in arguments or config." % \
+                (sys.argv[0], to))
+            sys.exit(1)
+
 class Options(object):
     pass
 
@@ -85,7 +96,7 @@ if __name__ == '__main__':
     logger = logging.getLogger()
 
     testopia_config = ['url', 'username', 'password', 'store_location']
-    testopia_opts = testopia_config + ['action', 'product_name', 'category_name',
+    testopia_opts = ['action', 'product_name', 'category_name',
         'project_version', 'project_milestone', 'project_revision',
         'project_date']
 
@@ -99,15 +110,7 @@ if __name__ == '__main__':
 
         for to in testopia_config:
             setattr(opts, to, config.get("Testopia", to))
-    for to in testopia_opts:
-        if to in vars(args):
-            arg = getattr(args, to)
-            if arg:
-                setattr(opts, to, arg)
-        if not hasattr(opts, to):
-            logger.error("%s: Requires testopia %s in arguments or config." % \
-                (sys.argv[0], to))
-            sys.exit(1)
+    load_opts(args, testopia_config, opts)
 
     if not os.path.exists(opts.store_location):
         os.makedirs(opts.store_location)
@@ -121,6 +124,8 @@ if __name__ == '__main__':
             print("%s\n" % p.name)
         sys.exit(0)
 
+    load_opts(args, testopia_opts, opts)
+
     params = ['action', 'product_name', 'branch_name', 'env_name']
     for p in params:
         if not getattr(args, p):
-- 
2.1.4


