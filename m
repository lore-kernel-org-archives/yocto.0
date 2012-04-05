Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B08E0070C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 02:09:29 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so901346wgb.11
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 02:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=jMA5w18H5r6/01jXUH9BjekA0pk79yBVLPhxrwz1dq0=;
	b=T2+D7gaAp1Uzxi5Tmlq78jrf2ey+SeF/hCrA9dqNL536o3nog21GyBoaSaG4SGKIkn
	jiXc4++5R+t5c/UerP/I83flOAH0fXAFvRf3xuHBr1Ea3jTtecXflvVBXNqAc6PiTzj8
	UqTg4pKiRXYuIc/LmIup0XaHgNLpkzm5BdF0XVmLN0EC/tQMHFkGPxGhRRp5P5v7RlBG
	+2SO2HTAmFFXnX5NvfysnVp6dYfYjp5iTci50+W3N48FqsDRa3fO2P4InH+AJIu65aS6
	smjjwu8CaDua4LZRfI9YqwK3XjmsKdc6XcpOYwksN2bU2Z5hpG57xDSzMjVo9Ws5q6+R
	/MQA==
Received: by 10.216.131.98 with SMTP id l76mr1172713wei.62.1333616968667;
	Thu, 05 Apr 2012 02:09:28 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fl2sm14559878wib.4.2012.04.05.02.09.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Apr 2012 02:09:27 -0700 (PDT)
From: martin.jansa@gmail.com
To: yocto@yoctoproject.org
Date: Thu,  5 Apr 2012 11:09:20 +0200
Message-Id: <4f7d6147.2266b40a.6f68.fffff72d@mx.google.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 23/23] opkg-make-index: generate complete filelist
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
X-List-Received-Date: Thu, 05 Apr 2012 09:09:30 -0000

From: Martin Jansa <Martin.Jansa@gmail.com>

* when '-l Packages.filelist' option is used together with '-r Packages.old',
  then only 'new' packages are processed to create Packages.filelist
  packages found in Packages.old doesn't have fn set so get_file_list()
  was returning empty
* now added get_file_list_dir() looks for filename in pkg_dir and if it
  finds correct .ipk file it will use that to read its filelist, but it
  also means that it will always unpack *all* Packages - very slow.
* it would be nice to add new param for Packages.filelist.old and then
  filter filelist for packages used from Packages.old and merge it
  together with new Packages.filelist, but that's more difficult because
  of files structure.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |   64 +++++++++++++++++++++++++++++-------------------------
 opkg.py         |   16 +++++++++++++
 2 files changed, 50 insertions(+), 30 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 02c425f..4425107 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -190,34 +190,38 @@ if packages_filename:
      os.rename(tmp_packages_filename, packages_filename)
      os.rename(tmp_gzip_filename, gzip_filename)
 
-if verbose:
-     sys.stderr.write("Generate Packages.filelist file\n")
-files = {}
-names = list(packages.packages.keys())
-names.sort()
-for name in names:
-     try:
-          fnlist = packages[name].get_file_list()
-     except OSError as e:
-          sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
-          continue
-     except IOError as e:
-          sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
-          continue
-     for fn in fnlist:
-          (h,t) = os.path.split(fn)
-          if not t: continue
-          if t not in files: files[t] = name+':'+fn
-          else: files[t] = files[t] + ',' + name+':'+fn
-
 if filelist_filename:
-     tmp_filelist_filename = ("%s.%d" % (filelist_filename, os.getpid()))
-     f = open(tmp_filelist_filename, "w")
-     names = list(files.keys())
-     names.sort()
-     for name in names:
-          f.write("%s %s\n" % (name, files[name]))
-     f.close()
-     if posixpath.exists(filelist_filename):
-          os.unlink(filelist_filename)
-     os.rename(tmp_filelist_filename, filelist_filename)
+    if verbose:
+        sys.stderr.write("Generate Packages.filelist file\n")
+    files = {}
+    names = list(packages.packages.keys())
+    names.sort()
+    for name in names:
+        try:
+            if verbose:
+                sys.stderr.write("Reading filelist for package '%s'\n" % name)
+#            sys.stderr.write("Package for name '%s':\n'%s'\n" % (name, packages[name]))
+            fnlist = packages[name].get_file_list_dir(pkg_dir)
+#            sys.stderr.write("Filelist for package '%s': '%s'\n" % (name, fnlist))
+        except OSError as e:
+            sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
+            continue
+        except IOError as e:
+            sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
+            continue
+        for fn in fnlist:
+            (h,t) = os.path.split(fn)
+            if not t: continue
+            if t not in files: files[t] = name+':'+fn
+        else: files[t] = files[t] + ',' + name+':'+fn
+
+    tmp_filelist_filename = ("%s.%d" % (filelist_filename, os.getpid()))
+    f = open(tmp_filelist_filename, "w")
+    names = list(files.keys())
+    names.sort()
+    for name in names:
+         f.write("%s %s\n" % (name, files[name]))
+    f.close()
+    if posixpath.exists(filelist_filename):
+        os.unlink(filelist_filename)
+    os.rename(tmp_filelist_filename, filelist_filename)
diff --git a/opkg.py b/opkg.py
index 27cbc2a..707a882 100644
--- a/opkg.py
+++ b/opkg.py
@@ -325,8 +325,24 @@ class Package:
     def get_license(self, license):
         return self.license
 
+    def get_file_list_dir(self, directory):
+        if not self.fn:
+            try:
+                cmd = "find %s -name %s | head -n 1" % (directory, self.filename)
+                rc = subprocess.check_output(cmd, shell=True)
+                newfn = str(rc).split()[0]
+#                sys.stderr.write("Package '%s' with empty fn and filename is '%s' was found in '%s', updating fn\n" % (self.package, self.filename, newfn))
+                self.fn = newfn
+            except OSError as e:
+                sys.stderr.write("Cannot find current fn for package '%s' filename '%s' in dir '%s'\n(%s)\n" % (self.package, self.filename, directory, e))
+            except IOError as e:
+                sys.stderr.write("Cannot find current fn for package '%s' filename '%s' in dir '%s'\n(%s)\n" % (self.package, self.filename, directory, e))
+        return self.get_file_list()
+
+
     def get_file_list(self):
         if not self.fn:
+            sys.stderr.write("Package '%s' has empty fn returning empty filelist\n" % (self.package))
             return []
         f = open(self.fn, "rb")
         ar = arfile.ArFile(f, self.fn)
-- 
1.7.8.5


