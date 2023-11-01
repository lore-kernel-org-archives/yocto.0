Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED9E5C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 09:31:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.3166.1698831106519099187
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 02:31:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=fZHKVrRT;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698831106; x=1730367106;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=2N1e1mn7pnktrodpZOamso4rstjnG0MSN8JPk7Nyvhs=;
  b=fZHKVrRTlUR0JDsubR/sE7jcOIUBY91eojt/ulj9xm3pwkQ7Yn7s1nub
   H4m/6Wd4J0zC0d9fM+hc9aeUK7LQj0I8aZ0RjFXIe0ILeq6LYra/zcszu
   balh0rBJKclWyun+7tV0I0JTlgv5QeE/RUsa4vEc2TRucory5wV6G7xNw
   m0z6Iq6n/BT2TkOlIIbz+a8TmjJM5TAlTmKK2y5eCTr6Fy8KNTlTvldub
   mAZ0kag2+2oImflhSQOg9VSS9X4p0nyK7FCi7ggQu4HP9u66ov+7tqHin
   WKse49ARqEIC0/bZUS6VZrIt49dLRhE8kNxxoShmR0b+xoJmNBpoPQahq
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="454941032"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="454941032"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 02:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="2137552"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 02:31:45 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: Drop support for v3.4.0
Date: Wed,  1 Nov 2023 17:58:08 +0800
Message-Id: <20231101095809.2839319-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231101095809.2839319-1-naveen.kumar.saini@intel.com>
References: <20231101095809.2839319-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 09:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61550

v3.5.0 is available, now drop support for old version.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ry-generation-issue-in-cross-compila.patch |  93 ------
 .../zephyr-kernel/zephyr-kernel-src-3.4.0.inc | 286 ------------------
 2 files changed, 379 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.0.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
