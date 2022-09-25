Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54539C54EE9
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 19:30:52 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web11.20402.1664134248823843207
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 12:30:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BE0P0Cp7;
 spf=pass (domain: gmail.com, ip: 209.85.210.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id
 x23-20020a056830409700b00655c6dace73so3249394ott.11
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 12:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=3U9eLPCjbKmqei2S9FdeTtnRMu1w/dt9hP8O8YcbOcg=;
        b=BE0P0Cp7LngD8A0R/tPL0ekiINwGw4zduU5GewGDKrOtyevtPQqcTC8HKvODiuq9Bo
         BPCmscZXcb6IUGq9pZ6bRxF8CMdrBGduP6VVMEEQn3Q729QNTmF198VOijyt7upGxo2T
         mFw7IZls8R5shYhI6gjMH3aDZTJ1OlJQ8U/edKsrVox4nM2Do0uKdqnPcOn+hXjQb7Q1
         yQhIyeF1lyZjW4jXa75jN+/BEm6xpet3C0KrDB3klOkoH8eSbjtYa4mGcYl+GDJPDNkT
         nQ+FxYkDjty0++eGYD1V5DWS1QDjDoRRRB5JqQIMV3CgDkNwiGZHA5+NANaoi00EFvef
         lq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=3U9eLPCjbKmqei2S9FdeTtnRMu1w/dt9hP8O8YcbOcg=;
        b=rkf/BL57NcCsOe/+eIz25/phd7nslRYb6M4weukMAD2oYz6pqLtFtDuUjhsDzWa68C
         A/eZiZ3JPyUwrqtKlFzwZJGH6422CMCT0/LLrhWG8ewu2Kw1l4D6lshyEIhyuluQFc/f
         XqCkIwV9rznqMwNu9WWHn/lSEgdaxgAogiCdm7N662AdsickoZW4e11/hBqX06LDVjmY
         5IUGsU1JuTtSQUtmARNwoEUdNZgyEcsUmZKWsCK6NxaxlaQBFJA2+x1gVvKnpjtR7Qe7
         H4kDqW4Pt8USf/XvBIQoVbiEP1QXZ4Cg6EakQYQHseezn8vLAcRrYQoKYshmVjI29b9x
         zj8w==
X-Gm-Message-State: ACrzQf20y+Y10ovrvO1Trg24sOLGZMPwzvIsZuO71N9cmYkz0Sils3OG
	0n4Y3CiAWtu2frJjoypKT0reT7hrQsQ=
X-Google-Smtp-Source: 
 AMsMyM4NRZlw+5wESvfD9sRsGWqwUKmn+gm4QCUVOVHuYHmm33wQZs3skNug1K4H1js/cRMv/Ci/GA==
X-Received: by 2002:a9d:322:0:b0:659:fc87:8f66 with SMTP id
 31-20020a9d0322000000b00659fc878f66mr8200830otv.264.1664134245393;
        Sun, 25 Sep 2022 12:30:45 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bfa4:4cc0:9b6c:6bb5])
        by smtp.gmail.com with ESMTPSA id
 h18-20020a9d6f92000000b0065818e6fbdasm6834359otq.24.2022.09.25.12.30.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 12:30:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] libgssglue: update to 0.7
Date: Sun, 25 Sep 2022 15:30:42 -0400
Message-Id: <20220925193043.2865911-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 19:30:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58156

LIC_FILE_CHKSUM changes to to indentations changes.
use bootstrap to setup config properly.

Drop libgssglue-fix-CVE-2011-2709.patch, libgssglue-g-initialize.patch now included in update.
  and ibgssglue-mglueP.patch now included in update.

Drop libgssglue-gss-inq-cred.patch still pending after 5 yrs.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/libgssglue-fix-CVE-2011-2709.patch  | 43 -------------------
 .../files/libgssglue-g-initialize.patch       | 21 ---------
 .../files/libgssglue-gss-inq-cred.patch       | 27 ------------
 .../libgssglue/files/libgssglue-mglueP.patch  | 21 ---------
 .../{libgssglue_0.4.bb => libgssglue_0.7.bb}  | 26 +++++------
 5 files changed, 13 insertions(+), 125 deletions(-)
 delete mode 100644 recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
 delete mode 100644 recipes-security/libgssglue/files/libgssglue-g-initialize.patch
 delete mode 100644 recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
 delete mode 100644 recipes-security/libgssglue/files/libgssglue-mglueP.patch
 rename recipes-security/libgssglue/{libgssglue_0.4.bb => libgssglue_0.7.bb} (77%)

