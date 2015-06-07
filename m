Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A528BE00A1A; Sat,  6 Jun 2015 17:38:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26927E00A08
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:38:03 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWq-0000Nq-88; Sun, 07 Jun 2015 00:33:33 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:37:03 -0700
Message-Id: <1433637428-21242-6-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1433637428-21242-1-git-send-email-flihp@twobit.us>
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 05/10] e2fsprogs: Add patch make calls necessary to label file system root and do cleanup.
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
X-List-Received-Date: Sun, 07 Jun 2015 00:38:03 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../misc-mke2fs.c-label-root-dir-and-cleanup.patch | 40 ++++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  1 +
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-mke2fs.c-label-root-dir-and-cleanup.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-mke2fs.c-label-root-dir-and-cleanup.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-mke2fs.c-label-root-dir-and-cleanup.patch
new file mode 100644
index 0000000..436cff4
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-mke2fs.c-label-root-dir-and-cleanup.patch
@@ -0,0 +1,40 @@
+Add call to 'set_inode_xattr' to copy xattrs for the root directory in the file
+system. The 'populate_fs' function operates on every file in a directory so the
+root of the tree must be labeled independently.
+
+Add call to xattr_cleanup to deallocate xattr cache after populate_fs is done.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/mke2fs.c
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/mke2fs.c
++++ e2fsprogs-1.42.9/misc/mke2fs.c
+@@ -56,6 +56,7 @@ extern int optind;
+ #include "../version.h"
+ #include "quota/mkquota.h"
+ #include "create_inode.h"
++#include "xattr.h"
+ 
+ #define STRIDE_LENGTH 8
+ 
+@@ -2744,6 +2745,11 @@ no_journal:
+ 		hdlinks.count = 0;
+ 		current_fs = fs;
+ 		root = EXT2_ROOT_INO;
++		retval = set_inode_xattr (fs, EXT2_ROOT_INO, root_dir);
++		if (retval) {
++			fprintf(stderr, "%s", _("Error setting xattr for inode: 0x%x\n"), EXT2_ROOT_INO);
++			return retval;
++		}
+ 		retval = populate_fs(root, root_dir);
+ 		if (retval) {
+ 			fprintf(stderr, "%s",
+@@ -2751,6 +2757,7 @@ no_journal:
+ 			return retval;
+ 		} else if (!quiet)
+ 			printf("%s", _("done\n"));
++		xattr_cleanup();
+ 	}
+ 
+ 	if (!quiet)
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index 35bdcb7..fe72a4c 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -3,4 +3,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 SRC_URI += " \
     file://misc-xattr-copy-xattrs.patch \
     file://Makefile.in-build-xattr.o.patch \
+    file://misc-mke2fs.c-label-root-dir-and-cleanup.patch \
 "
-- 
2.1.4