deleted file mode 100644
index 94449f5..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
+++ /dev/null
@@ -1,93 +0,0 @@
-From f314ca637eb2eb5ed1cda7320ab2448d6487aed8 Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Thu, 22 Jun 2023 16:21:50 +0800
-Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
-
-Set root directory for headers.
-
-Upstream-Status: Inappropriate [Cross-compilation specific]
-
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- arch/x86/zefi/zefi.py                | 5 ++++-
- boards/x86/ehl_crb/CMakeLists.txt    | 1 +
- boards/x86/qemu_x86/CMakeLists.txt   | 1 +
- boards/x86/rpl_crb/CMakeLists.txt    | 1 +
- boards/x86/up_squared/CMakeLists.txt | 1 +
- 5 files changed, 8 insertions(+), 1 deletion(-)
-
-diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
-index 99c188ecd0..1cd86a21cd 100755
---- a/arch/x86/zefi/zefi.py
-+++ b/arch/x86/zefi/zefi.py
-@@ -109,8 +109,10 @@ def build_elf(elf_file, include_dirs):
-     includes = []
-     for include_dir in include_dirs:
-         includes.extend(["-I", include_dir])
-+    #  Pass --sysroot path for cross compilation
-+    sysrootarg = "--sysroot=" + args.sysroot
-     cmd = ([args.compiler, "-shared", "-Wall", "-Werror", "-I."] + includes +
--           ["-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar",
-+           ["-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar", sysrootarg,
-             "-Wl,-nostdlib", "-T", ldscript, "-o", "zefi.elf", cfile])
-     verbose(" ".join(cmd))
-     subprocess.run(cmd, check = True)
-@@ -150,6 +152,7 @@ def parse_args():
-     parser.add_argument("-v", "--verbose", action="store_true", help="Verbose output")
-     parser.add_argument("-i", "--includes", required=True, nargs="+",
-                         help="Zephyr base include directories")
-+    parser.add_argument("-s", "--sysroot", required=True, help="Cross compilation --sysroot=path")
- 
-     return parser.parse_args()
- 
-diff --git a/boards/x86/ehl_crb/CMakeLists.txt b/boards/x86/ehl_crb/CMakeLists.txt
-index 06bbb2dce1..60aa1496e8 100644
---- a/boards/x86/ehl_crb/CMakeLists.txt
-+++ b/boards/x86/ehl_crb/CMakeLists.txt
-@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -o ${CMAKE_OBJCOPY}
-   -i ${ZEPHYR_BASE}/include
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/qemu_x86/CMakeLists.txt b/boards/x86/qemu_x86/CMakeLists.txt
-index de31c25a82..2910fa0192 100644
---- a/boards/x86/qemu_x86/CMakeLists.txt
-+++ b/boards/x86/qemu_x86/CMakeLists.txt
-@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -i ${ZEPHYR_BASE}/include
-   -o ${CMAKE_OBJCOPY}
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/rpl_crb/CMakeLists.txt b/boards/x86/rpl_crb/CMakeLists.txt
-index 7db36d8d7c..700f51bf01 100644
---- a/boards/x86/rpl_crb/CMakeLists.txt
-+++ b/boards/x86/rpl_crb/CMakeLists.txt
-@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -o ${CMAKE_OBJCOPY}
-   -i ${ZEPHYR_BASE}/include
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
-index 57eef4eabe..ad90969fa9 100644
---- a/boards/x86/up_squared/CMakeLists.txt
-+++ b/boards/x86/up_squared/CMakeLists.txt
-@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -o ${CMAKE_OBJCOPY}
-   -i ${ZEPHYR_BASE}/include
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
--- 
-2.34.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.0.inc
deleted file mode 100644
index b01145a..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.0.inc
+++ /dev/null
@@ -1,286 +0,0 @@
-# Auto-generated from zephyr-kernel-src.inc.jinja
-
-SRCREV_FORMAT = "default"
-
-SRCREV_default = "356c8cbe63ae01b3ab438382639d25bb418a0213"
-SRCREV_bsim = "908ffde6298a937c6549dbfa843a62caab26bfc5"
-SRCREV_babblesim_base = "02838ca04c4562e68dc876196828d8121679e537"
-SRCREV_babblesim_ext_2G4_libPhyComv1 = "9018113a362fa6c9e8f4b9cab9e5a8f12cc46b94"
-SRCREV_babblesim_ext_2G4_phy_v1 = "cf2d86e736efac4f12fad5093ed2da2c5b406156"
-SRCREV_babblesim_ext_2G4_channel_NtNcable = "20a38c997f507b0aa53817aab3d73a462fff7af1"
-SRCREV_babblesim_ext_2G4_channel_multiatt = "e09bc2d14b1975f969ad19c6ed23eb20e5dc3d09"
-SRCREV_babblesim_ext_2G4_modem_magic = "cb70771794f0bf6f262aa474848611c68ae8f1ed"
-SRCREV_babblesim_ext_2G4_modem_BLE_simple = "ce975a3259fd0dd761d371b60435242d54794bad"
-SRCREV_babblesim_ext_2G4_device_burst_interferer = "5b5339351d6e6a2368c686c734dc8b2fc65698fc"
-SRCREV_babblesim_ext_2G4_device_WLAN_actmod = "9cb6d8e72695f6b785e57443f0629a18069d6ce4"
-SRCREV_babblesim_ext_2G4_device_playback = "85c645929cf1ce995d8537107d9dcbd12ed64036"
-SRCREV_babblesim_ext_libCryptov1 = "eed6d7038e839153e340bd333bc43541cb90ba64"
-SRCREV_canopennode = "dec12fa3f0d790cafa8414a4c2930ea71ab72ffd"
-SRCREV_chre = "b7955c27e50485b7dafdc3888d7d6afdc2ac6d96"
-SRCREV_cmsis = "74981bf893e8b10931464b9945e2143d99a3f0a3"
-SRCREV_edtt = "64e5105ad82390164fb73fc654be3f73a608209a"
-SRCREV_fatfs = "427159bf95ea49b7680facffaa29ad506b42709b"
-SRCREV_hal_altera = "0d225ddd314379b32355a00fb669eacf911e750d"
-SRCREV_hal_atmel = "5ab43007eda3f380c125f957f03638d2e8d1144d"
-SRCREV_hal_espressif = "abe299333411cb37a1cb1dd0aa2ea35c27382604"
-SRCREV_hal_ethos_u = "90ada2ea5681b2a2722a10d2898eac34c2510791"
-SRCREV_hal_gigadevice = "2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3"
-SRCREV_hal_infineon = "0bebc14d8bd1a249ee7fbc70b37db6f01f72544f"
-SRCREV_hal_microchip = "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
-SRCREV_hal_nordic = "a1c3e0fbaafda091139b8744becd4853ada2f747"
-SRCREV_hal_nuvoton = "0a1f153c433f5f637a4490651bdda6d966de3b99"
-SRCREV_hal_nxp = "904830e8f684a9fd573751a1cdecde877ec49242"
-SRCREV_hal_openisa = "d1e61c0c654d8ca9e73d27fca3a7eb3b7881cb6a"
-SRCREV_hal_quicklogic = "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_hal_renesas = "f2d791d28cd8fdbc5861652b863822632c91f690"
-SRCREV_hal_rpi_pico = "b7801e4db6a62ea2d37bbef7880c3d056530c9bf"
-SRCREV_hal_silabs = "a143f03e846eb1b7b3135f3c8192820ce1b6d9c4"
-SRCREV_hal_st = "5948f7b3304f1628a45ee928cd607619a7f53bbb"
-SRCREV_hal_stm32 = "c865374fc83d93416c0f380e6310368ff55d6ce2"
-SRCREV_hal_telink = "38573af589173259801ae6c2b34b7d4c9e626746"
-SRCREV_hal_ti = "ae1db23f32dde779cdfc4afaa9a60ea219310a64"
-SRCREV_hal_wurthelektronik = "24ca9873c3d608fad1fea0431836bc8f144c132e"
-SRCREV_hal_xtensa = "41a631d4aeeeaedc0daece21eecc338807296ad7"
-SRCREV_libmetal = "b91611a6f47dd29fb24c46e5621e797557f80ec6"
-SRCREV_liblc3 = "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
-SRCREV_littlefs = "ca583fd297ceb48bced3c2548600dc615d67af24"
-SRCREV_loramac-node = "ce57712f3e426bbbb13acaec97b45369f716f43a"
-SRCREV_lvgl = "7102083f626cda09e5792420ea60af0525cce9ae"
-SRCREV_lz4 = "8e303c264fc21c2116dc612658003a22e933124d"
-SRCREV_mbedtls = "6e7841e5a08eb5da3c82dbc8b6b6d82ae4b7d2a0"
-SRCREV_mcuboot = "74c4d1c52fd51d07904b27a7aa9b2303e896a4e3"
-SRCREV_mipi-sys-t = "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
-SRCREV_nanopb = "42fa8b211e946b90b9d968523fce7b1cfe27617e"
-SRCREV_net-tools = "e0828aa9629b533644dc96ff6d1295c939bd713c"
-SRCREV_nrf_hw_models = "c8d2ecd25d6976d2d77eccf66878420fdb8ef5a1"
-SRCREV_open-amp = "c904a01d4a882bcbb39987e0e2ce5308f49ac7ad"
-SRCREV_openthread = "d9abe3071c0131a4adb5d7e7451319b735e6d855"
-SRCREV_picolibc = "d07c38ff051386f8e09a143ea0a6c1d6d66dd1d8"
-SRCREV_segger = "4bfaf28a11c3e5ec29badac744fab6d2f342749e"
-SRCREV_sof = "ffbf9c2a6ea2930b0ac7e3a37c7cd7f5c417d090"
-SRCREV_tflite-micro = "9156d050927012da87079064db59d07f03b8baf6"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorderSource = "bc839bf94904bcdb91b33760e918afbef82e3ab4"
-SRCREV_trusted-firmware-m = "79a6115d3a8d0e04864ae8156c1dc8532b750f5a"
-SRCREV_trusted-firmware-a = "28f5e137837f1c1a7a7b2af2dd8bb778c0a27532"
-SRCREV_tf-m-tests = "0f80a65193ddbbe3f0ac38b33b07b26138c11fa7"
-SRCREV_psa-arch-tests = "6a17330e0dfb5f319730f974d5b05f7b7f04757b"
-SRCREV_uoscore-uedhoc = "e8920192b66db4f909eb9cd3f155d5245c1ae825"
-SRCREV_zcbor = "67fd8bb88d3136738661fa8bb5f9989103f4599e"
-SRCREV_zscilib = "34c3432e81085bb717e4871d21ca419ae0058ec5"
-SRCREV_thrift = "10023645a0e6cb7ce23fcd7fd3dbac9f18df6234"
-
-SRC_URI_ZEPHYR ?= "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https"
-SRC_URI_ZEPHYR_BSIM ?= "git://github.com/zephyrproject-rtos/babblesim-manifest;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_BASE ?= "git://github.com/BabbleSim/base.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_LIBPHYCOMV1 ?= "git://github.com/BabbleSim/ext_2G4_libPhyComv1.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_PHY_V1 ?= "git://github.com/BabbleSim/ext_2G4_phy_v1.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_NTNCABLE ?= "git://github.com/BabbleSim/ext_2G4_channel_NtNcable.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_MULTIATT ?= "git://github.com/BabbleSim/ext_2G4_channel_multiatt.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_MAGIC ?= "git://github.com/BabbleSim/ext_2G4_modem_magic.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_BLE_SIMPLE ?= "git://github.com/BabbleSim/ext_2G4_modem_BLE_simple.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_BURST_INTERFERER ?= "git://github.com/BabbleSim/ext_2G4_device_burst_interferer.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_WLAN_ACTMOD ?= "git://github.com/BabbleSim/ext_2G4_device_WLAN_actmod.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_PLAYBACK ?= "git://github.com/BabbleSim/ext_2G4_device_playback.git;protocol=https"
-SRC_URI_ZEPHYR_BABBLESIM_EXT_LIBCRYPTOV1 ?= "git://github.com/BabbleSim/ext_libCryptov1.git;protocol=https"
-SRC_URI_ZEPHYR_CANOPENNODE ?= "git://github.com/zephyrproject-rtos/canopennode;protocol=https"
-SRC_URI_ZEPHYR_CHRE ?= "git://github.com/zephyrproject-rtos/chre;protocol=https"
-SRC_URI_ZEPHYR_CMSIS ?= "git://github.com/zephyrproject-rtos/cmsis;protocol=https"
-SRC_URI_ZEPHYR_EDTT ?= "git://github.com/zephyrproject-rtos/edtt;protocol=https"
-SRC_URI_ZEPHYR_FATFS ?= "git://github.com/zephyrproject-rtos/fatfs;protocol=https"
-SRC_URI_ZEPHYR_HAL_ALTERA ?= "git://github.com/zephyrproject-rtos/hal_altera;protocol=https"
-SRC_URI_ZEPHYR_HAL_ATMEL ?= "git://github.com/zephyrproject-rtos/hal_atmel;protocol=https"
-SRC_URI_ZEPHYR_HAL_ESPRESSIF ?= "git://github.com/zephyrproject-rtos/hal_espressif;protocol=https"
-SRC_URI_ZEPHYR_HAL_ETHOS_U ?= "git://github.com/zephyrproject-rtos/hal_ethos_u;protocol=https"
-SRC_URI_ZEPHYR_HAL_GIGADEVICE ?= "git://github.com/zephyrproject-rtos/hal_gigadevice;protocol=https"
-SRC_URI_ZEPHYR_HAL_INFINEON ?= "git://github.com/zephyrproject-rtos/hal_infineon;protocol=https"
-SRC_URI_ZEPHYR_HAL_MICROCHIP ?= "git://github.com/zephyrproject-rtos/hal_microchip;protocol=https"
-SRC_URI_ZEPHYR_HAL_NORDIC ?= "git://github.com/zephyrproject-rtos/hal_nordic;protocol=https"
-SRC_URI_ZEPHYR_HAL_NUVOTON ?= "git://github.com/zephyrproject-rtos/hal_nuvoton;protocol=https"
-SRC_URI_ZEPHYR_HAL_NXP ?= "git://github.com/zephyrproject-rtos/hal_nxp;protocol=https"
-SRC_URI_ZEPHYR_HAL_OPENISA ?= "git://github.com/zephyrproject-rtos/hal_openisa;protocol=https"
-SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?= "git://github.com/zephyrproject-rtos/hal_quicklogic;protocol=https"
-SRC_URI_ZEPHYR_HAL_RENESAS ?= "git://github.com/zephyrproject-rtos/hal_renesas;protocol=https"
-SRC_URI_ZEPHYR_HAL_RPI_PICO ?= "git://github.com/zephyrproject-rtos/hal_rpi_pico;protocol=https"
-SRC_URI_ZEPHYR_HAL_SILABS ?= "git://github.com/zephyrproject-rtos/hal_silabs;protocol=https"
-SRC_URI_ZEPHYR_HAL_ST ?= "git://github.com/zephyrproject-rtos/hal_st;protocol=https"
-SRC_URI_ZEPHYR_HAL_STM32 ?= "git://github.com/zephyrproject-rtos/hal_stm32;protocol=https"
-SRC_URI_ZEPHYR_HAL_TELINK ?= "git://github.com/zephyrproject-rtos/hal_telink;protocol=https"
-SRC_URI_ZEPHYR_HAL_TI ?= "git://github.com/zephyrproject-rtos/hal_ti;protocol=https"
-SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK ?= "git://github.com/zephyrproject-rtos/hal_wurthelektronik;protocol=https"
-SRC_URI_ZEPHYR_HAL_XTENSA ?= "git://github.com/zephyrproject-rtos/hal_xtensa;protocol=https"
-SRC_URI_ZEPHYR_LIBMETAL ?= "git://github.com/zephyrproject-rtos/libmetal;protocol=https"
-SRC_URI_ZEPHYR_LIBLC3 ?= "git://github.com/zephyrproject-rtos/liblc3;protocol=https"
-SRC_URI_ZEPHYR_LITTLEFS ?= "git://github.com/zephyrproject-rtos/littlefs;protocol=https"
-SRC_URI_ZEPHYR_LORAMAC_NODE ?= "git://github.com/zephyrproject-rtos/loramac-node;protocol=https"
-SRC_URI_ZEPHYR_LVGL ?= "git://github.com/zephyrproject-rtos/lvgl;protocol=https"
-SRC_URI_ZEPHYR_LZ4 ?= "git://github.com/zephyrproject-rtos/lz4;protocol=https"
-SRC_URI_ZEPHYR_MBEDTLS ?= "git://github.com/zephyrproject-rtos/mbedtls;protocol=https"
-SRC_URI_ZEPHYR_MCUBOOT ?= "git://github.com/zephyrproject-rtos/mcuboot;protocol=https"
-SRC_URI_ZEPHYR_MIPI_SYS_T ?= "git://github.com/zephyrproject-rtos/mipi-sys-t;protocol=https"
-SRC_URI_ZEPHYR_NANOPB ?= "git://github.com/zephyrproject-rtos/nanopb;protocol=https"
-SRC_URI_ZEPHYR_NET_TOOLS ?= "git://github.com/zephyrproject-rtos/net-tools;protocol=https"
-SRC_URI_ZEPHYR_NRF_HW_MODELS ?= "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=https"
-SRC_URI_ZEPHYR_OPEN_AMP ?= "git://github.com/zephyrproject-rtos/open-amp;protocol=https"
-SRC_URI_ZEPHYR_OPENTHREAD ?= "git://github.com/zephyrproject-rtos/openthread;protocol=https"
-SRC_URI_ZEPHYR_PICOLIBC ?= "git://github.com/zephyrproject-rtos/picolibc;protocol=https"
-SRC_URI_ZEPHYR_SEGGER ?= "git://github.com/zephyrproject-rtos/segger;protocol=https"
-SRC_URI_ZEPHYR_SOF ?= "git://github.com/zephyrproject-rtos/sof;protocol=https"
-SRC_URI_ZEPHYR_TFLITE_MICRO ?= "git://github.com/zephyrproject-rtos/tflite-micro;protocol=https"
-SRC_URI_ZEPHYR_TINYCRYPT ?= "git://github.com/zephyrproject-rtos/tinycrypt;protocol=https"
-SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?= "git://github.com/zephyrproject-rtos/TraceRecorderSource;protocol=https"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?= "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=https"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?= "git://github.com/zephyrproject-rtos/trusted-firmware-a;protocol=https"
-SRC_URI_ZEPHYR_TF_M_TESTS ?= "git://github.com/zephyrproject-rtos/tf-m-tests;protocol=https"
-SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?= "git://github.com/zephyrproject-rtos/psa-arch-tests;protocol=https"
-SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?= "git://github.com/zephyrproject-rtos/uoscore-uedhoc;protocol=https"
-SRC_URI_ZEPHYR_ZCBOR ?= "git://github.com/zephyrproject-rtos/zcbor;protocol=https"
-SRC_URI_ZEPHYR_ZSCILIB ?= "git://github.com/zephyrproject-rtos/zscilib;protocol=https"
-SRC_URI_ZEPHYR_THRIFT ?= "git://github.com/zephyrproject-rtos/thrift;protocol=https"
-
-SRC_URI_PATCHES ?= "\
-    file://0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
-"
-
-SRC_URI = "\
-    ${SRC_URI_ZEPHYR};branch=${ZEPHYR_BRANCH};name=default;destsuffix=git/zephyr \
-    ${SRC_URI_ZEPHYR_BSIM};name=bsim;nobranch=1;destsuffix=git/tools/bsim \
-    ${SRC_URI_ZEPHYR_BABBLESIM_BASE};name=babblesim_base;nobranch=1;destsuffix=git/tools/bsim/components \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_LIBPHYCOMV1};name=babblesim_ext_2G4_libPhyComv1;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_libPhyComv1 \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_PHY_V1};name=babblesim_ext_2G4_phy_v1;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_phy_v1 \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_NTNCABLE};name=babblesim_ext_2G4_channel_NtNcable;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_channel_NtNcable \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_MULTIATT};name=babblesim_ext_2G4_channel_multiatt;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_channel_multiatt \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_MAGIC};name=babblesim_ext_2G4_modem_magic;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_modem_magic \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_BLE_SIMPLE};name=babblesim_ext_2G4_modem_BLE_simple;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_modem_BLE_simple \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_BURST_INTERFERER};name=babblesim_ext_2G4_device_burst_interferer;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_device_burst_interferer \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_WLAN_ACTMOD};name=babblesim_ext_2G4_device_WLAN_actmod;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_device_WLAN_actmod \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_PLAYBACK};name=babblesim_ext_2G4_device_playback;nobranch=1;destsuffix=git/tools/bsim/components/ext_2G4_device_playback \
-    ${SRC_URI_ZEPHYR_BABBLESIM_EXT_LIBCRYPTOV1};name=babblesim_ext_libCryptov1;nobranch=1;destsuffix=git/tools/bsim/components/ext_libCryptov1 \
-    ${SRC_URI_ZEPHYR_CANOPENNODE};name=canopennode;nobranch=1;destsuffix=git/modules/lib/canopennode \
-    ${SRC_URI_ZEPHYR_CHRE};name=chre;nobranch=1;destsuffix=git/modules/lib/chre \
-    ${SRC_URI_ZEPHYR_CMSIS};name=cmsis;nobranch=1;destsuffix=git/modules/hal/cmsis \
-    ${SRC_URI_ZEPHYR_EDTT};name=edtt;nobranch=1;destsuffix=git/tools/edtt \
-    ${SRC_URI_ZEPHYR_FATFS};name=fatfs;nobranch=1;destsuffix=git/modules/fs/fatfs \
-    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=hal_altera;nobranch=1;destsuffix=git/modules/hal/altera \
-    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=hal_atmel;nobranch=1;destsuffix=git/modules/hal/atmel \
-    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=hal_espressif;nobranch=1;destsuffix=git/modules/hal/espressif \
-    ${SRC_URI_ZEPHYR_HAL_ETHOS_U};name=hal_ethos_u;nobranch=1;destsuffix=git/modules/hal/ethos_u \
-    ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=hal_gigadevice;nobranch=1;destsuffix=git/modules/hal/gigadevice \
-    ${SRC_URI_ZEPHYR_HAL_INFINEON};name=hal_infineon;nobranch=1;destsuffix=git/modules/hal/infineon \
-    ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=hal_microchip;nobranch=1;destsuffix=git/modules/hal/microchip \
-    ${SRC_URI_ZEPHYR_HAL_NORDIC};name=hal_nordic;nobranch=1;destsuffix=git/modules/hal/nordic \
-    ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=hal_nuvoton;nobranch=1;destsuffix=git/modules/hal/nuvoton \
-    ${SRC_URI_ZEPHYR_HAL_NXP};name=hal_nxp;nobranch=1;destsuffix=git/modules/hal/nxp \
-    ${SRC_URI_ZEPHYR_HAL_OPENISA};name=hal_openisa;nobranch=1;destsuffix=git/modules/hal/openisa \
-    ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=hal_quicklogic;nobranch=1;destsuffix=git/modules/hal/quicklogic \
-    ${SRC_URI_ZEPHYR_HAL_RENESAS};name=hal_renesas;nobranch=1;destsuffix=git/modules/hal/renesas \
-    ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=hal_rpi_pico;nobranch=1;destsuffix=git/modules/hal/rpi_pico \
-    ${SRC_URI_ZEPHYR_HAL_SILABS};name=hal_silabs;nobranch=1;destsuffix=git/modules/hal/silabs \
-    ${SRC_URI_ZEPHYR_HAL_ST};name=hal_st;nobranch=1;destsuffix=git/modules/hal/st \
-    ${SRC_URI_ZEPHYR_HAL_STM32};name=hal_stm32;nobranch=1;destsuffix=git/modules/hal/stm32 \
-    ${SRC_URI_ZEPHYR_HAL_TELINK};name=hal_telink;nobranch=1;destsuffix=git/modules/hal/telink \
-    ${SRC_URI_ZEPHYR_HAL_TI};name=hal_ti;nobranch=1;destsuffix=git/modules/hal/ti \
-    ${SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK};name=hal_wurthelektronik;nobranch=1;destsuffix=git/modules/hal/wurthelektronik \
-    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=hal_xtensa;nobranch=1;destsuffix=git/modules/hal/xtensa \
-    ${SRC_URI_ZEPHYR_LIBMETAL};name=libmetal;nobranch=1;destsuffix=git/modules/hal/libmetal \
-    ${SRC_URI_ZEPHYR_LIBLC3};name=liblc3;nobranch=1;destsuffix=git/modules/lib/liblc3 \
-    ${SRC_URI_ZEPHYR_LITTLEFS};name=littlefs;nobranch=1;destsuffix=git/modules/fs/littlefs \
-    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=loramac-node;nobranch=1;destsuffix=git/modules/lib/loramac-node \
-    ${SRC_URI_ZEPHYR_LVGL};name=lvgl;nobranch=1;destsuffix=git/modules/lib/gui/lvgl \
-    ${SRC_URI_ZEPHYR_LZ4};name=lz4;nobranch=1;destsuffix=git/modules/lib/lz4 \
-    ${SRC_URI_ZEPHYR_MBEDTLS};name=mbedtls;nobranch=1;destsuffix=git/modules/crypto/mbedtls \
-    ${SRC_URI_ZEPHYR_MCUBOOT};name=mcuboot;nobranch=1;destsuffix=git/bootloader/mcuboot \
-    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=mipi-sys-t;nobranch=1;destsuffix=git/modules/debug/mipi-sys-t \
-    ${SRC_URI_ZEPHYR_NANOPB};name=nanopb;nobranch=1;destsuffix=git/modules/lib/nanopb \
-    ${SRC_URI_ZEPHYR_NET_TOOLS};name=net-tools;nobranch=1;destsuffix=git/tools/net-tools \
-    ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=nrf_hw_models;nobranch=1;destsuffix=git/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_ZEPHYR_OPEN_AMP};name=open-amp;nobranch=1;destsuffix=git/modules/lib/open-amp \
-    ${SRC_URI_ZEPHYR_OPENTHREAD};name=openthread;nobranch=1;destsuffix=git/modules/lib/openthread \
-    ${SRC_URI_ZEPHYR_PICOLIBC};name=picolibc;nobranch=1;destsuffix=git/modules/lib/picolibc \
-    ${SRC_URI_ZEPHYR_SEGGER};name=segger;nobranch=1;destsuffix=git/modules/debug/segger \
-    ${SRC_URI_ZEPHYR_SOF};name=sof;nobranch=1;destsuffix=git/modules/audio/sof \
-    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=tflite-micro;nobranch=1;destsuffix=git/modules/lib/tflite-micro \
-    ${SRC_URI_ZEPHYR_TINYCRYPT};name=tinycrypt;nobranch=1;destsuffix=git/modules/crypto/tinycrypt \
-    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=TraceRecorderSource;nobranch=1;destsuffix=git/modules/debug/TraceRecorder \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=trusted-firmware-m;nobranch=1;destsuffix=git/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=trusted-firmware-a;nobranch=1;destsuffix=git/modules/tee/tf-a/trusted-firmware-a \
-    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=tf-m-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=psa-arch-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=uoscore-uedhoc;nobranch=1;destsuffix=git/modules/lib/uoscore-uedhoc \
-    ${SRC_URI_ZEPHYR_ZCBOR};name=zcbor;nobranch=1;destsuffix=git/modules/lib/zcbor \
-    ${SRC_URI_ZEPHYR_ZSCILIB};name=zscilib;nobranch=1;destsuffix=git/modules/lib/zscilib \
-    ${SRC_URI_ZEPHYR_THRIFT};name=thrift;nobranch=1;destsuffix=git/modules/lib/thrift \
-    ${SRC_URI_PATCHES} \
-"
-
-ZEPHYR_MODULES = "\
-${S}/tools/bsim\;\
-${S}/tools/bsim/components\;\
-${S}/tools/bsim/components/ext_2G4_libPhyComv1\;\
-${S}/tools/bsim/components/ext_2G4_phy_v1\;\
-${S}/tools/bsim/components/ext_2G4_channel_NtNcable\;\
-${S}/tools/bsim/components/ext_2G4_channel_multiatt\;\
-${S}/tools/bsim/components/ext_2G4_modem_magic\;\
-${S}/tools/bsim/components/ext_2G4_modem_BLE_simple\;\
-${S}/tools/bsim/components/ext_2G4_device_burst_interferer\;\
-${S}/tools/bsim/components/ext_2G4_device_WLAN_actmod\;\
-${S}/tools/bsim/components/ext_2G4_device_playback\;\
-${S}/tools/bsim/components/ext_libCryptov1\;\
-${S}/modules/lib/canopennode\;\
-${S}/modules/lib/chre\;\
-${S}/modules/hal/cmsis\;\
-${S}/tools/edtt\;\
-${S}/modules/fs/fatfs\;\
-${S}/modules/hal/altera\;\
-${S}/modules/hal/atmel\;\
-${S}/modules/hal/espressif\;\
-${S}/modules/hal/ethos_u\;\
-${S}/modules/hal/gigadevice\;\
-${S}/modules/hal/infineon\;\
-${S}/modules/hal/microchip\;\
-${S}/modules/hal/nordic\;\
-${S}/modules/hal/nuvoton\;\
-${S}/modules/hal/nxp\;\
-${S}/modules/hal/openisa\;\
-${S}/modules/hal/quicklogic\;\
-${S}/modules/hal/renesas\;\
-${S}/modules/hal/rpi_pico\;\
-${S}/modules/hal/silabs\;\
-${S}/modules/hal/st\;\
-${S}/modules/hal/stm32\;\
-${S}/modules/hal/telink\;\
-${S}/modules/hal/ti\;\
-${S}/modules/hal/wurthelektronik\;\
-${S}/modules/hal/xtensa\;\
-${S}/modules/hal/libmetal\;\
-${S}/modules/lib/liblc3\;\
-${S}/modules/fs/littlefs\;\
-${S}/modules/lib/loramac-node\;\
-${S}/modules/lib/gui/lvgl\;\
-${S}/modules/lib/lz4\;\
-${S}/modules/crypto/mbedtls\;\
-${S}/bootloader/mcuboot\;\
-${S}/modules/debug/mipi-sys-t\;\
-${S}/modules/lib/nanopb\;\
-${S}/tools/net-tools\;\
-${S}/modules/bsim_hw_models/nrf_hw_models\;\
-${S}/modules/lib/open-amp\;\
-${S}/modules/lib/openthread\;\
-${S}/modules/lib/picolibc\;\
-${S}/modules/debug/segger\;\
-${S}/modules/audio/sof\;\
-${S}/modules/lib/tflite-micro\;\
-${S}/modules/crypto/tinycrypt\;\
-${S}/modules/debug/TraceRecorder\;\
-${S}/modules/tee/tf-m/trusted-firmware-m\;\
-${S}/modules/tee/tf-a/trusted-firmware-a\;\
-${S}/modules/tee/tf-m/tf-m-tests\;\
-${S}/modules/tee/tf-m/psa-arch-tests\;\
-${S}/modules/lib/uoscore-uedhoc\;\
-${S}/modules/lib/zcbor\;\
-${S}/modules/lib/zscilib\;\
-${S}/modules/lib/thrift\;\
-"
-
-ZEPHYR_BRANCH = "v3.4-branch"
-PV = "3.4.0+git${SRCPV}"
-- 
2.34.1


