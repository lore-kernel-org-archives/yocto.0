Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.1640.1620760469430644375
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 12:14:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qb7QH/gz;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id q2so16731939pfh.13
        for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 12:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4aP/ApWlaZEKfwpGZCUWf3XP7nxCkn6XzW7iDqExXqI=;
        b=qb7QH/gz7IO12fNOHBP1tGSqmJo+ngmPnWOxYhkAAY4RXh1O7m0KKnf7JcbVP8ejmR
         H0Hfepz8zccuvZWG6rLBDvL8+/Yfn4f5FoVJ5Jo9IdUpJ4xsg8qGpXWZNABm4pbm9rMk
         j9aJD+RnUpBwdhkMZV6Wb0klNXECnKSqANhcBv24fcRaYa+5ZoBiqKJf1ezLEhJLpaJ5
         uH4dAHLsJkSvMiPzUmzt5OTNC66IcrybjrlBMOZ10bNPeiaDIzIK3LEq6mGGsPy3ZyL1
         tZzyiQjRXzqa8mp4DW8nWBwn03o18VipdUr73Lt+QSdyZiarWiefpgYo97g85Do5pP5V
         USKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4aP/ApWlaZEKfwpGZCUWf3XP7nxCkn6XzW7iDqExXqI=;
        b=qOCIFT1z1bjxYKWIqeRNlT0+U9IN13LPdpxHqBhgkoiwjEChyoFfxGimY/HxNj4hLo
         7rt4n9vvtsaI7sfPSb17AhDOASCuJfk8EVaGDHcCHulXPS6cELWp3KNPpf38N757RiP8
         MXREJnyM5ZUdLs3KHin+g6z3GijyUwMuipqPhWa1tXLI7Mt7cCqcOLXStnCW+aFfPMtO
         ZSF0tubdkqXSkVLYpCVVrfdoUFdfEg/VqzhBkRBauukkH0O2KvcjC0Zz6H8Osvgm+3Vp
         ZpLVyDLnzyhsJz2hNVFs4PTpBULyHzwdOXKdoRTyBMHAHRIk4/eFDiY0deGorgNvuDoc
         5Ajg==
X-Gm-Message-State: AOAM531Wy8xXoC7Rrv4aZQCW6hOhpZsfs+etUSEnjsMayX4xQiJtgn6C
	VwTEnGYoJQj9oO7XBNzHU5I+iAWV1uswMw==
X-Google-Smtp-Source: ABdhPJzwh4sBWkAOfcLia9vMqR+Cny9Fm89szz6pv5sVF/5DVrVaz8+HEZWvVQCPioXOS9pOGGfttA==
X-Received: by 2002:a62:5ec7:0:b029:227:3253:3f62 with SMTP id s190-20020a625ec70000b029022732533f62mr31718395pfb.54.1620760468577;
        Tue, 11 May 2021 12:14:28 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::a7ac])
        by smtp.gmail.com with ESMTPSA id b16sm7453440pju.35.2021.05.11.12.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 12:14:28 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>,
	Ross Burton <ross.burton@arm.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a: Fix rk3399 build with gcc11
Date: Tue, 11 May 2021 12:14:24 -0700
Message-Id: <20210511191424.4182630-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross.burton@arm.com>
---
 .../files/0001-Fix-build-with-gcc-11.patch    | 34 ++++++++++++++++++
 .../0001-dram-Fix-build-with-gcc-11.patch     | 34 ++++++++++++++++++
 ...-Use-compatible-.asciz-asm-directive.patch | 31 ++++++++++++++++
 ...rk-already-defined-functions-as-weak.patch | 35 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  4 +++
 5 files changed, 138 insertions(+)
 create mode 100644 recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch
 create mode 100644 recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
 create mode 100644 recipes-bsp/trusted-firmware-a/files/0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch
 create mode 100644 recipes-bsp/trusted-firmware-a/files/0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch

