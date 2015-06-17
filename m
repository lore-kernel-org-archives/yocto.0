Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67636E00A76; Wed, 17 Jun 2015 15:31:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B530FE00A84
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:53 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnX-00032Z-Am; Wed, 17 Jun 2015 22:27:09 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:57 -0700
Message-Id: <1434580258-18121-8-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 7/8] e2fsprogs: Add stub functions for an xattr cache and struct to hold the header and block data.
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
 .../misc-xattr-create-xattr-block-node.patch       | 175 +++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
 2 files changed, 176 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch
new file mode 100644
index 0000000..f2e4582
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch
@@ -0,0 +1,175 @@
+Add two new functions to manage a cache of xattr blocks as well as a new struct
+to build a linked list of xattr blocks.
+
+xattr_add_block: Adds a block to the cache. This function is supplied with a
+pointer to the head of a linked list of xattr blocks and an xattr block to add.
+The purpose of this cache is to allow sharing of what would otherwise be
+duplicate xattr blocks and so duplicates are not allowed in this cache. If an
+identical block is already in the cache a pointer to this block will be
+returned.
+
+xattr_rm_block: Removes a block from the cache. This function is supplied with
+a pointer to the cache and a node that shall be removed from the cache. The
+cache is searched for the node and the node is removed if found.
+
+Both functions are integrated into the 'set_inode_xattr'. Here the logic is
+rearranged to cope with associating preexisting xattr blocks with inodes as
+well as creating new blocks when necessary.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/xattr.c
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/xattr.c
++++ e2fsprogs-1.42.9/misc/xattr.c
+@@ -25,6 +25,19 @@
+ #define XATTR_STDERR(fmt, args...) do {} while (0)
+ #endif
+ 
++/* nodes for simple linked list to track xattr blocks, calling it a cache
++ * would be a stretch ...
++ */
++typedef struct xattr_node xattr_node_t;
++
++struct xattr_node {
++	struct ext2_ext_attr_header *header;
++	blk_t block;
++	struct xattr_node *next;
++};
++
++xattr_node_t *xattr_list_head = NULL;
++
+ /* structure for mapping xattr name prefix data */
+ typedef struct xattr_prefix {
+ 	int index;
+@@ -48,6 +61,17 @@ xattr_prefix_t xattr_prefixes [] = {
+ 	{ 0 },
+ };
+ 
++/* free xattr node and the buffer holding the xattr block */
++static void
++xattr_free_node (xattr_node_t *node)
++{
++	if (node) {
++		if (node->header)
++			free (node->header);
++		free (node);
++	}
++}
++
+ /* Free remaining resources after all files have been processed. */
+ void
+ xattr_cleanup ()
+@@ -260,6 +284,28 @@ out:
+ 	return ret;
+ }
+ 
++/* Add an xattr node to the list specified by head. This function will update
++ * head as necessary. It will return a pointer to the xattr_node_t added to the
++ * list. In the event that an identical xattr block is already on the list this
++ * function will return a pointer to the pre-existing node.
++ */
++static xattr_node_t*
++xattr_add_block (xattr_node_t **head, xattr_node_t *node)
++{
++	XATTR_STDERR ("Adding xattr to the the node list.\n");
++	return node;
++}
++
++/* Remove xattr node from list. Returns pointer to the node being removed.
++ * NOTE: We're not comparing the xattr blocks, just the nodes.
++ */
++static xattr_node_t*
++xattr_rm_block (xattr_node_t **head, xattr_node_t *node)
++{
++	XATTR_STDERR ("Removing xattr from the node list.\n");
++	return node;
++}
++
+ /* This is the entry point to the xattr module. This function copies the xattrs
+  * from the file at 'path' to the file system object at 'ino'.
+  *
+@@ -274,16 +320,21 @@ set_inode_xattr (ext2_filsys fs, ext2_in
+ 	errcode_t ret = 0;
+ 	char *buf = NULL;
+ 	struct ext2_inode inode = { 0 };
+-	blk_t block = 0;
+-	struct ext2_ext_attr_header *header = NULL;
++	xattr_node_t *node = NULL, *node_tmp = NULL;
+ 	uint32_t newcount = 0;
+ 
+ 	XATTR_STDERR ("Copying xattrs from %s to inode 0x%x.\n", path, ino);
++	/* Create an xattr_node_t for it and add it to the cache if appropriate */
++	if (!(node = calloc (1, sizeof (xattr_node_t)))) {
++		com_err (__func__, errno, "calloc");
++		ret = errno;
++		goto out;
++	}
+ 	/* Populate the xattr block for the file at path */
+-	if (ret = xattr_build_block (path, &header, fs->blocksize)) {
++	if (ret = xattr_build_block (path, &(node->header), fs->blocksize)) {
+ 		goto out;
+ 	}
+-	if (header == NULL) {
++	if (node->header == NULL) {
+ 		XATTR_STDERR ("set_inode_xattrs: no xattrs for %s\n", path);
+ 		goto out;
+ 	}
+@@ -291,23 +342,38 @@ set_inode_xattr (ext2_filsys fs, ext2_in
+ 		com_err(__func__, ret, "ext2fs_read_inode");
+ 		goto out;
+ 	}
+-	if (ret = ext2fs_alloc_block (fs, 0, NULL, &block)) {
+-		com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
++	if (!(node_tmp = xattr_add_block (&xattr_list_head, node))) {
++		fprintf (stderr, "Cannot add NULL node to xattr_block list.\n");
+ 		goto out;
+ 	}
+-	ext2fs_mark_block_bitmap2 (fs->block_map, block);
+-	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", block);
+-	if (ret = ext2fs_write_ext_attr (fs, block, header)) {
+-		com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret);
+-		goto out;
++	if (node == node_tmp) {
++		/* xattr block is new: add to list & write to disk */
++		XATTR_STDERR ("no pre-existing xattr block, creating / adding\n");
++		if (ret = ext2fs_alloc_block (fs, 0, NULL, &node->block)) {
++			com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
++			xattr_rm_block (&xattr_list_head, node);
++			goto out;
++		}
++		ext2fs_mark_block_bitmap2 (fs->block_map, node->block);
++		XATTR_STDERR ("writing xattr block 0x%x to disk:\n", node->block);
++		if (ret = ext2fs_write_ext_attr (fs, node->block, node->header)) {
++			com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret);
++			xattr_rm_block (&xattr_list_head, node);
++			goto out;
++		}
++	} else {
++		/* already have an identical xattr block, free the one we just made */
++		XATTR_STDERR ("using xattr from existing block: 0x%x\n", node_tmp->block);
++		xattr_free_node (node);
++		node = node_tmp;
+ 	}
+ 	/* point inode for current file to xattr block, update block count and
+ 	 * write inode to disk
+ 	 */
+-	inode.i_file_acl = block;
++	inode.i_file_acl = node->block;
+ 	if (ret = ext2fs_adjust_ea_refcount2(fs,
+-					block,
+-					(char*)header,
++					node->block,
++					(char*)(node->header),
+ 					1,
+ 					&newcount))
+ 	{
+@@ -321,7 +387,6 @@ set_inode_xattr (ext2_filsys fs, ext2_in
+ 	if (ret = ext2fs_write_inode (fs, ino, &inode))
+ 		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
+ out:
+-	if (header)
+-		free (header);
++	xattr_free_node (node);
+ 	return ret;
+ }
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index edc94d8..0705ec4 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -5,4 +5,5 @@ SRC_URI += " \
     file://mke2fs.c-create_inode.c-copy-xattrs.patch \
     file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
     file://misc-xattr-create-xattr-block.patch \
+    file://misc-xattr-create-xattr-block-node.patch \
 "
-- 
2.1.4


