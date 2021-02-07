Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.16259.1612668014212694114
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Feb 2021 19:20:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JKZr+OZh;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2052.outbound.protection.outlook.com [40.107.236.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C5D9338C06B0
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2021 03:20:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ni7tWGIzqa8iKpfLncdQYDwpDc/aJYfpri1aDbI/fsggaK+NhBg+oFp+2EWRWb3cJRO7GFRoz3Al3TMSg5whopgBG6y+mJraJZ4parTt9Hx11b6JZCYkxCH+vuIW5ClNo7assME6bTNVHHqRo+jZhmFjdbD9rVfN3fp7ZF5oGdvx1hmSdFs8ZLV3kL665A1mr05um+5MMmjM1dcNn8Wl39uuxW1AxL3plPTIPS6rpCYeSh5SI/IXSrNPiudNbrQm+XVYVGSZoQNEE911Qa59TCgN0hASzpelil9PvKaPNpH0fhDFGPRk96JD4OvJoa13+OQVvzcvWYfThP/08hYKwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hMFnJSQVqINeIecHbmb7fVfNQ7/2Sh3q5kT4NsCA+4=;
 b=Ij9hApRwyprkHRfOMuGj2MGwny5xNZr0ZDrjw9Uux9m+dNfMb52jwm0B/G0AWiTa3k5DFpl0X7AHYte6NATMds8pkDOP/pVRaiklX3nIzdRYkN0VWFt0gXMjjRZY2CMb4ZgG7dN5XArRrFC5/EDFY8W6NAQGUppWb5ntOO8hpM5dDVuLR8IJwoxRihMVW0zm8PhPBq/bv4d2fyDdChZs251Wna+fulXhUnSG5U23U72XO7gVjxRtsF0GM5kRY/6RHX2cIXLMjJx6o7H3pSMg52gpe1/a3XQWaMahFH+UUvEjEoC+gPzhRa/w0yBphBdJx/rCjJgWn9zjroWDO9pJQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hMFnJSQVqINeIecHbmb7fVfNQ7/2Sh3q5kT4NsCA+4=;
 b=JKZr+OZhvAKwbVg+dViMw2+yxT6IS2hNiYkNFUHjbM/nkoqfJ03Rpno0W3L1zZoRCTMaamwnszF0VEDyJ3G6ZB1E1P37iKnEElOWiJ15t2TVh5q7m1R9IDS9cod3jmKQKHvuX+hv3NxLIX27NNlJPzWXGk7GjHVl1EREelOqz6k=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.21; Sun, 7 Feb
 2021 03:20:11 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3825.030; Sun, 7 Feb 2021
 03:20:11 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH] e2fsprogs: remove bbappend
