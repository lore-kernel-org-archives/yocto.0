Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web12.7496.1607353273475389804
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sBkzfmmF;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id z21so18493317lfe.12
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gBnrhshd5WF9Hg3k+FcbNFFshSU0icUov9ICnR1ek5Y=;
        b=sBkzfmmF6zyMcuiDSwOG9EYGuGwuK5YZiYujO0c9Nj8x06wICivHa7zKeojHDXxqme
         w4XN1889RLdrBraqTVkkh8/bWtmoJ+PPA0nZTaBpr+UPI/2/KSVfdSL4ELcaqVz9r1sG
         xhVJiY39T+MCMbP+VvZu1W10IN7hzRfhmz7H+TJwzbFvtqRh+7ygMAp0sI/TvlpGXbon
         K2RJy6wJtUYwkw1kxLAnF3aUK2upntX1OA9RjDS1ljOhPi9dZVUL7nMtAelpicG1UDQ/
         zdDJYN8DDM2+GHD5Gr4odw4psaZEY7TpW6h3ICT9Aei9lUN5blMiecIDd4P6Nj+73nnB
         EGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gBnrhshd5WF9Hg3k+FcbNFFshSU0icUov9ICnR1ek5Y=;
        b=BfoaKOuiHC7lRSgoSGWuL4mzsAzask1ZDzEJLHY+0tPBmKGkmNBOC2znyxXBJWPtox
         RNw9z4nDP4KCewO8kf4xfkDWVzTttpcFPARfgx/wUdWKKDJPk1dSBlFHCoZTh1Dk3wkC
         PjudiHvrSH2IFToZZOVy2Ai96082y/p8iN+eSxx8akFEmb2FVymN6dfZLfXZUXhQ5Wp6
         +M0hUpmLcFkznp/3D2L+sNC5/lbG+Gjn9YdgPo8cb5pqwtKZ8YyLnzxNx91gcnFg3qa+
         tXoJvh3b9+YLeAlmOXhhaEBaJxfbAl7B+NozpTuj1AlEWxrUcwQzglvElOGRpy3jbPoP
         11jQ==
X-Gm-Message-State: AOAM533UdqGOa/rVeKytNSMulDTIn/V5fumYEbLLqS4aI3M32PgYgUN5
	uOsqpPm70r5OdrBUe5zVN2YeyK/tCqsU2Q==
X-Google-Smtp-Source: ABdhPJxtIxOnwLbT+o9q1irWbSTjp/j90js+SpEih1vicNuuiTClVeApuvkvCYXGgxIjK6IiiM6USg==
X-Received: by 2002:a05:6512:447:: with SMTP id y7mr9168349lfk.422.1607353271573;
        Mon, 07 Dec 2020 07:01:11 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:11 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 4/5] zephyr-kernel: don't limit deploy to .elf file
Date: Mon,  7 Dec 2020 15:01:03 +0000
Message-Id: <20201207150104.12208-5-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207150104.12208-1-zmuda.w@gmail.com>
References: <20201207150104.12208-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Depending on the target board and/or flashing method, it may be desirable
to have access to .bin or .hex files instead of .elf. Remove .elf extension
from ZEPHYR_MAKE_OUTPUT and let users of that variable specify the extension.

Append .elf to all identified users, since they worked with .elf so far.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-helloworld.bb     | 2 +-
 recipes-kernel/zephyr-kernel/zephyr-image.inc         | 2 +-
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 4 +++-
 recipes-kernel/zephyr-kernel/zephyr-philosophers.bb   | 2 +-
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
index 84db068..1400e72 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -7,7 +7,7 @@ ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
diff --git a/recipes-kernel/zephyr-kernel/zephyr-image.inc b/recipes-kernel/zephyr-kernel/zephyr-image.inc
index e8b8871..48d3675 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -10,7 +10,7 @@ ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${S}/${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${ZEPHYR_IMAGENAME}
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${ZEPHYR_IMAGENAME}
 }
 
 addtask deploy after do_compile
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index a1f640d..ea6cd7a 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -11,7 +11,9 @@ IMAGE_NO_MANIFEST = "1"
 ZEPHYR_GCC_VARIANT="yocto"
 ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
-ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
+# Output image name. There are several variants i.e. .bin, .elf, .hex.
+# Let the user append desired suffix.
+ZEPHYR_MAKE_OUTPUT = "zephyr"
 
 
 EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index b8262ca..5f7fbcb 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -7,7 +7,7 @@ ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
-- 
2.25.1

