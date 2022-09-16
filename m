Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40802C54EE9
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 09:03:48 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.3799.1663319019294002350
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 02:03:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D1D71D34;
	Fri, 16 Sep 2022 02:03:45 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.114])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 238753F73D;
	Fri, 16 Sep 2022 02:03:38 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/4] zephyr-core/zephyr-kernel: Migrate to
 script-driven version files
Date: Fri, 16 Sep 2022 10:03:16 +0100
Message-Id: <20220916090318.1293922-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916090318.1293922-1-peter.hoyes@arm.com>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58056

From: Peter Hoyes <Peter.Hoyes@arm.com>

This commit uses the output of
meta-zephyr-core/scripts/generate-version.py for both the 2.7.3 and
3.1.0 versions.

Rename a patch for for v2.7.3 to match the filename expected by the
generated configuration.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 ...y-generation-issue-in-cross-compila.patch} |   0
 .../zephyr-kernel/zephyr-kernel-src-2.7.3.inc | 202 +++++++++++++---
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 220 +++++++++++++++---
 .../zephyr-kernel/zephyr-kernel-src.inc       |  43 ----
 4 files changed, 347 insertions(+), 118 deletions(-)
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-x86-fix=
-efi-binary-generation-issue-in-cross-compila.patch =3D> 0001-2.7-x86-fix=
-efi-binary-generation-issue-in-cross-compila.patch} (100%)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-x86=
-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-cor=
e/recipes-kernel/zephyr-kernel/files/0001-2.7-x86-fix-efi-binary-generati=
on-issue-in-cross-compila.patch
similarity index 100%
rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-x86-=
fix-efi-binary-generation-issue-in-cross-compila.patch
rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-x8=
6-fix-efi-binary-generation-issue-in-cross-compila.patch
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-2.7.3.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-2.7.3.inc
index 1c53748..2d20888 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7=
.3.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7=
.3.inc
@@ -1,18 +1,6 @@
-SRCREV_FORMAT =3D "default_cmsis"
+# Auto-generated from zephyr-kernel-src.inc.jinja
=20
-# These repositories are specific to post-2.6 branches
-
-SRC_URI +=3D " \
-    git://github.com/zephyrproject-rtos/mcumgr.git;protocol=3Dhttps;nobr=
anch=3D1;destsuffix=3Dgit/modules/lib/mcumgr;name=3Dmcumgr \
-    git://github.com/zephyrproject-rtos/TraceRecorderSource.git;protocol=
=3Dhttps;nobranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder;name=3D=
TraceRecorder \
-    git://github.com/zephyrproject-rtos/trusted-firmware-m.git;protocol=3D=
https;nobranch=3D1;destsuffix=3Dgit/modules/tee/tfm;name=3Dtfm \
-"
-
-#
-# Generated from:
-# west forall -c 'x=3D$(filename `pwd`); rev=3D$(git rev-parse HEAD); \
-#      echo SRCREV_$x =3D \"$rev\"'
-#
+SRCREV_FORMAT =3D "default"
=20
 SRCREV_default =3D "003de78ce0dd213a1c7b3d159b967fb19a12aa45"
 SRCREV_canopennode =3D "f167efe85c8c7de886f1bc47f9173cfb8a346bb5"
@@ -20,23 +8,23 @@ SRCREV_civetweb =3D "094aeb41bb93e9199d24d665ee43e9e05=
d6d7b1c"
 SRCREV_cmsis =3D "b0612c97c1401feeb4160add6462c3627fe90fc7"
 SRCREV_edtt =3D "31badfbbd04f2948e3df6ebf329f930317550961"
 SRCREV_fatfs =3D "94fcd6bfb3801ac0a5e12ea2f52187e0a688b90e"
-SRCREV_altera =3D "23c1c1dd7a0c1cc9a399509d1819375847c95b97"
-SRCREV_atmel =3D "9f78f520f6cbb997e5b44fe8ab17dd5bf2448095"
-SRCREV_cypress =3D "81a059f21435bc7e315bccd720da5a9b615bbb50"
-SRCREV_espressif =3D "3400257534944d3a6a4194d1dbf8f0cd1670d64e"
-SRCREV_infineon =3D "f1fa8241f8786198ba41155413243de36ed878a5"
-SRCREV_microchip =3D "870d05e6a64ea9548da6b907058b03c8c9420826"
-SRCREV_nordic =3D "a6e5299041f152da5ae0ab17b2e44e088bb96d6d"
-SRCREV_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
-SRCREV_nxp =3D "78efc4ba7c1057c1cf2bf06e3e27ed7cc33e1da7"
-SRCREV_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_silabs =3D "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
-SRCREV_st =3D "575de9d461aa6f430cf62c58a053675377e700f3"
-SRCREV_stm32 =3D "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
-SRCREV_telink =3D "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
-SRCREV_ti =3D "1992a4c536554c4f409c36896eda6abdc414d277"
-SRCREV_xtensa =3D "6e1cf3c483e87df4888e87c5396b4534570f01af"
+SRCREV_hal_altera =3D "23c1c1dd7a0c1cc9a399509d1819375847c95b97"
+SRCREV_hal_atmel =3D "9f78f520f6cbb997e5b44fe8ab17dd5bf2448095"
+SRCREV_hal_cypress =3D "81a059f21435bc7e315bccd720da5a9b615bbb50"
+SRCREV_hal_espressif =3D "3400257534944d3a6a4194d1dbf8f0cd1670d64e"
+SRCREV_hal_infineon =3D "f1fa8241f8786198ba41155413243de36ed878a5"
+SRCREV_hal_microchip =3D "870d05e6a64ea9548da6b907058b03c8c9420826"
+SRCREV_hal_nordic =3D "a6e5299041f152da5ae0ab17b2e44e088bb96d6d"
+SRCREV_hal_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
+SRCREV_hal_nxp =3D "78efc4ba7c1057c1cf2bf06e3e27ed7cc33e1da7"
+SRCREV_hal_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
+SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
+SRCREV_hal_silabs =3D "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
+SRCREV_hal_st =3D "575de9d461aa6f430cf62c58a053675377e700f3"
+SRCREV_hal_stm32 =3D "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
+SRCREV_hal_telink =3D "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
+SRCREV_hal_ti =3D "1992a4c536554c4f409c36896eda6abdc414d277"
+SRCREV_hal_xtensa =3D "6e1cf3c483e87df4888e87c5396b4534570f01af"
 SRCREV_libmetal =3D "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_littlefs =3D "9e4498d1c73009acd84bb36036ee5e2869112a6c"
 SRCREV_loramac-node =3D "12019623bbad9eb54fe51066847a7cbd4b4eac57"
