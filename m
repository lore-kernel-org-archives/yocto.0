Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B221EE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:44 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dq13so22150wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=SZm2/MegArgolvPmEYs9yXH118USxj5PCdPeKGGGgQY=;
	b=K18LEfn5mtdNVp3HWoVTO5oWGOtCb4TKfbuVwYAMVJqt5sN5NTuklQZM0IhUDmzefQ
	49vT0rV2fDqI41pxsys7LMxT+CzQePVbvhCPh3+CY7AzjsflP/Q/9yUVVctBp6PDCcuB
	8AVDb60DvVcaiEl+TSsg3BbAqH6vtABf4ilusUOqQMONUrOmfSPYj5QBqvJJtwwchoWC
	/HaS3W72mPqmFm30kZOke5FVUxfSuolz1+qshArZNQv8AjNR5o2xCMbwVUQMy7YkvNOY
	sfDFrcRGkiKTqLtEcoOof9Fh5FweiyX0RN5ZED8NnaNQ2pVfoyvgplWQvX9lgX0I6W3v
	ODAw==
Received: by 10.180.102.3 with SMTP id fk3mr116724wib.9.1333059824429;
	Thu, 29 Mar 2012 15:23:44 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ff9sm782105wib.2.2012.03.29.15.23.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:43 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:41 +0200
Message-Id: <4700a735e07398f500d96bff9ea862bcb93de6a6.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 07/22] opkg.py, arfile.py: report which file has wrong format and use the same test
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:45 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py |   16 +++++++++-------
 opkg.py   |   11 ++---------
 2 files changed, 11 insertions(+), 16 deletions(-)

diff --git a/arfile.py b/arfile.py
index 8291a2d..7a695c6 100644
--- a/arfile.py
+++ b/arfile.py
@@ -40,13 +40,13 @@ class FileSection:
 
 class ArFile:
 
-    def __init__(self, f):
+    def __init__(self, f, fn):
         self.f = f
         self.directory = {}
         self.directoryRead = False
 
         signature = self.f.readline()
-        assert signature == "!<arch>\n"
+        assert signature == "!<arch>\n" or signature == b"!<arch>\n", "Old ipk format (non-deb) is unsupported, file: %s, magic: %s, expected %s" % (fn, signature, "!<arch>")
         self.directoryOffset = self.f.tell()
 
     def open(self, fname):
@@ -100,9 +100,10 @@ class ArFile:
 
 if __name__ == "__main__":
     if None:
-        f = open(sys.argv[1], "rb")
+        fn = sys.argv[1]
+        f = open(fn, "rb")
 
-        ar = ArFile(f)
+        ar = ArFile(f, fn)
         tarStream = ar.open("data.tar.gz")
         print "--------"
         tarStream = ar.open("data.tar.gz")
@@ -120,10 +121,11 @@ if __name__ == "__main__":
     for f in os.listdir(dir):
         if not f.endswith(".opk") and not f.endswith(".ipk"): continue
 
-        print "=== %s ===" % f
-        f = open(dir + "/" + f, "rb")
+        print("=== %s ===" % f)
+        fn = "%s/%s" % (dir, f)
+        f = open(fn, "rb")
 
-        ar = ArFile(f)
+        ar = ArFile(f, fn)
         tarStream = ar.open("control.tar.gz")
         tarf = tarfile.open("control.tar.gz", "r", tarStream)
         #tarf.list()
diff --git a/opkg.py b/opkg.py
index 56e774d..31b847c 100644
--- a/opkg.py
+++ b/opkg.py
@@ -138,7 +138,6 @@ class Package:
         #self.size = None
         self.installed_size = None
         self.filename = None
-        self.isdeb = 0
         self.file_ext_opk = "ipk"
         self.homepage = None
         self.oe = None
@@ -150,18 +149,12 @@ class Package:
         if fn:
             # see if it is deb format
             f = open(fn, "rb")
-            magic = f.read(4)
-            f.seek(0, 0)
-            if (magic == "!<ar"):
-                self.isdeb = 1
-
 
             self.filename = os.path.basename(fn)
-            assert self.isdeb == 1, "Old ipk format (non-deb) is unsupported"
 
             ## sys.stderr.write("  extracting control.tar.gz from %s\n"% (fn,)) 
 
-            ar = arfile.ArFile(f)
+            ar = arfile.ArFile(f, fn)
             tarStream = ar.open("control.tar.gz")
             tarf = tarfile.open("control.tar.gz", "r", tarStream)
 
@@ -330,7 +323,7 @@ class Package:
         if not self.fn:
             return []
         f = open(self.fn, "rb")
-        ar = arfile.ArFile(f)
+        ar = arfile.ArFile(f, self.fn)
         tarStream = ar.open("data.tar.gz")
         tarf = tarfile.open("data.tar.gz", "r", tarStream)
         self.file_list = tarf.getnames()
-- 
1.7.8.5


