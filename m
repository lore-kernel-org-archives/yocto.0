Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 035E3C27C76
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 17:06:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.50971.1674666392549203941
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 09:06:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D96214B3;
	Wed, 25 Jan 2023 09:07:13 -0800 (PST)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64B393F5A1;
	Wed, 25 Jan 2023 09:06:31 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH] zephyr-core/zephyr-kernel: Add ZEPHYR namespace to SRC_URI variables
Date: Wed, 25 Jan 2023 17:06:16 +0000
Message-Id: <20230125170616.773742-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 17:06:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59060

From: Peter Hoyes <Peter.Hoyes@arm.com>

Certain SRC_URI_* variables may collide with other recipes, e.g.
SRC_URI_TRUSTED_FIRMWARE_A. Namespace these variables under
SRC_URI_ZEPHYR so that the SRC_URIs of Zephyr modules can be
independently tweaked from local.conf or the environment.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 200 ++++++++--------
 .../zephyr-kernel/zephyr-kernel-src-3.2.0.inc | 216 +++++++++---------
 .../scripts/zephyr-kernel-src.inc.jinja       |   4 +-
 3 files changed, 210 insertions(+), 210 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.1.0.inc
index b3feb6a..9b3a105 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
@@ -55,56 +55,56 @@ SRCREV_zcbor =3D "882c489a7d9fdfff31d27666914a78a9eb6=
976d7"
 SRCREV_zscilib =3D "fc979a8dcb74169c69b02835927bff8f070d6325"
=20
 SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