@@ -56,15 +44,153 @@ SRCREV_sof =3D "76feb11d1b8f425021b5691668af2250fee4=
44ac"
 SRCREV_tflite-micro =3D "9156d050927012da87079064db59d07f03b8baf6"
 SRCREV_tinycbor =3D "40daca97b478989884bffb5226e9ab73ca54b8c4"
 SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorder =3D "36c577727642457b0db7274298a4b96558374832"
-SRCREV_tfm =3D "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
+SRCREV_TraceRecorderSource =3D "36c577727642457b0db7274298a4b96558374832=
"
+SRCREV_trusted-firmware-m =3D "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
=20
-ZEPHYR_BRANCH =3D "v2.7-branch"
-PV =3D "2.7.3+git${SRCPV}"
+SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
+SRC_URI_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/canopennod=
e;protocol=3Dhttps"
+SRC_URI_CIVETWEB ?=3D "git://github.com/zephyrproject-rtos/civetweb;prot=
ocol=3Dhttps"
+SRC_URI_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;protocol=3D=
https"
+SRC_URI_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;protocol=3Dh=
ttps"
+SRC_URI_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;protocol=3D=
https"
+SRC_URI_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_altera;=
protocol=3Dhttps"
+SRC_URI_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_atmel;pr=
otocol=3Dhttps"
+SRC_URI_HAL_CYPRESS ?=3D "git://github.com/zephyrproject-rtos/hal_cypres=
s;protocol=3Dhttps"
+SRC_URI_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/hal_espr=
essif;protocol=3Dhttps"
+SRC_URI_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/hal_infin=
eon;protocol=3Dhttps"
+SRC_URI_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/hal_micr=
ochip;protocol=3Dhttps"
+SRC_URI_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_nordic;=
protocol=3Dhttps"
+SRC_URI_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal_nuvoto=
n;protocol=3Dhttps"
+SRC_URI_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp;protoc=
ol=3Dhttps"
+SRC_URI_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal_openis=
a;protocol=3Dhttps"
+SRC_URI_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/hal_qui=
cklogic;protocol=3Dhttps"
+SRC_URI_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_silabs;=
protocol=3Dhttps"
+SRC_URI_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;protocol=
=3Dhttps"
+SRC_URI_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_stm32;pr=
otocol=3Dhttps"
+SRC_URI_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_telink;=
protocol=3Dhttps"
+SRC_URI_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;protocol=
=3Dhttps"
+SRC_URI_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_xtensa;=
protocol=3Dhttps"
+SRC_URI_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmetal;prot=
ocol=3Dhttps"
+SRC_URI_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/littlefs;prot=
ocol=3Dhttps"
+SRC_URI_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/loramac-n=
ode;protocol=3Dhttps"
+SRC_URI_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;protocol=3Dh=
ttps"
+SRC_URI_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protocol=3Dhtt=
ps"
+SRC_URI_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls;protoc=
ol=3Dhttps"
+SRC_URI_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot;protoc=
ol=3Dhttps"
+SRC_URI_MCUMGR ?=3D "git://github.com/zephyrproject-rtos/mcumgr;protocol=
=3Dhttps"
+SRC_URI_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi-sys-t;=
protocol=3Dhttps"
+SRC_URI_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;protocol=
=3Dhttps"
+SRC_URI_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-tools;pr=
otocol=3Dhttps"
+SRC_URI_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/nrf_hw_m=
odels;protocol=3Dhttps"
+SRC_URI_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-amp;prot=
ocol=3Dhttps"
+SRC_URI_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/openthread;=
protocol=3Dhttps"
+SRC_URI_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;protocol=
=3Dhttps"
+SRC_URI_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protocol=3Dhtt=
ps"
+SRC_URI_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tflite-mi=
cro;protocol=3Dhttps"
+SRC_URI_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycbor;prot=
ocol=3Dhttps"
+SRC_URI_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinycrypt;pr=
otocol=3Dhttps"
+SRC_URI_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-rtos/Tr=
aceRecorderSource;protocol=3Dhttps"
+SRC_URI_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-rtos/tru=
sted-firmware-m;protocol=3Dhttps"
=20
-SRC_URI:append =3D " \
+SRC_URI_PATCHES ?=3D "\
     file://dtc.patch;patchdir=3Dzephyr \
