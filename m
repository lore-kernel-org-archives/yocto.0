Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26F88C433EF
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:59 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web12.9361.1655559890305976449
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ng6IXbcz;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 p3-20020a17090a428300b001ec865eb4a2so1754541pjg.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Vt+cwExbDiLNMVz6dvghKt+UIm7DrLpIPSanUXGde6w=;
        b=ng6IXbczWkmNUnukncvP+SgUbdKw8wOU42NRabuDCk5xgkGOvTudbX0yT37/C9a6LV
         ocIawSCBKfQ7z5Y1i8+Z+pjTSc+dLwBwMyC4INTEUazsBXdeqMY0J6XqYooAApPfobaq
         iSzx/Lm1aI1l4/94nHdpulgW+qz5ewFBJbzikvl3X7i6Q71EKdmuiekGkdWqvhsBMkDI
         ybkQBMDq6aEYszTXpFIzz/XBx/DHj9d7W1RbN+Pu9GOhMKJbWXwGc8xxK3UtQPSs+dg7
         diaeVvoQPayZhIUVsDnkibFuAg/gngBoNimTHRN1CAM5eUN4wrYKW0E40up47hOE+LMX
         NItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vt+cwExbDiLNMVz6dvghKt+UIm7DrLpIPSanUXGde6w=;
        b=HJE9DXti2s/GarK2kwPXP/Pjd7gB++xAuCE+r+ebaz0WcFadGJwBUlHG+xw3WmdhEO
         DB8C35LPUnVKRYwvDxuZwmQItn4kQcGL0ORCqsLmLAiRfRr1O+VdTjzFKGZAddBRbNHb
         3Hf0EDkfLGN5I5LzBsaUS0/SZlZtOqNhgRMp0eatKyUEjAm781CFZ9rvbHHegtIm5Pur
         Aivrls5NlqZCS1SShdGo3aFE0shV6viYTEwN6DoqOXkigtXmP/fKdzf15PIhNyOdjzbd
         bCooVl2tXU1aODGGubLbRgLYGgBPnvy8B7v164j7bGgFC+kMDEtkdHsGYB/GtWXU++LA
         o3cg==
X-Gm-Message-State: AJIora9gNWVbrJ8SKT5Un9L0kbKknxEejkJss6BGp0Dfo60ii6kOlRyv
	c6mdrTraN0VDKmKHAUxnAMohrJvr1ao=
X-Google-Smtp-Source: 
 AGRyM1svQm3zRw0F7Bn8r6zkp2OpqnWDfLO808jbQt0UlWV+j6i8NlpiZYZL8uRs9AuhanmJwb0BrQ==
X-Received: by 2002:a17:903:245:b0:168:efbc:c10 with SMTP id
 j5-20020a170903024500b00168efbc0c10mr14537058plh.71.1655559889417;
        Sat, 18 Jun 2022 06:44:49 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/9] classes: add aide routines
Date: Sat, 18 Jun 2022 06:44:33 -0700
Message-Id: <20220618134435.2370878-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57349

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 classes/aide-base.bbclass    | 11 ++++++++
 classes/aide-db-init.bbclass | 52 ++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 classes/aide-base.bbclass
 create mode 100644 classes/aide-db-init.bbclass

diff --git a/classes/aide-base.bbclass b/classes/aide-base.bbclass
new file mode 100644
index 0000000..36cc454
--- /dev/null
+++ b/classes/aide-base.bbclass
@@ -0,0 +1,11 @@
+#
+# Copyright 2022 Armin Kuster <akuster808@gmail.com>
+#
+
+STAGING_AIDE_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/aida"
+AIDE_INCLUDE_DIRS ?= "/lib"
+AIDE_SKIP_DIRS ?= "/lib/modules/.\*"
+
+AIDE_SCAN_POSTINIT ?= "0"
+AIDE_RESCAN_POSTINIT ?= "0"
+
diff --git a/classes/aide-db-init.bbclass b/classes/aide-db-init.bbclass
new file mode 100644
index 0000000..800006f
--- /dev/null
+++ b/classes/aide-db-init.bbclass
@@ -0,0 +1,52 @@
+#
+# Copyright 2022 Armin Kuster <akuster808@gmail.com>
+#
+# This class creates the initial aide database durning
+# the build cycle allowing for that set being skipped during boot
+# It has an additional benefit of having not being tamper with
+# after build.
+#
+# To have the aide db created during build
+# 1. Extend local.conf:
+#    INHERIT += "adie-init-db"
+#
+# These are the defaults as defined in aide-base.bbclass
+# They can be overriden in your local.conf or other distro include 
+#
+# To define where the share directory should be.
+#    STAGING_AIDE_DIR = "${TMPDIR}/work-shared/${MACHINE}/aida"
+#
+# To define which directories should be inclued in a scan
+#    AIDE_INCLUDE_DIRS ?= "/lib"
+#
+# To exclude directories and files from being scanned
+#    AIDE_SKIP_DIRS ?= "/lib/modules/.\*"
+#
+# To controll if a db init should happen at postint 
+#    AIDE_SCAN_POSTINIT ?= "0"
+#
+# To cotroll if a db recan should be run at postinit
+#    AIDE_RESCAN_POSTINIT ?= "0"
+
+inherit aide-base 
+
+aide_init_db() {
+    for dir in ${AIDE_INCLUDE_DIRS}; do
+        echo "${IMAGE_ROOTFS}${dir} NORMAL" >> ${STAGING_AIDE_DIR}/aide.conf
+    done
+    for dir in ${AIDE_SKIP_DIRS}; do
+        echo "!${IMAGE_ROOTFS}${dir}" >> ${STAGING_AIDE_DIR}/aide.conf
+    done
+
+
+    ${STAGING_AIDE_DIR}/bin/aide -c ${STAGING_AIDE_DIR}/aide.conf --init
+    gunzip ${STAGING_AIDE_DIR}/lib/aide.db.gz 
+    # strip out native path
+    sed -i -e 's:${IMAGE_ROOTFS}::' ${STAGING_AIDE_DIR}/lib/aide.db
+    gzip -9 ${STAGING_AIDE_DIR}/lib/aide.db 
+    cp -f ${STAGING_AIDE_DIR}/lib/aide.db.gz ${IMAGE_ROOTFS}${libdir}/aide
+}
+
+EXTRA_IMAGEDEPENDS:append = " aide-native"
+
+ROOTFS_POSTPROCESS_COMMAND:append = " aide_init_db;"
-- 
2.25.1


