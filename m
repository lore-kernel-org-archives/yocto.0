Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web08.32254.1623045651176827387
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:00:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=f9dsW9Ip;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.179, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f179.google.com with SMTP id e20so1060620pgg.0
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=etmTK8O+XI65tDr84Jl8CFs6pNmPpoS5N1vBpq8kMF8=;
        b=f9dsW9IpTArguMx0x/xZi87clRZ7vpPe0mSR3LZzsZFjzLoImHe6zfiEQcPVsqn4nX
         EOouTaMp0OLrSjwoAjz+D52/rOWVxy0bId2Jb5pESsk2YosR4FZPsw1unA6YjrmMd/b8
         XVCK9E2h7sMZeSxPdKQWmb2NcywLESyD9kCuQFa4gHCLtwMqINNuiFAv3faF1VgmQsUU
         ml7+uLxLID5Gjm6RQFA7pitOIOZKdB7D5CBcBtJ+cQ2FK0n4LF8kPLUFFYyBvvCWnmHe
         HqvVU5txrrfsDNf80wfh9IYd5b4I+gqBfE3HQeSCzHLepNe85ElEbLv+6gZ6eEReu51h
         KozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=etmTK8O+XI65tDr84Jl8CFs6pNmPpoS5N1vBpq8kMF8=;
        b=axpqClWGgzILak1LbVuT5ZyYqeFE1zrin7adjBFl8Q6pKrH/6YaQGCeHhidzL6U9GU
         rWuKJxknuYCNfwKsfUavUaSa1/WMt4OY8K+V8X90sl5DF1xGZVeSRN5/CXsRufxwp7As
         PzvW+ZJf/t5aBySiOmm8pYJO+1PpBflcciVMjzhDDy33rqPe+X2nnhbhUwP8KVEAhCdj
         0Btu+jH+T+R/reoDmz9Nrrxlqic7XBmc7S3JGCdtQALDhVz56pGR259ScgqRY7DHoFpZ
         Q55Tf1ajmY5tfyYH7SOxGJp6nhG+spVkfncx4IQrSaM3XPtpuALMvIWd7xk9awAm1RPm
         UsuQ==
X-Gm-Message-State: AOAM533lvACw6O9Zz3PdY6POlSux/7O943aMI9st6SBaDZwlwiodIThg
	wz6wcOJWp57doqIyi0nf1qvIJOSympLjpA==
X-Google-Smtp-Source: ABdhPJwQn14VjNYSNhuQQwCldmiAvTj+PfNpewvWpVcDORw60I7xJgr6/je7GIL6EUykMWcW1eZgZw==
X-Received: by 2002:a63:4b59:: with SMTP id k25mr16375365pgl.252.1623045650545;
        Sun, 06 Jun 2021 23:00:50 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id q21sm7381654pfn.81.2021.06.06.23.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:00:50 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
Date: Mon,  7 Jun 2021 11:30:40 +0530
Message-Id: <c6e00de83150cd7d99d172404ef8464526592529.1622535742.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

MBed TLS is a library that implements cryptographic primitives and
SSL/TLS and DTLS protocols that are needed in secure network
communications.

Add it to the kernel include files to build and link against
applications that need mbedtls.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
 3 files changed, 3 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 330fe59aebe5..c9acbbbc3645 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -28,6 +28,7 @@ ZEPHYR_MODULES = ""
 ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
 ZEPHYR_MODULES_append_nordic = "\;${S}/modules/hal/nordic"
 ZEPHYR_MODULES_append_stm32 = "\;${S}/modules/hal/stm32"
+ZEPHYR_MODULES_append_mbedtls = "\;${S}/modules/lib/mbedtls"
 ZEPHYR_MODULES_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
 
 EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 5d66f0f3cb5b..3aeb3bf6fc3f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -6,6 +6,7 @@ SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
 SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 
 PV = "2.5.0+git${SRCPV}"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 1d06d916a1e0..069fa561667c 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -13,6 +13,7 @@ SRC_URI = "\
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
+    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
     git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
-- 
2.25.1

