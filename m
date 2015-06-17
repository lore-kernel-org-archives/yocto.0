Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82D86E00A76; Wed, 17 Jun 2015 15:31:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C09E00A81
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:50 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnS-00032Z-K8; Wed, 17 Jun 2015 22:27:06 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:56 -0700
Message-Id: <1434580258-18121-7-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr block from source file.
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
X-List-Received-Date: Wed, 17 Jun 2015 22:31:55 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../e2fsprogs/misc-xattr-create-xattr-block.patch  | 341 +++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
 2 files changed, 342 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
new file mode 100644
index 0000000..5955b44
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
@@ -0,0 +1,341 @@
+To build the xattr disk block we process the output from listxattr and
+lgetxattr from the source file system object. This data is formated in a disk
+block according to the format specified in the kernel ext2 file system driver.
+See the comment block at the beginning of fs/ext2/xattr.c for details.
+
+Currently we only process attributes with the 'security.' prefix as our use
+case is SELinux labels and IMA. Additional prefixes can likely be supported with
+minimal effort but none have been tested.
+
+Once the xattr block has been created it is written to disk. The xattr block is
+associated with the appropriate file system object through the i_file_acl inode
+member and the inode is updated on disk.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/xattr.c
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/xattr.c
++++ e2fsprogs-1.42.9/misc/xattr.c
+@@ -1,6 +1,23 @@
+ #include "xattr.h"
+ 
++#include <attr/xattr.h>
++#include <ctype.h>
++#include <errno.h>
++#include <ext2fs/ext2_ext_attr.h>
++#include <linux/xattr.h>
++#include <stdint.h>
+ #include <stdio.h>
++#include <stdlib.h>
++#include <string.h>
++#include <sys/stat.h>
++#include <sys/types.h>
++#include <unistd.h>
++
++#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))
++#define HEADER(ptr) ((struct ext2_ext_attr_header *)(ptr))
++#define ENTRY(ptr)  ((struct ext2_ext_attr_entry *)(ptr))
++#define FIRST_ENTRY(ptr) ENTRY(HEADER(ptr) + 1)
++#define VALUE(hdr, ent) (((char*)hdr) + (ent->e_value_offs))
+ 
+ #ifdef XATTR_DEBUG
+ #define XATTR_STDERR(fmt, args...) fprintf (stderr, fmt, ##args)
+@@ -8,6 +25,28 @@
+ #define XATTR_STDERR(fmt, args...) do {} while (0)
+ #endif
+ 
++/* structure for mapping xattr name prefix data */
++typedef struct xattr_prefix {
++	int index;
++	char *name;
++	size_t length;
++} xattr_prefix_t;
++
++xattr_prefix_t xattr_prefixes [] = {
++/* Only interested in security prefix. Can support others though.
++	{
++		.index = EXT2_XATTR_INDEX_USER,
++		.name = XATTR_USER_PREFIX,
++		.length = XATTR_USER_PREFIX_LEN,
++	},
++*/
++	{
++		.index = EXT2_XATTR_INDEX_SECURITY,
++		.name = XATTR_SECURITY_PREFIX,
++		.length = XATTR_SECURITY_PREFIX_LEN,
++	},
++	{ 0 },
++};
+ 
+ /* Free remaining resources after all files have been processed. */
+ void
+@@ -16,6 +55,211 @@ xattr_cleanup ()
+ 	XATTR_STDERR ("Cleaning up resources from xattrs.\n");
+ }
+ 
++/* Get value for named xattr from file at path.
++ * Returns pointer to allocated block for value and length in length param.
++ * If no value, return NULL pointer and length of 0.
++ * On error return NULL pointer and length set to -1.
++ */
++static char*
++xattr_get_value (const char *path, const char *name, ssize_t *length)
++{
++	char *value = NULL;
++
++	*length = lgetxattr (path, name, NULL, 0);
++	if (*length == -1) {
++		com_err (__func__, errno, "lgetattr");
++		goto out;
++	}
++	if (*length == 0) {
++		fprintf (stderr, "xattr %s has value length 0\n", name);
++		goto out;
++	}
++	value = calloc (1, *length);
++	if (value == NULL) {
++		com_err (__func__, errno, "calloc");
++		goto out;
++	}
++	*length = lgetxattr (path, name, value, *length);
++	if (*length == -1) {
++		com_err (__func__, errno, "lgetattr");
++		goto value_err;
++	}
++out:
++	return value;
++
++value_err:
++	if (value)
++		free (value);
++	return NULL;
++}
++
++/* Get all attribute names for file at path. Return pointer to allocated memory
++ * block holding all names and the length through parameter size.
++ * If no xattrs: return NULL and set size to 0
++ * If error: return NULL and set size to -1
++ */
++static char*
++xattr_get_names (const char *path, ssize_t *size)
++{
++	char *names = NULL;
++
++	*size = llistxattr (path, NULL, 0);
++	if (*size == -1) {
++		com_err (__func__, errno, "llistxattr");
++		goto out;
++	}
++	if (*size == 0) {
++		/* no xattrs */
++		goto out;
++	}
++	names = calloc (1, *size);
++	if (names == NULL) {
++		com_err (__func__, errno, "calloc");
++		goto out;
++	}
++	*size = llistxattr (path, names, *size);
++	if (*size == -1) {
++		com_err (__func__, errno, "llistxattr");
++		goto cleanup;
++	}
++	if (*size == 0) {
++		fprintf (stdout, "Conflicting data, no xattrs for file: %s\n", path);
++		goto cleanup;
++	}
++out:
++	return names;
++
++cleanup:
++	if (names)
++		free (names);
++	return NULL;
++}
++
++/* return pointer to next string in xattr name block, don't go beyond length
++ */
++static inline char*
++next_name (char *name, size_t length)
++{
++	int i = 0;
++
++	for (i = 0; i < length; ++i)
++		if (name [i] == '\0') {
++			++i;
++			break;
++		}
++
++	return name + i;
++}
++
++/* Find entry in xattr_table with matching prefix. */
++static const xattr_prefix_t*
++xattr_find_prefix (char *name, size_t length)
++{
++	int i = 0;
++
++	XATTR_STDERR ("find_attr_data: searching for prefix from xattr name: %s\n", name);
++	for (i = 0; xattr_prefixes[i].index != 0; ++i) {
++		if (!strncmp (name, xattr_prefixes[i].name, MIN (length, xattr_prefixes[i].length))) {
++			XATTR_STDERR ("found match in table with index: %d\n", xattr_prefixes[i].index);
++			return &xattr_prefixes[i];
++		}
++	}
++	return NULL;
++}
++
++/* Query file at path for attributes. build up structure the file system
++ * expects of an extended attribute disk block (header parameter).
++ *
++ * The main loop walks through the xattr names one at a time. It gets the value
++ * for each named xattr and copies the data into the xattr block pointed to by
++ * the header parameter. To do this the loop also tracks the location of the
++ * associated entry and value. Values start at the end of the buffer and grow
++ * back towards the header while the entries start immediately after the header
++ * and grow towards the end of the block.
++ *
++ * See the comment block at the beginning of the xattr.c file in the ext2 file
++ * system code in the kernel: fs/ext2/xattr.c
++ * Assume the xattr block pointed to by header parameter is initialized to 0s.
++ */
++static int
++xattr_build_block (const char *path,
++		struct ext2_ext_attr_header **header,
++		size_t header_length)
++{
++	struct ext2_ext_attr_entry *entry = NULL;
++	char *names = NULL, *value = NULL, *name_curr = NULL;
++	ssize_t names_length = 0, value_length = 0;
++	size_t name_length = 0, value_index = 0, len_rem = 0;
++	const xattr_prefix_t *prefix = NULL;
++	int ret = 0;
++
++	XATTR_STDERR ("xattr_build_block for file: %s\n", path);
++	*header = NULL;
++	names = xattr_get_names (path, &names_length);
++	if (names == NULL) {
++		// no xattrs for file @ path or error
++		ret = names_length;
++		goto out;
++	}
++	*header = calloc (1, header_length);
++	if (*header == NULL) {
++		com_err (__func__, errno, "calloc");
++		goto out;
++	}
++	(*header)->h_magic = EXT2_EXT_ATTR_MAGIC;
++	(*header)->h_blocks = 1;
++	/* Values start at end of buffer. NOTE: It must be moved before a value can
++	 * be stored.
++	 */
++	value_index = header_length;
++	for (name_curr = names, entry = FIRST_ENTRY(*header), len_rem = names_length;
++		name_curr < names + names_length;
++		len_rem = names_length - (name_curr - names),
++			name_curr = next_name (name_curr, len_rem),
++			entry = EXT2_EXT_ATTR_NEXT(entry))
++	{
++		XATTR_STDERR ("xattr_build_block: processing xattr with name %s\n", name_curr);
++		name_length = strnlen (name_curr, len_rem);
++		prefix = xattr_find_prefix (name_curr, name_length);
++		if (!prefix) {
++			fprintf (stderr, "Don't currently handle xattr: %s\n", name_curr);
++			continue;
++		}
++		value = xattr_get_value (path, name_curr, &value_length);
++		if (value == NULL) {
++			// no xattr value or error
++			fprintf (stderr, "failed to get value, skipping\n");
++			goto next;
++		}
++		/* setup offsets and lengths for name and value */
++		entry->e_name_len = name_length - prefix->length;
++		entry->e_name_index = prefix->index;
++		/* Can't know these till we know the length of the value. */
++		entry->e_value_offs = value_index -= EXT2_EXT_ATTR_SIZE(value_length);
++		entry->e_value_size = value_length;
++		/* Check to be sure entry name and value don't overlap before copy. */
++		if (EXT2_EXT_ATTR_NAME(entry) + entry->e_name_len > VALUE(*header, entry)) {
++			fprintf (stderr, "xattr entry name and value overlap! Too much xattr data.");
++			ret = -1;
++			goto out;
++		}
++		/* copy name and value data then calculate the hash */
++		memcpy (EXT2_EXT_ATTR_NAME(entry),
++			name_curr + prefix->length,
++			entry->e_name_len);
++		memcpy (VALUE(*header, entry), value, entry->e_value_size);
++		entry->e_hash = ext2fs_ext_attr_hash_entry (entry, VALUE(*header, entry));
++next:
++		if (value)
++			free (value);
++	}
++	XATTR_STDERR ("xattr_build_block: done building xattr buffer\n");
++out:
++	if (names)
++		free (names);
++	return ret;
++}
++
+ /* This is the entry point to the xattr module. This function copies the xattrs
+  * from the file at 'path' to the file system object at 'ino'.
+  *
+@@ -28,7 +272,56 @@ errcode_t
+ set_inode_xattr (ext2_filsys fs, ext2_ino_t ino, const char *path)
+ {
+ 	errcode_t ret = 0;
++	char *buf = NULL;
++	struct ext2_inode inode = { 0 };
++	blk_t block = 0;
++	struct ext2_ext_attr_header *header = NULL;
++	uint32_t newcount = 0;
+ 
+ 	XATTR_STDERR ("Copying xattrs from %s to inode 0x%x.\n", path, ino);
++	/* Populate the xattr block for the file at path */
++	if (ret = xattr_build_block (path, &header, fs->blocksize)) {
++		goto out;
++	}
++	if (header == NULL) {
++		XATTR_STDERR ("set_inode_xattrs: no xattrs for %s\n", path);
++		goto out;
++	}
++	if (ret = ext2fs_read_inode (fs, ino, &inode)) {
++		com_err(__func__, ret, "ext2fs_read_inode");
++		goto out;
++	}
++	if (ret = ext2fs_alloc_block (fs, 0, NULL, &block)) {
++		com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
++		goto out;
++	}
++	ext2fs_mark_block_bitmap2 (fs->block_map, block);
++	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", block);
++	if (ret = ext2fs_write_ext_attr (fs, block, header)) {
++		com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret);
++		goto out;
++	}
++	/* point inode for current file to xattr block, update block count and
++	 * write inode to disk
++	 */
++	inode.i_file_acl = block;
++	if (ret = ext2fs_adjust_ea_refcount2(fs,
++					block,
++					(char*)header,
++					1,
++					&newcount))
++	{
++		com_err(__func__, ret, "ext2fs_adjust_ea_refcount");
++		goto out;
++	}
++	if (ret = ext2fs_iblk_add_blocks (fs, &inode, 1)) {
++		com_err(__func__, ret, "ext2fs_iblk_add_blocks failed");
++		goto out;
++	}
++	if (ret = ext2fs_write_inode (fs, ino, &inode))
++		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
++out:
++	if (header)
++		free (header);
+ 	return ret;
+ }
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index a4576b1..edc94d8 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -4,4 +4,5 @@ SRC_URI += " \
     file://misc-xattr-add-xattr-module-stub.patch \
     file://mke2fs.c-create_inode.c-copy-xattrs.patch \
     file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
+    file://misc-xattr-create-xattr-block.patch \
 "
-- 
2.1.4


