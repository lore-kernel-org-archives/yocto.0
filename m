Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3962E00B30; Thu,  8 May 2014 10:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 335 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 10:00:29 PDT
Received: from mail-ee0-f44.google.com (unknown [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6553FE0073D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:00:29 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id c41so1933930eek.3
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=AOpPbkb2wmtC46rFQKcgCCcrlUCEr764gUrtRvLkq4s=;
	b=HgI8MyXxmDyTUsYpIy72lEMqd0DwSxXogogo1/JEU3kXDJC2OImOzupFOvhoBIKZj/
	RISB6/+ffUdMggnS284nJRaVb4BdF8mZ/QUhUz3A859x6UhJNDegFLoR+v43gh5c6JoP
	csNNj6AFFw7AUPTvxalUVgDjRzrVMI938TzBo0vKYzMODM2bDlaxygRpdll55LBesciT
	VsaV9ENS5rJ9Ravg8dhm5NqYwpWul+3IAUIFVpBE6BruO5jWWu3i+rDMkcrzpFxL5UND
	M2Kfs+WEUM+kReVSoRkE+B0TY6k8M7XVdo2tBQrINhDB8mJrVYoG+DbbqPINzKZpMptP
	mFiQ==
X-Received: by 10.14.198.6 with SMTP id u6mr7160423een.60.1399568095806;
	Thu, 08 May 2014 09:54:55 -0700 (PDT)
Received: from localhost.localdomain (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id x42sm5390510eel.41.2014.05.08.09.54.54
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 May 2014 09:54:55 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 16:54:44 +0000
Message-Id: <1399568085-11592-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.9.2
In-Reply-To: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
References: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
Subject: [opkg-utils][PATCH 2/3] opkg-make-index: Recursively scan for packages
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
X-List-Received-Date: Thu, 08 May 2014 17:00:35 -0000

The new 'relpath' argument to the initialiser of a Package object is used so
that file paths will be given relative to the base packages directory.

Paths are given relative to pkg_dir as that seems to make the most sense. It
certainly works when the 'Packages' file is written to pkg_dir. If the
'Packages' file is written elsewhere it is assumed that the user will know what
the paths are relative to. This is similar to debian feeds where the paths in a
'Packages' file is not stored in the packages pool but is stored in a separate
directory, yet paths are given relative to the common base of these directories.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 opkg-make-index | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 44fa64d..2fdf95c 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -1,7 +1,6 @@
 #!/usr/bin/env python
 
 import sys, os, posixpath
-from glob import glob
 import subprocess
 import opkg
 import getopt
@@ -92,32 +91,40 @@ if old_filename:
 
 if (verbose):
      sys.stderr.write("Reading in all the package info from %s\n" % (pkg_dir, ))
-files=glob(pkg_dir + '/*.opk') + glob(pkg_dir + '/*.deb') + glob(pkg_dir + '/*.ipk')
+
+files=[]
+opkg_extensions=['.ipk','.opk','.deb']
+for dirpath, dirnames, filenames in os.walk(pkg_dir):
+    for f in filenames:
+        ext = os.path.splitext(f)[1]
+        if ext in opkg_extensions:
+            files.append(os.path.join(dirpath, f))
+
 files.sort()
-for filename in files:
+for abspath in files:
   try:
-     basename = os.path.basename(filename)
+     filename = os.path.relpath(abspath, pkg_dir)
      pkg = None
-     fnameStat = os.stat(filename)
-     if basename in old_pkg_hash:
-          if basename in pkgsStamps and int(fnameStat.st_mtime) == pkgsStamps[basename]:
+     fnameStat = os.stat(abspath)
+     if filename in old_pkg_hash:
+          if filename in pkgsStamps and int(fnameStat.st_mtime) == pkgsStamps[filename]:
             if (verbose):
                sys.stderr.write("Found %s in Packages\n" % (filename,))
-            pkg = old_pkg_hash[basename]
+            pkg = old_pkg_hash[filename]
           else:
                sys.stderr.write("Found %s in Packages, but mtime differs - re-reading\n" % (filename,))
 
      if not pkg:
           if (verbose):
                sys.stderr.write("Reading info for package %s\n" % (filename,))
-          pkg = opkg.Package(filename)
+          pkg = opkg.Package(abspath, relpath=pkg_dir)
      pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
      if (pkg_key in packages.packages):
           old_filename = packages.packages[pkg_key].filename
      else:
           old_filename = ""
      s = packages.add_package(pkg)
-     pkgsStamps[basename] = fnameStat.st_mtime
+     pkgsStamps[filename] = fnameStat.st_mtime
      if s == 0:
           if old_filename:
                # old package was displaced by newer
@@ -127,7 +134,7 @@ for filename in files:
                     print(("%s/%s" % (pkg_dir, old_filename)))
      else:
           if opt_m:
-               to_morgue(basename)
+               to_morgue(filename)
           if opt_s:
                print(filename)
   except OSError as e:
-- 
1.9.2


