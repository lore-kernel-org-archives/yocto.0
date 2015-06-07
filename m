Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59775E00A21; Sat,  6 Jun 2015 17:38:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC179E00A1C
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:38:04 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWs-0000Nq-3I; Sun, 07 Jun 2015 00:33:34 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:37:04 -0700
Message-Id: <1433637428-21242-7-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1433637428-21242-1-git-send-email-flihp@twobit.us>
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 06/10] e2fsprogs: Add patch to call xattr copy function in populate_fs.
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
X-List-Received-Date: Sun, 07 Jun 2015 00:38:05 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../misc-create_inode.c-label-fs-objects.patch     | 30 ++++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-create_inode.c-label-fs-objects.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-create_inode.c-label-fs-objects.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-create_inode.c-label-fs-objects.patch
new file mode 100644
index 0000000..9532b8e
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-create_inode.c-label-fs-objects.patch
@@ -0,0 +1,30 @@
+Add call to 'set_inode_xattrs' in populate_fs function. This rides on the
+recursive nature of populate_fs and copies xattrs for each file system object
+except for the root directory that we handle separately.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/create_inode.c
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/create_inode.c
++++ e2fsprogs-1.42.9/misc/create_inode.c
+@@ -1,5 +1,6 @@
+ #include "create_inode.h"
+ #include <limits.h>
++#include "xattr.h"
+ 
+ #if __STDC_VERSION__ < 199901L
+ # if __GNUC__ >= 2
+@@ -549,6 +550,12 @@ errcode_t populate_fs(ext2_ino_t parent_
+ 			return retval;
+ 		}
+ 
++		if ((retval = set_inode_xattr (current_fs, ino, name))) {
++			com_err(__func__, retval,
++				_("while setting xattrs for \"%s\""), name);
++			return retval;
++		}
++
+ 		/* Save the hardlink ino */
+ 		if (save_inode) {
+ 			/*
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index fe72a4c..990141b 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -4,4 +4,5 @@ SRC_URI += " \
     file://misc-xattr-copy-xattrs.patch \
     file://Makefile.in-build-xattr.o.patch \
     file://misc-mke2fs.c-label-root-dir-and-cleanup.patch \
+    file://misc-create_inode.c-label-fs-objects.patch \
 "
-- 
2.1.4


