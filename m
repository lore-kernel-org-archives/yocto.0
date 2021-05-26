Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web12.9270.1622043393655474932
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=OVzBiLJW;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.214.175, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pl1-f175.google.com with SMTP id d20so793626pls.13
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RCRMWipPkQ7j3ALyBPhSKaKRP9c85lH73LSVvRAHQ7o=;
        b=OVzBiLJW+eqDqtjb0tx1ARSU8RyR0Hk4VzwLND3MAAG82VQ43wrVbeKBP3Tjj4nMBr
         /ldfuJEY/yRdlrbTCITayJ03oS0RdCfV4n/jUu7kxGNiB3/KbCCL526yjTKyKy1ClJrh
         aoZWtr2pvLOkYVNdqB1bpizyErvHnSzEfgmUH5MjGZ0qQcbBnXCWP5Uk4OY8o/h/UiCU
         19JlibEUl3nhsfJCxBh6kGMh9sp1aVp+GhS4m7f5qkUEfh9gp11MPiOW8fm9lKoLlYDw
         bfWCPXpbBqYJFzOZysPGqbzD2lSDZvXMWuGW5oMLrbPkJICwGrFAOieh34DtvVrMWkqo
         l9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RCRMWipPkQ7j3ALyBPhSKaKRP9c85lH73LSVvRAHQ7o=;
        b=dgyawDZ2AEDC6Io7Zw/wtO7tRgTsObdx11p/QS3yjN2aa6OvomPr0P4rgNp3u1J6BJ
         uDIOdyAGDO2RMPiacz9SXGQF5I1DKjvyvhCEuzpOJlKAL1AAffpH5n5AOrA5vgtkZo0N
         HGuvapd1CeZM60J6svNpUfop0r2WZhoXZ04ZSFDxGkGkVhyH2wEsZpbrHaIAMlrEQRho
         hKOLQYrr77g1DxYn7RbCN9kdfF4hSl3ryB1XYyTbE0SmEHlcU2n9bn9IxyZqu5uV6iia
         5Kg8DccIlJG8Qvopp7p2uWyM5Q+r3K85gL4WduvANOTstRzNE5mB22kijbuX016jKlVK
         71jA==
X-Gm-Message-State: AOAM532FDIBnvecnDKZACitsjFTOMEYfOIXg9bojF7iTXL9q4A7hEDSU
	DM/9jFOWy/BafY2bEsyioXg9ZURz09Crwg==
X-Google-Smtp-Source: ABdhPJzCTlDREsLvmoaeAoGrJ9Mh2CSXi+NL2fSLYTxWZzkeWsE2EDeUSyxztIj2TTQhcFMP/yBZBw==
X-Received: by 2002:a17:90a:a013:: with SMTP id q19mr4514092pjp.29.1622043392845;
        Wed, 26 May 2021 08:36:32 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id x9sm16137365pfd.66.2021.05.26.08.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:32 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 1/5] zephyr-kernel: Clone mbedtls
Date: Wed, 26 May 2021 21:06:19 +0530
Message-Id: <a98ef69282feae355ff5a380d762c2c07f10af39.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
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
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc        | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc           | 1 +
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
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
index 6ea15931607d..a0e358ecd4f4 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
@@ -6,5 +6,6 @@ SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
 SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
 SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 
 PV = "2.6.0-rc1+git${SRCPV}"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 9fc08baaf210..8dcfec6f1f88 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -17,6 +17,7 @@ SRC_URI = "\
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
+    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
     git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
-- 
2.25.1

