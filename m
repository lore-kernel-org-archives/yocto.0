Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.15932.1607616168649876283
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MbwusiJH;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id a8so8964793lfb.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YoQSOtqzHqXPsvSo8j+kP7KFSJC4IvZmDo8TrxKs0pI=;
        b=MbwusiJHpUmXBtGQ9Rpqoa/3q2iQTo/z5C6b6Bq/SVjLkKCZM+4/YUw3tDbZLb50lj
         QuGqvO/9We9guFQy+2DORii5b6kj9HJQ6iAAzWYOKpuCiHSivixNWhzsdt4vOQSStEdm
         4OJb5icipqcocjdm98oZgUUi69pBqjj4N/BixDZFs2y5bKf44g3kbniktY0DZ1KHBgg2
         KFC1ccRMCsPuilEKX6wfiIO4ux7Vzdmi5QcS5+iv36VqcYNvq2GuSI5oM5eMGW/ns8tL
         Goh2iJkWC7/LtD8r1fEcWzwlSPKtCyzktt0vSjGoWgEws8RyAK2rT3K32V83rV1BlaU0
         Rmxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YoQSOtqzHqXPsvSo8j+kP7KFSJC4IvZmDo8TrxKs0pI=;
        b=VeTGa7uslC+RXCqkSETnYPSH0YmHMjePQUA+xN2hGkp2x++5DBnxjL1ZnLVlLWlFqp
         bxOxC074iqXjaGZuMEJGLvZLNV/GElFKKnqbw4t7NZKoNmvDVYm5g5uz4t+lMa3Yexi1
         85moPw0AwoV9nxNiiNOzAmQx9kY1zZkqtsL/kEK6gOCgE6b8vYAXL2T2lJ4hgyqgZhHE
         uTWF15I/UMLkpYshcx19HZzOf+sMu3r5C5ZKbNxz2qWELdoYPjxTl5qQqlNi1n64nU3e
         eGzuBPen8URFQWUAOL2KVHxwExGrvMt903TvKijPTQBzduh5goKB50573sDdKhC2ISGD
         R07g==
X-Gm-Message-State: AOAM5312V4CSBboYPcwtVH5h4NGusUAPYlSydnhSQtTK7wZ5bqZcxl+C
	/vAdM5o3OmbHgM0hAQaZR//f+OUw0r6NoA==
X-Google-Smtp-Source: ABdhPJyZn87HsEHKz9SgxG133I3pbYm3qIwCZngBdaW9+fR95LiEAnuzSdbJLkRIg1+AIjk1Bcuf6A==
X-Received: by 2002:a19:e17:: with SMTP id 23mr3310166lfo.608.1607616166646;
        Thu, 10 Dec 2020 08:02:46 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:46 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 1/5] zephyr-kernel: clone Nordic HAL
Date: Thu, 10 Dec 2020 16:02:07 +0000
Message-Id: <20201210160211.71850-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210160211.71850-1-zmuda.w@gmail.com>
References: <20201210160211.71850-1-zmuda.w@gmail.com>
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

