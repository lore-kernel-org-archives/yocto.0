Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web08.6007.1623401538253339866
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:52:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h57w7nWq;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id p17so7476277lfc.6
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=97WNGcMLxULcaGM4uQLdzdqv+FIGCDRenYvNpYmXDIA=;
        b=h57w7nWqObb5ou95xwE3UeYGvOdlBNc03GVRa81W14606tJ/vbwRzbl3e2niKEjItn
         SqU3YZk7pM65KAYRE3HfR8AVBhGr0HHP0DptRs5f5YAtEKHO0uxeDFB9i1x6oi1HY1Jj
         vQjLrvDjbcT8A2XFG4o87zrOmKFdonLKGKQymj0tK6O/3gSW8wLc11vQfzYkGiRaBI0K
         hJUhoKE5yCzPfVhVQZDyDz0v4BLg7VxgehDnLZM4UiT1iIUuLm3V7OKZbsWC5oD034KG
         3A7+RNRMgHICUVCveo+gZsOMikxQkexnyDQ4uzG24NqONt/qmRBoNFcfO4SPiHuvJb5J
         1jvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=97WNGcMLxULcaGM4uQLdzdqv+FIGCDRenYvNpYmXDIA=;
        b=qjawUFH5PdoLDkkH5AZPktO/CfBTzJ8q5RyCRsxvdxc9ipCBcQ6x7fKXdooxW2EdT0
         T0xkK58k3PbIJknvVCpzFACrKtM+Qwq9oOeGNYUYw4YqpobQwFdIrf0AtV89VD6RfyN4
         lqtDkQ14vHGF3Pl4lIP6FKxtUphirs5tCMCQVduK9Jr5UKDUgAeMwjAWONfgr+vaD7Xa
         rQO2BZhUwPImf+mJlYp8OvqJ9IWnAzA7Qw/SDZz1Y9y/vL0Bbc/CY0I7s4H3QuC9hQMM
         6gZnsW6uSajZAXUjg99sSkiAwIbrTRkrgb/KWn83anZ65uDqczHQJohOrMvJwa8C/NcJ
         15ww==
X-Gm-Message-State: AOAM531i/DsAtKe4V+GV41g9Te5S5FYiZ3YTlZj6/3gIR6CJ6fhRuH4H
	ENGFJ+NAejOzaBB8ehqivA5LbeRUFmi6Lfml
X-Google-Smtp-Source: ABdhPJxKHWjgvCXKgGWDSlfvDAxp7EWmyX1iMuvFB9VmoX0+FlXRpvYWajQXje0BJ6sZccJ2Lp3QVQ==
X-Received: by 2002:a05:6512:3b3:: with SMTP id v19mr1991730lfp.516.1623401535935;
        Fri, 11 Jun 2021 01:52:15 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id e29sm528825lfb.258.2021.06.11.01.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:52:15 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Nagesh Shamnur <nagesh.shamnur@huawei.com>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel: install .bin image if available
Date: Fri, 11 Jun 2021 10:52:03 +0200
Message-Id: <20210611085205.1870988-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210611085205.1870988-1-zmuda.w@gmail.com>
References: <20210611085205.1870988-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Nagesh Shamnur <nagesh.shamnur@huawei.com>

Some boards (e.g. Arduino Nano 33 BLE) require image in bin format
for flashing with `-c flash_usb`. Provide that image along with ELF
image on do_deploy step.

Signed-off-by: Nagesh Shamnur <nagesh.shamnur@huawei.com>
Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-sample.inc        | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 330fe59..46f19e2 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -12,6 +12,7 @@ ZEPHYR_GCC_VARIANT="yocto"
 ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
+ZEPHYR_MAKE_BIN_OUTPUT = "zephyr.bin"
 
 EXTRA_OECMAKE = "\
     -DZEPHYR_BASE=${S} \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-sample.inc b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
index f7621d1..7b49611 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-sample.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
@@ -9,5 +9,9 @@ do_install[noexec] = "1"
 
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
+    then
+      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN}.bin
+    fi
 }
 addtask deploy after do_compile
-- 
2.25.1

