Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3987.1623825761343973200
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 23:42:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail1.wrs.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 645AB38C089E
	for <yocto@yoctoproject.org>; Wed, 16 Jun 2021 06:42:40 +0000 (UTC)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 15G6gbLL022215
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 15 Jun 2021 23:42:38 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 15G6gbfc006620
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 15 Jun 2021 23:42:37 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 15 Jun 2021 23:42:37 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Tue, 15 Jun 2021 23:42:36 -0700
From: "kai" <kai.kang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] sssd: add fix-ldblibdir.patch back
Date: Wed, 16 Jun 2021 14:42:33 +0800
Message-ID: <20210616064233.18527-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

The patch fix-ldblibdir.patch has been dropped when update sssd to
2.5.0. But it fails to start sssd without this patch. So add it back.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../sssd/files/fix-ldblibdir.patch            | 25 +++++++++++++++++++
 recipes-security/sssd/sssd_2.5.0.bb           |  1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/sssd/files/fix-ldblibdir.patch

diff --git a/recipes-security/sssd/files/fix-ldblibdir.patch b/recipes-security/sssd/files/fix-ldblibdir.patch
new file mode 100644
index 0000000..e350baf
--- /dev/null
+++ b/recipes-security/sssd/files/fix-ldblibdir.patch
@@ -0,0 +1,25 @@
+When calculate value of ldblibdir, it checks whether the directory of
+$ldblibdir exists. If not, it assigns ldblibdir with ${libdir}/ldb. It is not
+suitable for cross compile. Fix it that only re-assign ldblibdir when its value
+is empty.
+
+Upstream-Status: Inappropriate [cross compile specific]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+ src/external/libldb.m4 | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/external/libldb.m4 b/src/external/libldb.m4
+index c400add..5e5f06d 100644
+--- a/src/external/libldb.m4
++++ b/src/external/libldb.m4
+@@ -19,7 +19,7 @@ if test x"$with_ldb_lib_dir" != x; then
+     ldblibdir=$with_ldb_lib_dir
+ else
+     ldblibdir="`$PKG_CONFIG --variable=modulesdir ldb`"
+-    if ! test -d $ldblibdir; then
++    if test -z $ldblibdir; then
+         ldblibdir="${libdir}/ldb"
+     fi
+ fi
diff --git a/recipes-security/sssd/sssd_2.5.0.bb b/recipes-security/sssd/sssd_2.5.0.bb
index 4c92519..c5c870c 100644
--- a/recipes-security/sssd/sssd_2.5.0.bb
+++ b/recipes-security/sssd/sssd_2.5.0.bb
@@ -21,6 +21,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/2.5.0/sssd-2.5.0.tar.g
            file://no_gen.patch \
            file://fix_gid.patch \
            file://drop_ntpdate_chk.patch \
+           file://fix-ldblibdir.patch \
            "
 SRC_URI[sha256sum] = "afa62d7d8d23fca3aba093abe4ec0d14e7d9346c5b28ceb7c2c624bed98caa06"
 
-- 
2.17.1

