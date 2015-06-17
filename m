Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DCAFE00A71; Wed, 17 Jun 2015 15:31:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2959CE00A6C
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:40 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnK-00032Z-NS; Wed, 17 Jun 2015 22:26:56 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:53 -0700
Message-Id: <1434580258-18121-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 3/8] e2fsprogs: Add bbappend and stub for xattr module.
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
X-List-Received-Date: Wed, 17 Jun 2015 22:31:41 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../misc-xattr-add-xattr-module-stub.patch         | 57 ++++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  5 ++
 2 files changed, 62 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-add-xattr-module-stub.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-add-xattr-module-stub.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-add-xattr-module-stub.patch
new file mode 100644
index 0000000..5a39abe
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-add-xattr-module-stub.patch
@@ -0,0 +1,57 @@
+This patch adds the structure for a module to duplicate xattr blocks as part
+of copying files with the '-d' option to mke2fs. The function stubs here are
+intended to be the public interface to the module. We also define a macro
+for dumping debug data specific to this module.
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
index 0000000..02318ea
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += " \
+    file://misc-xattr-add-xattr-module-stub.patch \
+"
-- 
2.1.4


