Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB51E00E63; Fri, 27 May 2016 14:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E92E00DE3
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 14:26:46 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u4RLQjT6024356; Fri, 27 May 2016 16:26:45 -0500
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016052716264568-623895 ;
	Fri, 27 May 2016 16:26:45 -0500 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Date: Fri, 27 May 2016 16:26:42 -0500
Message-Id: <1464384403-1504-2-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1464384403-1504-1-git-send-email-alejandro.delcastillo@ni.com>
References: <1464384403-1504-1-git-send-email-alejandro.delcastillo@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize complete at 05/27/2016 04:26:45 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-05-27_12:, , signatures=0
Subject: [opkg-utils PATCH 1/2] migrate to python 3
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
X-List-Received-Date: Fri, 27 May 2016 21:26:48 -0000

General fixes
* Add __future__ imports
* Use print function instead of print statement
* Use new style classes
* Iterate over list, instead of over object.keys()
* Use six.iteritems  instead of iteritems()

opkg.py:
* Add conditional to decode string if needed in Package:read_control

arfile.py
* Add seekable method to FileSection class (needed by tarfile)

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 arfile.py            | 10 ++++++++--
 makePackage          |  2 ++
 opkg-compare-indexes |  2 ++
 opkg-graph-deps      | 39 +++++++++++++++++++++------------------
 opkg-list-fields     |  2 ++
 opkg-make-index      |  2 ++
 opkg-show-deps       |  2 ++
 opkg-unbuild         |  2 ++
 opkg-update-index    |  1 +
 opkg.py              | 17 ++++++++++-------
 10 files changed, 52 insertions(+), 27 deletions(-)

