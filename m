Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80C7C636D6
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 22:21:22 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.1089.1677104478316637613
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 14:21:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A45B8C14;
	Wed, 22 Feb 2023 14:22:00 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA47B3F587;
	Wed, 22 Feb 2023 14:21:16 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for v3.3.0
Date: Wed, 22 Feb 2023 22:20:30 +0000
Message-Id: <20230222222032.656229-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 22:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59283

From: Peter Hoyes <Peter.Hoyes@arm.com>

https://github.com/zephyrproject-rtos/zephyr/releases/tag/v3.3.0

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc | 239 ++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src.inc       |   2 +-
 2 files changed, 240 insertions(+), 1 deletion(-)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
kernel-src-3.3.0.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.3.0.inc
new file mode 100644
index 0000000..13cd59a
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
@@ -0,0 +1,239 @@
+# Auto-generated from zephyr-kernel-src.inc.jinja
+
+SRCREV_FORMAT =3D "default"
+
+SRCREV_default =3D "07c6af3b8c35c1e49186578ca61a25c76e2fb308"
+SRCREV_canopennode =3D "dec12fa3f0d790cafa8414a4c2930ea71ab72ffd"
+SRCREV_chre =3D "b7955c27e50485b7dafdc3888d7d6afdc2ac6d96"
+SRCREV_cmsis =3D "74981bf893e8b10931464b9945e2143d99a3f0a3"
+SRCREV_edtt =3D "000fb87261beaf33f80a8868e73857bd62edc668"
+SRCREV_fatfs =3D "427159bf95ea49b7680facffaa29ad506b42709b"
+SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
+SRCREV_hal_atmel =3D "d45adfb6897aba323cac29cdda8070ce4f23f014"
+SRCREV_hal_espressif =3D "73e7af1e2ed64571ce49ff9f07dc02690b9f2df5"
+SRCREV_hal_ethos_u =3D "90ada2ea5681b2a2722a10d2898eac34c2510791"
+SRCREV_hal_gigadevice =3D "2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3"
+SRCREV_hal_infineon =3D "5b0c7700a7be049e02835dfa0950d378aac39e67"
+SRCREV_hal_microchip =3D "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
+SRCREV_hal_nordic =3D "3f7ae2320b6d348898c7b11e956a6e792d0b3724"
+SRCREV_hal_nuvoton =3D "0a1f153c433f5f637a4490651bdda6d966de3b99"
+SRCREV_hal_nxp =3D "d957472002a3758154f402e982d95ce90cf58e12"
+SRCREV_hal_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
+SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
+SRCREV_hal_renesas =3D "468d3f2146d18c7f86a4640fc641cc1d20a4a100"
+SRCREV_hal_rpi_pico =3D "a094c060e0c2d43c7f9d8f5c06cc0665117e0c18"
+SRCREV_hal_silabs =3D "9dcaa761258cfdfecaacc5a9f0af92f6535d74a3"
+SRCREV_hal_st =3D "cccbc24c14decfd3f93959f7b14514536af973c7"
+SRCREV_hal_stm32 =3D "b916f9a01c665194fbbdd6a67a0f37b4e0a7e78c"
+SRCREV_hal_telink =3D "38573af589173259801ae6c2b34b7d4c9e626746"
+SRCREV_hal_ti =3D "5e7d5cd584047699c9fd279923120cb25ba3dda7"
+SRCREV_hal_wurthelektronik =3D "24ca9873c3d608fad1fea0431836bc8f144c132e=
"
+SRCREV_hal_xtensa =3D "63f655362423aa49507da7977a2d37142e8debeb"
+SRCREV_libmetal =3D "efa2ace6028290ddee494a78ade772a0b112ab83"
+SRCREV_liblc3 =3D "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
+SRCREV_littlefs =3D "ca583fd297ceb48bced3c2548600dc615d67af24"
+SRCREV_loramac-node =3D "ce57712f3e426bbbb13acaec97b45369f716f43a"
+SRCREV_lvgl =3D "5ab83099854719ed326b6ecb9b09b07b1eee4818"
+SRCREV_lz4 =3D "8e303c264fc21c2116dc612658003a22e933124d"
+SRCREV_mbedtls =3D "6e166050075688fd3cf3d0cb3fc34a1c52df2496"
+SRCREV_mcuboot =3D "750678e33819b95756203e5db1ba827baee35708"
+SRCREV_mipi-sys-t =3D "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
+SRCREV_nanopb =3D "dc4deed54fd4c7e1935e3b6387eedf21bb45dc38"
+SRCREV_net-tools =3D "e0828aa9629b533644dc96ff6d1295c939bd713c"
+SRCREV_nrf_hw_models =3D "d8f125e1988221ebfea5944fc3118f1780787ccc"
+SRCREV_open-amp =3D "aedcc262f93bbb1b0c2f58026911575729b7465c"
+SRCREV_openthread =3D "a1979fdd8ed756468719cc4921b04a57efcf9f15"
+SRCREV_picolibc =3D "98e59b70d6ef8eb18f7dccc3d39cecaa0658fa4f"
+SRCREV_segger =3D "e2ff2200556e8a8f962921444275c04971a2bb3d"
+SRCREV_sof =3D "6f5f7258ad2738df78e600568d38fc261e2a118d"
+SRCREV_tflite-micro =3D "9156d050927012da87079064db59d07f03b8baf6"
+SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_TraceRecorderSource =3D "d92607521335eaaaedb01b241cdd26fda48a5ca6=
"
+SRCREV_trusted-firmware-m =3D "f2a639c8d1842acb2964a27461f5c9cfdfaa4d16"
+SRCREV_trusted-firmware-a =3D "28f5e137837f1c1a7a7b2af2dd8bb778c0a27532"
+SRCREV_tf-m-tests =3D "0f80a65193ddbbe3f0ac38b33b07b26138c11fa7"
+SRCREV_psa-arch-tests =3D "24ed42e34e03ebbc945a7204819c1471cce2bda8"
+SRCREV_uoscore-uedhoc =3D "e8920192b66db4f909eb9cd3f155d5245c1ae825"
+SRCREV_zcbor =3D "0.6.0"
+SRCREV_zscilib =3D "0035be5e6a45e4ab89755b176d305d7a877fc79c"
+SRCREV_thrift =3D "10023645a0e6cb7ce23fcd7fd3dbac9f18df6234"
+
+SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
+SRC_URI_ZEPHYR_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/can=
opennode;protocol=3Dhttps"
+SRC_URI_ZEPHYR_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;proto=
col=3Dhttps"
+SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;proto=
col=3Dhttps"
+SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_=
altera;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_a=
tmel;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/h=
al_espressif;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ETHOS_U ?=3D "git://github.com/zephyrproject-rtos/hal=
_ethos_u;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/=
hal_gigadevice;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/ha=
l_infineon;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/h=
al_microchip;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_=
nordic;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal=
_nuvoton;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp=
;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal=
_openisa;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/=
hal_quicklogic;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_RENESAS ?=3D "git://github.com/zephyrproject-rtos/hal=
_renesas;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/ha=
l_rpi_pico;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_=
silabs;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_s=
tm32;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_=
telink;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK ?=3D "git://github.com/zephyrproject-=
rtos/hal_wurthelektronik;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_=
xtensa;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmet=
al;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LIBLC3 ?=3D "git://github.com/zephyrproject-rtos/liblc3;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/little=
fs;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/lo=
ramac-node;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;proto=
col=3Dhttps"
+SRC_URI_ZEPHYR_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protoco=
l=3Dhttps"
+SRC_URI_ZEPHYR_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls=
;protocol=3Dhttps"
+SRC_URI_ZEPHYR_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot=
;protocol=3Dhttps"
+SRC_URI_ZEPHYR_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi=
-sys-t;protocol=3Dhttps"
+SRC_URI_ZEPHYR_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-t=
ools;protocol=3Dhttps"
+SRC_URI_ZEPHYR_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/n=
rf_hw_models;protocol=3Dhttps"
+SRC_URI_ZEPHYR_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-a=
mp;protocol=3Dhttps"
+SRC_URI_ZEPHYR_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/open=
thread;protocol=3Dhttps"
+SRC_URI_ZEPHYR_PICOLIBC ?=3D "git://github.com/zephyrproject-rtos/picoli=
bc;protocol=3Dhttps"
+SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protoco=
l=3Dhttps"
+SRC_URI_ZEPHYR_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tf=
lite-micro;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinyc=
rypt;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-=
rtos/TraceRecorderSource;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-m;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-a;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m=
-tests;protocol=3Dhttps"
+SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/=
psa-arch-tests;protocol=3Dhttps"
+SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?=3D "git://github.com/zephyrproject-rtos/=
uoscore-uedhoc;protocol=3Dhttps"
+SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib=
;protocol=3Dhttps"
+SRC_URI_ZEPHYR_THRIFT ?=3D "git://github.com/zephyrproject-rtos/thrift;p=
rotocol=3Dhttps"
+
+SRC_URI_PATCHES ?=3D "\
+    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
+    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
+"
+
+SRC_URI =3D "\
+    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
+    ${SRC_URI_ZEPHYR_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/canopennode \
+    ${SRC_URI_ZEPHYR_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/chre \
+    ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/m=
odules/hal/cmsis \
+    ${SRC_URI_ZEPHYR_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/too=
ls/edtt \
+    ${SRC_URI_ZEPHYR_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/m=
odules/fs/fatfs \
+    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/altera \
+    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/atmel \
+    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/espressif \
+    ${SRC_URI_ZEPHYR_HAL_ETHOS_U};name=3Dhal_ethos_u;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/ethos_u \
+    ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/gigadevice \
+    ${SRC_URI_ZEPHYR_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/infineon \
+    ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/microchip \
+    ${SRC_URI_ZEPHYR_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/nordic \
+    ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/nuvoton \
+    ${SRC_URI_ZEPHYR_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dg=
it/modules/hal/nxp \
+    ${SRC_URI_ZEPHYR_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/openisa \
+    ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;=
destsuffix=3Dgit/modules/hal/quicklogic \
+    ${SRC_URI_ZEPHYR_HAL_RENESAS};name=3Dhal_renesas;nobranch=3D1;destsu=
ffix=3Dgit/modules/hal/renesas \
+    ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;dest=
suffix=3Dgit/modules/hal/rpi_pico \
+    ${SRC_URI_ZEPHYR_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/silabs \
+    ${SRC_URI_ZEPHYR_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/st \
+    ${SRC_URI_ZEPHYR_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/stm32 \
+    ${SRC_URI_ZEPHYR_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/telink \
+    ${SRC_URI_ZEPHYR_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit=
/modules/hal/ti \
+    ${SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK};name=3Dhal_wurthelektronik;nob=
ranch=3D1;destsuffix=3Dgit/modules/hal/wurthelektronik \
+    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/xtensa \
+    ${SRC_URI_ZEPHYR_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3D=
git/modules/hal/libmetal \
+    ${SRC_URI_ZEPHYR_LIBLC3};name=3Dliblc3;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/liblc3 \
+    ${SRC_URI_ZEPHYR_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3D=
git/modules/fs/littlefs \
+    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/loramac-node \
+    ${SRC_URI_ZEPHYR_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/gui/lvgl \
+    ${SRC_URI_ZEPHYR_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/lz4 \
+    ${SRC_URI_ZEPHYR_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dg=
it/modules/crypto/mbedtls \
+    ${SRC_URI_ZEPHYR_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dg=
it/bootloader/mcuboot \
+    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuff=
ix=3Dgit/modules/debug/mipi-sys-t \
+    ${SRC_URI_ZEPHYR_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/nanopb \
+    ${SRC_URI_ZEPHYR_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=
=3Dgit/tools/net-tools \
+    ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;de=
stsuffix=3Dgit/modules/bsim_hw_models/nrf_hw_models \
+    ${SRC_URI_ZEPHYR_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3D=
git/modules/lib/open-amp \
+    ${SRC_URI_ZEPHYR_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuff=
ix=3Dgit/modules/lib/openthread \
+    ${SRC_URI_ZEPHYR_PICOLIBC};name=3Dpicolibc;nobranch=3D1;destsuffix=3D=
git/modules/lib/picolibc \
+    ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit=
/modules/debug/segger \
+    ${SRC_URI_ZEPHYR_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modul=
es/audio/sof \
+    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/tflite-micro \
+    ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=
=3Dgit/modules/crypto/tinycrypt \
+    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nob=
ranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder \
+    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
+    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=3Dtrusted-firmware-a;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-a/trusted-firmware-a \
+    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuff=
ix=3Dgit/modules/tee/tf-m/tf-m-tests \
+    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;=
destsuffix=3Dgit/modules/tee/tf-m/psa-arch-tests \
+    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=3Duoscore-uedhoc;nobranch=3D1;=
destsuffix=3Dgit/modules/lib/uoscore-uedhoc \
+    ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/m=
odules/lib/zcbor \
+    ${SRC_URI_ZEPHYR_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dg=
it/modules/lib/zscilib \
+    ${SRC_URI_ZEPHYR_THRIFT};name=3Dthrift;nobranch=3D1;destsuffix=3Dgit=
/modules/lib/thrift \
+    ${SRC_URI_PATCHES} \
+"
+
+ZEPHYR_MODULES =3D "\
+${S}/modules/lib/canopennode\;\
+${S}/modules/lib/chre\;\
+${S}/modules/hal/cmsis\;\
+${S}/tools/edtt\;\
+${S}/modules/fs/fatfs\;\
+${S}/modules/hal/altera\;\
+${S}/modules/hal/atmel\;\
+${S}/modules/hal/espressif\;\
+${S}/modules/hal/ethos_u\;\
+${S}/modules/hal/gigadevice\;\
+${S}/modules/hal/infineon\;\
+${S}/modules/hal/microchip\;\
+${S}/modules/hal/nordic\;\
+${S}/modules/hal/nuvoton\;\
+${S}/modules/hal/nxp\;\
+${S}/modules/hal/openisa\;\
+${S}/modules/hal/quicklogic\;\
+${S}/modules/hal/renesas\;\
+${S}/modules/hal/rpi_pico\;\
+${S}/modules/hal/silabs\;\
+${S}/modules/hal/st\;\
+${S}/modules/hal/stm32\;\
+${S}/modules/hal/telink\;\
+${S}/modules/hal/ti\;\
+${S}/modules/hal/wurthelektronik\;\
+${S}/modules/hal/xtensa\;\
+${S}/modules/hal/libmetal\;\
+${S}/modules/lib/liblc3\;\
+${S}/modules/fs/littlefs\;\
+${S}/modules/lib/loramac-node\;\
+${S}/modules/lib/gui/lvgl\;\
+${S}/modules/lib/lz4\;\
+${S}/modules/crypto/mbedtls\;\
+${S}/bootloader/mcuboot\;\
+${S}/modules/debug/mipi-sys-t\;\
+${S}/modules/lib/nanopb\;\
+${S}/tools/net-tools\;\
+${S}/modules/bsim_hw_models/nrf_hw_models\;\
+${S}/modules/lib/open-amp\;\
+${S}/modules/lib/openthread\;\
+${S}/modules/lib/picolibc\;\
+${S}/modules/debug/segger\;\
+${S}/modules/audio/sof\;\
+${S}/modules/lib/tflite-micro\;\
+${S}/modules/crypto/tinycrypt\;\
+${S}/modules/debug/TraceRecorder\;\
+${S}/modules/tee/tf-m/trusted-firmware-m\;\
+${S}/modules/tee/tf-a/trusted-firmware-a\;\
+${S}/modules/tee/tf-m/tf-m-tests\;\
+${S}/modules/tee/tf-m/psa-arch-tests\;\
+${S}/modules/lib/uoscore-uedhoc\;\
+${S}/modules/lib/zcbor\;\
+${S}/modules/lib/zscilib\;\
+${S}/modules/lib/thrift\;\
+"
+
+ZEPHYR_BRANCH =3D "v3.3-branch"
+PV =3D "3.3.0+git${SRCPV}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src=
.inc
index a19d074..0f25512 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -12,5 +12,5 @@ FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
 S =3D "${WORKDIR}/git"
=20
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??=3D "3.2.0"
+PREFERRED_VERSION_zephyr-kernel ??=3D "3.3.0"
 require recipes-kernel/zephyr-kernel/zephyr-kernel-src-${PREFERRED_VERSI=
ON_zephyr-kernel}.inc
--=20
2.34.1


