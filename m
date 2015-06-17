Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2180BE00A73; Wed, 17 Jun 2015 15:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,TVD_SPACE_RATIO
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56D4E00A70
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:45 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnQ-00032Z-M4; Wed, 17 Jun 2015 22:27:01 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:55 -0700
Message-Id: <1434580258-18121-6-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 5/8] e2fsprogs: Add xattr security prefix data to lib/ext2fs/ext2_ext_attr.h
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
X-List-Received-Date: Wed, 17 Jun 2015 22:31:46 -0000

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
index 3950bf7..a4576b1 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -3,4 +3,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 SRC_URI += " \
     file://misc-xattr-add-xattr-module-stub.patch \
     file://mke2fs.c-create_inode.c-copy-xattrs.patch \
+    file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
 "
-- 
2.1.4


