Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web08.7626.1607353272127071050
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VgmGUCSq;
 spf=pass (domain: gmail.com, ip: 209.85.167.66, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f66.google.com with SMTP id u19so18536202lfr.7
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IY/8ltyg2ixlpGphkvTM9r5Zg31pai4opttAB8dnTcQ=;
        b=VgmGUCSqJHNVWAMC0PNC3WxD/AFKcAOZZ1bB1WggweA196YrlCTcQFWATc2DWGKAXk
         91v7/u2a2TCpGgGiQswYOC9mbbPFN9EoLHORfoIOie8qrgYRZxuYP/VORZvuqQwX7Cuf
         hsMf6bMUTLkaiJ8eVlDExnCfQUj0xl1d4tiXUDWCUL12Ybg3h8PVAdtJubK7LOhzTA2S
         mZt55ZKblDhQkaQdxVqp+XkRC/UrGxjrcjAmCViFLpeHiMCEpY+zRQVblTWSqsnALsEQ
         24qg6L/Bd/r8Mh3unYlEVWLUVMVvdDxVU1LcAqez+gtcVdW9SxspYP9YRmV2P7rQkApz
         fhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IY/8ltyg2ixlpGphkvTM9r5Zg31pai4opttAB8dnTcQ=;
        b=ZkVHmMo4Jbmz4TOwnjfh7TrkVWyeYmfMt1ghvdQdU3QST/g5D1wrs0nqSvY3suJy1+
         iFsYCZMU6D/vILsSTjPmrscNqiyXeets5zR0cBHeBAfNaHtJ42SRg4Xn8GJ6X5Oz6WLC
         KBK592RVO8WS3R0/4mrJLKmkf7rr6BZ5vhMm+mgVxbcHVTPNcQ88B2d5jdpvZd1Wdd6H
         eBRzewCenQuvDtSetseH3yuAAih/Sdsuj3LK8PwaIHpFCsq3JW+OIyoPQvGAngEZfs6R
         g/KdhuNfPmAdeSQXZC7Ib6QfRR44V0FBsLqPc7erIpBPmq5zQ4vRZf07n/qSTlk3JpkE
         Ri3w==
X-Gm-Message-State: AOAM530qevcgOMJN1KsfrUxTJrUdaa3YwogMsIeUacWKR4MdPkTyiNp4
	TmzYwmVZvRvGEdN7lkSNHOeaM9lo/NAnWQ==
X-Google-Smtp-Source: ABdhPJzNyYhBHnu7gcWQ6EEMiknIQ0ERh5H7hcaE/b43IhP0CempUgwzrMJ4PMdu4J4BRQxdwwUllg==
X-Received: by 2002:ac2:5d31:: with SMTP id i17mr4530972lfb.476.1607353270026;
        Mon, 07 Dec 2020 07:01:10 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:09 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 2/5] conf: machine: add support for Nordic nRF52832 Cortex-M4 chip
Date: Mon,  7 Dec 2020 15:01:01 +0000
Message-Id: <20201207150104.12208-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207150104.12208-1-zmuda.w@gmail.com>
References: <20201207150104.12208-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Add include for Cortex-M4 tunes and nRF52832. The nRF config
appends 'nordic' to MACHINEOVERRIDES, so the kernel recipe
can include Nordic HAL when this override is detected.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/include/nrf52832.inc      | 10 ++++++++++
 conf/machine/include/tune-cortexm4.inc | 19 +++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 conf/machine/include/nrf52832.inc
 create mode 100644 conf/machine/include/tune-cortexm4.inc

diff --git a/conf/machine/include/nrf52832.inc b/conf/machine/include/nrf52832.inc
new file mode 100644
index 0000000..73e628a
--- /dev/null
+++ b/conf/machine/include/nrf52832.inc
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: nrf52832
+
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52832 (Cortex-M4) SoC.
+
+require conf/machine/include/tune-cortexm4.inc
+
+MACHINEOVERRIDES =. "nordic:"
+
+TUNE_FEATURES = "armv7m cortexm4"
diff --git a/conf/machine/include/tune-cortexm4.inc b/conf/machine/include/tune-cortexm4.inc
new file mode 100644
index 0000000..a823b6b
--- /dev/null
+++ b/conf/machine/include/tune-cortexm4.inc
@@ -0,0 +1,19 @@
+DEFAULTTUNE ?= "cortexm4"
+
+require conf/machine/include/arm/arch-armv7a.inc
+
+TUNEVALID[cortexm4] = "Enable Cortex-M4 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm4', ' -mcpu=cortex-m4', '', d)}"
+AVAILTUNES += "cortexm4"
+
+TUNEVALID[armv7m] = "Enable Cortex-M4 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7e-m', '', d)}"
+MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
+
+TUNE_PKGARCH_tune-cortexm4 = "cortexm4"
+
+ARMPKGARCH_tune-cortexm4 = "armv7m"
+PACKAGE_EXTRA_ARCHS_tune-cortexm4 ="cortexm4"
+
+TUNE_FEATURES_tune-cortexm4 = "armv7m vfp cortexm4"
+PACKAGE_EXTRA_ARCHS_tune-cortexm4 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp armv7m"
-- 
2.25.1

