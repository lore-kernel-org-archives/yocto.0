Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB7FE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:42 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=AEl3sm+/bAxrcjFY+9gEcfD0p7bgtV14y7PtVx2RmLo=;
	b=TErVuNjdR/2PtUWst237pYen4cRJKzJMjF85XEzbSSLjIBjSn7eG5vbnrlo4KilCtY
	fVB2mWKZYUMz2kod8r0UzFhboTGTEcRprQE4oJboR6CZmCw3KNMc7YLZM4mRxhLVOtoN
	2R2+yrttnVcRcUu808MYnwgypatg2BL6NjwTgYzz5lThpvbp/OLbU5mK9yQKB9rxp5pL
	tVDXCTfguT+DJ6Ud/HBTu1YkJrGwNl1wgQH7Dkfk56x6RDqEyA70cQtGKW81BDCte2R9
	uZNGJDjHBQCS52O4O0OFinDc8/JMUcfuIYpXwj5NWH4xgYu+IIt3aeHdfXbjFtEifJyy
	5Sqw==
Received: by 10.180.88.199 with SMTP id bi7mr99926wib.12.1333059882075;
	Thu, 29 Mar 2012 15:24:42 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l5sm701219wia.11.2012.03.29.15.24.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:41 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:49 +0200
Message-Id: <e3062c4a9778e8891cae44408c1ceedcf0eafdfc.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 15/22] opkg.py: catch TypeError when reading control file, to show which one is failing
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
X-List-Received-Date: Thu, 29 Mar 2012 22:24:42 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |   13 ++++++++++---
 1 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/opkg.py b/opkg.py
index 856e057..299e84e 100644
--- a/opkg.py
+++ b/opkg.py
@@ -161,7 +161,10 @@ class Package:
                 control = tarf.extractfile("control")
             except KeyError:
                 control = tarf.extractfile("./control")
-            self.read_control(control)
+            try:
+                self.read_control(control)
+            except TypeError as e:
+                sys.stderr.write("Cannot read control file '%s' - %s\n" % (fn, e))
             control.close()
 
         self.scratch_dir = None
@@ -457,9 +460,13 @@ class Packages:
 
     def read_packages_file(self, fn):
         f = open(fn, "r")
-        while 1:
+        while True:
             pkg = Package()
-            pkg.read_control(f)
+            try:
+                pkg.read_control(f)
+            except TypeError as e:
+                sys.stderr.write("Cannot read control file '%s' - %s\n" % (fn, e))
+                continue
             if pkg.get_package():
                 self.add_package(pkg)
             else:
-- 
1.7.8.5


