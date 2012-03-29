Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C205E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:35 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=WOASiQOFD/8O+XVnWnUDPtGNqkhhaZWbBe20QCAAFCo=;
	b=xciICagIgfzQoaOjC8iwKPYx92Z1xXXBKd+8KwgzcR1rbeC9yKnTwFGfv79V9RgesS
	j5P7ULHezntvcGkGKyp7spodokbR88llKrRuPQKu3i2Jk/XklZ7B5rHhu6OECsVQ4Lsg
	Km/HW4/MJjSJmVH8ljT/aC7FhKbdvz2Pb8kxxaWcyha58faSnlnZoDWFcaBvFZjLernA
	aufg7+eI0ELfYxzErGAWs3lSUlu7D+7sFvkukrrmb70IOSo4NfWCfpW05/CWoafXFE7I
	2YlQUQJY09/TVFcrD7nsxj6hpYulsqD1u8Q7FOWFXmYk+Wj/tOOtxun5aLj+YOu0Kni6
	D7SA==
Received: by 10.180.105.69 with SMTP id gk5mr11843427wib.3.1333059875028;
	Thu, 29 Mar 2012 15:24:35 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fz9sm778572wib.3.2012.03.29.15.24.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:34 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:48 +0200
Message-Id: <dff8a591ee59b5b5787c5a82e730ba83d8db8b2e.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 14/22] opkg.py: use string funtcions directly on string variable
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
X-List-Received-Date: Thu, 29 Mar 2012 22:24:35 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |    3 +--
 opkg-show-deps  |   11 +++++------
 opkg.py         |    5 ++---
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index e0844a7..898a2f6 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -5,7 +5,6 @@ from glob import glob
 import subprocess
 import opkg
 import getopt
-import string
 import re
 
 verbose = 0
@@ -158,7 +157,7 @@ for name in names:
   try:
      pkg = packages.packages[name]
      if locales_dir and pkg.depends:
-         depends = string.split(pkg.depends, ',')
+         depends = pkg.depends.split(',')
          locale = None
          for d in depends:
               m = re.match('.*virtual-locale-([a-zA-Z]+).*', d)
diff --git a/opkg-show-deps b/opkg-show-deps
index 3f5899d..d188aad 100755
--- a/opkg-show-deps
+++ b/opkg-show-deps
@@ -4,7 +4,6 @@ import sys, os, posixpath
 from glob import glob
 import opkg
 import getopt
-import string
 import re
 
 verbose = 0
@@ -32,11 +31,11 @@ provider_hash = {}
 
 def split_list(str):
      r = []
-     l = string.split(str, ",")
+     l = str.split(",")
      for i in l:
-          ll = string.split(i, "|")
+          ll = i.split("|")
           for ii in ll:
-               ii = string.strip(ii)
+               ii = ii.strip()
                r.append(ii)
      return r
 
@@ -46,9 +45,9 @@ for i in list(packages.packages.keys()):
           provider_hash[p.package] = []
      provider_hash[p.package].append(p)
      if p.provides:
-          provides = string.split(p.provides, ",")
+          provides = p.provides.split(",")
           for prov in provides:
-               prov = string.strip(prov)
+               prov = prov.strip()
                if prov not in provider_hash:
                     provider_hash[prov] = []
                provider_hash[prov].append(p)
diff --git a/opkg.py b/opkg.py
index ae31794..856e057 100644
--- a/opkg.py
+++ b/opkg.py
@@ -38,7 +38,6 @@ import sys
 import glob
 import hashlib
 import re
-import string
 import subprocess
 from stat import ST_SIZE
 import arfile
@@ -203,10 +202,10 @@ class Package:
         line = control.readline()
         while 1:
             if not line: break
-            line = string.rstrip(line)
+            line = line.rstrip()
             lineparts = re.match(r'([\w-]*?):\s*(.*)', line)
             if lineparts:
-                name = string.lower(lineparts.group(1))
+                name = lineparts.group(1).lower()
                 value = lineparts.group(2)
                 while 1:
                     line = control.readline()
-- 
1.7.8.5


