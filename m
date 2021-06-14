Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web12.27547.1623661395484479474
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 02:03:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain.datenfreihafen.local (p200300e9d70946c57bba78a19a8ab81c.dip0.t-ipconnect.de [IPv6:2003:e9:d709:46c5:7bba:78a1:9a8a:b81c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id 2E09FC049C;
	Mon, 14 Jun 2021 11:03:12 +0200 (CEST)
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH v3 1/2] zephyr-kernel: Add OpenThread add module to build
Date: Mon, 14 Jun 2021 11:02:58 +0200
Message-Id: <20210614090259.3316-1-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Stefan Schmidt <stefan.schmidt@huawei.com>

OpenThread support in Zephyr is realised as an external module. Make
sure we pull it in and have it available for applications to use it.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
 3 files changed, 3 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/r=
ecipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 545197f..9cdc721 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -4,6 +4,7 @@ SRCREV_cmsis =3D "c3bd2094f92d574377f7af2aec147ae181aa5f8=
e"
 SRCREV_nordic =3D "f3434da6446380fcdd426dbe2866af21d0d549b6"
 SRCREV_stm32 =3D "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
 SRCREV_open-amp =3D "de1b85a13032a2de1d8b6695ae5f800b613e739d"
+SRCREV_openthread =3D "385e19da1ae15f27872c2543b97276a42f102ead"
 SRCREV_libmetal =3D "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 SRCREV_mbedtls =3D "24d84ecff195fb15c889d9046e44e4804d626c67"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/r=
ecipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
index 8475b5b..4910db2 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -4,6 +4,7 @@ SRCREV_cmsis =3D "c3bd2094f92d574377f7af2aec147ae181aa5f8=
e"
 SRCREV_nordic =3D "574493fe29c79140df4827ab5d4a23df79d03681"
 SRCREV_stm32 =3D "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
 SRCREV_open-amp =3D "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_openthread =3D "385e19da1ae15f27872c2543b97276a42f102ead"
 SRCREV_libmetal =3D "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-kernel/zephyr-kernel/zephyr-kernel-src.inc
index d65cc06..fb62cae 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -15,6 +15,7 @@ SRC_URI =3D "\
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=3Dhttps;d=
estsuffix=3Dgit/modules/hal/stm32;name=3Dstm32 \
     git://github.com/zephyrproject-rtos/mbedtls.git;protocol=3Dhttps;des=
tsuffix=3Dgit/modules/lib/mbedtls;name=3Dmbedtls \
     git://github.com/zephyrproject-rtos/open-amp.git;protocol=3Dhttps;de=
stsuffix=3Dgit/modules/lib/open-amp;name=3Dopen-amp \
+    git://github.com/zephyrproject-rtos/openthread.git;protocol=3Dhttps;=
branch=3Dzephyr;destsuffix=3Dgit/modules/lib/openthread;name=3Dopenthread=
 \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=3Dhttps;de=
stsuffix=3Dgit/modules/hal/libmetal;name=3Dlibmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=3Dhttps;d=
estsuffix=3Dgit/modules/crypto/tinycrypt;name=3Dtinycrypt \
     file://0001-cmake-add-yocto-toolchain.patch \
--=20
2.31.1

