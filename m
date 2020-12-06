Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web12.2300.1607285741323683150
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvrLL6zH;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 23so2033761lfg.10
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IabvxTbXPctqQNkMgn3tnwGCOqw+6qBZ44XwigeJNm0=;
        b=YvrLL6zHKhRsMpu++RBIjkJpbPEhlBhaSoCw/VsgPQdw2vzYUyTIBBmmjbTA5L1QGA
         a5AQvStthHw9UJJzu2JJBhFa+8HUAXARNgrxqduB9syXl2bzcQyVfFKis+F89pZV6zqk
         2KGVZnIsGnMkQQL2HSSWlLEHDx5TsxksIX+fwrLnyjTmfRombkYD/GgOQ2aw4DmPhUWc
         OpCj9kpK5X/ztZUCgpkBjYTQY+Y6Ki1CtS+PcLX2q7msYdXI4oyjb5G3nCAgY5l84p/M
         4CyKuYg6lpIMFe2ejDAj091zDyu7vx/zLLj4VhVOdhCYcC2dTNxLXwFtQWxmYzIe39+P
         4xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IabvxTbXPctqQNkMgn3tnwGCOqw+6qBZ44XwigeJNm0=;
        b=kZosNMU7Dg8w6O+o/t3CAuSVEHPUpKBh4DBSjwZ80/Amwf72kshlW65xLlIoNv5gpb
         07/mPXdW+SNZv/tdOE+f2HN09vR1K40+MC8Smeni9eUDFUcLJTz5c+pDXzl52+7Lf+J2
         VwJmWHsCBdFu5r8comcNVSFBuCnPZRLhTlBaBUWsiyuO2U2hZIsxPYZQdriZXEryXVnP
         oIDOvo6SAVEj2b9HfF6flIOLALx//vfBMkeewC25boCqdz3yJ8WIr0k/jt5dWvyv0N33
         vRfO63XuCq/1Qw8+4YxeBx5on48RD8qGm/gZrESRZVpSvxKFD5opQcp9e4odetNGICm6
         QdHA==
X-Gm-Message-State: AOAM532DR6IpWUKF/c+eY3GKquvGKAFxdescEBof47ULv61rxPeCPIIq
	GuETLqw8nMHPc2McbnK58jz+YyGD0uIdCg==
X-Google-Smtp-Source: ABdhPJx+ja5J74kZR7p8R0i4S7s5N8hXgLJnTXiisfauP3ogruR+a+zDaU3NdJGoIEzkmmwkH9Pezg==
X-Received: by 2002:a19:8a46:: with SMTP id m67mr6574299lfd.515.1607285739480;
        Sun, 06 Dec 2020 12:15:39 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:39 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 4/5] zephyr-kernel: don't limit deploy to .elf file
Date: Sun,  6 Dec 2020 20:15:20 +0000
Message-Id: <20201206201521.3377-5-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

