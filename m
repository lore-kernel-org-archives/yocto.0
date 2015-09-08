Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E53BCE00B45; Tue,  8 Sep 2015 10:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2778E00B21
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 10:37:35 -0700 (PDT)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZZMpr-0002yo-84 from Joe_MacDonald@mentor.com ;
	Tue, 08 Sep 2015 10:37:35 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 8 Sep 2015 10:37:34 -0700
Received: by burninator (Postfix, from userid 1000)	id 03C9D581634; Tue,  8
	Sep 2015 13:36:33 -0400 (EDT)
Date: Tue, 8 Sep 2015 13:36:33 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20150908173633.GH3916@mentor.com>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
	<1434580258-18121-7-git-send-email-flihp@twobit.us>
	<1B858668EC6A94408DCA5225FDFA85AAFC70B693@ALA-MBB.corp.ad.wrs.com>
	<55DA4823.2090000@twobit.us>
	<1B858668EC6A94408DCA5225FDFA85AAFC70D591@ALA-MBB.corp.ad.wrs.com>
	<55EB2D7A.5010102@twobit.us>
MIME-Version: 1.0
In-Reply-To: <55EB2D7A.5010102@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr block from source file.
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
X-List-Received-Date: Tue, 08 Sep 2015 17:37:42 -0000
X-Groupsio-MsgNum: 26320
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h3LYUU6HlUDSAOzy"
Content-Disposition: inline

--h3LYUU6HlUDSAOzy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Philip,

[Re: [yocto] [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr block from s=
ource file.] On 15.09.05 (Sat 10:59) Philip Tricca wrote:

> Hey Joe,
>=20
> Any thoughts on this? It looks like since my patch set went into master
> the meta-selinux build is broken for a number of build hosts (anything
> w/o linux-libc-headers). I think Jackie and I have worked out a solution
> but it's waiting for a maintainer to merge (or reject).
>=20
> I hate to think I'm breaking builds for some folks but we've made as
> much progress as we can w/o a maintainer getting involved. Any help you
> can provide would be appreciated.

Sure thing, I had been watching for this but it got lost in my inbox
somehow, so I appreciate the follow-up on it.  I'm hoping to have the
meta-selinux patchwork in place very soon, so we're less dependent on
proper care and feeding of our respective mailboxes.  In the meantime,
I'm working through the meta-selinux queue right now (at least
everything I can put my hands on).  I expect I'll be through it by the
end of the day, so if something's not go some kind of response by
tomorrow, it's fair to assume it's been lost and a re-send would be
helpful.  Of course, if the plan changes between now and sundown, I'll
follow up again with a new ETA.  :-)

-J.

>=20
> Thanks,
> Philip
>=20
> On 08/23/2015 10:27 PM, Huang, Jie (Jackie) wrote:
> >=20
> >=20
> >> -----Original Message-----
> >> From: Philip Tricca [mailto:flihp@twobit.us]
> >> Sent: Monday, August 24, 2015 6:25 AM
> >> To: Huang, Jie (Jackie)
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr=
 block from source file.
