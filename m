Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42BF4E00A3B; Tue,  9 Jun 2015 23:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97335E00A38
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 23:03:42 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z2Z2W-0003ha-FC; Wed, 10 Jun 2015 05:59:06 +0000
Message-ID: <5577D332.2080103@twobit.us>
Date: Tue, 09 Jun 2015 23:03:30 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
	<1433637428-21242-11-git-send-email-flihp@twobit.us>
In-Reply-To: <1433637428-21242-11-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][RFC 10/10] e2fsprogs: Add patch to implement simple linked list as cache for existing xattr blocks.
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
X-List-Received-Date: Wed, 10 Jun 2015 06:03:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

It looks like I screwed up this patch when I was rewriting some git
history. I'm working up a fix.

Philip

On 06/06/2015 05:37 PM, Philip Tricca wrote:
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  .../e2fsprogs/misc-xattr-create-xattr-cache.patch  | 217 +++++++++++++++++++++
>  .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
>  2 files changed, 218 insertions(+)
>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
> 
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
> new file mode 100644
> index 0000000..ba09e2b
> --- /dev/null
> +++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
> @@ -0,0 +1,217 @@
> +Implement the xattr block cache as a sorted linked list. This requires the add
> +and rm functions be able to compare xattr blocks. This is implemented as two
> +functions. The first compares individual entries and the second compares the
> +whole xattr block by iterating over and comparing individual entries.
> +
> +The xattr block cache keeps memory allocated on the heap around across
> +invocations of the set_inode_xattr function. To free this memory we implement
> +an xattr_cleanup function that iterates over the cache freeing resources
> +associated with each node.
> +
> +Signed-off-by: Philip Tricca <flihp@twobit.us>
> +
> +Index: e2fsprogs-1.42.9/misc/xattr.c
> +===================================================================
> +--- e2fsprogs-1.42.9.orig/misc/xattr.c
> ++++ e2fsprogs-1.42.9/misc/xattr.c
> +@@ -76,7 +76,16 @@ xattr_free_node (xattr_node_t *node)
> + void
> + xattr_cleanup ()
> + {
> ++	xattr_node_t *curr = NULL, *tmp = NULL;
> ++	size_t count = 0;
> ++
> + 	XATTR_STDERR ("Cleaning up resources from xattrs.\n");
> ++	for (curr = xattr_list_head; curr != NULL; ++count) {
> ++                tmp = curr;
> ++                curr = curr->next;
> ++                xattr_free_node (tmp);
> ++	}
> ++	XATTR_STDERR ("Freed %d xattr_node_ts.\n", count);
> + }
> + 
> + /* Get value for named xattr from file at path.
> +@@ -284,6 +293,77 @@ out:
> + 	return ret;
> + }
> + 
> ++/* Compre two extended attribute entries. This includes the entry and the value.
> ++ * if a < b return -1
> ++ * if a == b return 0
> ++ * if a > b return 1
> ++ */
> ++static int
> ++xattr_compare_entry (struct ext2_ext_attr_header *header_a,
> ++		struct ext2_ext_attr_entry *entry_a,
> ++		struct ext2_ext_attr_header *header_b,
> ++		struct ext2_ext_attr_entry *entry_b)
> ++{
> ++	int ret = 0;
> ++
> ++	if (entry_a->e_hash != entry_b->e_hash ||
> ++		entry_a->e_name_index != entry_b->e_name_index ||
> ++		entry_a->e_name_len != entry_b->e_name_len ||
> ++		entry_a->e_value_size != entry_b->e_value_size)
> ++	{
> ++		if (ret = memcmp (EXT2_EXT_ATTR_NAME(entry_a),
> ++				EXT2_EXT_ATTR_NAME(entry_b),
> ++				MIN (entry_a->e_name_len, entry_b->e_name_len)))
> ++			return ret;
> ++		if (entry_a->e_value_block != 0 || entry_b->e_value_block != 0)
> ++			return -EIO;
> ++		return memcmp (VALUE(header_a, entry_a),
> ++				VALUE(header_b, entry_b),
> ++				MIN(entry_a->e_value_size, entry_b->e_value_size));
> ++	}
> ++}
> ++
> ++/* Compare two extended attribute blocks. This includes the header as well as
> ++ *   all entries and values.
> ++ * Algorithm is almost straight from the ext2 kernel drive with the exception
> ++ *   of adding lt and gt behavior to get sorting.
> ++ * If a < b return < 0
> ++ * If a == b return 0
> ++ * If a > b return > 0
> ++ */
> ++static int
> ++xattr_compare_block (struct ext2_ext_attr_header *header_a,
> ++					 struct ext2_ext_attr_header *header_b)
> ++{
> ++	struct ext2_ext_attr_entry *entry_a = NULL, *entry_b = NULL;
> ++	int ret = 0;
> ++
> ++	XATTR_STDERR ("comparing xattr blocks at 0x%x and 0x%x\n", header_a, header_b);
> ++	for (entry_a = FIRST_ENTRY(header_a), entry_b = FIRST_ENTRY(header_b);
> ++		!EXT2_EXT_IS_LAST_ENTRY(entry_a) && !EXT2_EXT_IS_LAST_ENTRY(entry_b);
> ++		entry_a = EXT2_EXT_ATTR_NEXT(entry_a), entry_b = EXT2_EXT_ATTR_NEXT(entry_b))
> ++	{
> ++		xattr_pp_value (VALUE(header_a, entry_a), entry_a->e_value_size);
> ++		xattr_pp_value (VALUE(header_b, entry_b), entry_b->e_value_size);
> ++		if (ret = xattr_compare_entry (header_a, entry_a, header_b, entry_b)) {
> ++			XATTR_STDERR ("entries do not match: %d\n", ret);
> ++			return ret;
> ++		} else {
> ++			XATTR_STDERR ("entries match!\n");
> ++		}
> ++	}
> ++	/* All entries checked were equal. Handle edge case where entry_a is a
> ++	 * subset of entry_b: test to see if either block had more entries than the
> ++	 * other. More entries -> block is greater than the other.
> ++	 */
> ++	if (EXT2_EXT_IS_LAST_ENTRY(entry_a) && !EXT2_EXT_IS_LAST_ENTRY(entry_b))
> ++		return -1;
> ++	if (!EXT2_EXT_IS_LAST_ENTRY(entry_a) && EXT2_EXT_IS_LAST_ENTRY(entry_b))
> ++		return 1;
> ++	if (EXT2_EXT_IS_LAST_ENTRY(entry_a) && EXT2_EXT_IS_LAST_ENTRY(entry_b))
> ++		return 0;
> ++}
> ++
> + /* Add an xattr node to the list specified by head. This function will update
> +  * head as necessary. It will return a pointer to the xattr_node_t added to the
> +  * list. In the event that an identical xattr block is already on the list this
> +@@ -292,7 +372,37 @@ out:
> + static xattr_node_t*
> + xattr_add_block (xattr_node_t **head, xattr_node_t *node)
> + {
> ++	xattr_node_t *curr_node = NULL, *prev_node = NULL;
> ++	int ret = 0;
> ++
> + 	XATTR_STDERR ("Adding xattr to the the node list.\n");
> ++	if (node == NULL)
> ++		return NULL;
> ++	/* list is empty, node becomes first node */
> ++	if (!(*head)) {
> ++		*head = node;
> ++		return node;
> ++	}
> ++	for (prev_node = NULL, curr_node = *head;
> ++		curr_node != NULL;
> ++		prev_node = curr_node, curr_node = curr_node->next)
> ++	{
> ++		/* When the supplied node is "less than" the current node we add it to
> ++		 * the list before the current ndoe.
> ++		 */
> ++		if ((ret = xattr_compare_block (node->header, curr_node->header)) < 0) {
> ++			node->next = curr_node;
> ++			if (prev_node)
> ++				prev_node->next = node;
> ++			else /* edge case: we added node to the head of the list */
> ++				*head = node;
> ++			return node;
> ++		} else if (ret == 0) { /* found a match */
> ++			return curr_node;
> ++		}
> ++	}
> ++	/* reached end of list, new node should be last */
> ++	prev_node->next = node;
> + 	return node;
> + }
> + 
> +@@ -302,8 +412,27 @@ xattr_add_block (xattr_node_t **head, xa
> + static xattr_node_t*
> + xattr_rm_block (xattr_node_t **head, xattr_node_t *node)
> + {
> ++	xattr_node_t *curr_node = NULL, *prev_node = NULL;
> ++
> + 	XATTR_STDERR ("Removing xattr from the node list.\n");
> +-	return node;
> ++	/* no list, or empty list: nothing to search though */
> ++	if (!head || !(*head))
> ++		return NULL;
> ++
> ++	for (prev_node = NULL, curr_node = *head;
> ++		curr_node != NULL;
> ++		prev_node = curr_node, curr_node = curr_node->next)
> ++	{
> ++		if (node == curr_node) {
> ++			if (prev_node)
> ++				prev_node->next = curr_node->next;
> ++			else
> ++				*head = curr_node->next;
> ++			return curr_node;
> ++		}
> ++	}
> ++	/* reached end of list, no match */
> ++	return NULL;
> + }
> + 
> + /* This is the entry point to the xattr module. This function copies the xattrs
> +@@ -342,23 +471,23 @@ set_inode_xattr (ext2_filsys fs, ext2_in
> + 		com_err(__func__, ret, "ext2fs_read_inode");
> + 		goto out;
> + 	}
> +-	if (ret = ext2fs_alloc_block (fs, 0, NULL, &block)) {
> ++	if (ret = ext2fs_alloc_block (fs, 0, NULL, &(node->block))) {
> + 		com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
> + 		goto out;
> + 	}
> +-	ext2fs_mark_block_bitmap2 (fs->block_map, block);
> +-	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", block);
> +-	if (ret = ext2fs_write_ext_attr (fs, block, header)) {
> ++	ext2fs_mark_block_bitmap2 (fs->block_map, node->block);
> ++	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", node->block);
> ++	if (ret = ext2fs_write_ext_attr (fs, node->block, node->header)) {
> + 		com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret);
> + 		goto out;
> + 	}
> + 	/* point inode for current file to xattr block, update block count and
> + 	 * write inode to disk
> + 	 */
> +-	inode.i_file_acl = block;
> ++	inode.i_file_acl = node->block;
> + 	if (ret = ext2fs_adjust_ea_refcount2(fs,
> +-					block,
> +-					(char*)header,
> ++					node->block,
> ++					(char*)(node->header),
> + 					1,
> + 					&newcount))
> + 	{
> +@@ -371,6 +500,7 @@ set_inode_xattr (ext2_filsys fs, ext2_in
> + 	}
> + 	if (ret = ext2fs_write_inode (fs, ino, &inode))
> + 		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
> ++	return ret;
> + out:
> + 	xattr_free_node (node);
> + 	return ret;
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> index 241a9bf..8756d76 100644
> --- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> +++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> @@ -8,4 +8,5 @@ SRC_URI += " \
>      file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
>      file://misc-xattr-create-xattr-block.patch \
>      file://misc-xattr-create-xattr-block-node.patch \
> +    file://misc-xattr-create-xattr-cache.patch \
>  "
> 


