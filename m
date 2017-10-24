Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F612E00B53; Mon, 23 Oct 2017 17:10:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33DBCE00D27
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 17:10:44 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 17:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,424,1503385200"; d="scan'208";a="1028493694"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga003.jf.intel.com with ESMTP; 23 Oct 2017 17:10:43 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Oct 2017 17:10:13 -0700
Message-Id: <fdc4ca1540fd607a0acad55da8067a16747ef1b4.1508803311.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508803311.git.amanda.r.brindle@intel.com>
References: <cover.1508803311.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [PATCH 1/1] Rewrite bbvars.py to use tinfoil to find variables
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
X-List-Received-Date: Tue, 24 Oct 2017 00:10:46 -0000

Use tinfoil to collect all variable names globally and in each recipe.

No longer show the count of variables if they are undocumented.

Fixes [YOCTO #2086]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 scripts/contrib/bbvars.py | 90 ++++++++++++++++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 24 deletions(-)

diff --git a/scripts/contrib/bbvars.py b/scripts/contrib/bbvars.py
index d8d0594..556f652 100755
--- a/scripts/contrib/bbvars.py
+++ b/scripts/contrib/bbvars.py
@@ -23,6 +23,14 @@ import os
 import os.path
 import re
 
+# Set up sys.path to let us import tinfoil
+scripts_path = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
+lib_path = scripts_path + '/lib'
+sys.path.insert(0, lib_path)
+import scriptpath
+scriptpath.add_bitbake_lib_path()
+import bb.tinfoil
+
 def usage():
     print('Usage: %s -d FILENAME [-d FILENAME]* -m METADIR [-m MATADIR]*' % os.path.basename(sys.argv[0]))
     print('  -d FILENAME         documentation file to search')
@@ -66,19 +74,23 @@ def collect_bbvars(metadir):
                         bbvars[key] = 1
     return bbvars
 
-def bbvar_is_documented(var, docfiles):
-    prog = re.compile(".*($|[^A-Z_])%s([^A-Z_]|$)" % (var))
-    for doc in docfiles:
-        try:
-            f = open(doc)
-        except IOError as err:
-            print('WARNING: Failed to open doc ', doc)
-            print(err.args[1])
-        for line in f:
-            if prog.match(line):
-                return True
-        f.close()
-    return False
+def bbvar_is_documented(var, documented_vars):
+    ''' Check if variable (var) is in the list of documented variables(documented_vars) '''
+    if var in documented_vars:
+        return True
+    else:
+        return False
+
+def collect_documented_vars(docfiles):
+    ''' Walk the docfiles and collect the documented variables '''
+    documented_vars = []
+    prog = re.compile(".*($|[^A-Z_])<glossentry id=\'var-")
+    var_prog = re.compile('<glossentry id=\'var-(.*)\'>')
+    for d in docfiles:
+        with open(d) as f:
+            documented_vars += var_prog.findall(f.read())
+
+    return documented_vars
 
 def bbvar_doctag(var, docconf):
     prog = re.compile('^%s\[doc\] *= *"(.*)"' % (var))
@@ -101,7 +113,7 @@ def bbvar_doctag(var, docconf):
 def main():
     docfiles = []
     metadirs = []
-    bbvars = {}
+    bbvars = set()
     undocumented = []
     docconf = ""
     onlydoctags = False
@@ -153,33 +165,63 @@ def main():
         usage()
         sys.exit(7)
 
-    # Collect all the variable names from the recipes in the metadirs
-    for m in metadirs:
-        for key,cnt in collect_bbvars(m).items():
-            if key in bbvars:
-                bbvars[key] = bbvars[key] + cnt
+    prog = re.compile("^[^a-z]*$")
+    with bb.tinfoil.Tinfoil() as tinfoil:
+        tinfoil.prepare(config_only=False)
+        parser = bb.codeparser.PythonParser('parser', None)
+        datastore = tinfoil.config_data
+
+        def bbvars_update(data):
+            if prog.match(data):
+                bbvars.add(data)
+            if tinfoil.config_data.getVarFlag(data, 'python'):
+                try:
+                    parser.parse_python(tinfoil.config_data.getVar(data))
+                except bb.data_smart.ExpansionError:
+                    pass
+                for var in parser.references:
+                    if prog.match(var):
+                        bbvars.add(var)
             else:
-                bbvars[key] = cnt
+                try:
+                    expandedVar = datastore.expandWithRefs(datastore.getVar(data, False), data)
+                    for var in expandedVar.references:
+                        if prog.match(var):
+                            bbvars.add(var)
+                except bb.data_smart.ExpansionError:
+                    pass
+
+        # Use tinfoil to collect all the variable names globally
+        for data in datastore:
+            bbvars_update(data)
+
+        # Collect variables from all recipes
+        for recipe in tinfoil.all_recipe_files():
+            print("Checking %s" % recipe)
+            for data in tinfoil.parse_recipe_file(recipe):
+                bbvars_update(data)
+
+    documented_vars = collect_documented_vars(docfiles)
 
     # Check each var for documentation
     varlen = 0
-    for v in bbvars.keys():
+    for v in bbvars:
         if len(v) > varlen:
             varlen = len(v)
-        if not bbvar_is_documented(v, docfiles):
+        if not bbvar_is_documented(v, documented_vars):
             undocumented.append(v)
     undocumented.sort()
     varlen = varlen + 1
 
     # Report all undocumented variables
     print('Found %d undocumented bb variables (out of %d):' % (len(undocumented), len(bbvars)))
-    header = '%s%s%s' % (str("VARIABLE").ljust(varlen), str("COUNT").ljust(6), str("DOCTAG").ljust(7))
+    header = '%s%s' % (str("VARIABLE").ljust(varlen), str("DOCTAG").ljust(7))
     print(header)
     print(str("").ljust(len(header), '='))
     for v in undocumented:
         doctag = bbvar_doctag(v, docconf)
         if not onlydoctags or not doctag == "":
-            print('%s%s%s' % (v.ljust(varlen), str(bbvars[v]).ljust(6), doctag))
+            print('%s%s' % (v.ljust(varlen), doctag))
 
 
 if __name__ == "__main__":
-- 
2.7.4


