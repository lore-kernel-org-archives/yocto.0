Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FF5C6FA83
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:16:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.3774.1662470190700347229
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2410139F;
	Tue,  6 Sep 2022 06:16:36 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A51B93F7B4;
	Tue,  6 Sep 2022 06:16:29 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 4/5] zephyr-sdk: Add recipe to download and build
 the Zephyr SDK
Date: Tue,  6 Sep 2022 14:17:01 +0100
Message-Id: <20220906131702.310027-4-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906131702.310027-1-peter.hoyes@arm.com>
References: <20220906131702.310027-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57990

From: Peter Hoyes <Peter.Hoyes@arm.com>

The Zephyr SDK (https://github.com/zephyrproject-rtos/sdk-ng) provides
pre-built toolchains for all of Zephyr's supported architectures.

Add a recipe to download SDK v0.14.2, in preparation for adding an
option to build Zephyr applications using this toolchain instead of the
Yocto-built one.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-sdk/zephyr-sdk_0.14.2.bb           | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-s=
dk_0.14.2.bb

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14=
.2.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
new file mode 100644
index 0000000..c893652
--- /dev/null
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
@@ -0,0 +1,35 @@
+SUMMARY =3D "Zephyr SDK Bundle"
+DESCRIPTION =3D "Official SDK built using crosstool-ng, distributed by t=
he \
+Zephyr project"
+COMPATIBLE_HOST =3D "(x86_64|aarch64).*-linux"
+
+LICENSE =3D "Apache-2.0"
+LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D89ae=
a4e17d99a7cacdbeed46a0096b10"
+
+INHIBIT_DEFAULT_DEPS =3D "1"
+# CMake is required by the setup script
+DEPENDS +=3D "cmake"
+
+SDK_ARCHIVE =3D "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.gz"
+SDK_NAME =3D "${BUILD_ARCH}"
+SRC_URI =3D "https://github.com/zephyrproject-rtos/sdk-ng/releases/downl=
oad/v${PV}/${SDK_ARCHIVE};subdir=3D${S};name=3D${SDK_NAME}"
+
+SRC_URI[x86_64.sha256sum] =3D "2ff0e4d79bffe1468247a3e1958aa9183a0252225=
ab721cf1c37188bd4b649a2"
+SRC_URI[aarch64.sha256sum] =3D "cbb616a50e940388ea737788d48dcea3624a85bb=
3ee04d9aae105496a21ae75e"
+
+do_configure[noexec] =3D "1"
+do_compile[noexec] =3D "1"
+
+ZEPHYR_SDK_DIR =3D "${prefix}/zephyr-sdk"
+
+do_install() {
+    install -d ${D}${prefix}
+    cp -r ${S}/zephyr-sdk-${PV} ${D}${ZEPHYR_SDK_DIR}
+
+    # Install host tools
+    ${D}${ZEPHYR_SDK_DIR}/setup.sh -h
+}
+
+SYSROOT_DIRS +=3D "${ZEPHYR_SDK_DIR}"
+INHIBIT_SYSROOT_STRIP =3D "1"
+BBCLASSEXTEND =3D "native"
--=20
2.25.1


