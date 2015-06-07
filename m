Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42789E00A21; Sat,  6 Jun 2015 17:38:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6206E00A11
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:38:06 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWt-0000Nq-U4; Sun, 07 Jun 2015 00:33:36 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:37:05 -0700
Message-Id: <1433637428-21242-8-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1433637428-21242-1-git-send-email-flihp@twobit.us>
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 07/10] e2fsprogs: Add xattr security prefix data to lib/ext2fs/ext2_ext_attr.h
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
X-List-Received-Date: Sun, 07 Jun 2015 00:38:07 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch | 20 ++++++++++++++++++++
 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend |  1 +
 2 files changed, 21 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch b/recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
new file mode 100644
index 0000000..b87c414
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
@@ -0,0 +1,20 @@
+Add xattr name index for xattrs with the 'security' prefix. These are defined
+in the ext(2|3|4)/xattr.h in the kernel. We use the EXT2 prefix for consistency
+with e2fslibs naming.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
+===================================================================
+--- e2fsprogs-1.42.9.orig/lib/ext2fs/ext2_ext_attr.h
++++ e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
+@@ -15,6 +15,9 @@
+ /* Maximum number of references to one attribute block */
+ #define EXT2_EXT_ATTR_REFCOUNT_MAX	1024
+ 
++/* Name indexes */
++#define EXT2_XATTR_INDEX_SECURITY               6
++
+ struct ext2_ext_attr_header {
+ 	__u32	h_magic;	/* magic number for identification */
+ 	__u32	h_refcount;	/* reference count */
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index 990141b..1bb9a36 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -5,4 +5,5 @@ SRC_URI += " \
     file://Makefile.in-build-xattr.o.patch \
     file://misc-mke2fs.c-label-root-dir-and-cleanup.patch \
     file://misc-create_inode.c-label-fs-objects.patch \
+    file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
 "
-- 
2.1.4


