Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56A65E00A11; Sat,  6 Jun 2015 17:38:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0121EE00960
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:37:59 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWl-0000Nq-Vi; Sun, 07 Jun 2015 00:33:28 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:37:01 -0700
Message-Id: <1433637428-21242-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1433637428-21242-1-git-send-email-flihp@twobit.us>
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 03/10] e2fsprogs: Add bbappend and apply initial xattr patch.
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
X-List-Received-Date: Sun, 07 Jun 2015 00:38:00 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../e2fsprogs/misc-xattr-copy-xattrs.patch         | 69 ++++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  5 ++
 2 files changed, 74 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-copy-xattrs.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-copy-xattrs.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-copy-xattrs.patch
new file mode 100644
index 0000000..7423c4e
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-copy-xattrs.patch
@@ -0,0 +1,69 @@
+Copy xattr blocks as part of the '-d' option to mke2fs. Initial implementation
+only supports xattrs with the 'security.' prefix. Copying xattrs is necessary
+to boot SELinux images without setting labels on firstboot.
+
+To build the xattr disk block we process the output from listxattr and
+lgetxattr from the source file system object. It's then associated with the
+inode and written to disk. ext2|3|4 saves space by allowing inodes to share
+identical xattr blocks. We maintain a primitive cache (a linked list) of the
+existing xattr blocks and only create new ones when when we must.
+
+Currently this cache keeps the full xattr block around on the heap so it's
+pretty inefficient. Still, the memory overhead is only on the order of single
+digit megabytes for core-image-selinux.
+
+TODO:
+  - Test additional xattrs with the 'security.' prefix like IMA.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/xattr.c
+===================================================================
+--- /dev/null
++++ e2fsprogs-1.42.9/misc/xattr.c
+@@ -0,0 +1,34 @@
++#include "xattr.h"
++
++#include <stdio.h>
++
++#ifdef XATTR_DEBUG
++#define XATTR_STDERR(fmt, args...) fprintf (stderr, fmt, ##args)
++#else
++#define XATTR_STDERR(fmt, args...) do {} while (0)
++#endif
++
++
++/* Free remaining resources after all files have been processed. */
++void
++xattr_cleanup ()
++{
++	XATTR_STDERR ("Cleaning up resources from xattrs.\n");
++}
++
++/* This is the entry point to the xattr module. This function copies the xattrs
++ * from the file at 'path' to the file system object at 'ino'.
++ *
++ * Parameters:
++ *   fs:  the file system object for the fs we're operating on
++ *   ino: inode for the object we're labeling
++ *   path: path to the object we're copying xattrs from
++ */
++errcode_t
++set_inode_xattr (ext2_filsys fs, ext2_ino_t ino, const char *path)
++{
++	errcode_t ret = 0;
++
++	XATTR_STDERR ("Copying xattrs from %s to inode 0x%x.\n", path, ino);
++	return ret;
++}
+Index: e2fsprogs-1.42.9/misc/xattr.h
+===================================================================
+--- /dev/null
++++ e2fsprogs-1.42.9/misc/xattr.h
+@@ -0,0 +1,6 @@
++#include "et/com_err.h"
++#include "ext2fs/ext2fs.h"
++
++/* Copy xattrs from source file to destination inode */
++errcode_t set_inode_xattrs(ext2_filsys fs, ext2_ino_t ino, const char *name);
++void xattr_cleanup ();
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
new file mode 100644
index 0000000..7f0198e
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += " \
+    file://misc-xattr-copy-xattrs.patch \
+"
-- 
2.1.4