diff --git a/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch
new file mode 100644
index 0000000..7956717
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch
@@ -0,0 +1,34 @@
+From d4c60a312271e000e8339f0b47a302c325313758 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 11 May 2021 11:46:30 -0700
+Subject: [PATCH] Fix build with gcc 11
+
+Fixes
+plat/rockchip/rk3399/drivers/dram/dram.c:13:22: error: ignoring attribute 'section (".pmusram.data")' because it conflicts with previous 'section (".sram.data")' [-Werror=attributes]
+
+See [1]
+
+[1] https://developer.trustedfirmware.org/T925
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ plat/rockchip/rk3399/drivers/dram/dram.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/plat/rockchip/rk3399/drivers/dram/dram.h b/plat/rockchip/rk3399/drivers/dram/dram.h
+index 0eb12cf29..5572b1612 100644
+--- a/plat/rockchip/rk3399/drivers/dram/dram.h
++++ b/plat/rockchip/rk3399/drivers/dram/dram.h
+@@ -149,7 +149,7 @@ struct rk3399_sdram_params {
+ 	uint32_t rx_cal_dqs[2][4];
+ };
+ 
+-extern __sramdata struct rk3399_sdram_params sdram_config;
++extern struct rk3399_sdram_params sdram_config;
+ 
+ void dram_init(void);
+ 
+-- 
+2.31.1
+
diff --git a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
new file mode 100644
index 0000000..14defed
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
@@ -0,0 +1,34 @@
+From a09a1de53aba422249a8376b0d95024200021317 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 11 May 2021 11:55:31 -0700
+Subject: [PATCH] dram: Fix build with gcc 11
+
+This is a redundant assignment which GCC warns about.
+
+Fixes
+
+plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c:781:11: error: explicitly assigning value of variable of type 'uint32_t' (aka 'unsigned int') to itself [-Werror,-Wself-assign]
+                twr_tmp = twr_tmp;
+                ~~~~~~~ ^ ~~~~~~~
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c b/plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c
+index 3cdb7a296..76bc5ee96 100644
+--- a/plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c
++++ b/plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c
+@@ -778,7 +778,7 @@ static void lpddr3_get_parameter(struct timing_related_config *timing_config,
+ 	else if (twr_tmp <= 8)
+ 		twr_tmp = 8;
+ 	else if (twr_tmp <= 12)
+-		twr_tmp = twr_tmp;
++		; /* do nothing */
+ 	else if (twr_tmp <= 14)
+ 		twr_tmp = 14;
+ 	else
+-- 
+2.31.1
+
diff --git a/recipes-bsp/trusted-firmware-a/files/0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch b/recipes-bsp/trusted-firmware-a/files/0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch
new file mode 100644
index 0000000..8807fca
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch
@@ -0,0 +1,31 @@
+From 5f78ce7eb9ab6bf5af682a715a9264d2a5ee7666 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 11 May 2021 12:06:34 -0700
+Subject: [PATCH] plat_macros.S: Use compatible .asciz asm directive
+
+clang asm does not like two strings to .asciz therefore make it single
+string which works on clang too.
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ plat/rockchip/common/include/plat_macros.S | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/plat/rockchip/common/include/plat_macros.S b/plat/rockchip/common/include/plat_macros.S
+index 691beeb44..c07be9ca9 100644
+--- a/plat/rockchip/common/include/plat_macros.S
++++ b/plat/rockchip/common/include/plat_macros.S
+@@ -23,8 +23,7 @@ icc_regs:
+ 
+ /* Registers common to both GICv2 and GICv3 */
+ gicd_pend_reg:
+-	.asciz "gicd_ispendr regs (Offsets 0x200 - 0x278)\n"	\
+-		" Offset:\t\t\tvalue\n"
++	.asciz "gicd_ispendr regs (Offsets 0x200 - 0x278)\n Offset:\t\t\tvalue\n"
+ newline:
+ 	.asciz "\n"
+ spacer:
+-- 
+2.31.1
+
diff --git a/recipes-bsp/trusted-firmware-a/files/0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch b/recipes-bsp/trusted-firmware-a/files/0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch
new file mode 100644
index 0000000..bd4d2b5
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch
@@ -0,0 +1,35 @@
+From 9d963cd69faf94bdcb80624132fd10392f57875b Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 11 May 2021 12:11:51 -0700
+Subject: [PATCH] pmu: Do not mark already defined functions as weak
+
+These functions are already defined as static functions in same header
+Fixes
+
+| plat/rockchip/common/drivers/pmu/pmu_com.h:35:14: error: weak identifier 'pmu_power_domain_ctr' never declared [-Werror]                                                                                      | #pragma weak pmu_power_domain_ctr                                                                                                                                                                             |              ^
+| plat/rockchip/common/drivers/pmu/pmu_com.h:36:14: error: weak identifier 'check_cpu_wfie' never declared [-Werror]
+| #pragma weak check_cpu_wfie
+|              ^
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ plat/rockchip/common/drivers/pmu/pmu_com.h | 2 --
+ 1 file changed, 2 deletions(-)
+
+diff --git a/plat/rockchip/common/drivers/pmu/pmu_com.h b/plat/rockchip/common/drivers/pmu/pmu_com.h
+index 5359f73b4..3f9ce7df9 100644
+--- a/plat/rockchip/common/drivers/pmu/pmu_com.h
++++ b/plat/rockchip/common/drivers/pmu/pmu_com.h
+@@ -32,8 +32,6 @@ enum pmu_pd_state {
+ };
+ 
+ #pragma weak plat_ic_get_pending_interrupt_id
+-#pragma weak pmu_power_domain_ctr
+-#pragma weak check_cpu_wfie
+ 
+ static inline uint32_t pmu_power_domain_st(uint32_t pd)
+ {
+-- 
+2.31.1
+
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 1942c17..c90673e 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -8,4 +8,8 @@ COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://serial-console-baudrate.patch \
+    file://0001-Fix-build-with-gcc-11.patch \
+    file://0001-dram-Fix-build-with-gcc-11.patch \
+    file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
+    file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
 "
-- 
2.31.1

