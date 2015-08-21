Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52812E00B02; Thu, 20 Aug 2015 23:25:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A2FE00AF8
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 23:25:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t7L6PFfd007866
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 20 Aug 2015 23:25:15 -0700 (PDT)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.3.206]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0235.001;
	Thu, 20 Aug 2015 23:25:14 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Philip Tricca <flihp@twobit.us>
Thread-Topic: [yocto] [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr
	block	from source file.
Thread-Index: AQHQqU6C2MCjJrzXZEyVb1rYLpg4Wp4WXEKA
Date: Fri, 21 Aug 2015 06:25:14 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AAFC70B693@ALA-MBB.corp.ad.wrs.com>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
	<1434580258-18121-7-git-send-email-flihp@twobit.us>
In-Reply-To: <1434580258-18121-7-git-send-email-flihp@twobit.us>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.162.153]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr block	from source file.
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
X-List-Received-Date: Fri, 21 Aug 2015 06:25:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Philip
> Tricca
> Sent: Thursday, June 18, 2015 6:31 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr block =
from source file.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  .../e2fsprogs/misc-xattr-create-xattr-block.patch  | 341 +++++++++++++++=
++++++
>  .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
>  2 files changed, 342 insertions(+)
>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-creat=
e-xattr-block.patch
>=20
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr=
-block.patch b/recipes-
> devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
> new file mode 100644
> index 0000000..5955b44
> --- /dev/null
> +++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block
> +++ .patch
> @@ -0,0 +1,341 @@
> +To build the xattr disk block we process the output from listxattr and
> +lgetxattr from the source file system object. This data is formated in
> +a disk block according to the format specified in the kernel ext2 file s=
ystem driver.
> +See the comment block at the beginning of fs/ext2/xattr.c for details.
> +
> +Currently we only process attributes with the 'security.' prefix as our
> +use case is SELinux labels and IMA. Additional prefixes can likely be
> +supported with minimal effort but none have been tested.
> +
> +Once the xattr block has been created it is written to disk. The xattr
> +block is associated with the appropriate file system object through the
> +i_file_acl inode member and the inode is updated on disk.
> +
> +Signed-off-by: Philip Tricca <flihp@twobit.us>
> +
> +Index: e2fsprogs-1.42.9/misc/xattr.c
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- e2fsprogs-1.42.9.orig/misc/xattr.c
> ++++ e2fsprogs-1.42.9/misc/xattr.c
> +@@ -1,6 +1,23 @@
> + #include "xattr.h"
> +
> ++#include <attr/xattr.h>
> ++#include <ctype.h>
> ++#include <errno.h>
> ++#include <ext2fs/ext2_ext_attr.h>
> ++#include <linux/xattr.h>
> ++#include <stdint.h>
> + #include <stdio.h>
> ++#include <stdlib.h>
> ++#include <string.h>
> ++#include <sys/stat.h>
> ++#include <sys/types.h>
> ++#include <unistd.h>
> ++
> ++#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y)) #define HEADER(ptr)
> ++((struct ext2_ext_attr_header *)(ptr)) #define ENTRY(ptr)  ((struct
> ++ext2_ext_attr_entry *)(ptr)) #define FIRST_ENTRY(ptr)
> ++ENTRY(HEADER(ptr) + 1) #define VALUE(hdr, ent) (((char*)hdr) +
> ++(ent->e_value_offs))
> +
> + #ifdef XATTR_DEBUG
> + #define XATTR_STDERR(fmt, args...) fprintf (stderr, fmt, ##args) @@
> +-8,6 +25,28 @@  #define XATTR_STDERR(fmt, args...) do {} while (0)
> +#endif
> +
> ++/* structure for mapping xattr name prefix data */ typedef struct
> ++xattr_prefix {
> ++	int index;
> ++	char *name;
> ++	size_t length;
> ++} xattr_prefix_t;
> ++
> ++xattr_prefix_t xattr_prefixes [] =3D {
> ++/* Only interested in security prefix. Can support others though.
> ++	{
> ++		.index =3D EXT2_XATTR_INDEX_USER,
> ++		.name =3D XATTR_USER_PREFIX,
> ++		.length =3D XATTR_USER_PREFIX_LEN,
> ++	},
> ++*/
> ++	{
> ++		.index =3D EXT2_XATTR_INDEX_SECURITY,
> ++		.name =3D XATTR_SECURITY_PREFIX,
> ++		.length =3D XATTR_SECURITY_PREFIX_LEN,

Hi Philip,

This cause build errors on some host OS when building e2fsprogs-native:

| /build/yp/y_x64_150821/tmp/work/x86_64-linux/e2fsprogs-native/1.42.9-r0/e=
2fsprogs-1.42.9/debugfs/../misc/xattr.c:62:11: error: 'XATTR_SECURITY_PREFI=
X' undeclared here (not in a function)
|    .name =3D XATTR_SECURITY_PREFIX,
|            ^
| /build/yp/y_x64_150821/tmp/work/x86_64-linux/e2fsprogs-native/1.42.9-r0/e=
2fsprogs-1.42.9/debugfs/../misc/xattr.c:63:13: error: 'XATTR_SECURITY_PREFI=
X_LEN' undeclared here (not in a function)
|    .length =3D XATTR_SECURITY_PREFIX_LEN,
|              ^

I did some investigate and found that your patch needs the header linux/xat=
tr.h,
which is provided by linux-libc-headers, but for -native package, there is =
no linux-libc-headers-native,
so it search the one from host OS, but the problem is, there is no XATTR_SE=
CURITY_PREFIX definition
in the linux/xattr.h on some host OS like: SUSE 11.x, centos 6, etc.

I'm not sure if your patch is really needed by the e2fsprogs-native, if not=
, I think we can make this
patch only apply for target package. If yes, you may need to make it avoid =
the dependency on host's
header or you may have a better idea about this.

Thanks,
Jackie

> ++	},
> ++	{ 0 },
> ++};
> +
> + /* Free remaining resources after all files have been processed. */
> +void @@ -16,6 +55,211 @@ xattr_cleanup ()
> + 	XATTR_STDERR ("Cleaning up resources from xattrs.\n");  }
> +
> ++/* Get value for named xattr from file at path.
> ++ * Returns pointer to allocated block for value and length in length pa=
ram.
> ++ * If no value, return NULL pointer and length of 0.
> ++ * On error return NULL pointer and length set to -1.
> ++ */
> ++static char*
> ++xattr_get_value (const char *path, const char *name, ssize_t *length)
> ++{
> ++	char *value =3D NULL;
> ++
> ++	*length =3D lgetxattr (path, name, NULL, 0);
> ++	if (*length =3D=3D -1) {
> ++		com_err (__func__, errno, "lgetattr");
> ++		goto out;
> ++	}
> ++	if (*length =3D=3D 0) {
> ++		fprintf (stderr, "xattr %s has value length 0\n", name);
> ++		goto out;
> ++	}
> ++	value =3D calloc (1, *length);
> ++	if (value =3D=3D NULL) {
> ++		com_err (__func__, errno, "calloc");
> ++		goto out;
> ++	}
> ++	*length =3D lgetxattr (path, name, value, *length);
> ++	if (*length =3D=3D -1) {
> ++		com_err (__func__, errno, "lgetattr");
> ++		goto value_err;
> ++	}
> ++out:
> ++	return value;
> ++
> ++value_err:
> ++	if (value)
> ++		free (value);
> ++	return NULL;
> ++}
> ++
> ++/* Get all attribute names for file at path. Return pointer to
> ++allocated memory
> ++ * block holding all names and the length through parameter size.
> ++ * If no xattrs: return NULL and set size to 0
> ++ * If error: return NULL and set size to -1  */ static char*
> ++xattr_get_names (const char *path, ssize_t *size) {
> ++	char *names =3D NULL;
> ++
> ++	*size =3D llistxattr (path, NULL, 0);
> ++	if (*size =3D=3D -1) {
> ++		com_err (__func__, errno, "llistxattr");
> ++		goto out;
> ++	}
> ++	if (*size =3D=3D 0) {
> ++		/* no xattrs */
> ++		goto out;
> ++	}
> ++	names =3D calloc (1, *size);
> ++	if (names =3D=3D NULL) {
> ++		com_err (__func__, errno, "calloc");
> ++		goto out;
> ++	}
> ++	*size =3D llistxattr (path, names, *size);
> ++	if (*size =3D=3D -1) {
> ++		com_err (__func__, errno, "llistxattr");
> ++		goto cleanup;
> ++	}
> ++	if (*size =3D=3D 0) {
> ++		fprintf (stdout, "Conflicting data, no xattrs for file: %s\n", path);
> ++		goto cleanup;
> ++	}
> ++out:
> ++	return names;
> ++
> ++cleanup:
> ++	if (names)
> ++		free (names);
> ++	return NULL;
> ++}
> ++
> ++/* return pointer to next string in xattr name block, don't go beyond
> ++length  */ static inline char* next_name (char *name, size_t length) {
> ++	int i =3D 0;
> ++
> ++	for (i =3D 0; i < length; ++i)
> ++		if (name [i] =3D=3D '\0') {
> ++			++i;
> ++			break;
> ++		}
> ++
> ++	return name + i;
> ++}
> ++
> ++/* Find entry in xattr_table with matching prefix. */ static const
> ++xattr_prefix_t* xattr_find_prefix (char *name, size_t length) {
> ++	int i =3D 0;
> ++
> ++	XATTR_STDERR ("find_attr_data: searching for prefix from xattr name: %=
s\n", name);
> ++	for (i =3D 0; xattr_prefixes[i].index !=3D 0; ++i) {
> ++		if (!strncmp (name, xattr_prefixes[i].name, MIN (length, xattr_prefix=
es[i].length))) {
> ++			XATTR_STDERR ("found match in table with index: %d\n",
> xattr_prefixes[i].index);
> ++			return &xattr_prefixes[i];
> ++		}
> ++	}
> ++	return NULL;
> ++}
> ++
> ++/* Query file at path for attributes. build up structure the file
> ++system
> ++ * expects of an extended attribute disk block (header parameter).
> ++ *
> ++ * The main loop walks through the xattr names one at a time. It gets
> ++the value
> ++ * for each named xattr and copies the data into the xattr block
> ++pointed to by
> ++ * the header parameter. To do this the loop also tracks the location
> ++of the
> ++ * associated entry and value. Values start at the end of the buffer
> ++and grow
> ++ * back towards the header while the entries start immediately after
> ++the header
> ++ * and grow towards the end of the block.
> ++ *
> ++ * See the comment block at the beginning of the xattr.c file in the
> ++ext2 file
> ++ * system code in the kernel: fs/ext2/xattr.c
> ++ * Assume the xattr block pointed to by header parameter is initialized=
 to 0s.
> ++ */
> ++static int
> ++xattr_build_block (const char *path,
> ++		struct ext2_ext_attr_header **header,
> ++		size_t header_length)
> ++{
> ++	struct ext2_ext_attr_entry *entry =3D NULL;
> ++	char *names =3D NULL, *value =3D NULL, *name_curr =3D NULL;
> ++	ssize_t names_length =3D 0, value_length =3D 0;
> ++	size_t name_length =3D 0, value_index =3D 0, len_rem =3D 0;
> ++	const xattr_prefix_t *prefix =3D NULL;
> ++	int ret =3D 0;
> ++
> ++	XATTR_STDERR ("xattr_build_block for file: %s\n", path);
> ++	*header =3D NULL;
> ++	names =3D xattr_get_names (path, &names_length);
> ++	if (names =3D=3D NULL) {
> ++		// no xattrs for file @ path or error
> ++		ret =3D names_length;
> ++		goto out;
> ++	}
> ++	*header =3D calloc (1, header_length);
> ++	if (*header =3D=3D NULL) {
> ++		com_err (__func__, errno, "calloc");
> ++		goto out;
> ++	}
> ++	(*header)->h_magic =3D EXT2_EXT_ATTR_MAGIC;
> ++	(*header)->h_blocks =3D 1;
> ++	/* Values start at end of buffer. NOTE: It must be moved before a valu=
e can
> ++	 * be stored.
> ++	 */
> ++	value_index =3D header_length;
> ++	for (name_curr =3D names, entry =3D FIRST_ENTRY(*header), len_rem =3D =
names_length;
> ++		name_curr < names + names_length;
> ++		len_rem =3D names_length - (name_curr - names),
> ++			name_curr =3D next_name (name_curr, len_rem),
> ++			entry =3D EXT2_EXT_ATTR_NEXT(entry))
> ++	{
> ++		XATTR_STDERR ("xattr_build_block: processing xattr with name %s\n", n=
ame_curr);
> ++		name_length =3D strnlen (name_curr, len_rem);
> ++		prefix =3D xattr_find_prefix (name_curr, name_length);
> ++		if (!prefix) {
> ++			fprintf (stderr, "Don't currently handle xattr: %s\n", name_curr);
> ++			continue;
> ++		}
> ++		value =3D xattr_get_value (path, name_curr, &value_length);
> ++		if (value =3D=3D NULL) {
> ++			// no xattr value or error
> ++			fprintf (stderr, "failed to get value, skipping\n");
> ++			goto next;
> ++		}
> ++		/* setup offsets and lengths for name and value */
> ++		entry->e_name_len =3D name_length - prefix->length;
> ++		entry->e_name_index =3D prefix->index;
> ++		/* Can't know these till we know the length of the value. */
> ++		entry->e_value_offs =3D value_index -=3D EXT2_EXT_ATTR_SIZE(value_len=
gth);
> ++		entry->e_value_size =3D value_length;
> ++		/* Check to be sure entry name and value don't overlap before copy. *=
/
> ++		if (EXT2_EXT_ATTR_NAME(entry) + entry->e_name_len > VALUE(*header, en=
try)) {
> ++			fprintf (stderr, "xattr entry name and value overlap! Too much xattr=
 data.");
> ++			ret =3D -1;
> ++			goto out;
> ++		}
> ++		/* copy name and value data then calculate the hash */
> ++		memcpy (EXT2_EXT_ATTR_NAME(entry),
> ++			name_curr + prefix->length,
> ++			entry->e_name_len);
> ++		memcpy (VALUE(*header, entry), value, entry->e_value_size);
> ++		entry->e_hash =3D ext2fs_ext_attr_hash_entry (entry, VALUE(*header,
> ++entry));
> ++next:
> ++		if (value)
> ++			free (value);
> ++	}
> ++	XATTR_STDERR ("xattr_build_block: done building xattr buffer\n");
> ++out:
> ++	if (names)
> ++		free (names);
> ++	return ret;
> ++}
> ++
> + /* This is the entry point to the xattr module. This function copies
> +the xattrs
> +  * from the file at 'path' to the file system object at 'ino'.
> +  *
> +@@ -28,7 +272,56 @@ errcode_t
> + set_inode_xattr (ext2_filsys fs, ext2_ino_t ino, const char *path)  {
> + 	errcode_t ret =3D 0;
> ++	char *buf =3D NULL;
> ++	struct ext2_inode inode =3D { 0 };
> ++	blk_t block =3D 0;
> ++	struct ext2_ext_attr_header *header =3D NULL;
> ++	uint32_t newcount =3D 0;
> +
> + 	XATTR_STDERR ("Copying xattrs from %s to inode 0x%x.\n", path, ino);
> ++	/* Populate the xattr block for the file at path */
> ++	if (ret =3D xattr_build_block (path, &header, fs->blocksize)) {
> ++		goto out;
> ++	}
> ++	if (header =3D=3D NULL) {
> ++		XATTR_STDERR ("set_inode_xattrs: no xattrs for %s\n", path);
> ++		goto out;
> ++	}
> ++	if (ret =3D ext2fs_read_inode (fs, ino, &inode)) {
> ++		com_err(__func__, ret, "ext2fs_read_inode");
> ++		goto out;
> ++	}
> ++	if (ret =3D ext2fs_alloc_block (fs, 0, NULL, &block)) {
> ++		com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
> ++		goto out;
> ++	}
> ++	ext2fs_mark_block_bitmap2 (fs->block_map, block);
> ++	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", block);
> ++	if (ret =3D ext2fs_write_ext_attr (fs, block, header)) {
> ++		com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret);
> ++		goto out;
> ++	}
> ++	/* point inode for current file to xattr block, update block count and
> ++	 * write inode to disk
> ++	 */
> ++	inode.i_file_acl =3D block;
> ++	if (ret =3D ext2fs_adjust_ea_refcount2(fs,
> ++					block,
> ++					(char*)header,
> ++					1,
> ++					&newcount))
> ++	{
> ++		com_err(__func__, ret, "ext2fs_adjust_ea_refcount");
> ++		goto out;
> ++	}
> ++	if (ret =3D ext2fs_iblk_add_blocks (fs, &inode, 1)) {
> ++		com_err(__func__, ret, "ext2fs_iblk_add_blocks failed");
> ++		goto out;
> ++	}
> ++	if (ret =3D ext2fs_write_inode (fs, ino, &inode))
> ++		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
> ++out:
> ++	if (header)
> ++		free (header);
> + 	return ret;
> + }
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recip=
es-
> devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> index a4576b1..edc94d8 100644
> --- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> +++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> @@ -4,4 +4,5 @@ SRC_URI +=3D " \
>      file://misc-xattr-add-xattr-module-stub.patch \
>      file://mke2fs.c-create_inode.c-copy-xattrs.patch \
>      file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
> +    file://misc-xattr-create-xattr-block.patch \
>  "
> --
> 2.1.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

