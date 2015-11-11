Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C056E0049B; Wed, 11 Nov 2015 14:33:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 784FBE005B7
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:33:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559590"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:33:56 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:19 -0600
Message-Id: <1447281269-18444-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 03/13] recipe.py: Improvements and refactor of fetch method.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:33:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Make more clear fetch method changing recursive manner to
loop and split logic into try fetch and suffix change.

Now when fails only retry changing recipe suffix when recipe
isn't git based because does not make sense suffixes in SCM's.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 recipe.py | 58 +++++++++++++++++++++++++++++++++-------------------------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/recipe.py b/recipe.py
index 6fd8f24..64e6e14 100644
--- a/recipe.py
+++ b/recipe.py
@@ -55,7 +55,6 @@ class Recipe(object):
             "tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "tar.lz4", "bz2",
             "lz4", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz",
             "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm"]
-        self.suffix_index = 0
         self.old_env = None
 
         self.commit_msg = self.env['PN'] + ": upgrade to " + self.new_ver + "\n\n"
@@ -540,33 +539,42 @@ class Recipe(object):
         self.bb.unpack(self.env['PN'])
 
     def fetch(self):
-        try:
-            self.bb.fetch(self.env['PN'])
-        except Error as e:
-            machine, failed_recipes = self._get_failed_recipes(e.stdout)
-            if not self.env['PN'] in failed_recipes:
-                raise Error("unknown error occured during fetch")
-
-            fetch_log = failed_recipes[self.env['PN']][1]
-            if self.suffix_index < len(self.suffixes) and self._is_uri_failure(fetch_log):
-                I(" Trying new SRC_URI suffix: %s ..." % self.suffixes[self.suffix_index])
-                self._change_source_suffix(self.suffixes[self.suffix_index])
-                self.suffix_index += 1
-                self.fetch()
-            
-            if not self._is_uri_failure(fetch_log):
-                if not self.checksums_changed:
+        from gitrecipe import GitRecipe
+
+        def _try_fetch():
+            try:
+                self.bb.fetch(self.env['PN'])
+                return
+            except Error as e:
+                machine, failed_recipes = self._get_failed_recipes(e.stdout)
+                if not self.env['PN'] in failed_recipes:
+                    raise Error("Unknown error occured during fetch",
+                            stdout = e.stdout, stderr = e.stderr)
+
+                fetch_log = failed_recipes[self.env['PN']][1]
+
+                if not self._is_uri_failure(fetch_log) and not \
+                        self.checksums_changed:
                     self._change_recipe_checksums(fetch_log)
-                    return
-                else:
-                    raise FetchError()
+                    self.checksums_changed = True
+                    return True
 
-                if self.recipes_renamed and not self.checksums_changed:
-                    raise Error("fetch succeeded without changing checksums")
+                return False
+
+        succeed = _try_fetch()
+        if not succeed and not isinstance(self, GitRecipe):
+            for sfx in self.suffixes:
+                I(" Trying new SRC_URI suffix: %s ..." % sfx)
+                self._change_source_suffix(sfx)
+
+                succeed = _try_fetch()
+                if succeed:
+                    break
 
-            elif self.suffix_index == len(self.suffixes):
-                # Every suffix tried without success
-                raise FetchError()                
+        if not succeed:
+            raise Error("Can't built a valid SRC_URI")
+        elif self.recipes_renamed and not self.checksums_changed:
+            raise Error("Fetch succeeded without changing checksums")
 
     def cleanall(self):
         self.bb.cleanall(self.env['PN'])
-- 
2.1.4


