Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web10.6200.1587996479452457464
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 07:07:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEV7r7T7;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id b13so26333156oti.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2020 07:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=55GalS+VGnDiDjREGcuLUojvI5IsYvgF7TvdjvCd5R8=;
        b=pEV7r7T7+HjMIzmq3eVYjP7B+9mBsc1OPszMXSvPNnAaZqJeeBrJ9qsK5fhVAlZqNT
         QGt8KQaFi3by/uvxolxGfG+kA+MxiX3xWV6m2ARzswLBUgdPI79f9Cvs8h3MfnjFRFX8
         5SRdgXI90qxOqiXZfvzvnjNcEB3L0zWrqfp64kCcaI6qDoUaP3KccZsw3eK1G0j2iGEB
         RclbbaR91jC3F2l19DNb1tZTHLjZdmj3sSuW1D9fQJtp6LWkYRTKsezsSEPfXFFIT5f7
         LeJC0glVhev3Nisk+PiC4EQOZxe6EbU8V65QJc0zeUhJuMRI/q7p+Ih7ieSg2276tmz3
         ltOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=55GalS+VGnDiDjREGcuLUojvI5IsYvgF7TvdjvCd5R8=;
        b=oWs4fnJ3JAO8AupXMDvkKAKuI9gtWV+frUt1zE10CTku0rwh4npG73Ax1q2QTQuzs4
         vMxA0w2nfRCCq/ktKudT7Lj9E+ZEkc2cenguQIVoMHn314SbP2AkJ+gqYoXFmbtAeyYa
         HgooQ4neQ6Ik6PwszGuBSpsM9lACWoLnX92BPHcufx9IbOqrPb9zltpRZRLZAxPbIkkT
         9Na8+sBvEc4o0p3agWuILZOtxK3WdN7z57DfIzdtVecmoqcgwxFQeqpJ/pOVX8AgTl9j
         QG6oVqAoRWI8sH6vmZrkIcxyV8k7dCP+f3Eb+1m0XeAtPJXx3NH+CuyQBqeGYaHZVwuj
         sDlQ==
X-Gm-Message-State: AGi0PubnwFOOs/tOQBpPSti7BpLZH3BY2VK3f1Nbzx2QWObTHeZ+sX/A
	CGo82y9ZXX3pS/9WIhPdKXAd1P1H
X-Google-Smtp-Source: APiQypKAdBs0bw69glXRfocWpvgEEMrDba0SkTf8mC2ingrfcN1c4o/qkM4D3OkfQYm2Wcxs4NwhPA==
X-Received: by 2002:a9d:883:: with SMTP id 3mr1621632otf.344.1587996477601;
        Mon, 27 Apr 2020 07:07:57 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from OLA-8C37N23.garmin.com ([2605:a601:ac3d:c100:5a:78db:f520:4bc])
        by smtp.gmail.com with ESMTPSA id p5sm4161406ooa.14.2020.04.27.07.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 07:07:56 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] arm-trusted-firmware: Upgrade 2.2 -> 2.3
Date: Mon, 27 Apr 2020 09:07:51 -0500
Message-Id: <20200427140751.11628-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.17.1

Upgrades arm-trusted-firmware to the latest version, which fixes a bug
where the RK3399 would hang during a warm reboot

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...hip-Prevent-macro-expansion-in-paths.patch | 94 -------------------
 ...are_2.2.bb => arm-trusted-firmware_2.3.bb} |  3 +-
 2 files changed, 1 insertion(+), 96 deletions(-)
 delete mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
 rename recipes-bsp/arm-trusted-firmware/{arm-trusted-firmware_2.2.bb => arm-trusted-firmware_2.3.bb} (89%)

diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
deleted file mode 100644
index 755b618..0000000
--- a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware/0001-rockchip-Prevent-macro-expansion-in-paths.patch
+++ /dev/null
@@ -1,94 +0,0 @@
-From 39a97dce61aca9f618e28e26c6e441c8976f3172 Mon Sep 17 00:00:00 2001
-From: Joshua Watt <JPEWhacker@gmail.com>
-Date: Fri, 13 Dec 2019 13:44:55 -0600
-Subject: [PATCH] rockchip: Prevent macro expansion in paths
-
-Instead of stringizing the paths to binary files, add them as string
-defines on the command line (e.g. -DFOO=\"BAR\" instead of -DFOO=BAR).
-This prevents macros from being expanded inside the string value itself.
-For example, -DFOO=/path/with-linux-in-it would have been expanded to
-"/path/with-1-in-it" because `linux=1` is one of the standard GCC
-defines.
-
-Upstream-Status: Accepted [https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/2813]
-Change-Id: I7b65df3c9930faed4f1aff75ad726982ae3671e6
-Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
----
- plat/rockchip/rk3399/drivers/dp/cdn_dp.c  |  2 +-
- plat/rockchip/rk3399/drivers/pmu/pmu_fw.c | 24 +++++++++++------------
- plat/rockchip/rk3399/platform.mk          |  6 +++---
- 3 files changed, 15 insertions(+), 17 deletions(-)
-
-diff --git a/plat/rockchip/rk3399/drivers/dp/cdn_dp.c b/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
-index aa71fdea..a8773f4f 100644
---- a/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
-+++ b/plat/rockchip/rk3399/drivers/dp/cdn_dp.c
-@@ -18,7 +18,7 @@ __asm__(
- 	".global hdcp_handler\n"
- 	".balign 4\n"
- 	"hdcp_handler:\n"
--	".incbin \"" __XSTRING(HDCPFW) "\"\n"
-+	".incbin \"" HDCPFW "\"\n"
- 	".type hdcp_handler, %function\n"
- 	".size hdcp_handler, .- hdcp_handler\n"
- 	".popsection\n"
-diff --git a/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c b/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
-index a09ad21e..25596b18 100644
---- a/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
-+++ b/plat/rockchip/rk3399/drivers/pmu/pmu_fw.c
-@@ -5,20 +5,18 @@
-  */
- 
- /* convoluted way to make sure that the define is pasted just the right way */
--#define _INCBIN(file, sym, sec) \
-+#define INCBIN(file, sym, sec) \
- 	__asm__( \
--		".section " #sec "\n" \
--		".global " #sym "\n" \
--		".type " #sym ", %object\n" \
-+		".section " sec "\n" \
-+		".global " sym "\n" \
-+		".type " sym ", %object\n" \
- 		".align 4\n" \
--		#sym ":\n" \
--		".incbin \"" #file "\"\n" \
--		".size " #sym ", .-" #sym "\n" \
--		".global " #sym "_end\n" \
--		#sym "_end:\n" \
-+		sym ":\n" \
-+		".incbin \"" file "\"\n" \
-+		".size " sym ", .-" sym "\n" \
-+		".global " sym "_end\n" \
-+		sym "_end:\n" \
- 	)
- 
--#define INCBIN(file, sym, sec) _INCBIN(file, sym, sec)
--
--INCBIN(RK3399M0FW, rk3399m0_bin, ".sram.incbin");
--INCBIN(RK3399M0PMUFW, rk3399m0pmu_bin, ".pmusram.incbin");
-+INCBIN(RK3399M0FW, "rk3399m0_bin", ".sram.incbin");
-+INCBIN(RK3399M0PMUFW, "rk3399m0pmu_bin", ".pmusram.incbin");
-diff --git a/plat/rockchip/rk3399/platform.mk b/plat/rockchip/rk3399/platform.mk
-index cfc48e8f..643c24f5 100644
---- a/plat/rockchip/rk3399/platform.mk
-+++ b/plat/rockchip/rk3399/platform.mk
-@@ -82,13 +82,13 @@ PLAT_M0                 :=      ${PLAT}m0
- BUILD_M0		:=	${BUILD_PLAT}/m0
- 
- RK3399M0FW=${BUILD_M0}/${PLAT_M0}.bin
--$(eval $(call add_define,RK3399M0FW))
-+$(eval $(call add_define_val,RK3399M0FW,\"$(RK3399M0FW)\"))
- 
- RK3399M0PMUFW=${BUILD_M0}/${PLAT_M0}pmu.bin
--$(eval $(call add_define,RK3399M0PMUFW))
-+$(eval $(call add_define_val,RK3399M0PMUFW,\"$(RK3399M0PMUFW)\"))
- 
- HDCPFW=${RK_PLAT_SOC}/drivers/dp/hdcp.bin
--$(eval $(call add_define,HDCPFW))
-+$(eval $(call add_define_val,HDCPFW,\"$(HDCPFW)\"))
- 
- # CCACHE_EXTRAFILES is needed because ccache doesn't handle .incbin
- export CCACHE_EXTRAFILES
--- 
-2.23.0
-
diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
similarity index 89%
rename from recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
rename to recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
index abaf0f3..8d36d66 100644
--- a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
+++ b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
@@ -14,9 +14,8 @@ PROVIDES = "virtual/atf"
 
 BRANCH = "master"
 SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH} \
-           file://0001-rockchip-Prevent-macro-expansion-in-paths.patch \
            "
-SRCREV = "a04808c16cfc126d9fe572ae7c4b5a3d39de5796"
+SRCREV = "8ff55a9e14a23d7c7f89f52465bcc6307850aa33"
 
 S = "${WORKDIR}/git"
 B = "${WORKDIR}/build"
-- 
2.17.1