-SRC_URI_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/canopennod=
e;protocol=3Dhttps"
-SRC_URI_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;protocol=3Dh=
ttps"
-SRC_URI_CIVETWEB ?=3D "git://github.com/zephyrproject-rtos/civetweb;prot=
ocol=3Dhttps"
-SRC_URI_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;protocol=3D=
https"
-SRC_URI_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;protocol=3Dh=
ttps"
-SRC_URI_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;protocol=3D=
https"
-SRC_URI_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protocol=3Dhtt=
ps"
-SRC_URI_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_altera;=
protocol=3Dhttps"
-SRC_URI_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_atmel;pr=
otocol=3Dhttps"
-SRC_URI_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/hal_espr=
essif;protocol=3Dhttps"
-SRC_URI_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/hal_gig=
adevice;protocol=3Dhttps"
-SRC_URI_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/hal_infin=
eon;protocol=3Dhttps"
-SRC_URI_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/hal_micr=
ochip;protocol=3Dhttps"
-SRC_URI_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_nordic;=
protocol=3Dhttps"
-SRC_URI_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal_nuvoto=
n;protocol=3Dhttps"
-SRC_URI_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp;protoc=
ol=3Dhttps"
-SRC_URI_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal_openis=
a;protocol=3Dhttps"
-SRC_URI_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/hal_qui=
cklogic;protocol=3Dhttps"
-SRC_URI_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/hal_rpi_p=
ico;protocol=3Dhttps"
-SRC_URI_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_silabs;=
protocol=3Dhttps"
-SRC_URI_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;protocol=
=3Dhttps"
-SRC_URI_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_stm32;pr=
otocol=3Dhttps"
-SRC_URI_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_telink;=
protocol=3Dhttps"
-SRC_URI_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;protocol=
=3Dhttps"
-SRC_URI_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_xtensa;=
protocol=3Dhttps"
-SRC_URI_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmetal;prot=
ocol=3Dhttps"
-SRC_URI_LIBLC3CODEC ?=3D "git://github.com/zephyrproject-rtos/liblc3code=
c;protocol=3Dhttps"
-SRC_URI_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/littlefs;prot=
ocol=3Dhttps"
-SRC_URI_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/loramac-n=
ode;protocol=3Dhttps"
-SRC_URI_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;protocol=3Dh=
ttps"
-SRC_URI_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protocol=3Dhtt=
ps"
-SRC_URI_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls;protoc=
ol=3Dhttps"
-SRC_URI_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot;protoc=
ol=3Dhttps"
-SRC_URI_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi-sys-t;=
protocol=3Dhttps"
-SRC_URI_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;protocol=
=3Dhttps"
-SRC_URI_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-tools;pr=
otocol=3Dhttps"
-SRC_URI_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/nrf_hw_m=
odels;protocol=3Dhttps"
-SRC_URI_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-amp;prot=
ocol=3Dhttps"
-SRC_URI_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/openthread;=
protocol=3Dhttps"
-SRC_URI_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;protocol=
=3Dhttps"
-SRC_URI_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protocol=3Dhtt=
ps"
-SRC_URI_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tflite-mi=
cro;protocol=3Dhttps"
-SRC_URI_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycbor;prot=
ocol=3Dhttps"
-SRC_URI_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinycrypt;pr=
otocol=3Dhttps"
-SRC_URI_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-rtos/Tr=
aceRecorderSource;protocol=3Dhttps"
-SRC_URI_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-rtos/tru=
sted-firmware-m;protocol=3Dhttps"
-SRC_URI_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m-tests;=
protocol=3Dhttps"
-SRC_URI_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/psa-arc=
h-tests;protocol=3Dhttps"
-SRC_URI_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;protocol=3D=
https"
-SRC_URI_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib;protoc=
ol=3Dhttps"
+SRC_URI_ZEPHYR_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/can=
opennode;protocol=3Dhttps"
+SRC_URI_ZEPHYR_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;proto=
col=3Dhttps"
+SRC_URI_ZEPHYR_CIVETWEB ?=3D "git://github.com/zephyrproject-rtos/civetw=
eb;protocol=3Dhttps"
+SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;proto=
col=3Dhttps"
+SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protoco=
l=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_=
altera;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_a=
tmel;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/h=
al_espressif;protocol=3Dhttps"
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
+SRC_URI_ZEPHYR_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_=
xtensa;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmet=
al;protocol=3Dhttps"
+SRC_URI_ZEPHYR_LIBLC3CODEC ?=3D "git://github.com/zephyrproject-rtos/lib=
lc3codec;protocol=3Dhttps"
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
+SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;p=
rotocol=3Dhttps"
+SRC_URI_ZEPHYR_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protoco=
l=3Dhttps"
+SRC_URI_ZEPHYR_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tf=
lite-micro;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycb=
or;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinyc=
rypt;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-=
rtos/TraceRecorderSource;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-r=
tos/trusted-firmware-m;protocol=3Dhttps"
+SRC_URI_ZEPHYR_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m=
-tests;protocol=3Dhttps"
+SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/=
psa-arch-tests;protocol=3Dhttps"
+SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;pro=
tocol=3Dhttps"
+SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib=
;protocol=3Dhttps"
=20
 SRC_URI_PATCHES ?=3D "\
     file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
@@ -114,56 +114,56 @@ SRC_URI_PATCHES ?=3D "\
=20
 SRC_URI =3D "\
     ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
