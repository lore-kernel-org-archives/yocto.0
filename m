Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE01AE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:06 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=QZrH+55w77OpUCXhwiZGCWSeyAqCo4y3WCYffh+HWh4=;
	b=ANgJopRjK4YuqQaODQI3PM3dKvSVNnZBVGzrmj1dgnfovZrQQjjooDO7nUvhx0B8K/
	qWoco/YrHnG0X8THX7miwI5PBU/3lB0J6pb8fUSQU5En06YXuYmQEi2NxRIdTussvXOG
	nZQ0RcMNGC4hoJ72GOjEKMKlt4R9bt5eqBuzM5V2iICYgB6Ef1TNWnQuY9EbJ/Hu001N
	wJkRbVHfebuUu1MobiyMLPmwCMJWg6IsaoZNOoCpz3Hu4DcU+UOY6Nyy2sPWE5JnjVno
	K7OV4U+M7IWSTFbQRyHgOBAzDzhTRCr5On4pa5pb0iNTeZwVfWdG2id+zArlAZTqxvaa
	dY1g==
Received: by 10.180.103.35 with SMTP id ft3mr191779wib.0.1333059846483;
	Thu, 29 Mar 2012 15:24:06 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 6sm794439wiz.1.2012.03.29.15.24.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:05 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:44 +0200
Message-Id: <12c27162ee1920dee6b0252717eaecd287bd9159.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 10/22] 2to3: print fixes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 22:24:07 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py            |   20 ++++++++++----------
 makePackage          |    2 +-
 opkg-compare-indexes |    6 +++---
 opkg-list-fields     |    2 +-
 opkg-make-index      |    8 ++++----
 opkg-show-deps       |    2 +-
 opkg-unbuild         |    2 +-
 opkg.py              |   24 ++++++++++++------------
 8 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arfile.py b/arfile.py
index 92ffee0..320c9ca 100644
--- a/arfile.py
+++ b/arfile.py
@@ -20,7 +20,7 @@ class FileSection:
         self.seek(0, 0)
 
     def seek(self, offset, whence = 0):
-#        print "seek(%x, %d)" % (offset, whence)
+#        print("seek(%x, %d)" % (offset, whence))
         if whence == 0:
             return self.f.seek(offset + self.offset, whence)
         elif whence == 1:
@@ -31,11 +31,11 @@ class FileSection:
             assert False
 
     def tell(self):
-#        print "tell()"
+#        print("tell()")
         return self.f.tell() - self.offset
 
     def read(self, size = -1):
-#        print "read(%d)" % size
+#        print("read(%d)" % size)
         return self.f.read(size)
 
 class ArFile:
@@ -82,11 +82,11 @@ class ArFile:
             for field_len in ar_field_lens:
                 descriptor.append(l[:field_len].strip())
                 l = l[field_len:]
-#            print descriptor
+#            print(descriptor)
             size = int(descriptor[5])
             memberName = descriptor[0][:-1]
             self.directory[memberName] = descriptor + [self.f.tell()]
-#            print "read:", memberName
+#            print(("read:", memberName))
             if memberName == fname:
                 # Record directory offset to start from next time
                 self.directoryOffset = self.f.tell() + size
@@ -96,7 +96,7 @@ class ArFile:
             if size % 2:
                 size = size + 1
             data = self.f.seek(size, 1)
-#            print hex(f.tell())
+#            print(hex(self.f.tell()))
 
 
 if __name__ == "__main__":
@@ -106,11 +106,11 @@ if __name__ == "__main__":
 
         ar = ArFile(f, fn)
         tarStream = ar.open("data.tar.gz")
-        print "--------"
+        print("--------")
         tarStream = ar.open("data.tar.gz")
-        print "--------"
+        print("--------")
         tarStream = ar.open("control.tar.gz")
-        print "--------"
+        print("--------")
         tarStream = ar.open("control.tar.gz2")
 
         sys.exit(0)
@@ -132,4 +132,4 @@ if __name__ == "__main__":
         #tarf.list()
 
         f2 = tarf.extractfile("control")
-        print f2.read()
+        print(f2.read())
diff --git a/makePackage b/makePackage
index 082a81f..ec76338 100755
--- a/makePackage
+++ b/makePackage
@@ -11,4 +11,4 @@ import opkg
 
 fn = sys.argv[1]
 pkg = opkg.Package(fn)
-print pkg
+print(pkg)
diff --git a/opkg-compare-indexes b/opkg-compare-indexes
index 2610987..e0933ce 100755
--- a/opkg-compare-indexes
+++ b/opkg-compare-indexes
@@ -38,12 +38,12 @@ for name in names:
     if pkgs2.packages.has_key(name):
         pkg2 = pkgs2.packages[name]
     if pkg1 and pkg2 and pkg1.version != pkg2.version:
-        print "CHANGED: %s from version %s to %s (%s)" % (pkg1.package, pkg1.version, pkg2.version, pkg2.maintainer)
+        print("CHANGED: %s from version %s to %s (%s)" % (pkg1.package, pkg1.version, pkg2.version, pkg2.maintainer))
         cmd = "opkg-diff %s %s > %s " % ((pkg_dir1 + pkg1.filename),  (pkg_dir2 + pkg2.filename), (pkg1.package + '.diff'))
         print(cmd)
         subprocess.call(cmd)
     if not pkg1:
-        print "NEW: %s version %s (%s)"% (pkg2.package, pkg2.version, pkg2.maintainer)
+        print("NEW: %s version %s (%s)"% (pkg2.package, pkg2.version, pkg2.maintainer))
     if not pkg2:
-        print "DELETE: %s version %s (%s)"% (pkg1.package, pkg1.version, pkg1.maintainer)
+        print("DELETE: %s version %s (%s)"% (pkg1.package, pkg1.version, pkg1.maintainer))
     
