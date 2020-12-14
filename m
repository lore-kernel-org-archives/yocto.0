Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
 by mx.groups.io with SMTP id smtpd.web10.35754.1607958900525965844
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 07:15:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ey7Ckprd;
 spf=pass (domain: gmail.com, ip: 209.85.167.67, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f67.google.com with SMTP id m25so30918607lfc.11
        for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 07:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FD4BEedGGRsQPQkHV47BanPbzexChbMgcm785MDwyhA=;
        b=ey7CkprdHK2xUXATvdcHDmYVt8dUKGD2ifxdj1HyC48PW4KtTpucF0YMKNMnSg0nIX
         AHnge1TN8uuPj12aGn2DYlHBlYZd/Xqd2HSQJ8xi/KzTPFX6oBWrQhuQn6iA4Muw3Del
         o5kI3qLQeqEajz26jSjCjvhnzZF+oJEIfuD7T3Em28i/OvwL7jOkRaDGf2+5bsVfd+cg
         apDLHWMzHVvuJLB6O0ExEbk3RSV7qDiNjGJ7R+6SxvoWs/yyQCpXM6O5UhN+PpfapD7z
         NNIVTAC8Nzp/9xRQsf3eOG2ypQVwxgdNJBMIhvNESSbFuowddqKOqPVaVtlqvN6lWtHv
         5JEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FD4BEedGGRsQPQkHV47BanPbzexChbMgcm785MDwyhA=;
        b=O9+f8atJGifz+TqNWM6EUNl1Ry4GOLItOdXBDKMfNCMu1IRNSes52yE/yickY1h269
         jKB4GCu+Lsj3gwgSg4sZrkW4zjaa5bnngGwivFiQCrFGLydFMSh5WsDGOPqqUFbWbci1
         GSfg7Ar3xfStFskN4jjJxpOwrUKWG9o4BcF3PNZcS4LLwR1CpHQIB/yX3MiuFiBSOsKa
         hd4++r1ILuXVlvCJWZKft5b46weMJTaaZQm7TLbaCjvfIRX2CV5Vy0L78RGWoLUDp86N
         nL2bVV3evaUkEsFYv09i4MUW1or3/5n+p2NJXtWPt4H5a3VTpSyznCQI57hbdfWm4zBQ
         X6jw==
X-Gm-Message-State: AOAM533tAa3KVi6IT49vAAwGCfsgsujpg8weOuU+JU2F/iO72fidOR9a
	ACI5OeTfxY5Gt33y1Tgd+A8NuJ1OEm6Hdg==
X-Google-Smtp-Source: ABdhPJwFWcC2zwnzibN3Fb7ke/kCrCl7DpH2ShX2Z9vuX5jBMieihIwZdesmzX4h15T2/ZVMObssWA==
X-Received: by 2002:a05:6512:687:: with SMTP id t7mr9405311lfe.432.1607958898714;
        Mon, 14 Dec 2020 07:14:58 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id d23sm1885286ljj.24.2020.12.14.07.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 07:14:58 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel: clone STM32 HAL
Date: Mon, 14 Dec 2020 15:14:40 +0000
Message-Id: <20201214151442.4592-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214151442.4592-1-zmuda.w@gmail.com>
References: <20201214151442.4592-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

HAL for STM32 chipsets is one of Zephyr subprojects. It is downloaded
by default by west. Clone the HAL repository so it can be used for
building images for boards with STM32 chips.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 classes/zephyr-kernel-src.bbclass                     | 2 ++
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 1 +
 2 files changed, 3 insertions(+)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index ea9b30b..4e05182 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -6,10 +6,12 @@ SRCREV_FORMAT = "default_cmsis"
 SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
 SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
 SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
+SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
 
 SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
            git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
            git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
+           git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
            file://0001-cmake-add-yocto-toolchain.patch \
           "
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index a1f640d..c7c894e 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -17,6 +17,7 @@ ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
 EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
 EXTRA_OECMAKE_append_nordic = "\;${S}/modules/hal/nordic"
+EXTRA_OECMAKE_append_stm32 = "\;${S}/modules/hal/stm32"
 export ZEPHYR_BASE="${S}"
 
 
-- 
2.25.1