-    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.pat=
ch;patchdir=3Dzephyr \
     file://0001-2.7-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
-    git://github.com/zephyrproject-rtos/hal_cypress.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/hal/cypress;name=3Dcypress \
+    file://0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
+"
+
+SRC_URI =3D "\
+    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
+    ${SRC_URI_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsuffix=3D=
git/modules/lib/canopennode \
+    ${SRC_URI_CIVETWEB};name=3Dcivetweb;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/civetweb \
+    ${SRC_URI_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/modules/=
hal/cmsis \
+    ${SRC_URI_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/tools/edtt=
 \
+    ${SRC_URI_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/modules/=
fs/fatfs \
+    ${SRC_URI_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/altera \
+    ${SRC_URI_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/atmel \
+    ${SRC_URI_HAL_CYPRESS};name=3Dhal_cypress;nobranch=3D1;destsuffix=3D=
git/modules/hal/cypress \
+    ${SRC_URI_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/espressif \
+    ${SRC_URI_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;destsuffix=3D=
git/modules/hal/infineon \
+    ${SRC_URI_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/microchip \
+    ${SRC_URI_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/nordic \
+    ${SRC_URI_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsuffix=3D=
git/modules/hal/nuvoton \
+    ${SRC_URI_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dgit/modu=
les/hal/nxp \
+    ${SRC_URI_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsuffix=3D=
git/modules/hal/openisa \
+    ${SRC_URI_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/quicklogic \
+    ${SRC_URI_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/silabs \
+    ${SRC_URI_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/st \
+    ${SRC_URI_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/stm32 \
+    ${SRC_URI_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/telink \
+    ${SRC_URI_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/ti \
+    ${SRC_URI_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/xtensa \
+    ${SRC_URI_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3Dgit/mo=
dules/hal/libmetal \
+    ${SRC_URI_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3Dgit/mo=
dules/fs/littlefs \
+    ${SRC_URI_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;destsuffix=3D=
git/modules/lib/loramac-node \
+    ${SRC_URI_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/gui/lvgl \
+    ${SRC_URI_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
lz4 \
+    ${SRC_URI_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/modu=
les/crypto/mbedtls \
+    ${SRC_URI_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit/boot=
loader/mcuboot \
+    ${SRC_URI_MCUMGR};name=3Dmcumgr;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/mcumgr \
+    ${SRC_URI_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuffix=3Dgi=
t/modules/debug/mipi-sys-t \
+    ${SRC_URI_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/nanopb \
+    ${SRC_URI_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=3Dgit/=
tools/net-tools \
+    ${SRC_URI_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;destsuffi=
x=3Dgit/modules/bsim_hw_models/nrf_hw_models \
+    ${SRC_URI_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/open-amp \
+    ${SRC_URI_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuffix=3Dgi=
t/modules/lib/openthread \
+    ${SRC_URI_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/module=
s/debug/segger \
+    ${SRC_URI_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modules/audi=
o/sof \
+    ${SRC_URI_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;destsuffix=3D=
git/modules/lib/tflite-micro \
+    ${SRC_URI_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/tinycbor \
+    ${SRC_URI_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgit/=
modules/crypto/tinycrypt \
+    ${SRC_URI_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nobranch=3D=
1;destsuffix=3Dgit/modules/debug/TraceRecorder \
+    ${SRC_URI_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobranch=3D1=
;destsuffix=3Dgit/modules/tee/tfm \
+    ${SRC_URI_PATCHES} \
+"
+
+ZEPHYR_MODULES =3D "\
+${S}/modules/lib/canopennode\;\
+${S}/modules/lib/civetweb\;\
+${S}/modules/hal/cmsis\;\
+${S}/tools/edtt\;\
+${S}/modules/fs/fatfs\;\
+${S}/modules/hal/altera\;\
+${S}/modules/hal/atmel\;\
+${S}/modules/hal/cypress\;\
+${S}/modules/hal/espressif\;\
+${S}/modules/hal/infineon\;\
+${S}/modules/hal/microchip\;\
+${S}/modules/hal/nordic\;\
+${S}/modules/hal/nuvoton\;\
+${S}/modules/hal/nxp\;\
+${S}/modules/hal/openisa\;\
+${S}/modules/hal/quicklogic\;\
+${S}/modules/hal/silabs\;\
+${S}/modules/hal/st\;\
+${S}/modules/hal/stm32\;\
+${S}/modules/hal/telink\;\
+${S}/modules/hal/ti\;\
+${S}/modules/hal/xtensa\;\
+${S}/modules/hal/libmetal\;\
+${S}/modules/fs/littlefs\;\
+${S}/modules/lib/loramac-node\;\
+${S}/modules/lib/gui/lvgl\;\
+${S}/modules/lib/lz4\;\
+${S}/modules/crypto/mbedtls\;\
+${S}/bootloader/mcuboot\;\
+${S}/modules/lib/mcumgr\;\
+${S}/modules/debug/mipi-sys-t\;\
+${S}/modules/lib/nanopb\;\
+${S}/tools/net-tools\;\
+${S}/modules/bsim_hw_models/nrf_hw_models\;\
+${S}/modules/lib/open-amp\;\
+${S}/modules/lib/openthread\;\
+${S}/modules/debug/segger\;\
+${S}/modules/audio/sof\;\
+${S}/modules/lib/tflite-micro\;\
+${S}/modules/lib/tinycbor\;\
+${S}/modules/crypto/tinycrypt\;\
+${S}/modules/debug/TraceRecorder\;\
+${S}/modules/tee/tfm\;\
 "
+
+ZEPHYR_BRANCH =3D "v2.7-branch"
+PV =3D "2.7.3+git${SRCPV}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.1.0.inc
index c0fe5f2..68016e4 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1=
.0.inc
@@ -1,20 +1,6 @@
-SRCREV_FORMAT =3D "default_cmsis"
+# Auto-generated from zephyr-kernel-src.inc.jinja
=20
-#
-# Generated with:
-#
-# #!/usr/bin/python3
-#
-# import yaml
-# import sys
-#
-# if __name__ =3D=3D "__main__":
-#     with open(sys.argv[1], "r") as fd:
-#         data =3D yaml.safe_load(fd)
-#
-#         for project in data["manifest"]["projects"]:
-#             print("SRCREV_{} =3D \"{}\"".format(project["name"], proje=
ct["revision"]))
-#
+SRCREV_FORMAT =3D "default"
=20
 SRCREV_default =3D "2ddd73feafd3316af2c547c34d6969bea637d5c6"
 SRCREV_canopennode =3D "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
@@ -24,24 +10,24 @@ SRCREV_cmsis =3D "5f86244bad4ad5a590e084f0e72ba7a1416=
c2edf"
 SRCREV_edtt =3D "1ea61a390d2bfcf3b2ecdba8f8b0b98dfdffbd11"
 SRCREV_fatfs =3D "a30531af3a95a9a3ea7d771ea8a578ebfed45514"
 SRCREV_fff =3D "6ce5ba26486e93d5b7696a3e23f0585932c14b16"
-SRCREV_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
-SRCREV_atmel =3D "78c5567c05b6b434dd7d98f49156319df4217bac"
-SRCREV_espressif =3D "df85671c5d0405c0747c2939c8dfe808b7e4cf38"
-SRCREV_gigadevice =3D "63a72ca90b7e0d7257211ddc5c79e8c0b940371b"
-SRCREV_infineon =3D "4af06965f57ba1e7d170e6a97d24c33785543a8c"
-SRCREV_microchip =3D "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
-SRCREV_nordic =3D "a85bb3676d61d1ae202088e0d3fec556056b2c9e"
-SRCREV_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
-SRCREV_nxp =3D "2302a1e94f5bc00ce59db4e249b688ad2e959f58"
-SRCREV_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_rpi_pico =3D "191f5ba46fda49523cdaaef27583d1c875ba2c36"
-SRCREV_silabs =3D "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
-SRCREV_st =3D "52a522ca4a8a9ec1e9bb5bb514e1ab6f102863fe"
-SRCREV_stm32 =3D "51b373cd3455b8c2b9babbf6ff41918116a442ac"
-SRCREV_telink =3D "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
-SRCREV_ti =3D "905a5d4134899630071f9383aadaaf266e8f8cd2"
-SRCREV_xtensa =3D "0e577021bb66e644afd067cd9f7c71ab11b62b3d"
+SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
+SRCREV_hal_atmel =3D "78c5567c05b6b434dd7d98f49156319df4217bac"
+SRCREV_hal_espressif =3D "df85671c5d0405c0747c2939c8dfe808b7e4cf38"
+SRCREV_hal_gigadevice =3D "63a72ca90b7e0d7257211ddc5c79e8c0b940371b"
+SRCREV_hal_infineon =3D "4af06965f57ba1e7d170e6a97d24c33785543a8c"
+SRCREV_hal_microchip =3D "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
+SRCREV_hal_nordic =3D "a85bb3676d61d1ae202088e0d3fec556056b2c9e"
+SRCREV_hal_nuvoton =3D "b4d31f33238713a568e23618845702fadd67386f"
+SRCREV_hal_nxp =3D "2302a1e94f5bc00ce59db4e249b688ad2e959f58"
+SRCREV_hal_openisa =3D "40d049f69c50b58ea20473bee14cf93f518bf262"
+SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
+SRCREV_hal_rpi_pico =3D "191f5ba46fda49523cdaaef27583d1c875ba2c36"
+SRCREV_hal_silabs =3D "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
+SRCREV_hal_st =3D "52a522ca4a8a9ec1e9bb5bb514e1ab6f102863fe"
+SRCREV_hal_stm32 =3D "51b373cd3455b8c2b9babbf6ff41918116a442ac"
+SRCREV_hal_telink =3D "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
+SRCREV_hal_ti =3D "905a5d4134899630071f9383aadaaf266e8f8cd2"
+SRCREV_hal_xtensa =3D "0e577021bb66e644afd067cd9f7c71ab11b62b3d"
 SRCREV_libmetal =3D "850a3c3fd5bc655987021dc9106d8e8cd0f7e061"
 SRCREV_liblc3codec =3D "3951cf1b71ff3be086c9b9b595e473e12301337c"
 SRCREV_littlefs =3D "652f2c5646e79b881e6f3099686ad3b7af9e216c"
@@ -68,10 +54,170 @@ SRCREV_psa-arch-tests =3D "a81f9da287569f169d6002691=
6952641b233faa8"
 SRCREV_zcbor =3D "882c489a7d9fdfff31d27666914a78a9eb6976d7"
 SRCREV_zscilib =3D "fc979a8dcb74169c69b02835927bff8f070d6325"
=20
-ZEPHYR_BRANCH =3D "v3.1-branch"
-PV =3D "3.1.0+git${SRCPV}"
+SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
+SRC_URI_CANOPENNODE ?=3D "git://github.com/zephyrproject-rtos/canopennod=
e;protocol=3Dhttps"
+SRC_URI_CHRE ?=3D "git://github.com/zephyrproject-rtos/chre;protocol=3Dh=
ttps"
+SRC_URI_CIVETWEB ?=3D "git://github.com/zephyrproject-rtos/civetweb;prot=
ocol=3Dhttps"
+SRC_URI_CMSIS ?=3D "git://github.com/zephyrproject-rtos/cmsis;protocol=3D=
https"
+SRC_URI_EDTT ?=3D "git://github.com/zephyrproject-rtos/edtt;protocol=3Dh=
ttps"
+SRC_URI_FATFS ?=3D "git://github.com/zephyrproject-rtos/fatfs;protocol=3D=
https"
+SRC_URI_FFF ?=3D "git://github.com/zephyrproject-rtos/fff;protocol=3Dhtt=
ps"
+SRC_URI_HAL_ALTERA ?=3D "git://github.com/zephyrproject-rtos/hal_altera;=
protocol=3Dhttps"
+SRC_URI_HAL_ATMEL ?=3D "git://github.com/zephyrproject-rtos/hal_atmel;pr=
otocol=3Dhttps"
+SRC_URI_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-rtos/hal_espr=
essif;protocol=3Dhttps"
+SRC_URI_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-rtos/hal_gig=
adevice;protocol=3Dhttps"
+SRC_URI_HAL_INFINEON ?=3D "git://github.com/zephyrproject-rtos/hal_infin=
eon;protocol=3Dhttps"
+SRC_URI_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-rtos/hal_micr=
ochip;protocol=3Dhttps"
+SRC_URI_HAL_NORDIC ?=3D "git://github.com/zephyrproject-rtos/hal_nordic;=
protocol=3Dhttps"
+SRC_URI_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-rtos/hal_nuvoto=
n;protocol=3Dhttps"
+SRC_URI_HAL_NXP ?=3D "git://github.com/zephyrproject-rtos/hal_nxp;protoc=
ol=3Dhttps"
+SRC_URI_HAL_OPENISA ?=3D "git://github.com/zephyrproject-rtos/hal_openis=
a;protocol=3Dhttps"
+SRC_URI_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-rtos/hal_qui=
cklogic;protocol=3Dhttps"
+SRC_URI_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-rtos/hal_rpi_p=
ico;protocol=3Dhttps"
+SRC_URI_HAL_SILABS ?=3D "git://github.com/zephyrproject-rtos/hal_silabs;=
protocol=3Dhttps"
+SRC_URI_HAL_ST ?=3D "git://github.com/zephyrproject-rtos/hal_st;protocol=
=3Dhttps"
+SRC_URI_HAL_STM32 ?=3D "git://github.com/zephyrproject-rtos/hal_stm32;pr=
otocol=3Dhttps"
+SRC_URI_HAL_TELINK ?=3D "git://github.com/zephyrproject-rtos/hal_telink;=
protocol=3Dhttps"
+SRC_URI_HAL_TI ?=3D "git://github.com/zephyrproject-rtos/hal_ti;protocol=
=3Dhttps"
+SRC_URI_HAL_XTENSA ?=3D "git://github.com/zephyrproject-rtos/hal_xtensa;=
protocol=3Dhttps"
+SRC_URI_LIBMETAL ?=3D "git://github.com/zephyrproject-rtos/libmetal;prot=
ocol=3Dhttps"
+SRC_URI_LIBLC3CODEC ?=3D "git://github.com/zephyrproject-rtos/liblc3code=
c;protocol=3Dhttps"
+SRC_URI_LITTLEFS ?=3D "git://github.com/zephyrproject-rtos/littlefs;prot=
ocol=3Dhttps"
+SRC_URI_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-rtos/loramac-n=
ode;protocol=3Dhttps"
+SRC_URI_LVGL ?=3D "git://github.com/zephyrproject-rtos/lvgl;protocol=3Dh=
ttps"
+SRC_URI_LZ4 ?=3D "git://github.com/zephyrproject-rtos/lz4;protocol=3Dhtt=
ps"
+SRC_URI_MBEDTLS ?=3D "git://github.com/zephyrproject-rtos/mbedtls;protoc=
ol=3Dhttps"
+SRC_URI_MCUBOOT ?=3D "git://github.com/zephyrproject-rtos/mcuboot;protoc=
ol=3Dhttps"
+SRC_URI_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-rtos/mipi-sys-t;=
protocol=3Dhttps"
+SRC_URI_NANOPB ?=3D "git://github.com/zephyrproject-rtos/nanopb;protocol=
=3Dhttps"
+SRC_URI_NET_TOOLS ?=3D "git://github.com/zephyrproject-rtos/net-tools;pr=
otocol=3Dhttps"
+SRC_URI_NRF_HW_MODELS ?=3D "git://github.com/zephyrproject-rtos/nrf_hw_m=
odels;protocol=3Dhttps"
+SRC_URI_OPEN_AMP ?=3D "git://github.com/zephyrproject-rtos/open-amp;prot=
ocol=3Dhttps"
+SRC_URI_OPENTHREAD ?=3D "git://github.com/zephyrproject-rtos/openthread;=
protocol=3Dhttps"
+SRC_URI_SEGGER ?=3D "git://github.com/zephyrproject-rtos/segger;protocol=
=3Dhttps"
+SRC_URI_SOF ?=3D "git://github.com/zephyrproject-rtos/sof;protocol=3Dhtt=
ps"
+SRC_URI_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-rtos/tflite-mi=
cro;protocol=3Dhttps"
+SRC_URI_TINYCBOR ?=3D "git://github.com/zephyrproject-rtos/tinycbor;prot=
ocol=3Dhttps"
+SRC_URI_TINYCRYPT ?=3D "git://github.com/zephyrproject-rtos/tinycrypt;pr=
otocol=3Dhttps"
+SRC_URI_TRACERECORDERSOURCE ?=3D "git://github.com/zephyrproject-rtos/Tr=
aceRecorderSource;protocol=3Dhttps"
+SRC_URI_TRUSTED_FIRMWARE_M ?=3D "git://github.com/zephyrproject-rtos/tru=
sted-firmware-m;protocol=3Dhttps"
+SRC_URI_TF_M_TESTS ?=3D "git://github.com/zephyrproject-rtos/tf-m-tests;=
protocol=3Dhttps"
+SRC_URI_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-rtos/psa-arc=
h-tests;protocol=3Dhttps"
+SRC_URI_ZCBOR ?=3D "git://github.com/zephyrproject-rtos/zcbor;protocol=3D=
https"
+SRC_URI_ZSCILIB ?=3D "git://github.com/zephyrproject-rtos/zscilib;protoc=
ol=3Dhttps"
=20
-SRC_URI +=3D " \
+SRC_URI_PATCHES ?=3D "\
     file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
     file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
 "
+
+SRC_URI =3D "\
+    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
+    ${SRC_URI_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;destsuffix=3D=
git/modules/lib/canopennode \
+    ${SRC_URI_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/chre \
+    ${SRC_URI_CIVETWEB};name=3Dcivetweb;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/civetweb \
+    ${SRC_URI_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/modules/=
hal/cmsis \
+    ${SRC_URI_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/tools/edtt=
 \
+    ${SRC_URI_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/modules/=
fs/fatfs \
+    ${SRC_URI_FFF};name=3Dfff;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
fff \
+    ${SRC_URI_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/altera \
+    ${SRC_URI_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/atmel \
+    ${SRC_URI_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/espressif \
+    ${SRC_URI_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/gigadevice \
+    ${SRC_URI_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;destsuffix=3D=
git/modules/hal/infineon \
+    ${SRC_URI_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;destsuffi=
x=3Dgit/modules/hal/microchip \
+    ${SRC_URI_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/nordic \
+    ${SRC_URI_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;destsuffix=3D=
git/modules/hal/nuvoton \
+    ${SRC_URI_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dgit/modu=
les/hal/nxp \
+    ${SRC_URI_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsuffix=3D=
git/modules/hal/openisa \
+    ${SRC_URI_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;destsuf=
fix=3Dgit/modules/hal/quicklogic \
+    ${SRC_URI_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;destsuffix=3D=
git/modules/hal/rpi_pico \
+    ${SRC_URI_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/silabs \
+    ${SRC_URI_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/st \
+    ${SRC_URI_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=3Dgit/=
modules/hal/stm32 \
+    ${SRC_URI_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/telink \
+    ${SRC_URI_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit/module=
s/hal/ti \
+    ${SRC_URI_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuffix=3Dgi=
t/modules/hal/xtensa \
+    ${SRC_URI_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3Dgit/mo=
dules/hal/libmetal \
+    ${SRC_URI_LIBLC3CODEC};name=3Dliblc3codec;nobranch=3D1;destsuffix=3D=
git/modules/lib/liblc3codec \
+    ${SRC_URI_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3Dgit/mo=
dules/fs/littlefs \
+    ${SRC_URI_LORAMAC_NODE};name=3Dloramac-node;nobranch=3D1;destsuffix=3D=
git/modules/lib/loramac-node \
+    ${SRC_URI_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/gui/lvgl \
+    ${SRC_URI_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modules/lib/=
lz4 \
+    ${SRC_URI_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/modu=
les/crypto/mbedtls \
+    ${SRC_URI_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit/boot=
loader/mcuboot \
+    ${SRC_URI_MIPI_SYS_T};name=3Dmipi-sys-t;nobranch=3D1;destsuffix=3Dgi=
t/modules/debug/mipi-sys-t \
+    ${SRC_URI_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit/module=
s/lib/nanopb \
+    ${SRC_URI_NET_TOOLS};name=3Dnet-tools;nobranch=3D1;destsuffix=3Dgit/=
tools/net-tools \
+    ${SRC_URI_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1;destsuffi=
x=3Dgit/modules/bsim_hw_models/nrf_hw_models \
+    ${SRC_URI_OPEN_AMP};name=3Dopen-amp;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/open-amp \
+    ${SRC_URI_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuffix=3Dgi=
t/modules/lib/openthread \
+    ${SRC_URI_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/module=
s/debug/segger \
+    ${SRC_URI_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modules/audi=
o/sof \
+    ${SRC_URI_TFLITE_MICRO};name=3Dtflite-micro;nobranch=3D1;destsuffix=3D=
git/modules/lib/tflite-micro \
+    ${SRC_URI_TINYCBOR};name=3Dtinycbor;nobranch=3D1;destsuffix=3Dgit/mo=
dules/lib/tinycbor \
+    ${SRC_URI_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgit/=
modules/crypto/tinycrypt \
+    ${SRC_URI_TRACERECORDERSOURCE};name=3DTraceRecorderSource;nobranch=3D=
1;destsuffix=3Dgit/modules/debug/TraceRecorder \
+    ${SRC_URI_TRUSTED_FIRMWARE_M};name=3Dtrusted-firmware-m;nobranch=3D1=
;destsuffix=3Dgit/modules/tee/tf-m/trusted-firmware-m \
+    ${SRC_URI_TF_M_TESTS};name=3Dtf-m-tests;nobranch=3D1;destsuffix=3Dgi=
t/modules/tee/tf-m/tf-m-tests \
+    ${SRC_URI_PSA_ARCH_TESTS};name=3Dpsa-arch-tests;nobranch=3D1;destsuf=
fix=3Dgit/modules/tee/tf-m/psa-arch-tests \
+    ${SRC_URI_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/modules/=
lib/zcbor \
+    ${SRC_URI_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dgit/modu=
les/lib/zscilib \
+    ${SRC_URI_PATCHES} \
+"
+
+ZEPHYR_MODULES =3D "\
+${S}/modules/lib/canopennode\;\
+${S}/modules/lib/chre\;\
+${S}/modules/lib/civetweb\;\
+${S}/modules/hal/cmsis\;\
+${S}/tools/edtt\;\
+${S}/modules/fs/fatfs\;\
+${S}/modules/lib/fff\;\
+${S}/modules/hal/altera\;\
+${S}/modules/hal/atmel\;\
+${S}/modules/hal/espressif\;\
+${S}/modules/hal/gigadevice\;\
+${S}/modules/hal/infineon\;\
+${S}/modules/hal/microchip\;\
+${S}/modules/hal/nordic\;\
+${S}/modules/hal/nuvoton\;\
+${S}/modules/hal/nxp\;\
+${S}/modules/hal/openisa\;\
+${S}/modules/hal/quicklogic\;\
+${S}/modules/hal/rpi_pico\;\
+${S}/modules/hal/silabs\;\
+${S}/modules/hal/st\;\
+${S}/modules/hal/stm32\;\
+${S}/modules/hal/telink\;\
+${S}/modules/hal/ti\;\
+${S}/modules/hal/xtensa\;\
+${S}/modules/hal/libmetal\;\
+${S}/modules/lib/liblc3codec\;\
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
+${S}/modules/debug/segger\;\
+${S}/modules/audio/sof\;\
+${S}/modules/lib/tflite-micro\;\
+${S}/modules/lib/tinycbor\;\
+${S}/modules/crypto/tinycrypt\;\
+${S}/modules/debug/TraceRecorder\;\
+${S}/modules/tee/tf-m/trusted-firmware-m\;\
+${S}/modules/tee/tf-m/tf-m-tests\;\
+${S}/modules/tee/tf-m/psa-arch-tests\;\
+${S}/modules/lib/zcbor\;\
+${S}/modules/lib/zscilib\;\
+"
+
+ZEPHYR_BRANCH =3D "v3.1-branch"
+PV =3D "3.1.0+git${SRCPV}"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src=
.inc
index a4bab22..f28d1d4 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -9,49 +9,6 @@ inherit cmake
 # having an explicit path to the patches directory, will make bitbake fa=
il to
 # find the patch(es) in SRC_URI.
 FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
-
-SRC_URI =3D "\
-    git://github.com/zephyrproject-rtos/zephyr.git;protocol=3Dhttps;bran=
ch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffix=3Dgit/zephyr \
-    git://github.com/zephyrproject-rtos/canopennode.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/lib/canopennode;name=3Dcanopennode=
 \
-    git://github.com/zephyrproject-rtos/civetweb.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/lib/civetweb;name=3Dcivetweb \
-    git://github.com/zephyrproject-rtos/cmsis.git;protocol=3Dhttps;nobra=
nch=3D1;destsuffix=3Dgit/modules/hal/cmsis;name=3Dcmsis \
-    git://github.com/zephyrproject-rtos/edtt.git;protocol=3Dhttps;nobran=
ch=3D1;destsuffix=3Dgit/tools/edtt;name=3Dedtt \
-    git://github.com/zephyrproject-rtos/fatfs.git;protocol=3Dhttps;nobra=
nch=3D1;destsuffix=3Dgit/modules/fs/fatfs;name=3Dfatfs \
-    git://github.com/zephyrproject-rtos/hal_altera.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/hal/altera;name=3Daltera \
-    git://github.com/zephyrproject-rtos/hal_atmel.git;protocol=3Dhttps;n=
obranch=3D1;destsuffix=3Dgit/modules/hal/atmel;name=3Datmel \
-    git://github.com/zephyrproject-rtos/hal_espressif.git;protocol=3Dhtt=
ps;nobranch=3D1;destsuffix=3Dgit/modules/hal/espressif;name=3Despressif \
-    git://github.com/zephyrproject-rtos/hal_infineon.git;protocol=3Dhttp=
s;nobranch=3D1;destsuffix=3Dgit/modules/hal/infineon;name=3Dinfineon \
-    git://github.com/zephyrproject-rtos/hal_microchip.git;protocol=3Dhtt=
ps;nobranch=3D1;destsuffix=3Dgit/modules/hal/microchip;name=3Dmicrochip \
-    git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/hal/nordic;name=3Dnordic \
-    git://github.com/zephyrproject-rtos/hal_nuvoton.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/hal/nuvoton;name=3Dnuvoton \
-    git://github.com/zephyrproject-rtos/hal_nxp.git;protocol=3Dhttps;nob=
ranch=3D1;destsuffix=3Dgit/modules/hal/nxp;name=3Dnxp \
-    git://github.com/zephyrproject-rtos/hal_openisa.git;protocol=3Dhttps=
;nobranch=3D1;destsuffix=3Dgit/modules/hal/openisa;name=3Dopenisa \
-    git://github.com/zephyrproject-rtos/hal_quicklogic.git;protocol=3Dht=
tps;nobranch=3D1;destsuffix=3Dgit/modules/hal/quicklogic;name=3Dquicklogi=
c \
-    git://github.com/zephyrproject-rtos/hal_silabs.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/hal/silabs;name=3Dsilabs \
-    git://github.com/zephyrproject-rtos/hal_st.git;protocol=3Dhttps;nobr=
anch=3D1;destsuffix=3Dgit/modules/hal/st;name=3Dst \
-    git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=3Dhttps;n=
obranch=3D1;destsuffix=3Dgit/modules/hal/stm32;name=3Dstm32 \
-    git://github.com/zephyrproject-rtos/hal_ti.git;protocol=3Dhttps;nobr=
anch=3D1;destsuffix=3Dgit/modules/hal/ti;name=3Dti \
-    git://github.com/zephyrproject-rtos/hal_xtensa.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/hal/xtensa;name=3Dxtensa \
-    git://github.com/zephyrproject-rtos/libmetal.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/hal/libmetal;name=3Dlibmetal \
-    git://github.com/zephyrproject-rtos/littlefs.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/fs/littlefs;name=3Dlittlefs \
-    git://github.com/zephyrproject-rtos/loramac-node.git;protocol=3Dhttp=
s;nobranch=3D1;destsuffix=3Dgit/modules/lib/loramac-node;name=3Dloramac-n=
ode \
-    git://github.com/zephyrproject-rtos/lvgl.git;protocol=3Dhttps;nobran=
ch=3D1;destsuffix=3Dgit/modules/lib/gui/lvgl;name=3Dlvgl \
-    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=3Dhttps;nob=
ranch=3D1;destsuffix=3Dgit/modules/crypto/mbedtls;name=3Dmbedtls \
-    git://github.com/zephyrproject-rtos/mcuboot.git;protocol=3Dhttps;nob=
ranch=3D1;destsuffix=3Dgit/bootloader/mcuboot;name=3Dmcuboot \
-    git://github.com/zephyrproject-rtos/mipi-sys-t.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/debug/mipi-sys-t;name=3Dmipi-sys-t =
\
-    git://github.com/zephyrproject-rtos/nanopb.git;protocol=3Dhttps;nobr=
anch=3D1;destsuffix=3Dgit/modules/lib/nanopb;name=3Dnanopb \
-    git://github.com/zephyrproject-rtos/net-tools.git;protocol=3Dhttps;n=
obranch=3D1;destsuffix=3Dgit/tools/net-tools;name=3Dnet-tools \
-    git://github.com/zephyrproject-rtos/nrf_hw_models.git;protocol=3Dhtt=
ps;nobranch=3D1;destsuffix=3Dgit/modules/bsim_hw_models/nrf_hw_models;nam=
e=3Dnrf_hw_models \
-    git://github.com/zephyrproject-rtos/open-amp.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/lib/open-amp;name=3Dopen-amp \
-    git://github.com/zephyrproject-rtos/openthread.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/lib/openthread;name=3Dopenthread \
-    git://github.com/zephyrproject-rtos/segger.git;protocol=3Dhttps;nobr=
anch=3D1;destsuffix=3Dgit/modules/debug/segger;name=3Dsegger \
-    git://github.com/zephyrproject-rtos/sof.git;protocol=3Dhttps;nobranc=
h=3D1;destsuffix=3Dgit/modules/audio/sof;name=3Dsof \
-    git://github.com/zephyrproject-rtos/tinycbor.git;protocol=3Dhttps;no=
branch=3D1;destsuffix=3Dgit/modules/lib/tinycbor;name=3Dtinycbor \
-    git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=3Dhttps;n=
obranch=3D1;destsuffix=3Dgit/modules/crypto/tinycrypt;name=3Dtinycrypt \
-    git://github.com/zephyrproject-rtos/hal_telink.git;protocol=3Dhttps;=
nobranch=3D1;destsuffix=3Dgit/modules/hal/telink;name=3Dtelink \
-    git://github.com/zephyrproject-rtos/lz4.git;protocol=3Dhttps;nobranc=
h=3D1;destsuffix=3Dgit/modules/lib/lz4;name=3Dlz4 \
-    git://github.com/zephyrproject-rtos/tflite-micro.git;protocol=3Dhttp=
s;nobranch=3D1;destsuffix=3Dgit/modules/lib/tflite-micro;name=3Dtflite-mi=
cro \
-"
 S =3D "${WORKDIR}/git"
=20
 # Default to a stable version
--=20
2.25.1