Date: Sun,  7 Feb 2021 11:19:56 +0800
Message-Id: <20210207031956.61635-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0211.apcprd02.prod.outlook.com
 (2603:1096:201:20::23) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0211.apcprd02.prod.outlook.com (2603:1096:201:20::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20 via Frontend Transport; Sun, 7 Feb 2021 03:20:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8f6df8a-4920-4a3d-1945-08d8cb174657
X-MS-TrafficTypeDiagnostic: CO1PR11MB4769:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4769E2CB890ECC5CE3B35931F9B09@CO1PR11MB4769.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:576;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hslnZI6jwmaPFI2bk+zUr9P2OXNqxGNDp/9nfNRVZ6Anl0kU44RhkpoPgLVTha0rXjoLoYd2eDVVHTmNenuN+PulmQNKpvp9xoIVQreonvEzovnUlQ4HvN6iVza5DriDrS/a5aaIeIwwiEb1LqmfC9Z7K2FBGJl84i9y63dSoy1P10Pz5eVSbX1YqvUZK/0gwxsZ1xcXZrP9qds0PGRqEXB27dyMp3UFTsHCzQ9WhE5D+CN+epHSxm0SVGsDaMbs/avVQgekhsKhQHhzyFFfmpbmUf4KUrYu71g94To1DP8aI9OWZIUJXPc69c3k/fkMQ8DriEj2QowY7f+9ioY994fCEWmSkA7vJ9ts2s1VDNmsvJwhpkR86nXzJaFT0AMCg7N+iromCjroqm9Xh45+720k5te8vaZ7L41+8fJWxXTK/9frzE9n1QGxQb+IET7fCY9aS155efMqoUhzPMS1sR5K+5gX24vxn/hVw3EJ64qoXCnHNeVUMbgrJGotiddfsXt/bK5ittlcnYEhltEdYwa3a3vwSgcfhfnYgqJvQK2vBVtUI1cxNzVsIg/7Rf5G/gPaVJITMzZbjIuBWGco+Zs7hdn3He42aSj/Z8Qg3n0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(376002)(346002)(366004)(39840400004)(86362001)(36756003)(966005)(6666004)(2616005)(5660300002)(8936002)(83380400001)(1076003)(8676002)(956004)(44832011)(52116002)(316002)(26005)(66556008)(66476007)(16526019)(66946007)(6506007)(2906002)(6512007)(186003)(478600001)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?SyFqrTO/7KSZu+37qf/JHWUfK3Mp5M6uHHgrXWNVWiheFjDme/IEnOEvI35v?=
 =?us-ascii?Q?OirKUn2h+OWnEECR2J75AbeuIQI5Vlp9CPzTKaiGWTy3pLhQKbe1LZTLfUzO?=
 =?us-ascii?Q?wSp3Pq6/Jw7u2P31F3hNp9zEpr7adWAP7cm1jzQNdf0mFF+5sh8h1uYwhu8f?=
 =?us-ascii?Q?+hx456pqB63z+OZVT/qMTKkETRTooNG7goHDzdgCz0Sya+BhC8u+iOEeCdB3?=
 =?us-ascii?Q?QtCBpykzpIy6/D7FFOfS+DO5ffiOEfiOlOs3y74hgGq1Fy5WshZx0asq0gjM?=
 =?us-ascii?Q?GfLo2Xa14QlNFNc5fH259cOQku7WbjBMr1/2Af9M0xhVN8D3vWjZEmpQpBbE?=
 =?us-ascii?Q?+bPRlwlv/UnaGr43fsJQYmnqJORRagNPFhX9QhxxdwHZ9FbXxs/7fI4Sprfy?=
 =?us-ascii?Q?A++r7cD80CbCfsiUYKBdT9B2edOEeu0rfAvJIjtNRniytwY71nZ9kUelvuFv?=
 =?us-ascii?Q?M+uMMCVH1485ZXNNP9Pd8it+UQWSFyY31bOSW0X8K3+kknwc7WD3jdwjsXNq?=
 =?us-ascii?Q?YXKsQmTzIW/BbJACpjdNeKPCTdl1CjFIUurz3CNEJoCUWFb2wBj45MaZArNq?=
 =?us-ascii?Q?wpWBVGTXTutlNKSppXS8BujaPp5cd6Ty7JfpClf+cDn/7YW8YSmo+mETypLx?=
 =?us-ascii?Q?7rpgtdhYaVvQBAFjnZuM11A0J2pM+/FFvW6WZNrlA+hDMCLRjt3pN8bKC12C?=
 =?us-ascii?Q?MmCR9Z6lXa3aIQNxqX7mlR9GqPoidCqZyb52VRJJ5EzUApY853GSYrvvnE+V?=
 =?us-ascii?Q?ACfwegsibCksaVfX8Web3d8XAgAp7qVfGQCL2AtJqUwq9Ug0DKEq+uBmqKsN?=
 =?us-ascii?Q?aDv5FngqUWEptp7cthsTGv75VvTG9Iz5GH3XR4/18M+e8f68U7P5Oyuk2cQd?=
 =?us-ascii?Q?0h6O0ww0T2Aborsy3QqX4K3ACdCm6GdxTyVFazBn+5ysMIsug7k5aargk7ef?=
 =?us-ascii?Q?oqiG0bwU/p4lK6XtGzIq0BTtOPOWxmfue9ezdQwV+A5VYygxPB2JgncElY0c?=
 =?us-ascii?Q?yJpDScFvs2R5iGru87sByTbHzYQiknMLXjRSLD7qj5Y6m85t9qKqgD9tgCpt?=
 =?us-ascii?Q?qEcLGCOd1sFoTnrnvAZHzE5f/FYf7CAe11sEuZnH+u6LV5Cr+g/ZyLAxp1aq?=
 =?us-ascii?Q?iY4g8GoGvbAE/hFUZ6+9Yl0j3fS3C0hfMh6mVlwI8T7ddj/WPph3Gw4c4lnl?=
 =?us-ascii?Q?5UpRfZpw8qkRatw29qmNNcDOel+e1+A0S6VJqr2iCWjvOJWa3Nja1NzWTpAc?=
 =?us-ascii?Q?mzPsz4vWVy46Tx2oloxw5TCkoQtzWi14or5j2+m6VcAKz2JfB6nQUsknNevj?=
 =?us-ascii?Q?xTWy/7W/blhNQj1bunnHOozW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8f6df8a-4920-4a3d-1945-08d8cb174657
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2021 03:20:11.1304
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BJLUdaHgb8XlVi4vu+wteuotES2p1MVDaP3Khgbj4O6qJdiGLlV4vSwAOtOl5fWbcVU6/Kg+/f/hTrGRwBRVlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Remove bbappend since the misc_create_inode.c-label_rootfs.patch has
been merged upstream[1].

[1] https://git.kernel.org/pub/scm/fs/ext2/e2fsprogs.git/commit/?id=3D761=
6fd6a599e44c5700c2c3a2e08979c6c5c747e

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
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
2.25.1

