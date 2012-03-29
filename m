Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB56E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:57 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so22855wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=wBQOP7BOqGcK/HMiKM9ou/8fBDx/swOMd/OzPAwYnus=;
	b=PVmwYMk9c5dNKVWB+0Dfio6DWxp/KIgytepPKfXPPvqhgh1ujXT1cVnb20nC6VZEDd
	CY5+z6lS2hbj3Js2bQSuz7ixlEdPhEjLPYsV6N8gkbtrC84rUWTkDeaMWDBUffpyL/o1
	mVvSY2eeNQMrtLgSYEB+u8UYvjAc/8zqziv5/WKMSpuAcGnsfTbjLbpy0AjUR8cJALTN
	ZALCrfa7MBd+XtTOX5FZ9PAn1bWRkKGgH9YmBBVZEJGVz7GAmLeA4LT+HlKTt8VVImh3
	1Kwo9kYKnR1NNLhXP/+DK60PFj/qHZcZi0d+UNLmlA3cDtz62mwofAXCuCZWZXP4pCS4
	VTnA==
Received: by 10.180.95.74 with SMTP id di10mr2493532wib.1.1333059896754;
	Thu, 29 Mar 2012 15:24:56 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 17sm9546037wis.0.2012.03.29.15.24.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:56 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:51 +0200
Message-Id: <91b2267eff75a39250367cdfb27dc519ea3875b8.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 17/22] opkg-make-index: don't use stdout for Packages output and use __str__ instead of __repr__
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
X-List-Received-Date: Thu, 29 Mar 2012 22:24:58 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |   17 +++++++++--------
 opkg.py         |    4 ++--
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 898a2f6..02c425f 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -148,9 +148,8 @@ if opt_s:
 if verbose:
      sys.stderr.write("Generating Packages file\n")
 if packages_filename:
-     old_stdout = sys.stdout
      tmp_packages_filename = ("%s.%d" % (packages_filename, os.getpid()))
-     sys.stdout = open(tmp_packages_filename, "w")
+     pkgsFile = open(tmp_packages_filename, "w")
 names = list(packages.packages.keys())
 names.sort()
 for name in names:
@@ -171,7 +170,10 @@ for name in names:
               continue
      if (verbose):
           sys.stderr.write("Writing info for package %s\n" % (pkg.package,))
-     print(pkg)
+     if packages_filename:
+          pkgsFile.write(str(pkg))
+     else:
+          print(pkg)
   except OSError as e:
       sys.stderr.write("Package %s disappeared on us!\n(%s)\n" % (name, e))
       continue
@@ -180,8 +182,7 @@ for name in names:
       continue
 
 if packages_filename:
-     sys.stdout.close()
-     sys.stdout = old_stdout
+     pkgsFile.close()
      gzip_filename = ("%s.gz" % packages_filename)
      tmp_gzip_filename = ("%s.%d" % (gzip_filename, os.getpid()))
      gzip_cmd = "gzip -9c < %s > %s" % (tmp_packages_filename, tmp_gzip_filename)
@@ -211,12 +212,12 @@ for name in names:
 
 if filelist_filename:
      tmp_filelist_filename = ("%s.%d" % (filelist_filename, os.getpid()))
-     sys.stdout = open(tmp_filelist_filename, "w")
+     f = open(tmp_filelist_filename, "w")
      names = list(files.keys())
      names.sort()
      for name in names:
-          print((name,files[name]))
-     sys.stdout.close()
+          f.write("%s %s\n" % (name, files[name]))
+     f.close()
      if posixpath.exists(filelist_filename):
           os.unlink(filelist_filename)
      os.rename(tmp_filelist_filename, filelist_filename)
diff --git a/opkg.py b/opkg.py
index 299e84e..84583be 100644
--- a/opkg.py
+++ b/opkg.py
@@ -402,7 +402,7 @@ class Package:
             ref.parsed_version = parse_version(ref.version)
         return self.parsed_version.compare(ref.parsed_version)
 
-    def __repr__(self):
+    def __str__(self):
         out = ""
 
         # XXX - Some checks need to be made, and some exceptions
@@ -506,7 +506,7 @@ if __name__ == "__main__":
     package.set_description("A test of the APIs.")
 
     print("<")
-    sys.stdout.write(package)
+    sys.stdout.write(str(package))
     print(">")
 
     package.write_package("/tmp")
-- 
1.7.8.5


