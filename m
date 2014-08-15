Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D2E5E0044A; Fri, 15 Aug 2014 02:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9979E004F2
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 02:48:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2014 02:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,869,1400050800"; d="scan'208";a="588521299"
Received: from kmoriart-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 15 Aug 2014 02:48:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Aug 2014 10:48:43 +0100
Message-Id: <6b97efc715f7e2cecdd1870cc3c654f6063c2f14.1408096074.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
Subject: [auh][PATCH 3/4] Handle upgrades for recipes with no maintainer
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
X-List-Received-Date: Fri, 15 Aug 2014 09:49:01 -0000

You still want to be able to use this tool manually even if there is no
maintainer defined for the recipe.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 upgradehelper.py | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 44b394a..42ac110 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -165,9 +165,15 @@ class Updater(object):
         self.recipe_dir = os.path.dirname(self.env['FILE'])
 
     def _parse_checkpkg_line(self, line):
-        m = re.match("^([^ \t]*)[ \t]+([^ \t]*)[ \t]+([^ \t]*).*<(.*)@(.*)>[ \t]+.*", line)
-        if m is not None:
-            return (m.group(1), m.group(2), m.group(3), m.group(4) + "@" + m.group(5))
+        m = re.match("^([^ \t]*)[ \t]+([^ \t]*)[ \t]+([^ \t]*)[ \t]+.*", line)
+        if m:
+            res = (m.group(1), m.group(2), m.group(3))
+            m = re.search("<([^ \t]+@[^ \t]+)>", line)
+            if m:
+                maintainer = m.group(1)
+            else:
+                maintainer = None
+            return res + (maintainer,)
 
         return (None, None, None, None)
 
@@ -290,6 +296,8 @@ class Updater(object):
         pkgs_list = []
 
         with open(get_build_dir() + "/tmp/log/checkpkg.csv") as csv:
+            # Skip header line
+            next(csv)
             for line in csv:
                 (pn, cur_ver, next_ver, maintainer) = self._parse_checkpkg_line(line)
 
@@ -443,6 +451,10 @@ class UniverseUpdater(Updater, Email):
     # blacklisted: python, gcc, etc. Also, check the history if the recipe
     # hasn't already been tried
     def pkg_upgradable(self, pn, next_ver, maintainer):
+        if not maintainer:
+            D("Skipping upgrade of %s: no maintainer" % pn)
+            return False
+
         if "blacklist" in settings:
             for p in settings["blacklist"].split():
                 if p == pn:
-- 
1.9.3


