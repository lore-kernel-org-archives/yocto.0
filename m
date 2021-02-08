Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.31797.1612766001165959486
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Feb 2021 22:33:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D8B9938C062C
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2021 06:33:20 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 1186Whsc019997
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 7 Feb 2021 22:32:54 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sun, 7 Feb 2021 22:32:09 -0800
Received: from ala-lpggp7.wrs.com (147.11.105.171) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2106.2 via Frontend Transport; Sun, 7 Feb 2021 22:32:09 -0800
From: "hongxu" <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>,
        <yi.zhao@windriver.com>
Subject: [meta-selinux][PATCH] remove obsolete e2fsprogs bbappend
Date: Sun, 7 Feb 2021 22:32:09 -0800
Message-ID: <20210208063209.25651-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Since oe-core commit [f51835e022 e2fsprogs: upgrade 1.45.6 -> 1.45.7] app=
lied,
the backport misc_create_inode.c-label_rootfs.patch is not required

The lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch is not used by the r=
ecipe,
so also remove it.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../e2fsprogs/e2fsprogs_%.bbappend            |  1 -
 .../e2fsprogs/e2fsprogs_selinux.inc           |  3 --
 ...t2fs-ext2_ext_attr.h-add-xattr-index.patch | 20 ---------
 .../misc_create_inode.c-label_rootfs.patch    | 45 -------------------
 4 files changed, 69 deletions(-)
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
 delete mode 100644 recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_=
attr.h-add-xattr-index.patch
 delete mode 100644 recipes-devtools/e2fsprogs/files/misc_create_inode.c-=
label_rootfs.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend b/recipes-de=
vtools/e2fsprogs/e2fsprogs_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selin=
ux.inc', '', d)}
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc b/recipes-d=
evtools/e2fsprogs/e2fsprogs_selinux.inc
deleted file mode 100644
index 9cbb7fe..0000000
--- a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
-
-SRC_URI +=3D "file://misc_create_inode.c-label_rootfs.patch"
diff --git a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-=
add-xattr-index.patch b/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_=
ext_attr.h-add-xattr-index.patch
deleted file mode 100644
index b87c414..0000000
--- a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xat=
tr-index.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-Add xattr name index for xattrs with the 'security' prefix. These are de=
fined
-in the ext(2|3|4)/xattr.h in the kernel. We use the EXT2 prefix for cons=
istency
-with e2fslibs naming.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-
-Index: e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---- e2fsprogs-1.42.9.orig/lib/ext2fs/ext2_ext_attr.h
-+++ e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
-@@ -15,6 +15,9 @@
- /* Maximum number of references to one attribute block */
- #define EXT2_EXT_ATTR_REFCOUNT_MAX	1024
-=20
-+/* Name indexes */
-+#define EXT2_XATTR_INDEX_SECURITY               6
-+
- struct ext2_ext_attr_header {
- 	__u32	h_magic;	/* magic number for identification */
- 	__u32	h_refcount;	/* reference count */
diff --git a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_r=
ootfs.patch b/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_=
rootfs.patch
deleted file mode 100644
index 046e521..0000000
--- a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.p=
atch
+++ /dev/null
@@ -1,45 +0,0 @@
-From: Philip Tricca <flihp@twobit.us>
-To: tytso@mit.edu
-Cc: liezhi.yang@windriver.com
-Date: Sat, 20 Feb 2016 18:58:58 +0000
-Subject: [PATCH] misc/create_inode.c: Copy xattrs from root directory wh=
en populating fs.
-
-When copying a file system using the -d option the xattrs from the root
-directory need to be copied before the populate_fs recusion starts.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
-
----
- misc/create_inode.c | 8 ++++++++
- 1 file changed, 8 insertions(+)
-
-diff --git a/misc/create_inode.c b/misc/create_inode.c
-index a7b6d348..cfd15922 100644
---- a/misc/create_inode.c
-+++ b/misc/create_inode.c
-@@ -979,6 +979,13 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t p=
arent_ino,
- 		return retval;
- 	}
-=20
-+	retval =3D set_inode_xattr(fs, root, source_dir);
-+	if (retval) {
-+		com_err(__func__, retval,
-+			_("while setting xattrs for \"%s\""), source_dir);
-+		goto out;
-+	}
-+
- 	file_info.path_len =3D 0;
- 	file_info.path_max_len =3D 255;
- 	file_info.path =3D calloc(file_info.path_max_len, 1);
-@@ -987,6 +994,7 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t pa=
rent_ino,
- 			       &file_info, fs_callbacks);
-=20
- 	free(file_info.path);
-+out:
- 	free(hdlinks.hdl);
- 	return retval;
- }
---=20
-2.11.1
-
--=20
2.29.2

