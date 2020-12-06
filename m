Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.2343.1607285739382937078
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDIIANQj;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id u18so15017762lfd.9
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uPCWKVA8WAiKrmocBhCWCCeJ5ZiP+OiyEYXai/LlNQs=;
        b=dDIIANQjGxeec1BCcHhYJugZbFrNkvKphmahrcD0KL7lxNMLuHLYv1vkxu8+Vr0OJB
         Pl1sHRFIYVpQSSWc5Kig28IvYOn1O7xU8ATZsBDr7AuLy+0nPnJ4CAlCQxPMX0sAoXUs
         pFkzhJtwxzbdNwzaTU5jLg1sMabrL4NTW8kHDWBZROhW0hHajrp8ph8eSOF4A2rLrz72
         /Id+yTgztb2rwE5HL6ldHQlwaMJx7R9wNGvQ9e/lincHomH6XoiZ3zuBhZT5FeJ5rjKx
         1GwX30SonqjELBUCRji/snMkNVMKajgqFYy0YUA7o3VUZYfMiq6Q3xktCBqR6hi8RPUD
         0vUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uPCWKVA8WAiKrmocBhCWCCeJ5ZiP+OiyEYXai/LlNQs=;
        b=XDIJdTt//1/+sYsRAQeJkaDc/FL6chbBqr/L3vEueCyuR09zWszViY4rqEbZiV1Q7W
         rSCWK24qQBow/B+e0mKHlUjbbPtpzLnP3ykaFbcbXXr2aZOFPui8hNBNOAOPGSVGIGDK
         BtsuYnz4XZ0aFDocTnyr1K7Vco/DYTpAf7BnIOa9OjmlVBQoRc2DTHrvyKdLZhqQ0XgO
         j3yMQylLQ5PDpxWkiYkXIQ0RItp7jlmc/K7Cn9EUyd4Ketzn2V2PKWnNOi9ZdIVefJ8b
         SQ6+shLn2MxSre/oEXwFnZXjKwyFCAO4BlRK7c2hkrbPfMNnolJTKBmmphzJyobdhtOX
         bhzw==
X-Gm-Message-State: AOAM5310f+DfvnSy7eOhGUSsSI06Fk+0dHt//zI2ZSFMkZhLbPsi1nDY
	be1PhEgGbb7mxiYfTOp+U04CJSyN+UEZSA==
X-Google-Smtp-Source: ABdhPJwc9pmZq7qmhjB7bOtMeB2is+OJKM/hMJZ+x5pUZGu09TgOA1djDdyrB6ts5cUZDaxmRuIirw==
X-Received: by 2002:ac2:5cbb:: with SMTP id e27mr6963081lfq.122.1607285737356;
        Sun, 06 Dec 2020 12:15:37 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:37 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 1/5] zephyr-kernel: clone Nordic HAL
Date: Sun,  6 Dec 2020 20:15:17 +0000
Message-Id: <20201206201521.3377-2-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HAL for Nordic chipsets is one of Zephyr subprojects. It is downloaded
by default by west. Clone the HAL repository so it can be used for
building images for boards with Nordic chips.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 classes/zephyr-kernel-src.bbclass                     | 7 ++++---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 1 +
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index d245223..ea9b30b 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -5,12 +5,13 @@ PREFERRED_VERSION_zephyr-kernel ??= "2.4.0"
 SRCREV_FORMAT = "default_cmsis"
 SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
 SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
-
+SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
 
 SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
            git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
-          file://0001-cmake-add-yocto-toolchain.patch \
-        "
+           git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
+           file://0001-cmake-add-yocto-toolchain.patch \
+          "
 
 PV = "2.4.0+git${SRCPV}"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 3f82c20..a1f640d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -16,6 +16,7 @@ ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
 EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
 EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
+EXTRA_OECMAKE_append_nordic = "\;${S}/modules/hal/nordic"
 export ZEPHYR_BASE="${S}"
 
 
-- 
2.25.1