diff --git a/opkg-list-fields b/opkg-list-fields
index da78d53..1fb7fd1 100755
--- a/opkg-list-fields
+++ b/opkg-list-fields
@@ -9,5 +9,5 @@ def usage():
 if (len(sys.argv) < 2):
      usage()
 
-print opkg.Package(sys.argv[1])
+print(opkg.Package(sys.argv[1]))
 
diff --git a/opkg-make-index b/opkg-make-index
index 7923f1e..c3a292b 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -125,12 +125,12 @@ for filename in files:
                if opt_m:
                     to_morgue(old_filename)
                if opt_s:
-                    print pkg_dir + "/" + old_filename
+                    print(("%s/%s" % (pkg_dir, old_filename)))
      else:
           if opt_m:
                to_morgue(basename)
           if opt_s:
-               print filename
+               print(filename)
   except OSError:
       sys.stderr.write("Package %s disappeared on us!\n" % (filename))
       continue
@@ -172,7 +172,7 @@ for name in names:
               continue
      if (verbose):
           sys.stderr.write("Writing info for package %s\n" % (pkg.package,))
-     print pkg
+     print(pkg)
   except OSError:
       sys.stderr.write("Package %s disappeared on us!\n" % (name))
       continue
@@ -216,7 +216,7 @@ if filelist_filename:
      names = files.keys()
      names.sort()
      for name in names:
-          print name,files[name]
+          print((name,files[name]))
      sys.stdout.close()
      if posixpath.exists(filelist_filename):
           os.unlink(filelist_filename)
diff --git a/opkg-show-deps b/opkg-show-deps
index 5ab5b4f..524d247 100755
--- a/opkg-show-deps
+++ b/opkg-show-deps
@@ -83,5 +83,5 @@ for root in remaining_args:
           recurse(p)
      
 for pkg in required.keys():
-     print pkg
+     print(pkg)
 
diff --git a/opkg-unbuild b/opkg-unbuild
index b5c5227..35a387f 100755
--- a/opkg-unbuild
+++ b/opkg-unbuild
@@ -3,7 +3,7 @@
 import sys, os, re
 
 if (len(sys.argv) == 0):
-    print 'usage: %s: package.opk' % sys.argv[0]
+    print('usage: %s: package.opk' % sys.argv[0])
     sys.exit(1)
 
 for filename in sys.argv[1:]:
diff --git a/opkg.py b/opkg.py
index f37a68d..54060c3 100644
--- a/opkg.py
+++ b/opkg.py
@@ -56,10 +56,10 @@ class Version:
         while 1:
             ## first look for non-numeric version component
             selfm = re.match('([^0-9]*)(.*)', selfversion)
-            #print 'selfm', selfm.groups()
+            #print(('selfm', selfm.groups()))
             (selfalpha, selfversion) = selfm.groups()
             refm = re.match('([^0-9]*)(.*)', refversion)
-            #print 'refm', refm.groups()
+            #print(('refm', refm.groups())
             (refalpha, refversion) = refm.groups()
             if (selfalpha > refalpha):
                 return 1
@@ -68,8 +68,8 @@ class Version:
             ## now look for numeric version component
             (selfnum, selfversion) = re.match('([0-9]*)(.*)', selfversion).groups()
             (refnum, refversion) = re.match('([0-9]*)(.*)', refversion).groups()
-            #print 'selfnum', selfnum, selfversion
-            #print 'refnum', refnum, refversion
+            #print(('selfnum', selfnum, selfversion)
+            #print(('refnum', refnum, refversion)
             if (selfnum != ''):
                 selfnum = int(selfnum)
             else:
@@ -93,12 +93,12 @@ class Version:
         else:
             self_ver_comps = re.match(r"(.+?)(-r.+)?$", self.version)
             ref_ver_comps = re.match(r"(.+?)(-r.+)?$", ref.version)
-            #print (self_ver_comps.group(1), self_ver_comps.group(2))
-            #print (ref_ver_comps.group(1), ref_ver_comps.group(2))
+            #print((self_ver_comps.group(1), self_ver_comps.group(2)))
+            #print((ref_ver_comps.group(1), ref_ver_comps.group(2)))
             r = self._versioncompare(self_ver_comps.group(1), ref_ver_comps.group(1))
             if r == 0:
                 r = self._versioncompare(self_ver_comps.group(2), ref_ver_comps.group(2))
-            #print "compare: %s vs %s = %d" % (self, ref, r)
+            #print("compare: %s vs %s = %d" % (self, ref, r))
             return r
 
     def __str__(self):
@@ -220,7 +220,7 @@ class Package:
                 elif self.__dict__.has_key(name):
                     self.__dict__[name] = value
                 else:
-                    print "Lost field %s, %s" % (name,value)
+                    print("Lost field %s, %s" % (name,value))
                     pass
 
                 if line and line[0] == '\n':
@@ -391,9 +391,9 @@ class Package:
     def compare_version(self, ref):
         """Compare package versions of self and ref"""
         if not self.version:
-            print 'No version for package %s' % self.package
+            print('No version for package %s' % self.package)
         if not ref.version:
-            print 'No version for package %s' % ref.package
+            print('No version for package %s' % ref.package)
         if not self.parsed_version:
             self.parsed_version = parse_version(self.version)
         if not ref.parsed_version:
@@ -499,9 +499,9 @@ if __name__ == "__main__":
     package.set_depends("libc")
     package.set_description("A test of the APIs.")
 
-    print "<"
+    print("<")
     sys.stdout.write(package)
-    print ">"
+    print(">")
 
     package.write_package("/tmp")
 
-- 
1.7.8.5


