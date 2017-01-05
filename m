Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F38DE00A6B; Thu,  5 Jan 2017 13:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A99E006B4
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 13:42:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 05 Jan 2017 13:42:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,322,1477983600"; d="scan'208";a="1090441057"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2017 13:42:29 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jan 2017 15:45:14 -0600
Message-Id: <1483652714-9473-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1483652714-9473-1-git-send-email-anibal.limon@linux.intel.com>
References: <1483652714-9473-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[PATCH][rrs] 2/2] rrs/tools: Upgrade to use new API of tinfoil
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
X-List-Received-Date: Thu, 05 Jan 2017 21:42:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The new client/server API of tinfoil requires explicit call of
shutdown method to send the event for finalize cooker process.

[YOCTO #10863]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/common.py               | 6 +++++-
 rrs/tools/rrs_distros.py          | 3 +++
 rrs/tools/rrs_upgrade_history.py  | 2 ++
 rrs/tools/rrs_upstream_history.py | 3 +++
 4 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/rrs/tools/common.py b/rrs/tools/common.py
index d61b81f..9dca431 100644
--- a/rrs/tools/common.py
+++ b/rrs/tools/common.py
@@ -119,7 +119,11 @@ def load_recipes(layerbranch, bitbakepath, fetchdir, settings, logger,
     recipes = []
     for rp in recipe_files:
         try:
-            data = tinfoil.cache.loadDataFull(rp, [])
+            if hasattr(tinfoil, 'parse_recipe_file'):
+                data = tinfoil.parse_recipe_file(fn, appends=False, config_data=d)
+            else:
+                data = bb.cache.Cache.loadDataFull(fn, [], d)
+
             try:
                 pv = data.getVar('PV', True)
             except FetchError:
diff --git a/rrs/tools/rrs_distros.py b/rrs/tools/rrs_distros.py
index b28f38d..60820f4 100755
--- a/rrs/tools/rrs_distros.py
+++ b/rrs/tools/rrs_distros.py
@@ -100,6 +100,7 @@ if __name__=="__main__":
                     fetchdir, settings, logger)
 
             if not recipes:
+                tinfoil.shutdown()
                 continue
 
             from oe import distro_check
@@ -128,3 +129,5 @@ if __name__=="__main__":
                     recipedistro.save()
                     logger.debug('%s: layer branch %s, add distro %s alias %s' % (pn,
                         str(layerbranch), distro, alias))
+
+            tinfoil.shutdown()
diff --git a/rrs/tools/rrs_upgrade_history.py b/rrs/tools/rrs_upgrade_history.py
index 27655d8..436916f 100755
--- a/rrs/tools/rrs_upgrade_history.py
+++ b/rrs/tools/rrs_upgrade_history.py
@@ -164,6 +164,7 @@ def do_initial(layerbranch, ct, logger):
 
     utils.runcmd("git checkout master -f", repodir, logger=logger)
     utils.runcmd("git branch -D %s" % (branch_name_tmp), repodir, logger=logger)
+    tinfoil.shutdown()
 
 def do_loop(layerbranch, ct, logger):
     layer = layerbranch.layer
@@ -196,6 +197,7 @@ def do_loop(layerbranch, ct, logger):
 
     utils.runcmd("git checkout master -f", repodir, logger=logger)
     utils.runcmd("git branch -D %s" % (branch_name_tmp), repodir, logger=logger)
+    tinfoil.shutdown()
 
 
 """
diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index dfb1604..09a246a 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -162,6 +162,7 @@ if __name__=="__main__":
                     fetchdir, settings, logger,  recipe_files=recipe_files)
 
             if not recipes:
+                tinfoil.shutdown()
                 continue
 
             for recipe_data in recipes:
@@ -194,3 +195,5 @@ if __name__=="__main__":
 
                 logger.debug('%s: layer branch %s, pv %s, upstream (%s)' % (recipe.pn,
                     str(layerbranch), recipe.pv, str(ru)))
+
+            tinfoil.shutdown()
-- 
2.1.4


