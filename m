Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF730E00A92; Mon,  9 Nov 2015 14:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0145E009D9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:01:19 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2015 14:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,267,1444719600"; d="scan'208";a="832113808"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2015 14:01:16 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Nov 2015 16:01:39 -0600
Message-Id: <1447106501-470-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 08/10][AUH] upgradehelper.py: Add support for do recipe upgrades based on builddep
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
X-List-Received-Date: Mon, 09 Nov 2015 22:01:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 114 +++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 86 insertions(+), 28 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index aeb9cf1..a08833e 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -91,7 +91,6 @@ def parse_cmdline():
 def get_build_dir():
     return os.getenv('BUILDDIR')
 
-
 def parse_config_file(config_file):
     settings = dict()
     maintainer_override = dict()
@@ -435,26 +434,6 @@ class Updater(object):
             I(" %s: %s" % (self.pn, e.stdout))
             raise e
 
-    def _order_list(self, package_list):
-        try:
-            self.bb.dependency_graph(' '.join(p[0] for p in package_list))
-        except Error as e:
-            multiple_providers = False
-            for l in e.stdout.split('\n'):
-                if l.find("ERROR: Multiple .bb files are due to be built which each provide") == 0:
-                    multiple_providers = True
-
-            if not multiple_providers:
-                raise e
-
-        dep_file = os.path.join(get_build_dir(), "pn-buildlist")
-        ordered_list = []
-        with open(dep_file) as deps:
-            for d in deps:
-                ordered_list.extend(p for p in package_list if p[0] == d.strip())
-
-        return ordered_list
-
     def send_status_mail(self):
         if "status_recipients" not in settings:
             E("Could not send status email, no recipients set!")
@@ -471,16 +450,100 @@ class Updater(object):
         else:
             W("No recipes attempted, not sending status mail!")
 
+
+    def _order_pkgs_to_upgrade(self, pkgs_to_upgrade):
+        def _get_pn_dep_dic(pn_list, dependency_file): 
+            import re
+
+            pn_dep_dic = {}
+
+            with open(dependency_file) as dep:
+                data = dep.read()
+                dep.close()
+
+                for line in data.split('\n'):
+                    m = re.search('^"(.*)" -> "(.*)"$', line)
+                    if not m:
+                        continue
+
+                    pn = m.group(1)
+                    pn_dep = m.group(2)
+                    if pn == pn_dep:
+                        continue
+
+                    if pn in pn_list:
+                        if pn_dep in pn_list:
+                            if pn in pn_dep_dic.keys():
+                                pn_dep_dic[pn].append(pn_dep)
+                            else:
+                                pn_dep_dic[pn] = [pn_dep]
+                        elif not pn in pn_dep_dic.keys():
+                            pn_dep_dic[pn] = []
+
+            return pn_dep_dic
+
+        def _dep_resolve(graph, node, resolved, seen):
+            seen.append(node)
+
+            for edge in graph[node]:
+                if edge not in resolved:
+                    if edge in seen:
+                        raise RuntimeError("Packages %s and %s have " \
+                                "a circular dependency." \
+                                % (node, edge))
+                    _dep_resolve(graph, edge, resolved, seen)
+
+            resolved.append(node)
+
+
+        pn_list = []
+        for pn, new_ver, maintainer in pkgs_to_upgrade:
+            pn_list.append(pn)
+
+        try:
+           self.bb.dependency_graph(' '.join(pn_list))
+        except Error as e:
+            multiple_providers = False
+            for l in e.stdout.split('\n'):
+                if l.find("ERROR: Multiple .bb files are due to be built which each provide") == 0:
+                    multiple_providers = True
+            if not multiple_providers:
+                raise e
+
+        dependency_file = os.path.join(get_build_dir(), "pn-depends.dot")
+
+        pkgs_to_upgrade_ordered = []
+        pn_list_ordered = []
+
+        pn_dep_dic = _get_pn_dep_dic(pn_list, dependency_file)
+        if pn_dep_dic:
+            root = "__root_node__"
+            pn_dep_dic[root] = pn_dep_dic.keys()
+            _dep_resolve(pn_dep_dic, root, pn_list_ordered, [])
+            pn_list_ordered.remove(root)
+
+        for pn_ordered in pn_list_ordered:
+            for pn, new_ver, maintainer in pkgs_to_upgrade:
+                if pn == pn_ordered: 
+                    pkgs_to_upgrade_ordered.append([pn, new_ver, maintainer])
+
+        return pkgs_to_upgrade_ordered
+
     def run(self, package_list=None):
         I(" Building gcc runtimes ...")
         for machine in self.machines:
             I("  building gcc runtime for %s" % machine)
             self.bb.complete("gcc-runtime", machine)
 
-        pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
-
+        pkgs_to_upgrade = self._order_pkgs_to_upgrade(
+                self._get_packages_to_upgrade(package_list))
         total_pkgs = len(pkgs_to_upgrade)
 
+        I(" ########### The list of recipes to be upgraded #############")
+        for p, v, m in pkgs_to_upgrade:
+            I(" %s, %s, %s" % (p, v, m))
+        I(" ############################################################")
+
         attempted_pkgs = 0
         for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrade:
             error = None
@@ -708,11 +771,6 @@ class UniverseUpdater(Updater):
             last_check.write(current_date + "," + cur_master_commit + "," +
                              last_checkpkg_file)
 
-        I(" ########### The list of recipes to be upgraded ############")
-        for p, v, m in pkgs_list:
-            I(" %s, %s, %s" % (p, v, m))
-        I(" ############################################################")
-
         return pkgs_list
 
     def _update_history(self, pn, new_ver, maintainer, upgrade_status):
-- 
2.1.4


