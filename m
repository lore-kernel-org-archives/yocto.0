Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8720CE00A10; Sat,  6 Jun 2015 17:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C72D9E00960
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:37:53 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWf-0000Nq-9t; Sun, 07 Jun 2015 00:33:23 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:36:58 -0700
Message-Id: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 00/10] Label file system in build.
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
X-List-Received-Date: Sun, 07 Jun 2015 00:37:58 -0000

This is a request for comment (RFC) on some patches to enable labing the
root file system of an SELinux image. Having to relabel a system as part
of the "first boot" has been a significant limitation so hopefully the
maintainers will agree at least that the functionality is needed /
useful.

Currently these patches will copy any xattrs in the 'security' namespace
which covers my use case: SELinux and eventually IMA as part of some work
in a different layer (meta-measured). Additional xattrs can likely be
supported without much trouble but I haven't tested anything beyond
SELinux. Eventually I imagine this should go upstream into
openembedded-core but since SELinux is the use case I'm submitting the
patch against meta-selinux first for feedback and testing.

Approach:
These patches ride on an existing patch set in openembedded-core that
add the '-d' option to mke2fs to copy files into the newly created file
system. I've added another function called as part of the recursive
traversal to copy xattrs for each file system object processed.

The algorithm for creating an xattr block is straight forward. We query
the existing xattrs on a file using 'lgetfattr' and then process them one
at a time getting their values (lgetxattr) and building a disk block in
the required format. Creating the xattr disk block is a bit of a pain but
it's mostly a mechanical process of copying data from source to
destination in the proper format. The block is then associated with right
inode by way of the i_file_acl member of the ext2_inode structure and
written to disk.

Caching:
The ext* file systems allow for xattrs to be shared between inodes when
their contents are identical as a way to save space. SELinux benefits
from this greatly as many files have the same label. My implementation of
a cache to enable xattr block sharing is grossly inefficient but
functional.

I'm currently looking for examples of similar caching techniques (likely
from the SELinux tools) to better inform this implementation. I expect to
change the caching implementation but in the meantime I thought I'd get
an RFC out to get early feedback / testing.

Thanks,
Philip
--

Philip Tricca (10):
  policycoreutils: Add FTS_NOCHDIR flag to fts_open.
  selinux-image: Add new image class to label the rootfs.
  e2fsprogs: Add bbappend and apply initial xattr patch.
  e2fsprogs: Add patch to build xattr code.
  e2fsprogs: Add patch make calls necessary to label file system root
    and do cleanup.
  e2fsprogs: Add patch to call xattr copy function in populate_fs.
  e2fsprogs: Add xattr security prefix data to
    lib/ext2fs/ext2_ext_attr.h
  e2fsprogs: Add patch to copy xattr block from source file.
  e2fsprogs: Add patch to hold xattr header and block number in a
    structure for the cache.
  e2fsprogs: Add patch to implement simple linked list as cache for
    existing xattr blocks.

 classes/selinux-image.bbclass                      |   8 +
 .../e2fsprogs/Makefile.in-build-xattr.o.patch      |  96 ++++++
 ...ib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch |  20 ++
 .../misc-create_inode.c-label-fs-objects.patch     |  30 ++
 .../misc-mke2fs.c-label-root-dir-and-cleanup.patch |  40 +++
 .../e2fsprogs/misc-xattr-copy-xattrs.patch         |  69 ++++
 .../misc-xattr-create-xattr-block-node.patch       | 126 ++++++++
 .../e2fsprogs/misc-xattr-create-xattr-block.patch  | 351 +++++++++++++++++++++
 .../e2fsprogs/misc-xattr-create-xattr-cache.patch  | 217 +++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  12 +
 .../images/core-image-selinux-minimal.bb           |   2 +-
 recipes-security/images/core-image-selinux.bb      |   2 +-
 .../policycoreutils-setfiles-path.patch            |  27 ++
 recipes-security/selinux/policycoreutils_2.3.bb    |   1 +
 14 files changed, 999 insertions(+), 2 deletions(-)
 create mode 100644 classes/selinux-image.bbclass
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/Makefile.in-build-xattr.o.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-create_inode.c-label-fs-objects.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-mke2fs.c-label-root-dir-and-cleanup.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-copy-xattrs.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-setfiles-path.patch

-- 
2.1.4


