Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FF99E00DAF; Thu, 14 Dec 2017 08:35:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86FAAE00DA7
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:37 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726631"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:36 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:51 +0200
Message-Id: <7737b0043e18a75645936284f1c815eb80d4e5ed.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 11/20] upgradehelper.py: remove the package ordering code
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:40 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

It was broken and commented out, and not really necessary.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 80 --------------------------------------------------------
 1 file changed, 80 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 9fa79b4..d62c9b2 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -439,87 +439,7 @@ class Updater(object):
         else:
             W("No recipes attempted, not sending status mail!")
 
-    def _order_pkgs_to_upgrade(self, pkgs_to_upgrade):
-        def _get_pn_dep_dic(pn_list, dependency_file): 
-            import re
-
-            pn_dep_dic = {}
-
-            with open(dependency_file) as dep:
-                data = dep.read()
-                dep.close()
-
-                for line in data.split('\n'):
-                    m = re.search('^"(.*)" -> "(.*)"$', line)
-                    if not m:
-                        continue
-
-                    pn = m.group(1)
-                    pn_dep = m.group(2)
-                    if pn == pn_dep:
-                        continue
-
-                    if pn in pn_list:
-                        if pn_dep in pn_list:
-                            if pn in pn_dep_dic.keys():
-                                pn_dep_dic[pn].append(pn_dep)
-                            else:
-                                pn_dep_dic[pn] = [pn_dep]
-                        elif not pn in pn_dep_dic.keys():
-                            pn_dep_dic[pn] = []
-
-            return pn_dep_dic
-
-        def _dep_resolve(graph, node, resolved, seen):
-            seen.append(node)
-
-            for edge in graph[node]:
-                if edge not in resolved:
-                    if edge in seen:
-                        raise RuntimeError("Packages %s and %s have " \
-                                "a circular dependency." \
-                                % (node, edge))
-                    _dep_resolve(graph, edge, resolved, seen)
-
-            resolved.append(node)
-
-
-        pn_list = []
-        for pn, new_ver, maintainer in pkgs_to_upgrade:
-            pn_list.append(pn)
-
-        try:
-           self.bb.dependency_graph(' '.join(pn_list))
-        except Error as e:
-            multiple_providers = False
-            for l in e.stdout.split('\n'):
-                if l.find("ERROR: Multiple .bb files are due to be built which each provide") == 0:
-                    multiple_providers = True
-            if not multiple_providers:
-                raise e
-
-        dependency_file = os.path.join(get_build_dir(), "pn-depends.dot")
-
-        pkgs_to_upgrade_ordered = []
-        pn_list_ordered = []
-
-        pn_dep_dic = _get_pn_dep_dic(pn_list, dependency_file)
-        if pn_dep_dic:
-            root = "__root_node__"
-            pn_dep_dic[root] = pn_dep_dic.keys()
-            _dep_resolve(pn_dep_dic, root, pn_list_ordered, [])
-            pn_list_ordered.remove(root)
-
-        for pn_ordered in pn_list_ordered:
-            for pn, new_ver, maintainer in pkgs_to_upgrade:
-                if pn == pn_ordered: 
-                    pkgs_to_upgrade_ordered.append([pn, new_ver, maintainer])
-
-        return pkgs_to_upgrade_ordered
-
     def run(self, package_list=None):
-        #pkgs_to_upgrade = self._order_pkgs_to_upgrade(
-        #        self._get_packages_to_upgrade(package_list))
         pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
         total_pkgs = len(pkgs_to_upgrade)
 
-- 
2.15.0


