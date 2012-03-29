Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CA8E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:58 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=ggUS6dNyKOXRYv9nZ1XqJYC64dpfYij5xRvlK+M+yhI=;
	b=qB7ik40398xCfLdGU9jGvFNkdhoP5x+ERzYH8Mo+2mv43T6KS4W7GVtG3QiOXKiaKV
	X1rF6fHPZlotcMf3DNWmzm/hRuqCbN67qgzXdtf9akErTFqHyqFu92ci/Ogov+WWLz/7
	TvE6XmfuzgrYTYqS0iRU8Xj0ELrii09VyoQvg+cSowCHYNR0cH7LnW+3blo8MP682W4f
	UeL9zZz8rAV6cXcuK+/uoS9wrHq6mG0TCVYzT1d5SMRkdTce5dSC0FYRHw7/USz7zmmS
	zTVl5Dl21QZtbrd6O8HK9ltQPh5+mw1tj1lJR/elH1WI10sm2EyO5usKn8023c8lInrq
	/BIQ==
Received: by 10.180.106.9 with SMTP id gq9mr55527wib.17.1333059838853;
	Thu, 29 Mar 2012 15:23:58 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fz9sm774392wib.3.2012.03.29.15.23.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:58 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:43 +0200
Message-Id: <5ac7c40c53a2a36e98c004295f44ffcaf16bc5ca.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 09/22] 2to3: use subprocess instead of commands
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:59 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-compare-indexes |    6 +++---
 opkg-make-index      |    5 ++---
 opkg-show-deps       |    1 -
 opkg-update-index    |    1 -
 opkg.py              |    2 +-
 5 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/opkg-compare-indexes b/opkg-compare-indexes
index 6c68125..2610987 100755
--- a/opkg-compare-indexes
+++ b/opkg-compare-indexes
@@ -2,7 +2,7 @@
 
 import sys, os
 from glob import glob
-import commands
+import subprocess
 import opkg
 
 pkg_dir1 = sys.argv[1]
@@ -40,8 +40,8 @@ for name in names:
     if pkg1 and pkg2 and pkg1.version != pkg2.version:
         print "CHANGED: %s from version %s to %s (%s)" % (pkg1.package, pkg1.version, pkg2.version, pkg2.maintainer)
         cmd = "opkg-diff %s %s > %s " % ((pkg_dir1 + pkg1.filename),  (pkg_dir2 + pkg2.filename), (pkg1.package + '.diff'))
-        print cmd
-	commands.getstatusoutput(cmd)
+        print(cmd)
+        subprocess.call(cmd)
     if not pkg1:
         print "NEW: %s version %s (%s)"% (pkg2.package, pkg2.version, pkg2.maintainer)
     if not pkg2:
diff --git a/opkg-make-index b/opkg-make-index
index b65dc6e..7923f1e 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -2,7 +2,7 @@
 
 import sys, os, posixpath
 from glob import glob
-import commands
+import subprocess
 import opkg
 import getopt
 import string
@@ -186,8 +186,7 @@ if packages_filename:
      gzip_filename = ("%s.gz" % packages_filename)
      tmp_gzip_filename = ("%s.%d" % (gzip_filename, os.getpid()))
      gzip_cmd = "gzip -9c < %s > %s" % (tmp_packages_filename, tmp_gzip_filename)
-     (rc, outtext) = commands.getstatusoutput(gzip_cmd)
-     print outtext
+     rc = subprocess.check_output(gzip_cmd, shell=True)
      os.rename(tmp_packages_filename, packages_filename)
      os.rename(tmp_gzip_filename, gzip_filename)
 
diff --git a/opkg-show-deps b/opkg-show-deps
index 9de1aac..5ab5b4f 100755
--- a/opkg-show-deps
+++ b/opkg-show-deps
@@ -2,7 +2,6 @@
 
 import sys, os, posixpath
 from glob import glob
-import commands
 import opkg
 import getopt
 import string
diff --git a/opkg-update-index b/opkg-update-index
index 3864fa5..d9c9b43 100755
--- a/opkg-update-index
+++ b/opkg-update-index
@@ -2,7 +2,6 @@
 
 import sys, os
 from glob import glob
-import commands
 import opkg
 
 pkg_dir=sys.argv[1]
diff --git a/opkg.py b/opkg.py
index 31b847c..f37a68d 100644
--- a/opkg.py
+++ b/opkg.py
@@ -39,7 +39,7 @@ import glob
 import hashlib
 import re
 import string
-import commands
+import subprocess
 from stat import ST_SIZE
 import arfile
 import tarfile
-- 
1.7.8.5


