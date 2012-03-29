Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30A5DE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:21 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hm17so41874wib.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=crNh004kQreaobMLPbaCsR4frxycuXRXRAlB/kx5Z2E=;
	b=A1gQ0yFwXA/1H6juYyAvOn6Pmd49f50WG4J7MpTG+PkjUPYKACX9nXEK1GI1xizYg3
	aEYUfMHJL8/n4KQaow2lpmzlWIMsmH2+DXT9II2P6ijdpk9dT/W0lLywDFKpug9Gp5BO
	Sy5mZ6KLquOCOKYrOgaiT21fDE+BGi9UYtrhuPYJzZLCvkOSn6cdM2tLO4dhn+n5lmw3
	Qg4tGZckuSxrEtsxz/Ze5+ZZJQMYZCVX2c/gvTwo3kG1/y7uOFtWOeDU97fhutaIG9va
	AHkO/tdo7vS+qVk0cCUTUA0ATKBngzKxf85XBtOATQL6thM2eVFvZTAAgr0+I615sZ5w
	vnNA==
Received: by 10.180.92.130 with SMTP id cm2mr159289wib.4.1333059860908;
	Thu, 29 Mar 2012 15:24:20 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ex2sm1120116wib.8.2012.03.29.15.24.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:20 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:46 +0200
Message-Id: <a7152408ba72c97f7ecda66d9b73f8e69b527bd5.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 12/22] 2to3: exception handling fixes
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
X-List-Received-Date: Thu, 29 Mar 2012 22:24:21 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py       |    4 ++--
 opkg-make-index |    4 ++--
 opkg.py         |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arfile.py b/arfile.py
index 9149387..3f797a8 100644
--- a/arfile.py
+++ b/arfile.py
@@ -54,11 +54,11 @@ class ArFile:
             return FileSection(self.f, self.directory[fname][-1], int(self.directory[fname][5]))
 
         if self.directoryRead:
-            raise IOError, (2, "AR member not found: " + fname)
+            raise IOError("AR member not found: " + fname)
 
         f = self._scan(fname)
         if f == None:
-            raise IOError, (2, "AR member not found: " + fname)
+            raise IOError("AR member not found: " + fname)
         return f
 
 
diff --git a/opkg-make-index b/opkg-make-index
index 2fc8a69..997f286 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -198,10 +198,10 @@ names.sort()
 for name in names:
      try:
           fnlist = packages[name].get_file_list()
-     except OSError, e:
+     except OSError as e:
           sys.stderr.write("Package %s disappeared on us!\n" % (name))
           continue
-     except IOError, e:
+     except IOError as e:
           sys.stderr.write("Package %s disappeared on us!\n" % (name))
           continue
      for fn in fnlist:
diff --git a/opkg.py b/opkg.py
index 75ad3d3..ae31794 100644
--- a/opkg.py
+++ b/opkg.py
@@ -176,7 +176,7 @@ class Package:
         elif name == 'size':
             return self._get_file_size()
         else:
-            raise AttributeError, name
+            raise AttributeError(name)
 
     def _computeFileMD5(self):
         # compute the MD5.
-- 
1.7.8.5


