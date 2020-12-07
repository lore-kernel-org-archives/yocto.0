Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.7329.1607353272525075761
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+FGBjZp;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id y16so15307719ljk.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YoQSOtqzHqXPsvSo8j+kP7KFSJC4IvZmDo8TrxKs0pI=;
        b=l+FGBjZpG87G+aqz8Sv3cx1Xl66Hb1kIo4KAB+fh0vbezi1dzs7aNW9nOIKYJ/jUu4
         oQoetuLIsApuDrKUEpq1FrOjagmXH9u+gcauJodl3Bwzq0bqMa3Wv01l30ww17aGCF72
         J11WvMk5RQYdxaN7ie0ZEaraCOGWq84kEknqyb9hTOAKU99nieFNNmf70QK1ZwhYrviQ
         FOeKxFd4jSkSaCTkOnylk/Yz1FIKrbnWwG6NCQ8fQN98BYhAf1QAb1aWyaGItzFeSf5/
         0aI6Bv8jQK25ReHmeSnv+AyzMeQIREGxFhdpPVj5UJFnMDArPlIUPTxM86dZMNkPCy52
         +qyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YoQSOtqzHqXPsvSo8j+kP7KFSJC4IvZmDo8TrxKs0pI=;
        b=TAklt3mubEGLHOXNIx/HapxTaiy9TLeL9Njbk7zEhjtNWaTFOI845Mbh74MxN72cTp
         p8h+GSt8qNjMM/n8Magbs9ydt1O2/OzG3LfT2bix2DX+nk3xAFvLvL9HTJah262cb0qr
         TotHgVkHvBfYeqkQorDOKebF4aYWDqnAPFQBGwCfIjK9atuAH25x1F9PhhdFBhzPX/HR
         NDZfCMEQXPyQBPF40CcIjPSpANHy89EXXMUX+Z/qlcRrwNTv5UpPsux+UIIi7hO219tr
         OG9Lzt23N8MZBmdDIzF92bLRvBlzERsVve4VRikFvM0yOSiSJMpaUxNxyI9Je9oLOHCK
         lzIA==
X-Gm-Message-State: AOAM532WGL3WC4Sbd9wRHN4eympyUq6Od5sKXXj4kfGqkUZwmizsV/wQ
	WOwGh2VTRJPYNUtfOY3rXdn9Ujfl624QPw==
X-Google-Smtp-Source: ABdhPJwql9fZPjUBG2rQPz2K7DcjAhSc+fuUVRIa4l7Rd3aPGp2JQyibYO8P8sVNonSzsleNekmrFg==
X-Received: by 2002:a2e:b166:: with SMTP id a6mr1069639ljm.100.1607353269211;
        Mon, 07 Dec 2020 07:01:09 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:08 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 1/5] zephyr-kernel: clone Nordic HAL
Date: Mon,  7 Dec 2020 15:01:00 +0000
Message-Id: <20201207150104.12208-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207150104.12208-1-zmuda.w@gmail.com>
References: <20201207150104.12208-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

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

