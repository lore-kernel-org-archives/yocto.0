Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5169.1621496360749743324
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 00:39:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: mingli.yu@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C846038C065C
	for <yocto@yoctoproject.org>; Thu, 20 May 2021 07:39:18 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 14K7dFDn030517
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 20 May 2021 00:39:16 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 20 May 2021 00:39:15 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.4 via Frontend Transport; Thu, 20 May 2021 00:39:14 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-dpdk][PATCH] dpdk: fix build with GCC 11
Date: Thu, 20 May 2021 15:38:01 +0800
Message-ID: <20210520073801.26088-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

From: Mingli Yu <mingli.yu@windriver.com>

Fixes:
 | In function 'memset',
 |     inlined from 'test_table_stub' at test_table_tables.c:151:4:
 | /buildarea/tmp/work/intel_x86_64-wrs-linux/dpdk/19.11.5-r0/recipe-sysr=
oot/usr/include/bits/string_fortified.h:59:10: error: '__builtin_memset' =
offset [0, 31] is out of the bounds [0, 0] [-Werror=3Darray-bounds]

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 ...001-test-table-fix-build-with-GCC-11.patch | 56 +++++++++++++++++++
 recipes-extended/dpdk/dpdk_19.11.5.bb         |  3 +-
 2 files changed, 58 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/dpdk/dpdk/0001-test-table-fix-build-=
with-GCC-11.patch

diff --git a/recipes-extended/dpdk/dpdk/0001-test-table-fix-build-with-GC=
C-11.patch b/recipes-extended/dpdk/dpdk/0001-test-table-fix-build-with-GC=
C-11.patch
new file mode 100644
index 0000000..4f76290
--- /dev/null
+++ b/recipes-extended/dpdk/dpdk/0001-test-table-fix-build-with-GCC-11.pa=
tch
@@ -0,0 +1,56 @@
+From 33c12ac5ba5f09727c6de807e71403dd260a7bbc Mon Sep 17 00:00:00 2001
+From: Ferruh Yigit <ferruh.yigit@intel.com>
+Date: Mon, 17 May 2021 16:57:39 +0100
+Subject: [PATCH] test/table: fix build with GCC 11
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+Build error:
+../app/test/test_table_tables.c: In function =E2=80=98test_table_stub=E2=
=80=99:
+../app/test/test_table_tables.c:31:9:
+	warning: =E2=80=98memset=E2=80=99 offset [0, 31] is out of the bounds [=
0, 0]
+	[-Warray-bounds]
+         memset((uint8_t *)mbuf + sizeof(struct rte_mbuf) + 32, 0, 32); =
\
+         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+../app/test/test_table_tables.c:151:25:
+	note: in expansion of macro =E2=80=98PREPARE_PACKET=E2=80=99
+  151 |                         PREPARE_PACKET(mbufs[i], 0xadadadad);
+      |                         ^~~~~~~~~~~~~~
+
+'key' points to mbuf header + 32 bytes, and memset clears next 32 bytes
+of 'key', so overall there needs to be 64 bytes after mbuf header.
+Adding a mbuf size check before memset.
+
+The original code has an assumption that mbuf data buffer follows mbuf
+header, this patch accepts same assumption.
+
+Bugzilla ID: 677
+Fixes: 5205954791cb ("app/test: packet framework unit tests")
+Cc: stable@dpdk.org
+
+Upstream-Status: Backport [https://github.com/DPDK/dpdk/commit/33c12ac5b=
a5f09727c6de807e71403dd260a7bbc]
+
+Signed-off-by: Ferruh Yigit <ferruh.yigit@intel.com>
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ app/test/test_table_tables.c | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/app/test/test_table_tables.c b/app/test/test_table_tables.c
+index 1aa269f95..4ff6ab16a 100644
+--- a/app/test/test_table_tables.c
++++ b/app/test/test_table_tables.c
+@@ -28,7 +28,8 @@ table_test table_tests[] =3D {
+ 			APP_METADATA_OFFSET(0));			\
+ 	key =3D RTE_MBUF_METADATA_UINT8_PTR(mbuf,			\
+ 			APP_METADATA_OFFSET(32));			\
+-	memset(key, 0, 32);						\
++	if (mbuf->priv_size + mbuf->buf_len >=3D 64)			\
++		memset(key, 0, 32);					\
+ 	k32 =3D (uint32_t *) key;						\
+ 	k32[0] =3D (value);						\
+ 	*signature =3D pipeline_test_hash(key, NULL, 0, 0);			\
+--=20
+2.17.1
+
diff --git a/recipes-extended/dpdk/dpdk_19.11.5.bb b/recipes-extended/dpd=
k/dpdk_19.11.5.bb
index 8410c8a..2ae9b43 100644
--- a/recipes-extended/dpdk/dpdk_19.11.5.bb
+++ b/recipes-extended/dpdk/dpdk_19.11.5.bb
@@ -4,7 +4,8 @@ SRC_URI +=3D " \
             file://dpdk-16.04-add-RTE_KERNELDIR_OUT-to-split-kernel-bu.p=
atch \
             file://dpdk-16.07-add-sysroot-option-within-app-makefile.pat=
ch \
             file://0001-Starting-from-Linux-5.9-get_user_pages_remote-AP=
I-do.patch \
-            file://usertools-devbind-fix-binding-for-built-in-kernel-dr.=
patch"
+            file://usertools-devbind-fix-binding-for-built-in-kernel-dr.=
patch \
+            file://0001-test-table-fix-build-with-GCC-11.patch"
=20
=20
 STABLE =3D "-stable"
--=20
2.29.2