diff --git a/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch b/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
deleted file mode 100644
index 6aa1a65..0000000
--- a/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-Use secure_getenv instead of getenv for setuid programs
-
-(bnc#694598 CVE-2011-2709 bnc#831805)
-
-import from:
-https://build.opensuse.org/package/view_file/openSUSE:Factory/libgssglue/secure-getenv.patch
-
-Upstream-Status: Pending
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
-diff --git a/src/g_initialize.c b/src/g_initialize.c
-index 200f173..935a9fa 100644
---- a/src/g_initialize.c
-+++ b/src/g_initialize.c
-@@ -26,6 +26,7 @@
-  * This function will initialize the gssapi mechglue library
-  */
- 
-+#define _GNU_SOURCE
- #include "mglueP.h"
- #include <stdlib.h>
- 
-@@ -197,8 +198,7 @@ static void solaris_initialize ()
-     void *dl;
-     gss_mechanism (*sym)(void), mech;
- 
--    if ((getuid() != geteuid()) ||
--        ((filename = getenv("GSSAPI_MECH_CONF")) == NULL))
-+    if ((filename = secure_getenv("GSSAPI_MECH_CONF")) == NULL)
- 	filename = MECH_CONF;
- 
-     if ((conffile = fopen(filename, "r")) == NULL) {
-@@ -274,8 +274,7 @@ static void linux_initialize ()
-     void *dl;
-     gss_mechanism (*sym)(void), mech;
- 
--    if ((getuid() != geteuid()) ||
--        ((filename = getenv("GSSAPI_MECH_CONF")) == NULL))
-+    if ((filename = secure_getenv("GSSAPI_MECH_CONF")) == NULL)
- 	filename = MECH_CONF;
- 
-     if ((conffile = fopen(filename, "r")) == NULL) {
diff --git a/recipes-security/libgssglue/files/libgssglue-g-initialize.patch b/recipes-security/libgssglue/files/libgssglue-g-initialize.patch
deleted file mode 100644
index 4a9ba33..0000000
--- a/recipes-security/libgssglue/files/libgssglue-g-initialize.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-Fix the warning for getuid, geteuid
-g_initialize.c: In function 'linux_initialize':
-g_initialize.c:275:5: warning: implicit declaration of function 'getuid' [-Wimplicit-function-declaration]
-g_initialize.c:275:5: warning: implicit declaration of function 'geteuid' [-Wimplicit-function-declaration]
-
-Upstream-Status: Pending
-Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
-
-diff --git a/src/g_initialize.c b/src1/g_initialize.c
-index 82fcce1..200f173 100644
---- a/src/g_initialize.c
-+++ b/src/g_initialize.c
-@@ -29,6 +29,8 @@
- #include "mglueP.h"
- #include <stdlib.h>
- 
-+#include <unistd.h>   /*getuid, geteuid */
-+#include <sys/types.h>
- #include <stdio.h>
- #include <string.h>
- #include <ctype.h>
diff --git a/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch b/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
deleted file mode 100644
index 6dce3e7..0000000
--- a/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-1) add free if malloc failed for (*mechanisms)->elements
-2) g_inq_cred.c: In function 'gss_inquire_cred':
-g_inq_cred.c:161:8: warning: passing argument 3 of 'generic_gss_copy_oid' from incompatible pointer type [enabled by default]
-
-Upstream-Status: Pending
-Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
-
---- a/src/g_inq_cred.c
-+++ b/src/g_inq_cred.c
-@@ -152,13 +152,15 @@ gss_OID_set *		mechanisms;
- 			     union_cred->count);
- 	if ((*mechanisms)->elements == NULL) {
- 	    *minor_status = ENOMEM;
-+	    free(*mechanisms);
-+	    *mechanisms = GSS_C_NO_OID_SET;
- 	    return (GSS_S_FAILURE);
- 	}
- 
- 	for (i=0; i < union_cred->count; i++) {
--	    status = generic_gss_copy_oid(minor_status,
-+	    status = generic_gss_add_oid_set_member(minor_status,
- 	    				  &union_cred->mechs_array[i],
--					  &((*mechanisms)->elements[i]));
-+					  mechanisms);
- 	    if (status != GSS_S_COMPLETE)
- 	        break;
- 	}
diff --git a/recipes-security/libgssglue/files/libgssglue-mglueP.patch b/recipes-security/libgssglue/files/libgssglue-mglueP.patch
deleted file mode 100644
index 6c9ebf0..0000000
--- a/recipes-security/libgssglue/files/libgssglue-mglueP.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-fix the warning:
-warning: implicit declaration of function 'generic_gss_copy_oid_set' [-Wimplicit-function-declaration]
-
-Upstream-Status: Pending
-Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
-
---- a/src/mglueP.h
-+++ b/src/mglueP.h
-@@ -447,6 +447,12 @@ OM_uint32 generic_gss_copy_oid
- 	    gss_OID *		/* new_oid */
- 	    );
- 
-+OM_uint32 generic_gss_copy_oid_set
-+	   (OM_uint32 *minor_status,	/* minor_status */
-+	    const gss_OID_set_desc * const oidset,	/* oid */
-+	    gss_OID_set *new_oidset			/* new_oid */
-+	   );
-+
- OM_uint32 generic_gss_create_empty_oid_set
- 	   (OM_uint32 *,	/* minor_status */
- 	    gss_OID_set *	/* oid_set */
diff --git a/recipes-security/libgssglue/libgssglue_0.4.bb b/recipes-security/libgssglue/libgssglue_0.7.bb
similarity index 77%
rename from recipes-security/libgssglue/libgssglue_0.4.bb
rename to recipes-security/libgssglue/libgssglue_0.7.bb
index 3085ee6..26bd2f3 100644
--- a/recipes-security/libgssglue/libgssglue_0.4.bb
+++ b/recipes-security/libgssglue/libgssglue_0.7.bb
@@ -15,27 +15,24 @@ LICENSE = "BSD-3-Clause | HPND"
 #Copyright 1995 by the Massachusetts Institute of Technology.  HPND without Disclaimer
 #Copyright 1993 by OpenVision Technologies, Inc.               HPND
 LIC_FILES_CHKSUM = "file://COPYING;md5=56871e72a5c475289c0d5e4ba3f2ee3a \
-                    file://src/g_accept_sec_context.c;beginline=3;endline=23;md5=8a7f4017cb7f4be49f8981cb8c472690 \
+                    file://src/g_accept_sec_context.c;beginline=3;endline=23;md5=da8ca7a37bd26e576c23874d453751d2\
                     file://src/g_ccache_name.c;beginline=1;endline=32;md5=208d4de05d5c8273963a8332f084faa7 \
-                    file://src/oid_ops.c;beginline=1;endline=26;md5=1f194d148b396972da26759a8ec399f0 \
-                    file://src/oid_ops.c;beginline=378;endline=398;md5=e02c165cb8383e950214baca2fbd664b \
+                    file://src/oid_ops.c;beginline=1;endline=26;md5=1f194d148b396972da26759a8ec399f0\
+                    file://src/oid_ops.c;beginline=378;endline=398;md5=d77a5c03e91908fac453c08bbeaddce1\
 "
 
-SRC_URI = "${DEBIAN_MIRROR}/main/libg/${BPN}/${BPN}_${PV}.orig.tar.bz2 \
+SRC_URI = "${DEBIAN_MIRROR}/main/libg/${BPN}/${BPN}_${PV}.orig.tar.gz \
            file://libgssglue-canon-name.patch  \
-           file://libgssglue-gss-inq-cred.patch  \
-           file://libgssglue-mglueP.patch \
-           file://libgssglue-g-initialize.patch \
-           file://libgssglue-fix-CVE-2011-2709.patch \
 "
 
-SRC_URI[md5sum] = "5ce81940965fa68c7635c42dcafcddfe"
-SRC_URI[sha256sum] = "bb47b2de78409f461811d0db8595c66e6631a9879c3621a35e4434b104ee52f5"
+SRC_URI[sha256sum] = "bcd618ae0bc69f12815d77295658a760e7edc20706b9a731a81da8993f5c970a"
 
-# gssglue can use krb5, spkm3... as gssapi library, configurable
-RRECOMMENDS:${PN} += "krb5"
+inherit autotools-brokensep
 
-inherit autotools
+do_configure:prepend() {
+    cd ${S}
+    ./bootstrap
+}
 
 do_install:append() {
     # install some docs
@@ -49,3 +46,6 @@ do_install:append() {
     # change the libgssapi_krb5.so path and name(it is .so.2)
     sed -i -e "s:/usr/lib/libgssapi_krb5.so:libgssapi_krb5.so.2:" ${D}${sysconfdir}/gssapi_mech.conf
 }
+
+# gssglue can use krb5, spkm3... as gssapi library, configurable
+RRECOMMENDS:${PN} += "krb5"
-- 
2.25.1