> >>
> >> Hello Jackie,
> >>
> >> On 08/20/2015 11:25 PM, Huang, Jie (Jackie) wrote:
> >>>> -----Original Message-----
> >>>> From: yocto-bounces@yoctoproject.org
> >>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Philip Tricca
> >>>> Sent: Thursday, June 18, 2015 6:31 AM
> >>>> To: yocto@yoctoproject.org
> >>>> Subject: [yocto] [meta-selinux][PATCHv2 6/8] e2fsprogs: Copy xattr b=
lock from source file.
> >>>>
> >>>> Signed-off-by: Philip Tricca <flihp@twobit.us>
> >>>> ---
> >>>>  .../e2fsprogs/misc-xattr-create-xattr-block.patch  | 341 ++++++++++=
+++++++++++
> >>>>  .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |   1 +
> >>>>  2 files changed, 342 insertions(+)
> >>>>  create mode 100644
> >>>> recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.pa
> >>>> tch
> >>>>
> >>>> diff --git
> >>>> a/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.
> >>>> patch b/recipes-
> >>>> devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
> >>>> new file mode 100644
> >>>> index 0000000..5955b44
> >>>> --- /dev/null
> >>>> +++ b/recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-bl
> >>>> +++ ock
> >>>> +++ .patch
> >>>> @@ -0,0 +1,341 @@
> >>>> +To build the xattr disk block we process the output from listxattr
> >>>> +and lgetxattr from the source file system object. This data is
> >>>> +formated in a disk block according to the format specified in the k=
ernel ext2 file system driver.
> >>>> +See the comment block at the beginning of fs/ext2/xattr.c for detai=
ls.
> >>>> +
> >>>> +Currently we only process attributes with the 'security.' prefix as
> >>>> +our use case is SELinux labels and IMA. Additional prefixes can
> >>>> +likely be supported with minimal effort but none have been tested.
> >>>> +
> >>>> +Once the xattr block has been created it is written to disk. The
> >>>> +xattr block is associated with the appropriate file system object
> >>>> +through the i_file_acl inode member and the inode is updated on dis=
k.
> >>>> +
> >>>> +Signed-off-by: Philip Tricca <flihp@twobit.us>
> >>>> +
> >>>> +Index: e2fsprogs-1.42.9/misc/xattr.c
> >>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>>> +--- e2fsprogs-1.42.9.orig/misc/xattr.c
> >>>> ++++ e2fsprogs-1.42.9/misc/xattr.c
> >>>> +@@ -1,6 +1,23 @@
> >>>> + #include "xattr.h"
> >>>> +
> >>>> ++#include <attr/xattr.h>
> >>>> ++#include <ctype.h>
> >>>> ++#include <errno.h>
> >>>> ++#include <ext2fs/ext2_ext_attr.h>
> >>>> ++#include <linux/xattr.h>
> >>>> ++#include <stdint.h>
> >>>> + #include <stdio.h>
> >>>> ++#include <stdlib.h>
> >>>> ++#include <string.h>
> >>>> ++#include <sys/stat.h>
> >>>> ++#include <sys/types.h>
> >>>> ++#include <unistd.h>
> >>>> ++
> >>>> ++#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y)) #define HEADER(ptr)
> >>>> ++((struct ext2_ext_attr_header *)(ptr)) #define ENTRY(ptr)  ((struct
> >>>> ++ext2_ext_attr_entry *)(ptr)) #define FIRST_ENTRY(ptr)
> >>>> ++ENTRY(HEADER(ptr) + 1) #define VALUE(hdr, ent) (((char*)hdr) +
> >>>> ++(ent->e_value_offs))
> >>>> +
> >>>> + #ifdef XATTR_DEBUG
> >>>> + #define XATTR_STDERR(fmt, args...) fprintf (stderr, fmt, ##args) @@
> >>>> +-8,6 +25,28 @@  #define XATTR_STDERR(fmt, args...) do {} while (0)
> >>>> +#endif
> >>>> +
> >>>> ++/* structure for mapping xattr name prefix data */ typedef struct
> >>>> ++xattr_prefix {
> >>>> ++	int index;
> >>>> ++	char *name;
> >>>> ++	size_t length;
> >>>> ++} xattr_prefix_t;
> >>>> ++
> >>>> ++xattr_prefix_t xattr_prefixes [] =3D {
> >>>> ++/* Only interested in security prefix. Can support others though.
> >>>> ++	{
> >>>> ++		.index =3D EXT2_XATTR_INDEX_USER,
> >>>> ++		.name =3D XATTR_USER_PREFIX,
> >>>> ++		.length =3D XATTR_USER_PREFIX_LEN,
> >>>> ++	},
> >>>> ++*/
> >>>> ++	{
> >>>> ++		.index =3D EXT2_XATTR_INDEX_SECURITY,
> >>>> ++		.name =3D XATTR_SECURITY_PREFIX,
> >>>> ++		.length =3D XATTR_SECURITY_PREFIX_LEN,
> >>>
> >>> Hi Philip,
> >>>
> >>> This cause build errors on some host OS when building e2fsprogs-nativ=
e:
> >>>
> >>> | /build/yp/y_x64_150821/tmp/work/x86_64-linux/e2fsprogs-native/1.42.=
9-r0/e2fsprogs-
> >> 1.42.9/debugfs/../misc/xattr.c:62:11: error: 'XATTR_SECURITY_PREFIX' u=
ndeclared here (not in a
> >> function)
> >>> |    .name =3D XATTR_SECURITY_PREFIX,
> >>> |            ^
> >>> | /build/yp/y_x64_150821/tmp/work/x86_64-linux/e2fsprogs-native/1.42.=
9-r0/e2fsprogs-
> >> 1.42.9/debugfs/../misc/xattr.c:63:13: error: 'XATTR_SECURITY_PREFIX_LE=
N' undeclared here (not in a
> >> function)
> >>> |    .length =3D XATTR_SECURITY_PREFIX_LEN,
> >>> |              ^
> >>>
> >>> I did some investigate and found that your patch needs the header
> >>> linux/xattr.h, which is provided by linux-libc-headers, but for
> >>> -native package, there is no linux-libc-headers-native, so it search
> >>> the one from host OS, but the problem is, there is no XATTR_SECURITY_=
PREFIX definition in the
> >> linux/xattr.h on some host OS like: SUSE 11.x, centos 6, etc.
> >>>
> >>> I'm not sure if your patch is really needed by the e2fsprogs-native,
> >>> if not, I think we can make this patch only apply for target package.
> >>> If yes, you may need to make it avoid the dependency on host's header=
 or you may have a better
> >> idea about this.
> >>
> >> I took a look at this yesterday. Creating a bbappend for linux-libc-he=
aders and adding 'native' to
> >> BBCLASSEXTEND seems like the most direct fix. Add a new dependency to =
the e2fsprogs package and I
> >> think the issue is resolved. I'll send patches to the list and if you'=
re willing to test them I'd appreciate it.
> >=20
> > I tested with your patch and it works fine, thanks!
> >=20
> > Thanks,
> > Jackie
> >=20
> >>
> >> Thanks,
> >> Philip
> >>
> >>>> ++	},
> >>>> ++	{ 0 },
> >>>> ++};
> >>>> +
> >>>> + /* Free remaining resources after all files have been processed. */
> >>>> +void @@ -16,6 +55,211 @@ xattr_cleanup ()
> >>>> + 	XATTR_STDERR ("Cleaning up resources from xattrs.\n");  }
> >>>> +
> >>>> ++/* Get value for named xattr from file at path.
> >>>> ++ * Returns pointer to allocated block for value and length in leng=
th param.
> >>>> ++ * If no value, return NULL pointer and length of 0.
> >>>> ++ * On error return NULL pointer and length set to -1.
> >>>> ++ */
> >>>> ++static char*
> >>>> ++xattr_get_value (const char *path, const char *name, ssize_t
> >>>> ++*length) {
> >>>> ++	char *value =3D NULL;
> >>>> ++
> >>>> ++	*length =3D lgetxattr (path, name, NULL, 0);
> >>>> ++	if (*length =3D=3D -1) {
> >>>> ++		com_err (__func__, errno, "lgetattr");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (*length =3D=3D 0) {
> >>>> ++		fprintf (stderr, "xattr %s has value length 0\n", name);
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	value =3D calloc (1, *length);
> >>>> ++	if (value =3D=3D NULL) {
> >>>> ++		com_err (__func__, errno, "calloc");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	*length =3D lgetxattr (path, name, value, *length);
> >>>> ++	if (*length =3D=3D -1) {
> >>>> ++		com_err (__func__, errno, "lgetattr");
> >>>> ++		goto value_err;
> >>>> ++	}
> >>>> ++out:
> >>>> ++	return value;
> >>>> ++
> >>>> ++value_err:
> >>>> ++	if (value)
> >>>> ++		free (value);
> >>>> ++	return NULL;
> >>>> ++}
> >>>> ++
> >>>> ++/* Get all attribute names for file at path. Return pointer to
> >>>> ++allocated memory
> >>>> ++ * block holding all names and the length through parameter size.
> >>>> ++ * If no xattrs: return NULL and set size to 0
> >>>> ++ * If error: return NULL and set size to -1  */ static char*
> >>>> ++xattr_get_names (const char *path, ssize_t *size) {
> >>>> ++	char *names =3D NULL;
> >>>> ++
> >>>> ++	*size =3D llistxattr (path, NULL, 0);
> >>>> ++	if (*size =3D=3D -1) {
> >>>> ++		com_err (__func__, errno, "llistxattr");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (*size =3D=3D 0) {
> >>>> ++		/* no xattrs */
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	names =3D calloc (1, *size);
> >>>> ++	if (names =3D=3D NULL) {
> >>>> ++		com_err (__func__, errno, "calloc");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	*size =3D llistxattr (path, names, *size);
> >>>> ++	if (*size =3D=3D -1) {
> >>>> ++		com_err (__func__, errno, "llistxattr");
> >>>> ++		goto cleanup;
> >>>> ++	}
> >>>> ++	if (*size =3D=3D 0) {
> >>>> ++		fprintf (stdout, "Conflicting data, no xattrs for file: %s\n", p=
ath);
> >>>> ++		goto cleanup;
> >>>> ++	}
> >>>> ++out:
> >>>> ++	return names;
> >>>> ++
> >>>> ++cleanup:
> >>>> ++	if (names)
> >>>> ++		free (names);
> >>>> ++	return NULL;
> >>>> ++}
> >>>> ++
> >>>> ++/* return pointer to next string in xattr name block, don't go
> >>>> ++beyond length  */ static inline char* next_name (char *name, size_=
t length) {
> >>>> ++	int i =3D 0;
> >>>> ++
> >>>> ++	for (i =3D 0; i < length; ++i)
> >>>> ++		if (name [i] =3D=3D '\0') {
> >>>> ++			++i;
> >>>> ++			break;
> >>>> ++		}
> >>>> ++
> >>>> ++	return name + i;
> >>>> ++}
> >>>> ++
> >>>> ++/* Find entry in xattr_table with matching prefix. */ static const
> >>>> ++xattr_prefix_t* xattr_find_prefix (char *name, size_t length) {
> >>>> ++	int i =3D 0;
> >>>> ++
> >>>> ++	XATTR_STDERR ("find_attr_data: searching for prefix from xattr na=
me: %s\n", name);
> >>>> ++	for (i =3D 0; xattr_prefixes[i].index !=3D 0; ++i) {
> >>>> ++		if (!strncmp (name, xattr_prefixes[i].name, MIN (length, xattr_p=
refixes[i].length))) {
> >>>> ++			XATTR_STDERR ("found match in table with index: %d\n",
> >>>> xattr_prefixes[i].index);
> >>>> ++			return &xattr_prefixes[i];
> >>>> ++		}
> >>>> ++	}
> >>>> ++	return NULL;
> >>>> ++}
> >>>> ++
> >>>> ++/* Query file at path for attributes. build up structure the file
> >>>> ++system
> >>>> ++ * expects of an extended attribute disk block (header parameter).
> >>>> ++ *
> >>>> ++ * The main loop walks through the xattr names one at a time. It
> >>>> ++gets the value
> >>>> ++ * for each named xattr and copies the data into the xattr block
> >>>> ++pointed to by
> >>>> ++ * the header parameter. To do this the loop also tracks the
> >>>> ++location of the
> >>>> ++ * associated entry and value. Values start at the end of the
> >>>> ++buffer and grow
> >>>> ++ * back towards the header while the entries start immediately
> >>>> ++after the header
> >>>> ++ * and grow towards the end of the block.
> >>>> ++ *
> >>>> ++ * See the comment block at the beginning of the xattr.c file in
> >>>> ++the
> >>>> ++ext2 file
> >>>> ++ * system code in the kernel: fs/ext2/xattr.c
> >>>> ++ * Assume the xattr block pointed to by header parameter is initia=
lized to 0s.
> >>>> ++ */
> >>>> ++static int
> >>>> ++xattr_build_block (const char *path,
> >>>> ++		struct ext2_ext_attr_header **header,
> >>>> ++		size_t header_length)
> >>>> ++{
> >>>> ++	struct ext2_ext_attr_entry *entry =3D NULL;
> >>>> ++	char *names =3D NULL, *value =3D NULL, *name_curr =3D NULL;
> >>>> ++	ssize_t names_length =3D 0, value_length =3D 0;
> >>>> ++	size_t name_length =3D 0, value_index =3D 0, len_rem =3D 0;
> >>>> ++	const xattr_prefix_t *prefix =3D NULL;
> >>>> ++	int ret =3D 0;
> >>>> ++
> >>>> ++	XATTR_STDERR ("xattr_build_block for file: %s\n", path);
> >>>> ++	*header =3D NULL;
> >>>> ++	names =3D xattr_get_names (path, &names_length);
> >>>> ++	if (names =3D=3D NULL) {
> >>>> ++		// no xattrs for file @ path or error
> >>>> ++		ret =3D names_length;
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	*header =3D calloc (1, header_length);
> >>>> ++	if (*header =3D=3D NULL) {
> >>>> ++		com_err (__func__, errno, "calloc");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	(*header)->h_magic =3D EXT2_EXT_ATTR_MAGIC;
> >>>> ++	(*header)->h_blocks =3D 1;
> >>>> ++	/* Values start at end of buffer. NOTE: It must be moved before a=
 value can
> >>>> ++	 * be stored.
> >>>> ++	 */
> >>>> ++	value_index =3D header_length;
> >>>> ++	for (name_curr =3D names, entry =3D FIRST_ENTRY(*header), len_rem=
 =3D names_length;
> >>>> ++		name_curr < names + names_length;
> >>>> ++		len_rem =3D names_length - (name_curr - names),
> >>>> ++			name_curr =3D next_name (name_curr, len_rem),
> >>>> ++			entry =3D EXT2_EXT_ATTR_NEXT(entry))
> >>>> ++	{
> >>>> ++		XATTR_STDERR ("xattr_build_block: processing xattr with name %s\=
n", name_curr);
> >>>> ++		name_length =3D strnlen (name_curr, len_rem);
> >>>> ++		prefix =3D xattr_find_prefix (name_curr, name_length);
> >>>> ++		if (!prefix) {
> >>>> ++			fprintf (stderr, "Don't currently handle xattr: %s\n", name_cur=
r);
> >>>> ++			continue;
> >>>> ++		}
> >>>> ++		value =3D xattr_get_value (path, name_curr, &value_length);
> >>>> ++		if (value =3D=3D NULL) {
> >>>> ++			// no xattr value or error
> >>>> ++			fprintf (stderr, "failed to get value, skipping\n");
> >>>> ++			goto next;
> >>>> ++		}
> >>>> ++		/* setup offsets and lengths for name and value */
> >>>> ++		entry->e_name_len =3D name_length - prefix->length;
> >>>> ++		entry->e_name_index =3D prefix->index;
> >>>> ++		/* Can't know these till we know the length of the value. */
> >>>> ++		entry->e_value_offs =3D value_index -=3D EXT2_EXT_ATTR_SIZE(valu=
e_length);
> >>>> ++		entry->e_value_size =3D value_length;
> >>>> ++		/* Check to be sure entry name and value don't overlap before co=
py. */
> >>>> ++		if (EXT2_EXT_ATTR_NAME(entry) + entry->e_name_len > VALUE(*heade=
r, entry)) {
> >>>> ++			fprintf (stderr, "xattr entry name and value overlap! Too much =
xattr data.");
> >>>> ++			ret =3D -1;
> >>>> ++			goto out;
> >>>> ++		}
> >>>> ++		/* copy name and value data then calculate the hash */
> >>>> ++		memcpy (EXT2_EXT_ATTR_NAME(entry),
> >>>> ++			name_curr + prefix->length,
> >>>> ++			entry->e_name_len);
> >>>> ++		memcpy (VALUE(*header, entry), value, entry->e_value_size);
> >>>> ++		entry->e_hash =3D ext2fs_ext_attr_hash_entry (entry, VALUE(*head=
er,
> >>>> ++entry));
> >>>> ++next:
> >>>> ++		if (value)
> >>>> ++			free (value);
> >>>> ++	}
> >>>> ++	XATTR_STDERR ("xattr_build_block: done building xattr buffer\n");
> >>>> ++out:
> >>>> ++	if (names)
> >>>> ++		free (names);
> >>>> ++	return ret;
> >>>> ++}
> >>>> ++
> >>>> + /* This is the entry point to the xattr module. This function
> >>>> +copies the xattrs
> >>>> +  * from the file at 'path' to the file system object at 'ino'.
> >>>> +  *
> >>>> +@@ -28,7 +272,56 @@ errcode_t
> >>>> + set_inode_xattr (ext2_filsys fs, ext2_ino_t ino, const char *path)=
  {
> >>>> + 	errcode_t ret =3D 0;
> >>>> ++	char *buf =3D NULL;
> >>>> ++	struct ext2_inode inode =3D { 0 };
> >>>> ++	blk_t block =3D 0;
> >>>> ++	struct ext2_ext_attr_header *header =3D NULL;
> >>>> ++	uint32_t newcount =3D 0;
> >>>> +
> >>>> + 	XATTR_STDERR ("Copying xattrs from %s to inode 0x%x.\n", path,
> >>>> + ino);
> >>>> ++	/* Populate the xattr block for the file at path */
> >>>> ++	if (ret =3D xattr_build_block (path, &header, fs->blocksize)) {
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (header =3D=3D NULL) {
> >>>> ++		XATTR_STDERR ("set_inode_xattrs: no xattrs for %s\n", path);
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (ret =3D ext2fs_read_inode (fs, ino, &inode)) {
> >>>> ++		com_err(__func__, ret, "ext2fs_read_inode");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (ret =3D ext2fs_alloc_block (fs, 0, NULL, &block)) {
> >>>> ++		com_err(__func__, ret, "ext2fs_alloc_block: returned %d", ret);
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	ext2fs_mark_block_bitmap2 (fs->block_map, block);
> >>>> ++	XATTR_STDERR ("writing xattr block 0x%x to disk:\n", block);
> >>>> ++	if (ret =3D ext2fs_write_ext_attr (fs, block, header)) {
> >>>> ++		com_err(__func__, ret, "ext2fs_write_ext_attr: returned %d", ret=
);
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	/* point inode for current file to xattr block, update block coun=
t and
> >>>> ++	 * write inode to disk
> >>>> ++	 */
> >>>> ++	inode.i_file_acl =3D block;
> >>>> ++	if (ret =3D ext2fs_adjust_ea_refcount2(fs,
> >>>> ++					block,
> >>>> ++					(char*)header,
> >>>> ++					1,
> >>>> ++					&newcount))
> >>>> ++	{
> >>>> ++		com_err(__func__, ret, "ext2fs_adjust_ea_refcount");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (ret =3D ext2fs_iblk_add_blocks (fs, &inode, 1)) {
> >>>> ++		com_err(__func__, ret, "ext2fs_iblk_add_blocks failed");
> >>>> ++		goto out;
> >>>> ++	}
> >>>> ++	if (ret =3D ext2fs_write_inode (fs, ino, &inode))
> >>>> ++		com_err(__func__, ret, "ext2fs_write_inode: returned %d", ret);
> >>>> ++out:
> >>>> ++	if (header)
> >>>> ++		free (header);
> >>>> + 	return ret;
> >>>> + }
> >>>> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> >>>> b/recipes- devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> >>>> index a4576b1..edc94d8 100644
> >>>> --- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> >>>> +++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> >>>> @@ -4,4 +4,5 @@ SRC_URI +=3D " \
> >>>>      file://misc-xattr-add-xattr-module-stub.patch \
> >>>>      file://mke2fs.c-create_inode.c-copy-xattrs.patch \
> >>>>      file://lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch \
> >>>> +    file://misc-xattr-create-xattr-block.patch \
> >>>>  "
> >>>> --
> >>>> 2.1.4
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >=20
>=20

--=20
-Joe MacDonald.
:wq

--h3LYUU6HlUDSAOzy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJV7xyhAAoJEEn8ffcsOfaWjNQIAIAn9h4/v24Alf9yRoCyDFir
4KldacTNFbzNUiPIjxg3+JSijNrwJ3lP8DVjaa92HK6WonH+PxFh/PTH8etiXlEx
KIiy4w4p/wbtYaRqe1sJGRU0CsWmRwHDAGC4Z9PribBA0sS3xXLUfOitEV7wL1kP
Sc/TM3tW+f55jIjzEETGIwLvwDe4fK4ugNU8RRlZWx192UE7JQt3nHt7MY+JlFcL
/jb53p+mweXkG3VFXuhWQOLyKqLhGTu7xne/GapAcvxiKvX9zdbEBQZtp9Et8w3c
q3ilXHBUBxJiPsXIt605x8ugmmhwynHZbpfb2uhvWtfU2A5QnIsyinpjzKuU1Bk=
=JnjF
-----END PGP SIGNATURE-----

--h3LYUU6HlUDSAOzy--
