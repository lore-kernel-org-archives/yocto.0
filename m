Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web10.7540.1626353754349482314
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 05:55:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain.datenfreihafen.local (p200300e9d729f9a2150e1b909b202c0e.dip0.t-ipconnect.de [IPv6:2003:e9:d729:f9a2:150e:1b90:9b20:2c0e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id ECE9CC0025;
	Thu, 15 Jul 2021 14:55:50 +0200 (CEST)
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH v4 1/2] zephyr-kernel-src.inc: Add backport patch for storage partition
Date: Thu, 15 Jul 2021 14:55:22 +0200
Message-Id: <20210715125523.491476-1-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Stefan Schmidt <stefan.schmidt@huawei.com>

Patch already merged upstream, but after the 2.6 release we are based
on. Taking the backport in here until we can figure out if that can go
to the Zephyr 2.6 LTS branch.

The storage partition itself is needed on the Arduino Nano e.g. for
OpenThread or applications needed a storage space.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
since v3: Added backported patch for flash layout

 ...rduino-nano-33-ble-storage-partition.patch | 46 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src.inc       |  1 +
 2 files changed, 47 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/files/arduino-nano-33-bl=
e-storage-partition.patch

diff --git a/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-stora=
ge-partition.patch b/recipes-kernel/zephyr-kernel/files/arduino-nano-33-b=
le-storage-partition.patch
new file mode 100644
index 0000000..fa0f27f
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-part=
ition.patch
@@ -0,0 +1,46 @@
+commit 6c9945aafa00c09149e2052a9c2bccad16dd1d8a
+Author: Stefan Schmidt <stefan.schmidt@huawei.com>
+Date:   Fri May 7 11:47:44 2021 +0200
+
+    boards/arduino_nano_33_ble: add storage partition at end of flash
+   =20
+    Change default partition table to allow for application which need
+    storage. One use case is running the OpenThread integration which ha=
s
+    a dependency on this.
+   =20
+    Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
+
+diff --git a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts b/bo=
ards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
+index d09b66ec43..d11d800eb5 100644
+--- a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
++++ b/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
+@@ -44,15 +44,27 @@
+=20
+ 		boot_partition: partition@0 {
+ 			label =3D "sam-ba";
+-			reg =3D <0x0 0x10000>;
++			reg =3D <0x00000000 0x00010000>;
+ 			read-only;
+ 		};
+=20
+ 		code_partition: partition@10000 {
+ 			label =3D "code";
+-			reg =3D <0x10000 0xf0000>;
++			reg =3D <0x00010000 0x000e8000>;
+ 			read-only;
+ 		};
++
++		/*
++		 * The flash starting at 0x000f8000 and ending at
++		 * 0x000fffff is reserved for use by the application.
++		 *
++		 * Storage partition will be used by FCB/LittleFS/NVS
++		 * if enabled.
++		 */
++		storage_partition: partition@f8000 {
++			label =3D "storage";
++			reg =3D <0x000f8000 0x00008000>;
++		};
+ 	};
+ };
+=20
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-kernel/zephyr-kernel/zephyr-kernel-src.inc
index a0004ed..227c7f4 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -18,6 +18,7 @@ SRC_URI =3D "\
     git://github.com/zephyrproject-rtos/openthread.git;protocol=3Dhttps;=
branch=3Dzephyr;destsuffix=3Dgit/modules/lib/openthread;name=3Dopenthread=
 \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=3Dhttps;de=
stsuffix=3Dgit/modules/hal/libmetal;name=3Dlibmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=3Dhttps;d=
estsuffix=3Dgit/modules/crypto/tinycrypt;name=3Dtinycrypt \
+    file://arduino-nano-33-ble-storage-partition.patch \
     "
 S =3D "${WORKDIR}/git"
=20
--=20
2.31.1

