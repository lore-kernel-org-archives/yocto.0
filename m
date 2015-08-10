Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAEECE00A84; Mon, 10 Aug 2015 12:37:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37901E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 12:37:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 10 Aug 2015 12:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,647,1432623600"; d="scan'208";a="745866420"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by orsmga001.jf.intel.com with ESMTP; 10 Aug 2015 12:37:51 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 14:38:01 -0500
Message-Id: <1439235481-30554-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: alexander.kanavin@intel.com
Subject: [PATCH][rrs] rrs_upstream_history.py: Use regexes in SPECIAL_PKGSUFFIX packages
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
X-List-Received-Date: Mon, 10 Aug 2015 19:37:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When SPECIAL_PKGSUFFIX packages don't have regexes use it from package
without SPECIAL_PKGSUFFIX.

[YOCTO #8102]

For example: python-native use regex from python if don't have one.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/rrs_upstream_history.py | 40 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index 521b733..aeac3d3 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -39,6 +39,43 @@ sys.path.insert(0, os.path.join(bitbakepath, 'lib'))
 from layerindex.models import Recipe, LayerBranch
 from rrs.models import RecipeUpstream, RecipeUpstreamHistory
 
+def set_regexes(d):
+    """
+        Utility function to set regexes to SPECIAL_PKGSUFFIX packages
+        that don't have set it.
+
+        For example: python-native use regex from python if don't have
+        one set it.
+    """
+
+    variables = ['REGEX', 'REGEX_URI', 'GITTAGREGEX']
+
+    if any(d.getVar(var, True) for var in variables):
+        return
+
+    suffixes = d.getVar('SPECIAL_PKGSUFFIX', True).split()
+    suffixes.append('nativesdk-')
+
+    localdata = bb.data.createCopy(d)
+
+    pn = localdata.getVar('PN', True)
+    for sfx in suffixes:
+        if pn.find(sfx) != -1:
+            pnstripped = pn.replace(sfx, '')
+            localdata.setVar('OVERRIDES', "pn-" + pnstripped + ":" +
+                    d.getVar('OVERRIDES', True))
+            bb.data.update_data(localdata)
+
+            for var in variables:
+                new_value = localdata.getVar(var, True)
+                if new_value is None:
+                    continue
+
+                d.setVar(var, new_value)
+                logger.debug("%s: %s new value %s" % (pn, var,
+                    d.getVar(var, True)))
+            break
+
 def get_upstream_info(thread_worker, arg):
     from bb.utils import vercmp_string
     from oe.recipeutils import get_recipe_upstream_version, \
@@ -122,6 +159,9 @@ if __name__=="__main__":
         if not recipes:
             continue
 
+        for recipe_data in recipes:
+            set_regexes(recipe_data)
+
         history = RecipeUpstreamHistory(start_date = datetime.now())
 
         from oe.utils import ThreadedPool
-- 
1.9.1