-    ${SRC_URI_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsuffix=3D=
git/modules/lib/canopennode \
-    ${SRC_URI_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/chre \
-    ${SRC_URI_CIVETWEB};name=3Dcivetweb;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/civetweb \
-    ${SRC_URI_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/modules/=
hal/cmsis \
-    ${SRC_URI_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/tools/edtt=
 \
-    ${SRC_URI_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/modules/=
fs/fatfs \
-    ${SRC_URI_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
fff \
-    ${SRC_URI_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/altera \
-    ${SRC_URI_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/atmel \
-    ${SRC_URI_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/espressif \
-    ${SRC_URI_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/gigadevice \
-    ${SRC_URI_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;destsuffix=3D=
git/modules/hal/infineon \
-    ${SRC_URI_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/microchip \
-    ${SRC_URI_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/nordic \
-    ${SRC_URI_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsuffix=3D=
git/modules/hal/nuvoton \
-    ${SRC_URI_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dgit/modu=
les/hal/nxp \
-    ${SRC_URI_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsuffix=3D=
git/modules/hal/openisa \
-    ${SRC_URI_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/quicklogic \
-    ${SRC_URI_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;destsuffix=3D=
git/modules/hal/rpi_pico \
-    ${SRC_URI_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/silabs \
-    ${SRC_URI_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/st \
-    ${SRC_URI_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/stm32 \
-    ${SRC_URI_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/telink \
-    ${SRC_URI_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/ti \
-    ${SRC_URI_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/xtensa \
-    ${SRC_URI_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3Dgit/mo=
dules/hal/libmetal \
-    ${SRC_URI_LIBLC3CODEC};name=3Dliblc3codec;nobranch=3D1;destsuffix=3D=
git/modules/lib/liblc3codec \
-    ${SRC_URI_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3Dgit/mo=
dules/fs/littlefs \
-    ${SRC_URI_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;destsuffix=3D=
git/modules/lib/loramac-node \
-    ${SRC_URI_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/gui/lvgl \
-    ${SRC_URI_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
lz4 \
-    ${SRC_URI_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/modu=
les/crypto/mbedtls \
-    ${SRC_URI_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit/boot=
loader/mcuboot \
-    ${SRC_URI_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuffix=3Dgi=
t/modules/debug/mipi-sys-t \
-    ${SRC_URI_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/nanopb \
-    ${SRC_URI_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=3Dgit/=
tools/net-tools \
-    ${SRC_URI_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;destsuffi=
x=3Dgit/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/open-amp \
-    ${SRC_URI_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuffix=3Dgi=
t/modules/lib/openthread \
-    ${SRC_URI_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/module=
s/debug/segger \
-    ${SRC_URI_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modules/audi=
o/sof \
-    ${SRC_URI_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;destsuffix=3D=
git/modules/lib/tflite-micro \
-    ${SRC_URI_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/tinycbor \
-    ${SRC_URI_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgit/=
modules/crypto/tinycrypt \
-    ${SRC_URI_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nobranch=3D=
1;destsuffix=3Dgit/modules/debug/TraceRecorder \
-    ${SRC_URI_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobranch=3D1=
;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuffix=3Dgi=
t/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;destsuf=
fix=3Dgit/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/modules/=
lib/zcbor \
-    ${SRC_URI_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dgit/modu=
les/lib/zscilib \
+    ${SRC_URI_ZEPHYR_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/canopennode \
+    ${SRC_URI_ZEPHYR_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/mod=
ules/lib/chre \
+    ${SRC_URI_ZEPHYR_CIVETWEB};name=3Dcivetweb;nobranch=3D1;destsuffix=3D=
git/modules/lib/civetweb \
+    ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/m=
odules/hal/cmsis \
+    ${SRC_URI_ZEPHYR_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/too=
ls/edtt \
+    ${SRC_URI_ZEPHYR_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/m=
odules/fs/fatfs \
+    ${SRC_URI_ZEPHYR_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/fff \
+    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/altera \
+    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/atmel \
+    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/espressif \
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
+    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/xtensa \
+    ${SRC_URI_ZEPHYR_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3D=
git/modules/hal/libmetal \
+    ${SRC_URI_ZEPHYR_LIBLC3CODEC};name=3Dliblc3codec;nobranch=3D1;destsu=
ffix=3Dgit/modules/lib/liblc3codec \
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
+    ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit=
/modules/debug/segger \
+    ${SRC_URI_ZEPHYR_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modul=
es/audio/sof \
+    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;dest=
suffix=3Dgit/modules/lib/tflite-micro \
+    ${SRC_URI_ZEPHYR_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3D=
git/modules/lib/tinycbor \
+    ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=
=3Dgit/modules/crypto/tinycrypt \
+    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nob=
ranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder \
+    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobra=
nch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
+    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuff=
ix=3Dgit/modules/tee/tf-m/tf-m-tests \
+    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;=
destsuffix=3Dgit/modules/tee/tf-m/psa-arch-tests \
+    ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/m=
odules/lib/zcbor \
+    ${SRC_URI_ZEPHYR_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dg=
it/modules/lib/zscilib \
     ${SRC_URI_PATCHES} \
 "
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.2.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.2.0.inc
index 5d8ddfa..8df6885 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2=
.0.inc
@@ -59,60 +59,60 @@ SRCREV_zcbor =3D "a0d6981f14d4001d6f0d608d1a427f9bc6b=
b6d02"
 SRCREV_zscilib =3D "ca070ddabdaf67175a2da901d0bd62e8899371c5"
=20
 SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
-SRC_URI_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/canopennod=
e;protocol=3Dhttps"
-SRC_URI_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;protocol=3Dh=
ttps"
-SRC_URI_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;protocol=3D=
https"
-SRC_URI_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;protocol=3Dh=
ttps"
-SRC_URI_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;protocol=3D=
https"
-SRC_URI_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protocol=3Dhtt=
ps"
-SRC_URI_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_altera;=
protocol=3Dhttps"
-SRC_URI_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_atmel;pr=
otocol=3Dhttps"
-SRC_URI_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/hal_espr=
essif;protocol=3Dhttps"
-SRC_URI_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/hal_gig=
adevice;protocol=3Dhttps"
-SRC_URI_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/hal_infin=
eon;protocol=3Dhttps"
-SRC_URI_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/hal_micr=
ochip;protocol=3Dhttps"
-SRC_URI_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_nordic;=
protocol=3Dhttps"
-SRC_URI_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal_nuvoto=
n;protocol=3Dhttps"
-SRC_URI_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp;protoc=
ol=3Dhttps"
-SRC_URI_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal_openis=
a;protocol=3Dhttps"
-SRC_URI_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/hal_qui=
cklogic;protocol=3Dhttps"
-SRC_URI_HAL_RENESAS ?=3D "git://github.com/zephyrproject-rtos/hal_renesa=
s;protocol=3Dhttps"
-SRC_URI_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/hal_rpi_p=
ico;protocol=3Dhttps"
-SRC_URI_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_silabs;=
protocol=3Dhttps"
-SRC_URI_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;protocol=
=3Dhttps"
-SRC_URI_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_stm32;pr=
otocol=3Dhttps"
-SRC_URI_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_telink;=
protocol=3Dhttps"
-SRC_URI_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;protocol=
=3Dhttps"
-SRC_URI_HAL_WURTHELEKTRONIK ?=3D "git://github.com/zephyrproject-rtos/ha=
l_wurthelektronik;protocol=3Dhttps"
-SRC_URI_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_xtensa;=
protocol=3Dhttps"
-SRC_URI_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmetal;prot=
ocol=3Dhttps"
-SRC_URI_LIBLC3 ?=3D "git://github.com/zephyrproject-rtos/liblc3;protocol=
=3Dhttps"
-SRC_URI_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/littlefs;prot=
ocol=3Dhttps"
-SRC_URI_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/loramac-n=
ode;protocol=3Dhttps"
-SRC_URI_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;protocol=3Dh=
ttps"
-SRC_URI_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protocol=3Dhtt=
ps"
-SRC_URI_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls;protoc=
ol=3Dhttps"
-SRC_URI_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot;protoc=
ol=3Dhttps"
-SRC_URI_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi-sys-t;=
protocol=3Dhttps"
-SRC_URI_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;protocol=
=3Dhttps"
-SRC_URI_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-tools;pr=
otocol=3Dhttps"
-SRC_URI_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/nrf_hw_m=
odels;protocol=3Dhttps"
-SRC_URI_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-amp;prot=
ocol=3Dhttps"
-SRC_URI_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/openthread;=
protocol=3Dhttps"
-SRC_URI_PICOLIBC ?=3D "git://github.com/zephyrproject-rtos/picolibc;prot=
ocol=3Dhttps"
-SRC_URI_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;protocol=
=3Dhttps"
-SRC_URI_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protocol=3Dhtt=
ps"
-SRC_URI_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tflite-mi=
cro;protocol=3Dhttps"
-SRC_URI_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycbor;prot=
ocol=3Dhttps"
-SRC_URI_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinycrypt;pr=
otocol=3Dhttps"
-SRC_URI_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-rtos/Tr=
aceRecorderSource;protocol=3Dhttps"
-SRC_URI_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-rtos/tru=
sted-firmware-m;protocol=3Dhttps"
-SRC_URI_TRUSTED_FIRMWARE_A ?=3D "git://github.com/zephyrproject-rtos/tru=
sted-firmware-a;protocol=3Dhttps"
-SRC_URI_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m-tests;=
protocol=3Dhttps"
-SRC_URI_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/psa-arc=
h-tests;protocol=3Dhttps"
-SRC_URI_UOSCORE_UEDHOC ?=3D "git://github.com/zephyrproject-rtos/uoscore=
-uedhoc;protocol=3Dhttps"
-SRC_URI_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;protocol=3D=
https"
-SRC_URI_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib;protoc=
ol=3Dhttps"
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
+SRC_URI_ZEPHYR_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protoco=
l=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_=
altera;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_a=
tmel;protocol=3Dhttps"
+SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/h=
al_espressif;protocol=3Dhttps"
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
+SRC_URI_ZEPHYR_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycb=
or;protocol=3Dhttps"
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
=20
 SRC_URI_PATCHES ?=3D "\
     file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
@@ -121,60 +121,60 @@ SRC_URI_PATCHES ?=3D "\
=20
 SRC_URI =3D "\
     ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
-    ${SRC_URI_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsuffix=3D=
git/modules/lib/canopennode \
-    ${SRC_URI_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/chre \
-    ${SRC_URI_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/modules/=
hal/cmsis \
-    ${SRC_URI_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/tools/edtt=
 \
-    ${SRC_URI_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/modules/=
fs/fatfs \
-    ${SRC_URI_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
fff \
-    ${SRC_URI_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/altera \
-    ${SRC_URI_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/atmel \
-    ${SRC_URI_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/espressif \
-    ${SRC_URI_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/gigadevice \
-    ${SRC_URI_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;destsuffix=3D=
git/modules/hal/infineon \
-    ${SRC_URI_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/microchip \
-    ${SRC_URI_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/nordic \
-    ${SRC_URI_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsuffix=3D=
git/modules/hal/nuvoton \
-    ${SRC_URI_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dgit/modu=
les/hal/nxp \
-    ${SRC_URI_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsuffix=3D=
git/modules/hal/openisa \
-    ${SRC_URI_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/quicklogic \
-    ${SRC_URI_HAL_RENESAS};name=3Dhal_renesas;nobranch=3D1;destsuffix=3D=
git/modules/hal/renesas \
-    ${SRC_URI_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;destsuffix=3D=
git/modules/hal/rpi_pico \
-    ${SRC_URI_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/silabs \
-    ${SRC_URI_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/st \
-    ${SRC_URI_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/stm32 \
-    ${SRC_URI_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/telink \
-    ${SRC_URI_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/ti \
-    ${SRC_URI_HAL_WURTHELEKTRONIK};name=3Dhal_wurthelektronik;nobranch=3D=
1;destsuffix=3Dgit/modules/hal/wurthelektronik \
-    ${SRC_URI_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/xtensa \
-    ${SRC_URI_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3Dgit/mo=
dules/hal/libmetal \
-    ${SRC_URI_LIBLC3};name=3Dliblc3;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/liblc3 \
-    ${SRC_URI_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3Dgit/mo=
dules/fs/littlefs \
-    ${SRC_URI_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;destsuffix=3D=
git/modules/lib/loramac-node \
-    ${SRC_URI_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/gui/lvgl \
-    ${SRC_URI_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
lz4 \
-    ${SRC_URI_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/modu=
les/crypto/mbedtls \
-    ${SRC_URI_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit/boot=
loader/mcuboot \
-    ${SRC_URI_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuffix=3Dgi=
t/modules/debug/mipi-sys-t \
-    ${SRC_URI_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/nanopb \
-    ${SRC_URI_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=3Dgit/=
tools/net-tools \
-    ${SRC_URI_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;destsuffi=
x=3Dgit/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/open-amp \
-    ${SRC_URI_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuffix=3Dgi=
t/modules/lib/openthread \
-    ${SRC_URI_PICOLIBC};name=3Dpicolibc;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/picolibc \
-    ${SRC_URI_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/module=
s/debug/segger \
-    ${SRC_URI_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modules/audi=
o/sof \
-    ${SRC_URI_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;destsuffix=3D=
git/modules/lib/tflite-micro \
-    ${SRC_URI_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/tinycbor \
-    ${SRC_URI_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgit/=
modules/crypto/tinycrypt \
-    ${SRC_URI_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nobranch=3D=
1;destsuffix=3Dgit/modules/debug/TraceRecorder \
-    ${SRC_URI_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobranch=3D1=
;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_TRUSTED_FIRMWARE_A};name=3Dtrusted-firmware-a;nobranch=3D1=
;destsuffix=3Dgit/modules/tee/tf-a/trusted-firmware-a \
-    ${SRC_URI_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuffix=3Dgi=
t/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;destsuf=
fix=3Dgit/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_UOSCORE_UEDHOC};name=3Duoscore-uedhoc;nobranch=3D1;destsuf=
fix=3Dgit/modules/lib/uoscore-uedhoc \
-    ${SRC_URI_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/modules/=
lib/zcbor \
-    ${SRC_URI_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dgit/modu=
les/lib/zscilib \
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
+    ${SRC_URI_ZEPHYR_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modul=
es/lib/fff \
+    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuff=
ix=3Dgit/modules/hal/altera \
+    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=
=3Dgit/modules/hal/atmel \
+    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;de=
stsuffix=3Dgit/modules/hal/espressif \
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
+    ${SRC_URI_ZEPHYR_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3D=
git/modules/lib/tinycbor \
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
     ${SRC_URI_PATCHES} \
 "
=20
diff --git a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja b/meta-=
zephyr-core/scripts/zephyr-kernel-src.inc.jinja
index e7981ed..1723b88 100644
--- a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
+++ b/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
@@ -9,7 +9,7 @@ SRCREV_{{ project.name }} =3D "{{ project.revision }}"
 {% endfor %}
 SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
 {%- for project in projects %}
-SRC_URI_{{ project.name | bitbake_var }} ?=3D "{{ project.url | git_url_=
to_bitbake }}"
+SRC_URI_ZEPHYR_{{ project.name | bitbake_var }} ?=3D "{{ project.url | g=
it_url_to_bitbake }}"
 {%- endfor %}
=20
 SRC_URI_PATCHES ?=3D "\
@@ -20,7 +20,7 @@ SRC_URI_PATCHES ?=3D "\
 SRC_URI =3D "\
     ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
 {%- for project in projects %}
-    ${SRC_URI_{{ project.name | bitbake_var }}};name=3D{{ project.name }=
};nobranch=3D1;destsuffix=3Dgit/{{ project.path }} \
+    ${SRC_URI_ZEPHYR_{{ project.name | bitbake_var }}};name=3D{{ project=
.name }};nobranch=3D1;destsuffix=3Dgit/{{ project.path }} \
 {%- endfor %}
     ${SRC_URI_PATCHES} \
 "
--=20
2.34.1


