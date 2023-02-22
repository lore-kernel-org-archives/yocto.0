Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E703C636D6
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 22:21:32 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.1092.1677104483406157683
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 14:21:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 708DAC14;
	Wed, 22 Feb 2023 14:22:05 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C51E3F587;
	Wed, 22 Feb 2023 14:21:21 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: Drop support for v3.1.0 and v3.2.0
Date: Wed, 22 Feb 2023 22:20:31 +0000
Message-Id: <20230222222032.656229-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222222032.656229-1-peter.hoyes@arm.com>
References: <20230222222032.656229-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 22:21:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59284

From: Peter Hoyes <Peter.Hoyes@arm.com>

Now that v3.3.0 is available, drop support for previous versions.

Rename the downstream patches and drop the backport.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ...ix-SMP-local-keys-check-when-startin.patch |  51 ----
 ... 0001-3.3-cmake-add-yocto-toolchain.patch} |   0
 ...y-generation-issue-in-cross-compila.patch} |   0
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 224 ----------------
 .../zephyr-kernel/zephyr-kernel-src-3.2.0.inc | 239 ------------------
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc |   4 +-
 6 files changed, 2 insertions(+), 516 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0=
001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-3.1-cma=
ke-add-yocto-toolchain.patch =3D> 0001-3.3-cmake-add-yocto-toolchain.patc=
h} (100%)
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-3.1-x86=
-fix-efi-binary-generation-issue-in-cross-compila.patch =3D> 0001-3.3-x86=
-fix-efi-binary-generation-issue-in-cross-compila.patch} (100%)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
kernel-src-3.1.0.inc
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
kernel-src-3.2.0.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1=
-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch b/meta-zephyr=
-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-=
local-keys-check-when-startin.patch
deleted file mode 100644
index 68650c3..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Blueto=
oth-host-Fix-SMP-local-keys-check-when-startin.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-From 74d26b70f080a5dc60c6a1aa2bfec38043ee30d4 Mon Sep 17 00:00:00 2001
-From: Joakim Andersson <joakim.andersson@nordicsemi.no>
-Date: Fri, 5 Aug 2022 10:50:47 +0200
-Subject: [PATCH] Bluetooth: host: Fix SMP local keys check when starting
- encryption
-
-Fix SMP check of existing local keys when attempting to start security
-with required security mode 1 level 4. The logic for checking the
-conditions was wrong, leading to a situation where encryption would be
-attempted to be started by the central instead of initiating a new
-pairing procedure. This would fail when the connection was encrypted and
-the connection would be disconnected.
-
-Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/=
commit/83d5402fe830973f943bde085d80f0d3643e811a]
-https://github.com/zephyrproject-rtos/zephyr/pull/52947/files
-CVE: CVE-2022-2993
-
-Signed-off-by: Joakim Andersson <joakim.andersson@nordicsemi.no>
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- subsys/bluetooth/host/smp.c | 10 +++++-----
- 1 file changed, 5 insertions(+), 5 deletions(-)
-
-diff --git a/subsys/bluetooth/host/smp.c b/subsys/bluetooth/host/smp.c
-index 02a847f97d..555f09fefd 100644
---- a/subsys/bluetooth/host/smp.c
-+++ b/subsys/bluetooth/host/smp.c
-@@ -357,15 +357,15 @@ static bool smp_keys_check(struct bt_conn *conn)
- 		return false;
- 	}
-=20
--	if (conn->required_sec_level > BT_SECURITY_L2 &&
-+	if (conn->required_sec_level >=3D BT_SECURITY_L3 &&
- 	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
- 		return false;
- 	}
-=20
--	if (conn->required_sec_level > BT_SECURITY_L3 &&
--	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
--	    !(conn->le.keys->keys & BT_KEYS_LTK_P256) &&
--	    !(conn->le.keys->enc_size =3D=3D BT_SMP_MAX_ENC_KEY_SIZE)) {
-+	if (conn->required_sec_level >=3D BT_SECURITY_L4 &&
-+	    !((conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
-+	      (conn->le.keys->keys & BT_KEYS_LTK_P256) &&
-+	      (conn->le.keys->enc_size =3D=3D BT_SMP_MAX_ENC_KEY_SIZE))) {
- 		return false;
- 	}
-=20
---=20
-2.25.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1=
-cmake-add-yocto-toolchain.patch b/meta-zephyr-core/recipes-kernel/zephyr=
-kernel/files/0001-3.3-cmake-add-yocto-toolchain.patch
similarity index 100%
rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-=
cmake-add-yocto-toolchain.patch
rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-cm=
ake-add-yocto-toolchain.patch
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1=
-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr=
-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-gene=
ration-issue-in-cross-compila.patch
similarity index 100%
rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-=
x86-fix-efi-binary-generation-issue-in-cross-compila.patch
rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x8=
6-fix-efi-binary-generation-issue-in-cross-compila.patch
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.1.0.inc
deleted file mode 100644
index 9b3a105..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
+++ /dev/null
@@ -1,224 +0,0 @@
-# Auto-generated from zephyr-kernel-src.inc.jinja
-
-SRCREV_FORMAT =3D "default"
-
-SRCREV_default =3D "a7d946331f4f9361d1531984524dd8f151ae20b0"
-SRCREV_canopennode =3D "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
-SRCREV_chre =3D "0edfe2c2ec656afb910cfab8ed59a5ffd59b87c8"
-SRCREV_civetweb =3D "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
-SRCREV_cmsis =3D "5f86244bad4ad5a590e084f0e72ba7a1416c2edf"
-SRCREV_edtt =3D "1ea61a390d2bfcf3b2ecdba8f8b0b98dfdffbd11"
-SRCREV_fatfs =3D "a30531af3a95a9a3ea7d771ea8a578ebfed45514"
-SRCREV_fff =3D "6ce5ba26486e93d5b7696a3e23f0585932c14b16"
-SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
-SRCREV_hal_atmel =3D "78c5567c05b6b434dd7d98f49156319df4217bac"
-SRCREV_hal_espressif =3D "df85671c5d0405c0747c2939c8dfe808b7e4cf38"
-SRCREV_hal_gigadevice =3D "63a72ca90b7e0d7257211ddc5c79e8c0b940371b"
-SRCREV_hal_infineon =3D "4af06965f57ba1e7d170e6a97d24c33785543a8c"
-SRCREV_hal_microchip =3D "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
-SRCREV_hal_nordic =3D "a85bb3676d61d1ae202088e0d3fec556056b2c9e"
-SRCREV_hal_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
-SRCREV_hal_nxp =3D "2302a1e94f5bc00ce59db4e249b688ad2e959f58"
-SRCREV_hal_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_hal_rpi_pico =3D "191f5ba46fda49523cdaaef27583d1c875ba2c36"
-SRCREV_hal_silabs =3D "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
-SRCREV_hal_st =3D "52a522ca4a8a9ec1e9bb5bb514e1ab6f102863fe"
-SRCREV_hal_stm32 =3D "51b373cd3455b8c2b9babbf6ff41918116a442ac"
-SRCREV_hal_telink =3D "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
-SRCREV_hal_ti =3D "905a5d4134899630071f9383aadaaf266e8f8cd2"
-SRCREV_hal_xtensa =3D "0e577021bb66e644afd067cd9f7c71ab11b62b3d"
-SRCREV_libmetal =3D "850a3c3fd5bc655987021dc9106d8e8cd0f7e061"
-SRCREV_liblc3codec =3D "3951cf1b71ff3be086c9b9b595e473e12301337c"
-SRCREV_littlefs =3D "652f2c5646e79b881e6f3099686ad3b7af9e216c"
-SRCREV_loramac-node =3D "12019623bbad9eb54fe51066847a7cbd4b4eac57"
-SRCREV_lvgl =3D "df717ac87a9fd80246cc8df24554475e59bda21f"
-SRCREV_lz4 =3D "8e303c264fc21c2116dc612658003a22e933124d"
-SRCREV_mbedtls =3D "7fed49c9b9f983ad6416986661ef637459723bcb"
-SRCREV_mcuboot =3D "e58ea98aec6e5539c5f872a98059e461d0155bbb"
-SRCREV_mipi-sys-t =3D "a5163c1800a5243f8b05d84c942da008df4cb666"
-SRCREV_nanopb =3D "d148bd26718e4c10414f07a7eb1bd24c62e56c5d"
-SRCREV_net-tools =3D "f49bd1354616fae4093bf36e5eaee43c51a55127"
-SRCREV_nrf_hw_models =3D "b8cea37dbdc8fc58cc14b4e19fa850877a9da520"
-SRCREV_open-amp =3D "8d53544871e1f300c478224faca6be8384ab0d04"
-SRCREV_openthread =3D "e2a765599aa0379d0f72f0149a9cbafec070c12d"
-SRCREV_segger =3D "3a52ab222133193802d3c3b4d21730b9b1f1d2f6"
-SRCREV_sof =3D "2efc3ea41c0074c6dab5f376fafaa26f52c25c75"
-SRCREV_tflite-micro =3D "9156d050927012da87079064db59d07f03b8baf6"
-SRCREV_tinycbor =3D "9e1f34bc08123aaad7666d3652aaa839e8178b3b"
-SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorderSource =3D "e8ca3b6a83d19b2fc4738a0d9607190436e5e452=
"
-SRCREV_trusted-firmware-m =3D "7c53a6e76130a85303f83b15d868a92fdcd5f5be"
-SRCREV_tf-m-tests =3D "c99a86b295c4887520da9d8402566d7f225c974e"
-SRCREV_psa-arch-tests =3D "a81f9da287569f169d60026916952641b233faa8"
-SRCREV_zcbor =3D "882c489a7d9fdfff31d27666914a78a9eb6976d7"
-SRCREV_zscilib =3D "fc979a8dcb74169c69b02835927bff8f070d6325"
-
-SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
-SRC_URI_ZEPHYR_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/can=
opennode;protocol=3Dhttps"
-SRC_URI_ZEPHYR_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_CIVETWEB ?=3D "git://github.com/zephyrproject-rtos/civetw=
eb;protocol=3Dhttps"
-SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_=
altera;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_a=
tmel;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/h=
al_espressif;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/=
hal_gigadevice;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/ha=
l_infineon;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/h=
al_microchip;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_=
nordic;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal=
_nuvoton;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal=
_openisa;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/=
hal_quicklogic;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/ha=
l_rpi_pico;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_=
silabs;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_s=
tm32;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_=
telink;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_=
xtensa;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmet=
al;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LIBLC3CODEC ?=3D "git://github.com/zephyrproject-rtos/lib=
lc3codec;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/little=
fs;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/lo=
ramac-node;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi=
-sys-t;protocol=3Dhttps"
-SRC_URI_ZEPHYR_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-t=
ools;protocol=3Dhttps"
-SRC_URI_ZEPHYR_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/n=
rf_hw_models;protocol=3Dhttps"
-SRC_URI_ZEPHYR_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-a=
mp;protocol=3Dhttps"
-SRC_URI_ZEPHYR_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/open=
thread;protocol=3Dhttps"
-SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tf=
lite-micro;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycb=
or;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinyc=
rypt;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-=
rtos/TraceRecorderSource;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-m;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m=
-tests;protocol=3Dhttps"
-SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/=
psa-arch-tests;protocol=3Dhttps"
-SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib=
;protocol=3Dhttps"
-
-SRC_URI_PATCHES ?=3D "\
-    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
-    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
-    file://0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin=
.patch;patchdir=3Dzephyr \
-"
-
-SRC_URI =3D "\
-    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
-    ${SRC_URI_ZEPHYR_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/canopennode \
-    ${SRC_URI_ZEPHYR_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/chre \
-    ${SRC_URI_ZEPHYR_CIVETWEB};name=3Dcivetweb;nobranch=3D1;destsuffix=3D=
git/modules/lib/civetweb \
-    ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/m=
odules/hal/cmsis \
-    ${SRC_URI_ZEPHYR_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/too=
ls/edtt \
-    ${SRC_URI_ZEPHYR_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/m=
odules/fs/fatfs \
-    ${SRC_URI_ZEPHYR_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/fff \
-    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/altera \
-    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/atmel \
-    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/espressif \
-    ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/gigadevice \
-    ${SRC_URI_ZEPHYR_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/infineon \
-    ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/microchip \
-    ${SRC_URI_ZEPHYR_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/nordic \
-    ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/nuvoton \
-    ${SRC_URI_ZEPHYR_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dg=
it/modules/hal/nxp \
-    ${SRC_URI_ZEPHYR_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/openisa \
-    ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/quicklogic \
-    ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/rpi_pico \
-    ${SRC_URI_ZEPHYR_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/silabs \
-    ${SRC_URI_ZEPHYR_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/st \
-    ${SRC_URI_ZEPHYR_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/stm32 \
-    ${SRC_URI_ZEPHYR_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/telink \
-    ${SRC_URI_ZEPHYR_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/ti \
-    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/xtensa \
-    ${SRC_URI_ZEPHYR_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3D=
git/modules/hal/libmetal \
-    ${SRC_URI_ZEPHYR_LIBLC3CODEC};name=3Dliblc3codec;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/liblc3codec \
-    ${SRC_URI_ZEPHYR_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3D=
git/modules/fs/littlefs \
-    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/loramac-node \
-    ${SRC_URI_ZEPHYR_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/gui/lvgl \
-    ${SRC_URI_ZEPHYR_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/lz4 \
-    ${SRC_URI_ZEPHYR_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dg=
it/modules/crypto/mbedtls \
-    ${SRC_URI_ZEPHYR_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dg=
it/bootloader/mcuboot \
-    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuff=
ix=3Dgit/modules/debug/mipi-sys-t \
-    ${SRC_URI_ZEPHYR_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/nanopb \
-    ${SRC_URI_ZEPHYR_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=
=3Dgit/tools/net-tools \
-    ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;de=
stsuffix=3Dgit/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_ZEPHYR_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3D=
git/modules/lib/open-amp \
-    ${SRC_URI_ZEPHYR_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuff=
ix=3Dgit/modules/lib/openthread \
-    ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit=
/modules/debug/segger \
-    ${SRC_URI_ZEPHYR_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modul=
es/audio/sof \
-    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/tflite-micro \
-    ${SRC_URI_ZEPHYR_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3D=
git/modules/lib/tinycbor \
-    ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=
=3Dgit/modules/crypto/tinycrypt \
-    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nob=
ranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuff=
ix=3Dgit/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;=
destsuffix=3Dgit/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/m=
odules/lib/zcbor \
-    ${SRC_URI_ZEPHYR_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dg=
it/modules/lib/zscilib \
-    ${SRC_URI_PATCHES} \
-"
-
-ZEPHYR_MODULES =3D "\
-${S}/modules/lib/canopennode\;\
-${S}/modules/lib/chre\;\
-${S}/modules/lib/civetweb\;\
-${S}/modules/hal/cmsis\;\
-${S}/tools/edtt\;\
-${S}/modules/fs/fatfs\;\
-${S}/modules/lib/fff\;\
-${S}/modules/hal/altera\;\
-${S}/modules/hal/atmel\;\
-${S}/modules/hal/espressif\;\
-${S}/modules/hal/gigadevice\;\
-${S}/modules/hal/infineon\;\
-${S}/modules/hal/microchip\;\
-${S}/modules/hal/nordic\;\
-${S}/modules/hal/nuvoton\;\
-${S}/modules/hal/nxp\;\
-${S}/modules/hal/openisa\;\
-${S}/modules/hal/quicklogic\;\
-${S}/modules/hal/rpi_pico\;\
-${S}/modules/hal/silabs\;\
-${S}/modules/hal/st\;\
-${S}/modules/hal/stm32\;\
-${S}/modules/hal/telink\;\
-${S}/modules/hal/ti\;\
-${S}/modules/hal/xtensa\;\
-${S}/modules/hal/libmetal\;\
-${S}/modules/lib/liblc3codec\;\
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
-${S}/modules/debug/segger\;\
-${S}/modules/audio/sof\;\
-${S}/modules/lib/tflite-micro\;\
-${S}/modules/lib/tinycbor\;\
-${S}/modules/crypto/tinycrypt\;\
-${S}/modules/debug/TraceRecorder\;\
-${S}/modules/tee/tf-m/trusted-firmware-m\;\
-${S}/modules/tee/tf-m/tf-m-tests\;\
-${S}/modules/tee/tf-m/psa-arch-tests\;\
-${S}/modules/lib/zcbor\;\
-${S}/modules/lib/zscilib\;\
-"
-
-ZEPHYR_BRANCH =3D "v3.1-branch"
-PV =3D "3.1.0+git${SRCPV}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.2.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.2.0.inc
deleted file mode 100644
index 8df6885..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2=
.0.inc
+++ /dev/null
@@ -1,239 +0,0 @@
-# Auto-generated from zephyr-kernel-src.inc.jinja
-
-SRCREV_FORMAT =3D "default"
-
-SRCREV_default =3D "4b58ae97f30338dd343f110fef068b21b94b6555"
-SRCREV_canopennode =3D "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
-SRCREV_chre =3D "ef76d3456db07e4959df555047d6962279528c8d"
-SRCREV_cmsis =3D "093de61c2a7d12dc9253daf8692f61f793a9254a"
-SRCREV_edtt =3D "1ea61a390d2bfcf3b2ecdba8f8b0b98dfdffbd11"
-SRCREV_fatfs =3D "a30531af3a95a9a3ea7d771ea8a578ebfed45514"
-SRCREV_fff =3D "6ce5ba26486e93d5b7696a3e23f0585932c14b16"
-SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
-SRCREV_hal_atmel =3D "1d237f2e2f262751975b6da6e03af569b2b49b2b"
-SRCREV_hal_espressif =3D "2cb20ac6c5b25f3c91b35e7997451db47030b7cb"
-SRCREV_hal_gigadevice =3D "dd0e0322474462b58059e6fedaf1d67d2a0864d0"
-SRCREV_hal_infineon =3D "4af06965f57ba1e7d170e6a97d24c33785543a8c"
-SRCREV_hal_microchip =3D "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
-SRCREV_hal_nordic =3D "249199ec5a5c31d170659921048764e96d05cc0e"
-SRCREV_hal_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
-SRCREV_hal_nxp =3D "708c95825b0d5279620935a1356299fff5dfbc6e"
-SRCREV_hal_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_hal_renesas =3D "468d3f2146d18c7f86a4640fc641cc1d20a4a100"
-SRCREV_hal_rpi_pico =3D "a094c060e0c2d43c7f9d8f5c06cc0665117e0c18"
-SRCREV_hal_silabs =3D "1ec8dd99aa4ac3e8632d2aa28a7438049bb27102"
-SRCREV_hal_st =3D "cccbc24c14decfd3f93959f7b14514536af973c7"
-SRCREV_hal_stm32 =3D "642e199c59828137dc6b1c7044a289d4269886d1"
-SRCREV_hal_telink =3D "38573af589173259801ae6c2b34b7d4c9e626746"
-SRCREV_hal_ti =3D "000b944a788b6005d7776198e1348f5c8a657259"
-SRCREV_hal_wurthelektronik =3D "24ca9873c3d608fad1fea0431836bc8f144c132e=
"
-SRCREV_hal_xtensa =3D "63f655362423aa49507da7977a2d37142e8debeb"
-SRCREV_libmetal =3D "2f586b4f1276fb075ee145421bdf6cbe5403aa41"
-SRCREV_liblc3 =3D "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
-SRCREV_littlefs =3D "ca583fd297ceb48bced3c2548600dc615d67af24"
-SRCREV_loramac-node =3D "ce57712f3e426bbbb13acaec97b45369f716f43a"
-SRCREV_lvgl =3D "af95bdfcf6784edd958ea08139c713e2d3dee7af"
-SRCREV_lz4 =3D "8e303c264fc21c2116dc612658003a22e933124d"
-SRCREV_mbedtls =3D "7fed49c9b9f983ad6416986661ef637459723bcb"
-SRCREV_mcuboot =3D "13f63976bca672ee018f9d55f1e31f02f4135b64"
-SRCREV_mipi-sys-t =3D "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
-SRCREV_nanopb =3D "dc4deed54fd4c7e1935e3b6387eedf21bb45dc38"
-SRCREV_net-tools =3D "e0828aa9629b533644dc96ff6d1295c939bd713c"
-SRCREV_nrf_hw_models =3D "65bc5305d432c08e24a3f343006d1e7deaff4908"
-SRCREV_open-amp =3D "8d53544871e1f300c478224faca6be8384ab0d04"
-SRCREV_openthread =3D "b21e99b4b3d823f71c902b9174ff62b964c124f0"
-SRCREV_picolibc =3D "04ada5951cbaf8e7b17f8226ce31cb6837c28ba7"
-SRCREV_segger =3D "d4e568a920b4bd087886170a5624c167b2d0665e"
-SRCREV_sof =3D "fed466c264ad078c66f7bff9218ba1d3fa0eb201"
-SRCREV_tflite-micro =3D "9156d050927012da87079064db59d07f03b8baf6"
-SRCREV_tinycbor =3D "9e1f34bc08123aaad7666d3652aaa839e8178b3b"
-SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorderSource =3D "9893bf1cf649a2c4ee2e27293f887994f3d0da5b=
"
-SRCREV_trusted-firmware-m =3D "231235f26f5295ac4faf8c5617dbb9779869d821"
-SRCREV_trusted-firmware-a =3D "d29cddecde614d81cbec1fb0086cdaebd77d3575"
-SRCREV_tf-m-tests =3D "c99a86b295c4887520da9d8402566d7f225c974e"
-SRCREV_psa-arch-tests =3D "f4fc2442b8e29e2a03d9899e46e5a3ea3df8c2c9"
-SRCREV_uoscore-uedhoc =3D "e8920192b66db4f909eb9cd3f155d5245c1ae825"
-SRCREV_zcbor =3D "a0d6981f14d4001d6f0d608d1a427f9bc6bb6d02"
-SRCREV_zscilib =3D "ca070ddabdaf67175a2da901d0bd62e8899371c5"
-
-SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
-SRC_URI_ZEPHYR_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/can=
opennode;protocol=3Dhttps"
-SRC_URI_ZEPHYR_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_=
altera;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_a=
tmel;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/h=
al_espressif;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/=
hal_gigadevice;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/ha=
l_infineon;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/h=
al_microchip;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_=
nordic;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal=
_nuvoton;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal=
_openisa;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/=
hal_quicklogic;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_RENESAS ?=3D "git://github.com/zephyrproject-rtos/hal=
_renesas;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/ha=
l_rpi_pico;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_=
silabs;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_s=
tm32;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_=
telink;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK ?=3D "git://github.com/zephyrproject-=
rtos/hal_wurthelektronik;protocol=3Dhttps"
-SRC_URI_ZEPHYR_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_=
xtensa;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmet=
al;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LIBLC3 ?=3D "git://github.com/zephyrproject-rtos/liblc3;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/little=
fs;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/lo=
ramac-node;protocol=3Dhttps"
-SRC_URI_ZEPHYR_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;proto=
col=3Dhttps"
-SRC_URI_ZEPHYR_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot=
;protocol=3Dhttps"
-SRC_URI_ZEPHYR_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi=
-sys-t;protocol=3Dhttps"
-SRC_URI_ZEPHYR_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-t=
ools;protocol=3Dhttps"
-SRC_URI_ZEPHYR_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/n=
rf_hw_models;protocol=3Dhttps"
-SRC_URI_ZEPHYR_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-a=
mp;protocol=3Dhttps"
-SRC_URI_ZEPHYR_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/open=
thread;protocol=3Dhttps"
-SRC_URI_ZEPHYR_PICOLIBC ?=3D "git://github.com/zephyrproject-rtos/picoli=
bc;protocol=3Dhttps"
-SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;p=
rotocol=3Dhttps"
-SRC_URI_ZEPHYR_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protoco=
l=3Dhttps"
-SRC_URI_ZEPHYR_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tf=
lite-micro;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycb=
or;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinyc=
rypt;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-=
rtos/TraceRecorderSource;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-m;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-a;protocol=3Dhttps"
-SRC_URI_ZEPHYR_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m=
-tests;protocol=3Dhttps"
-SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/=
psa-arch-tests;protocol=3Dhttps"
-SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?=3D "git://github.com/zephyrproject-rtos/=
uoscore-uedhoc;protocol=3Dhttps"
-SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;pro=
tocol=3Dhttps"
-SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib=
;protocol=3Dhttps"
-
-SRC_URI_PATCHES ?=3D "\
-    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
-    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
-"
-
-SRC_URI =3D "\
-    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
-    ${SRC_URI_ZEPHYR_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/canopennode \
-    ${SRC_URI_ZEPHYR_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/chre \
-    ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/m=
odules/hal/cmsis \
-    ${SRC_URI_ZEPHYR_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/too=
ls/edtt \
-    ${SRC_URI_ZEPHYR_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/m=
odules/fs/fatfs \
-    ${SRC_URI_ZEPHYR_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/fff \
-    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/altera \
-    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/atmel \
-    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/espressif \
-    ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/gigadevice \
-    ${SRC_URI_ZEPHYR_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/infineon \
-    ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/microchip \
-    ${SRC_URI_ZEPHYR_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/nordic \
-    ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/nuvoton \
-    ${SRC_URI_ZEPHYR_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dg=
it/modules/hal/nxp \
-    ${SRC_URI_ZEPHYR_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/openisa \
-    ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/quicklogic \
-    ${SRC_URI_ZEPHYR_HAL_RENESAS};name=3Dhal_renesas;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/renesas \
-    ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/rpi_pico \
-    ${SRC_URI_ZEPHYR_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/silabs \
-    ${SRC_URI_ZEPHYR_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/st \
-    ${SRC_URI_ZEPHYR_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/stm32 \
-    ${SRC_URI_ZEPHYR_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/telink \
-    ${SRC_URI_ZEPHYR_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/ti \
-    ${SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK};name=3Dhal_wurthelektronik;nob=
ranch=3D1;destsuffix=3Dgit/modules/hal/wurthelektronik \
-    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/xtensa \
-    ${SRC_URI_ZEPHYR_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3D=
git/modules/hal/libmetal \
-    ${SRC_URI_ZEPHYR_LIBLC3};name=3Dliblc3;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/liblc3 \
-    ${SRC_URI_ZEPHYR_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3D=
git/modules/fs/littlefs \
-    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/loramac-node \
-    ${SRC_URI_ZEPHYR_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/gui/lvgl \
-    ${SRC_URI_ZEPHYR_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/lz4 \
-    ${SRC_URI_ZEPHYR_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dg=
it/modules/crypto/mbedtls \
-    ${SRC_URI_ZEPHYR_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dg=
it/bootloader/mcuboot \
-    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuff=
ix=3Dgit/modules/debug/mipi-sys-t \
-    ${SRC_URI_ZEPHYR_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/nanopb \
-    ${SRC_URI_ZEPHYR_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=
=3Dgit/tools/net-tools \
-    ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;de=
stsuffix=3Dgit/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_ZEPHYR_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3D=
git/modules/lib/open-amp \
-    ${SRC_URI_ZEPHYR_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuff=
ix=3Dgit/modules/lib/openthread \
-    ${SRC_URI_ZEPHYR_PICOLIBC};name=3Dpicolibc;nobranch=3D1;destsuffix=3D=
git/modules/lib/picolibc \
-    ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit=
/modules/debug/segger \
-    ${SRC_URI_ZEPHYR_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modul=
es/audio/sof \
-    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/tflite-micro \
-    ${SRC_URI_ZEPHYR_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3D=
git/modules/lib/tinycbor \
-    ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=
=3Dgit/modules/crypto/tinycrypt \
-    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nob=
ranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=3Dtrusted-firmware-a;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-a/trusted-firmware-a \
-    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuff=
ix=3Dgit/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;=
destsuffix=3Dgit/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=3Duoscore-uedhoc;nobranch=3D1;=
destsuffix=3Dgit/modules/lib/uoscore-uedhoc \
-    ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/m=
odules/lib/zcbor \
-    ${SRC_URI_ZEPHYR_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dg=
it/modules/lib/zscilib \
-    ${SRC_URI_PATCHES} \
-"
-
-ZEPHYR_MODULES =3D "\
-${S}/modules/lib/canopennode\;\
-${S}/modules/lib/chre\;\
-${S}/modules/hal/cmsis\;\
-${S}/tools/edtt\;\
-${S}/modules/fs/fatfs\;\
-${S}/modules/lib/fff\;\
-${S}/modules/hal/altera\;\
-${S}/modules/hal/atmel\;\
-${S}/modules/hal/espressif\;\
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
-${S}/modules/lib/tinycbor\;\
-${S}/modules/crypto/tinycrypt\;\
-${S}/modules/debug/TraceRecorder\;\
-${S}/modules/tee/tf-m/trusted-firmware-m\;\
-${S}/modules/tee/tf-a/trusted-firmware-a\;\
-${S}/modules/tee/tf-m/tf-m-tests\;\
-${S}/modules/tee/tf-m/psa-arch-tests\;\
-${S}/modules/lib/uoscore-uedhoc\;\
-${S}/modules/lib/zcbor\;\
-${S}/modules/lib/zscilib\;\
-"
-
-ZEPHYR_BRANCH =3D "v3.2-branch"
-PV =3D "3.2.0+git${SRCPV}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.3.0.inc
index 13cd59a..c7614a7 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
@@ -115,8 +115,8 @@ SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrp=
roject-rtos/zscilib;protocol=3D
 SRC_URI_ZEPHYR_THRIFT ?=3D "git://github.com/zephyrproject-rtos/thrift;p=
rotocol=3Dhttps"
=20
 SRC_URI_PATCHES ?=3D "\
-    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
-    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
+    file://0001-3.3-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
+    file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
 "
=20
 SRC_URI =3D "\
--=20
2.34.1


