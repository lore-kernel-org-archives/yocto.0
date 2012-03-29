Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5C7E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:02 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so41473wib.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=1bpe8VGMpk8Xdhzu6ZlF3ETDuLS7jLQnT3twSFjGbRg=;
	b=04uB1D8+/Azlk0odFYMLguiBavoHpp5xtOl65PWMlopyXuk7p1S6ReBXUcTqysEViV
	4oWmTXZB9/maxWjH1Ub+6btjObsOgAYhgzMxWnIYjJOdLRa+GBqoGy20Tm4e7XdRVuG7
	wYIAJbgHYUG9VDo+spcrDrlYs5AsYLFzZc3EhWyTHnhTjvjPPSjPJNn17SNTT/mTRB7J
	VXIW36jeJ4WE1G8PUfpXbKhrTIKJwylMNf5grE58F/vIyPs41j7jZR3ENX9Bfp5FFPQD
	O1Xj1gtSLZT1GLXxig4r+twg+nSQN5BEVkEkMJii9oE52I2QhWhKYqwm3FQNJiD6P0+Z
	rcHw==
Received: by 10.180.84.164 with SMTP id a4mr169693wiz.2.1333059781025;
	Thu, 29 Mar 2012 15:23:01 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l5sm689794wia.11.2012.03.29.15.22.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:00 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:35 +0200
Message-Id: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 01/22] opkg-make-index: don't error out when some package disappears
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:02 -0000

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


