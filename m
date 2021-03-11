Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3729.1615455325493564696
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 01:35:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 511D938C058A
	for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 09:35:24 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 12B9Z2va027953
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 01:35:12 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 01:35:02 -0800
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2106.2 via Frontend Transport; Thu, 11 Mar 2021 01:35:01 -0800
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH v2] samhain: fix compile error on powerpc
Date: Thu, 11 Mar 2021 17:34:58 +0800
Message-ID: <20210311093458.12043-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

It fails to comile samhain for powerpc(qemuppc):

| x_sh_dbIO.c: In function 'swap_short':
| x_sh_dbIO.c:229:36: error: initializer element is not constant
|   229 |       static unsigned short ooop = *iptr;
|       |                                    ^

Assign after initialization of the static variable to avoid the failure.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 ...-initializer-element-is-not-constant.patch | 28 +++++++++++++++++++
 recipes-ids/samhain/samhain.inc               |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch

diff --git a/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch b/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch
new file mode 100644
index 0000000..72cb880
--- /dev/null
+++ b/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch
@@ -0,0 +1,28 @@
+Fix error when compile for powerpc:
+
+| x_sh_dbIO.c: In function 'swap_short':
+| x_sh_dbIO.c:229:36: error: initializer element is not constant
+|   229 |       static unsigned short ooop = *iptr;
+|       |                                    ^
+
+Upstream-Status: Pending
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+ src/sh_dbIO.c | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/src/sh_dbIO.c b/src/sh_dbIO.c
+index b547ac5..23a9621 100644
+--- a/src/sh_dbIO.c
++++ b/src/sh_dbIO.c
+@@ -226,7 +226,8 @@ static unsigned short *  swap_short (unsigned short * iptr)
+   else
+     {
+       /* alignment problem */
+-      static unsigned short ooop = *iptr;
++      static unsigned short ooop;
++      ooop = *iptr;
+       unsigned short hi   = (ooop & 0xff00);
+       unsigned short lo   = (ooop & 0xff);
+       ooop = (lo << 8) | (hi >> 8);
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 6a2eb08..0148e46 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -18,6 +18,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-avoid-searching-host-for-postgresql.patch \
            file://samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch \
            file://fix-build-with-new-version-attr.patch \
+           file://samhain-fix-initializer-element-is-not-constant.patch \
            "
 
 SRC_URI[sha256sum] = "3e57574036d5055e9557ec5095818b419ea6c4365370fc2ccce1e9f87f9fad08"
-- 
2.17.1

