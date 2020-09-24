Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10328.1600928893255472125
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:28:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0BC4638C0858
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:28:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08O6SAhE022406
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:28:10 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 23:27:57 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][PATCH V3] ucarp: fix build error with gcc-10
Date: Thu, 24 Sep 2020 14:27:56 +0800
Message-ID: <20200924062756.32761-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

Add a patch to use __attribute__((packed)) to replace __packed to
avoid multiple definition build error with gcc10.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 ...attribute__-packed-instead-of-__pack.patch | 30 +++++++++++++++++++
 .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-use-__attribute__-packed-instead-of-__pack.patch

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-use-__attribute__-packed-instead-of-__pack.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-use-__attribute__-packed-instead-of-__pack.patch
new file mode 100644
index 0000000..918fa9b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-use-__attribute__-packed-instead-of-__pack.patch
@@ -0,0 +1,30 @@
+From a1c83bc4676dbeaff0e1c540aeeb7c31e17aae74 Mon Sep 17 00:00:00 2001
+From: Chen Qi <Qi.Chen@windriver.com>
+Date: Thu, 24 Sep 2020 14:20:58 +0800
+Subject: [PATCH] ip_carp.h: use __attribute__((packed)) instead of __packed
+
+Fix gcc10 build error about multiple definition of __packed.
+
+Upstream-Status: Pending
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ src/ip_carp.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/ip_carp.h b/src/ip_carp.h
+index 9504a8e..d1e3368 100644
+--- a/src/ip_carp.h
++++ b/src/ip_carp.h
+@@ -70,7 +70,7 @@ struct carp_header {
+         u_int16_t       carp_cksum;
+         u_int32_t       carp_counter[2];
+         unsigned char   carp_md[20];    /* SHA1 HMAC */
+-} __packed;
++} __attribute__((packed));
+ 
+ #define CARP_DFLTTL             255
+ 
+-- 
+2.17.1
+
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
index d17baa0..62ccd11 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
@@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
 SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
            file://ucarp-configure-sha1.patch \
            file://ucarp-configure-snprintf.patch \
+           file://0001-ip_carp.h-use-__attribute__-packed-instead-of-__pack.patch \
            file://ucarp.init \
            file://vip-001.conf.example \
            file://vip-common.conf \
-- 
2.17.1

