Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 772A7E0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:13:59 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id e49so951046eek.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=1bpe8VGMpk8Xdhzu6ZlF3ETDuLS7jLQnT3twSFjGbRg=;
	b=AAfMDY7ubM9OPqJpHKmvwERW5RN8ENVnIh3/+RUfAPteC3OB0mAoRZaM8796QttNcv
	FofiWdyPi7aYaQ2JkMeyJPK9DQX6Io6DKSnOD7uX25DLX4ktztmDAdfprRRLTHQvR1wf
	Pda0YIJ3j85scMO3EYyooyYA2ZqdZhKqO8GT0wMfG2siOmq0c5jskqWFhoWlDYE4PnCB
	VXhymt6NJgd22lDWHBQmAKDmHou3ZoNbTxGVjNXHiCV9HGb8N2/4kLHuoY0e3x4zn/hR
	rUb8a4pRzmLZldkRfw40QSAdEWK4Zqghrixihw8iIr1ZMmBvLS2+BJ73VyeYBq5xmATk
	ysiA==
Received: by 10.180.91.10 with SMTP id ca10mr3656787wib.17.1333012439021;
	Thu, 29 Mar 2012 02:13:59 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ex2sm25924221wib.8.2012.03.29.02.13.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 02:13:58 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 11:13:49 +0200
Message-Id: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <cover.1333012363.git.Martin.Jansa@gmail.com>
References: <cover.1333012363.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 1/5] opkg-make-index: don't error out when some package disappears
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
X-List-Received-Date: Thu, 29 Mar 2012 09:13:59 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

* If we're building an image and some package rebuilds while this is
  happening some package can be removed/added to the ipk deploy
  directory. The image will not depend on this package so we can
  safely ignore these cases rather than error out.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |   25 ++++++++++++++++++++++++-
 1 files changed, 24 insertions(+), 1 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index ae829e6..2f1ae17 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -96,6 +96,7 @@ if (verbose):
 files=glob(pkg_dir + '/*.opk') + glob(pkg_dir + '/*.deb') + glob(pkg_dir + '/*.ipk')
 files.sort()
 for filename in files:
+  try:
      basename = os.path.basename(filename)
      pkg = None
      fnameStat = os.stat(filename)
@@ -130,6 +131,12 @@ for filename in files:
                to_morgue(basename)
           if opt_s:
                print filename
+  except OSError:
+      sys.stderr.write("Package %s disappeared on us!\n" % (filename))
+      continue
+  except IOError:
+      sys.stderr.write("Package %s disappeared on us!\n" % (filename))
+      continue
 
 pkgsStampsFile = open(stamplist_filename, "w")
 for f in pkgsStamps.keys():
@@ -148,6 +155,7 @@ if packages_filename:
 names = packages.packages.keys()
 names.sort()
 for name in names:
+  try:
      pkg = packages.packages[name]
      if locales_dir and pkg.depends:
          depends = string.split(pkg.depends, ',')
@@ -165,6 +173,13 @@ for name in names:
      if (verbose):
           sys.stderr.write("Writing info for package %s\n" % (pkg.package,))
      print pkg
+  except OSError:
+      sys.stderr.write("Package %s disappeared on us!\n" % (name))
+      continue
+  except IOError:
+      sys.stderr.write("Package %s disappeared on us!\n" % (name))
+      continue
+
 if packages_filename:
      sys.stdout.close()
      sys.stdout = old_stdout
@@ -182,7 +197,15 @@ files = {}
 names = packages.packages.keys()
 names.sort()
 for name in names:
-     for fn in packages[name].get_file_list():
+     try:
+          fnlist = packages[name].get_file_list()
+     except OSError, e:
+          sys.stderr.write("Package %s disappeared on us!\n" % (name))
+          continue
+     except IOError, e:
+          sys.stderr.write("Package %s disappeared on us!\n" % (name))
+          continue
+     for fn in fnlist:
           (h,t) = os.path.split(fn)
           if not t: continue
           if not files.has_key(t): files[t] = name+':'+fn
-- 
1.7.8.5