diff --git a/arfile.py b/arfile.py
index 88ace46..4bab526 100644
--- a/arfile.py
+++ b/arfile.py
@@ -5,12 +5,15 @@ Copyright (c) 2006-7 Paul Sokolovsky
 This file is released under the terms 
 of GNU General Public License v2 or later.
 """
+from __future__ import absolute_import
+from __future__ import print_function
+from builtins import object
 import sys
 import os
 import tarfile 
 
 
-class FileSection:
+class FileSection(object):
     "A class which allows to treat portion of file as separate file object."
 
     def __init__(self, f, offset, size):
@@ -30,6 +33,9 @@ class FileSection:
         else:
             assert False
 
+    def seekable(self):
+        return True 
+
     def tell(self):
 #        print("tell()")
         return self.f.tell() - self.offset
@@ -38,7 +44,7 @@ class FileSection:
 #        print("read(%d)" % size)
         return self.f.read(size)
 
-class ArFile:
+class ArFile(object):
 
     def __init__(self, f, fn):
         self.f = f
diff --git a/makePackage b/makePackage
index ec76338..4bdfc56 100755
--- a/makePackage
+++ b/makePackage
@@ -5,6 +5,8 @@
 #   Insert the filename, size, and md5 lines before the description.
 # Call it like this:
 #  find . -name \*.opk | xargs -n 1 makePackage > Packages
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys
 import opkg
diff --git a/opkg-compare-indexes b/opkg-compare-indexes
index 7bb3c69..b60d20a 100755
--- a/opkg-compare-indexes
+++ b/opkg-compare-indexes
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys, os
 from glob import glob
diff --git a/opkg-graph-deps b/opkg-graph-deps
index d7f4fd2..6653fd5 100755
--- a/opkg-graph-deps
+++ b/opkg-graph-deps
@@ -1,18 +1,21 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys
 import os
 import getopt
 import pydot
 import opkg
+import six
 
 def usage(more=False):
-    print >>sys.stderr, ( 'Usage: opkg-graph-deps '
+    print(( 'Usage: opkg-graph-deps '
         '[-h] [-d] [-o feed.dot] '
         '[-u <Base_feed_URL>] '
-        '<Paths_to_Packages_files>' )
+        '<Paths_to_Packages_files>' ), file=sys.stderr)
     if more:
-        print >>sys.stderr, '\n'.join( [
+        print('\n'.join( [
 '',
 'Generates a dot formatted dependency graph of an IPK feed.',
 '',
@@ -56,7 +59,7 @@ def usage(more=False):
 '  the alias != (to).',
 ' ipkBrokenDep: Set to "1" if (to) is missing from the feed.',
 '',
-        ] )
+        ] ), file=sys.stderr)
     exit(1)
 
 # optional args
@@ -76,19 +79,19 @@ for (optkey, optval) in opts:
         feed_url = optval
 
 if not index_files:
-    print >>sys.stderr, 'Must specify a path to at least one Packages file'
+    print('Must specify a path to at least one Packages file', file=sys.stderr)
     usage()
 
 def fatal_error(msg):
-    print >>sys.stderr, ('ERROR: ' + str(msg))
+    print(('ERROR: ' + str(msg)), file=sys.stderr)
     exit(1)
 
 def warn(msg):
-    print >>sys.stderr, str(msg)
+    print(str(msg), file=sys.stderr)
 
 def debug(msg):
     if enable_debug:
-        print >>sys.stderr, ('DEBUG: ' + str(msg))
+        print(('DEBUG: ' + str(msg)), file=sys.stderr)
 
 def split_dep_list(lst):
     '''
@@ -190,7 +193,7 @@ for indexFilePath in index_files:
     packages.read_packages_file(indexFilePath)
 
     # add each package
-    for pkgKey in packages.keys():
+    for pkgKey in list(packages.keys()):
         pkg = packages[pkgKey]
 
         # sanity check: verify important attributes are defined for
@@ -228,7 +231,7 @@ for indexFilePath in index_files:
 # provides the alias.
 # These packages are not added to the graph because their implementations
 # are already there.
-for pkgKey, pkg in real_pkg_map.iteritems():
+for pkgKey, pkg in six.iteritems(real_pkg_map):
     for alias in split_dep_list(pkg.provides):
         if alias not in active_pkg_map:
             # add it
@@ -260,7 +263,7 @@ for pkgKey, pkg in real_pkg_map.iteritems():
                 virt_pkg_map[alias].append(pkg)
 
 # Print alternatives for virtual packages
-for pkgKey, pkgList in virt_pkg_map.iteritems():
+for pkgKey, pkgList in six.iteritems(virt_pkg_map):
     if len(pkgList) > 1:
         pkgNameList = ','.join( [x.package for x in pkgList] )
         debug("%s alternate implementations of package %s: %s" % (len(pkgList), pkgKey, pkgNameList))
@@ -271,7 +274,7 @@ for pkgKey, pkgList in virt_pkg_map.iteritems():
 
 # Create stub packages in missing_pkg_map and active_pkg_map for broken
 # dependencies, and add them to the graph.
-for pkgKey, pkg in real_pkg_map.iteritems():
+for pkgKey, pkg in six.iteritems(real_pkg_map):
     for depName in split_dep_list(pkg.depends):
         if not depName in active_pkg_map:
             warn("Broken dependency: %s --> %s (missing)" % (
@@ -288,7 +291,7 @@ for pkgKey, pkg in real_pkg_map.iteritems():
 
 # process dependencies
 # add edges to graph
-for pkgKey, pkg in real_pkg_map.iteritems():
+for pkgKey, pkg in six.iteritems(real_pkg_map):
     for depName in split_dep_list(pkg.depends):
         depPkg = active_pkg_map[depName]
 
@@ -297,10 +300,10 @@ for pkgKey, pkg in real_pkg_map.iteritems():
             broken=(depPkg.package in missing_pkg_map) )
 
 # Results
-print "%s total packages are referenced in the feed" % len(active_pkg_map)
-print " %s real packages (%s collisions)" % ( len(real_pkg_map), real_pkg_replace_count )
-print " %s virtual packages" % len(virt_pkg_map)
-print " %s missing packages" % len(missing_pkg_map)
+print("%s total packages are referenced in the feed" % len(active_pkg_map))
+print(" %s real packages (%s collisions)" % ( len(real_pkg_map), real_pkg_replace_count ))
+print(" %s virtual packages" % len(virt_pkg_map))
+print(" %s missing packages" % len(missing_pkg_map))
 
 # sanity check
 if len(active_pkg_map) != (len(real_pkg_map) + len(virt_pkg_map) + len(missing_pkg_map)):
@@ -308,4 +311,4 @@ if len(active_pkg_map) != (len(real_pkg_map) + len(virt_pkg_map) + len(missing_p
 
 # Write the graph
 graph.write(path=dot_filename)
-print "Graphed at %s" % dot_filename
+print("Graphed at %s" % dot_filename)
diff --git a/opkg-list-fields b/opkg-list-fields
index 1fb7fd1..c14a90f 100755
--- a/opkg-list-fields
+++ b/opkg-list-fields
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys, opkg
 
diff --git a/opkg-make-index b/opkg-make-index
index 2fdf95c..7897918 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys, os, posixpath
 import subprocess
diff --git a/opkg-show-deps b/opkg-show-deps
index 4694579..153f21e 100755
--- a/opkg-show-deps
+++ b/opkg-show-deps
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys, os, posixpath
 from glob import glob
diff --git a/opkg-unbuild b/opkg-unbuild
index 35a387f..4f36bec 100755
--- a/opkg-unbuild
+++ b/opkg-unbuild
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
+from __future__ import print_function
 
 import sys, os, re
 
diff --git a/opkg-update-index b/opkg-update-index
index 353ea69..341c1c2 100755
--- a/opkg-update-index
+++ b/opkg-update-index
@@ -1,4 +1,5 @@
 #!/usr/bin/env python
+from __future__ import absolute_import
 
 import sys, os
 from glob import glob
diff --git a/opkg.py b/opkg.py
index ae0fbcd..fe6b9e0 100644
--- a/opkg.py
+++ b/opkg.py
@@ -31,6 +31,8 @@
 #        people to say "./control.tar.gz" or "./control" when they package files.
 #        It would be much better to require ./control or disallow ./control (either)
 #        rather than letting people pick.  Some freedoms aren't worth their cost.
+from __future__ import absolute_import
+from __future__ import print_function
 
 import tempfile
 import os
@@ -44,7 +46,7 @@ import arfile
 import tarfile
 import textwrap
 
-class Version:
+class Version(object):
     """A class for holding parsed package version information."""
     def __init__(self, epoch, version):
         self.epoch = epoch
@@ -113,7 +115,7 @@ def parse_version(versionstr):
         epoch = int(epochstr)
     return Version(epoch, versionstr)
 
-class Package:
+class Package(object):
     """A class for creating objects to manipulate (e.g. create) opkg
        packages."""
 
@@ -165,7 +167,6 @@ class Package:
             ar = arfile.ArFile(f, fn)
             tarStream = ar.open("control.tar.gz")
             tarf = tarfile.open("control.tar.gz", "r", tarStream)
-
             try:
                 control = tarf.extractfile("control")
             except KeyError:
@@ -175,7 +176,6 @@ class Package:
             except TypeError as e:
                 sys.stderr.write("Cannot read control file '%s' - %s\n" % (fn, e))
             control.close()
-
         self.scratch_dir = None
         self.file_dir = None
         self.meta_dir = None
@@ -217,8 +217,11 @@ class Package:
         line = control.readline()
         while 1:
             if not line: break
+            # Decode if stream has byte strings
+            if not isinstance(line, str):
+                line = line.decode()
             line = line.rstrip()
-            lineparts = re.match(r'([\w-]*?):\s*(.*)', str(line))
+            lineparts = re.match(r'([\w-]*?):\s*(.*)', line)
             if lineparts:
                 name = lineparts.group(1).lower()
                 value = lineparts.group(2)
@@ -378,7 +381,7 @@ class Package:
         tarStream = ar.open("data.tar.gz")
         tarf = tarfile.open("data.tar.gz", "r", tarStream)
         self.file_list = tarf.getnames()
-        self.file_list = map(lambda a: ["./", ""][a.startswith("./")] + a, self.file_list)
+        self.file_list = [["./", ""][a.startswith("./")] + a for a in self.file_list]
 
         f.close()
         return self.file_list
@@ -490,7 +493,7 @@ class Package:
         #       are being destroyed?  -- a7r
         pass
 
-class Packages:
+class Packages(object):
     """A currently unimplemented wrapper around the opkg utility."""
     def __init__(self):
         self.packages = {}
-- 
1.9.1


