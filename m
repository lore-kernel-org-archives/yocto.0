Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 798EBE00A81; Wed, 17 Jun 2015 15:32:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32776E00A75
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:58 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5Lna-00032Z-RX; Wed, 17 Jun 2015 22:27:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:58 -0700
Message-Id: <1434580258-18121-9-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 8/8] e2fsprogs: Implement xattr block cache with simple linked list.
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
X-List-Received-Date: Wed, 17 Jun 2015 22:32:00 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../e2fsprogs/misc-xattr-create-xattr-cache.patch  | 181 +++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
 2 files changed, 182 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
new file mode 100644
index 0000000..38e6454
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
@@ -0,0 +1,181 @@
+Implement the xattr block cache as an unsorted linked list. This requires the
+add and rm functions be able to test for equality between xattr blocks. This
+is implemented as two functions. The first compares individual entries and the
+second compares the whole xattr block by iterating over the individual entries.
+
+The xattr block cache keeps memory allocated on the heap around across
+invocations of the set_inode_xattr function. To free this memory we implement
+an xattr_cleanup function that iterates over the cache freeing resources
+associated with each node.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/xattr.c
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/xattr.c
++++ e2fsprogs-1.42.9/misc/xattr.c
+@@ -5,6 +5,7 @@
+ #include <errno.h>
+ #include <ext2fs/ext2_ext_attr.h>
+ #include <linux/xattr.h>
++#include <stdbool.h>
+ #include <stdint.h>
+ #include <stdio.h>
+ #include <stdlib.h>
+@@ -25,6 +26,9 @@
+ #define XATTR_STDERR(fmt, args...) do {} while (0)
+ #endif
+ 
++static size_t cache_hit = 0;
++static size_t cache_miss = 0;
++
+ /* nodes for simple linked list to track xattr blocks, calling it a cache
+  * would be a stretch ...
+  */
+@@ -76,7 +80,18 @@ xattr_free_node (xattr_node_t *node)
+ void
+ xattr_cleanup ()
+ {
++	xattr_node_t *curr = NULL, *tmp = NULL;
++	size_t count = 0;
++
+ 	XATTR_STDERR ("Cleaning up resources from xattrs.\n");
++	for (curr = xattr_list_head; curr != NULL; ++count) {
++		tmp = curr;
++		curr = curr->next;
++		xattr_free_node (tmp);
++	}
++	XATTR_STDERR ("Freed %d xattr_node_ts.\n", count);
++	XATTR_STDERR ("Cache hits: %u\n", cache_hit);
++	XATTR_STDERR ("Cache miss: %u\n", cache_miss);
+ }
+ 
+ /* Get value for named xattr from file at path.
+@@ -284,6 +299,58 @@ out:
+ 	return ret;
+ }
+ 
++static bool
++xattr_entry_isequal (struct ext2_ext_attr_header *header_a,
++			struct ext2_ext_attr_entry *entry_a,
++			struct ext2_ext_attr_header *header_b,
++			struct ext2_ext_attr_entry *entry_b)
++{
++	if (entry_a->e_hash == entry_b->e_hash ||
++		entry_a->e_name_index == entry_b->e_name_index ||
++		entry_a->e_name_len == entry_b->e_name_len ||
++		entry_a->e_value_size == entry_b->e_value_size)
++	{
++		/* If entry header data all matches we check name and value */
++		if (memcmp (EXT2_EXT_ATTR_NAME(entry_a),
++				EXT2_EXT_ATTR_NAME(entry_b),
++				MIN (entry_a->e_name_len, entry_b->e_name_len)) != 0)
++			return false;
++		if (memcmp (VALUE(header_a, entry_a),
++				VALUE(header_b, entry_b),
++				MIN(entry_a->e_value_size, entry_b->e_value_size)) != 0)
++			return false;
++		return true;
++	} else {
++		return false;
++	}
++}
++
++static bool
++xattr_block_isequal (struct ext2_ext_attr_header *header_a,
++			struct ext2_ext_attr_header *header_b)
++{
++	struct ext2_ext_attr_entry *entry_a = NULL, *entry_b = NULL;
++
++	XATTR_STDERR ("equality test: xattr blocks at 0x%x and 0x%x\n", header_a, header_b);
++	for (entry_a = FIRST_ENTRY(header_a), entry_b = FIRST_ENTRY(header_b);
++		!EXT2_EXT_IS_LAST_ENTRY(entry_a) && !EXT2_EXT_IS_LAST_ENTRY(entry_b);
++		entry_a = EXT2_EXT_ATTR_NEXT(entry_a), entry_b = EXT2_EXT_ATTR_NEXT(entry_b))
++	{
++		if (!xattr_entry_isequal (header_a, entry_a, header_b, entry_b)) {
++			/* bail as soon as we find entries that don't match */
++			XATTR_STDERR ("entries do not match\n");
++			return false;
++		}
++	}
++	/* Be sure we're on the last element from each block. */
++	if (EXT2_EXT_IS_LAST_ENTRY(entry_a) && EXT2_EXT_IS_LAST_ENTRY(entry_b)) {
++		XATTR_STDERR ("entries match\n");
++		return true;
++	} else {
++		return false;
++	}
++}
++
+ /* Add an xattr node to the list specified by head. This function will update
+  * head as necessary. It will return a pointer to the xattr_node_t added to the
+  * list. In the event that an identical xattr block is already on the list this
+@@ -292,7 +359,31 @@ out:
+ static xattr_node_t*
+ xattr_add_block (xattr_node_t **head, xattr_node_t *node)
+ {
++	xattr_node_t *curr_node = NULL, *prev_node = NULL;
++
+ 	XATTR_STDERR ("Adding xattr to the the node list.\n");
++	if (node == NULL)
++		return NULL;
++	/* list is empty, node becomes first node */
++	if (!(*head)) {
++		*head = node;
++		return node;
++	}
++	for (curr_node = *head; curr_node != NULL; curr_node = curr_node->next)
++	{
++		/* cache hit */
++		if (xattr_block_isequal (node->header, curr_node->header)) {
++			++cache_hit;
++			return curr_node;
++		}
++		/* end of list */
++		if (curr_node->next == NULL) {
++			++cache_miss;
++			curr_node->next = node;
++			return node;
++		}
++	}
++	/* should never reach: assert? */
+ 	return node;
+ }
+ 
+@@ -302,8 +393,27 @@ xattr_add_block (xattr_node_t **head, xa
+ static xattr_node_t*
+ xattr_rm_block (xattr_node_t **head, xattr_node_t *node)
+ {
++	xattr_node_t *curr_node = NULL, *prev_node = NULL;
++
+ 	XATTR_STDERR ("Removing xattr from the node list.\n");
+-	return node;
++	/* no list, or empty list: nothing to search though */
++	if (!head || !(*head))
++		return NULL;
++
++	for (prev_node = NULL, curr_node = *head;
++		curr_node != NULL;
++		prev_node = curr_node, curr_node = curr_node->next)
++	{
++		if (node == curr_node) {
++			if (prev_node)
++				prev_node->next = curr_node->next;
++			else
++				*head = curr_node->next;
++			return curr_node;
++		}
++	}
++	/* reached end of list, no match */
++	return NULL;
+ }
+ 
+ /* This is the entry point to the xattr module. This function copies the xattrs
+@@ -386,6 +496,7 @@ set_inode_xattr (ext2_filsys fs, ext2_in
+ 	}
+ 	if (ret = ext2fs_write_inode (fs, ino, &inode))
+ 		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
++	return ret;
+ out:
+ 	xattr_free_node (node);
+ 	return ret;
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index 0705ec4..d8de9da 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -6,4 +6,5 @@ SRC_URI += " \
     file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
     file://misc-xattr-create-xattr-block.patch \
     file://misc-xattr-create-xattr-block-node.patch \
+    file://misc-xattr-create-xattr-cache.patch \
 "
-- 
2.1.4


