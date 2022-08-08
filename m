Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CCF1C25B06
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 07:43:27 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.22598.1659944603037918236
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 00:43:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7616AD6E;
	Mon,  8 Aug 2022 00:43:23 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C34553F70D;
	Mon,  8 Aug 2022 00:43:21 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: Use ZEPHYR_BASE in all
 application recipes
Date: Mon,  8 Aug 2022 08:42:55 +0100
Message-Id: <20220808074256.3081464-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220808074256.3081464-1-peter.hoyes@arm.com>
References: <20220808074256.3081464-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 07:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57795

From: Peter Hoyes <Peter.Hoyes@arm.com>

Change ${S} -> ${ZEPHYR_BASE} in all application recipes, as Zephyr
might not always be found at the root of the source directory.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-blinky.bb  | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-coap-client.bb          | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-coap-server.bb          | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-echo-client.bb          | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb             | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-helloworld.bb           | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-http-client.bb          | 2 +-
 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc  | 2 +-
 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-lvgl.bb    | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb       | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb    | 2 +-
 .../zephyr-kernel/zephyr-openthread-echo-client.bb              | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb       | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb       | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb        | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-philosophers.bb         | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-synchronization.bb      | 2 +-
 .../recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb     | 2 +-
 18 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-blinky.=
bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-blinky.bb
index bd5ce4f..c2a1e55 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-blinky.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-blinky.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/basic/blinky"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/basic/blinky"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-cl=
ient.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-clien=
t.bb
index d7ea837..7796f6b 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/coap_client"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/coap_client"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-se=
rver.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-serve=
r.bb
index dece67d..5e345d4 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/coap_server"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/coap_server"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-echo-cl=
ient.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-echo-clien=
t.bb
index 53d1ef3..73187cf 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/echo_client"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/echo_client"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hci-uar=
t.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
index c66c7ec..ebc6dc3 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
@@ -1,5 +1,5 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/bluetooth/hci_uart"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/bluetooth/hci_uart"
=20
 COMPATIBLE_MACHINE =3D "(96b-nitrogen)"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hellowo=
rld.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.=
bb
index 20d1700..68b42aa 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -4,4 +4,4 @@ console"
=20
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/hello_world"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/hello_world"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-http-cl=
ient.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-http-clien=
t.bb
index bf99bbd..8bff2be 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
@@ -1,4 +1,4 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/http_client"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/http_client"
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.i=
nc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
index d4127d6..f4c9db1 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -3,7 +3,7 @@ inherit testimage
=20
 QEMU_BIN_PATH =3D "${STAGING_BINDIR_NATIVE}"
=20
-OECMAKE_SOURCEPATH =3D "${S}/${ZEPHYR_SRC_DIR}"
+OECMAKE_SOURCEPATH =3D "${ZEPHYR_BASE}/${ZEPHYR_SRC_DIR}"
=20
 addtask deploy after do_compile
 do_install[noexec] =3D "1"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-lvgl.bb=
 b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-lvgl.bb
index efe2154..a635da2 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-lvgl.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-lvgl.bb
@@ -1,6 +1,6 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/subsys/display/lvgl"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/subsys/display/lvgl"
=20
 # TODO Once more machines and displays are supported, add a PACKAGECONFI=
G.
 EXTRA_OECMAKE:append =3D" -DSHIELD=3Dadafruit_2_8_tft_touch_v2"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-mqtt-pu=
blisher.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-mqtt-pu=
blisher.bb
index c679798..f314841 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher=
.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher=
.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/mqtt_publisher"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/mqtt_publisher"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openamp=
-rsc-table.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-open=
amp-rsc-table.bb
index 3eec58a..5e51c23 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-ta=
ble.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-ta=
ble.bb
@@ -5,6 +5,6 @@ ZEPHYR_MAKE_OUTPUT =3D "zephyr_openamp_rsc_table.elf"
 ZEPHYR_MAKE_BIN_OUTPUT =3D "zephyr_openamp_rsc_table.bin"
 ZEPHYR_MAKE_EFI_OUTPUT =3D "zephyr_openamp_rsc_table.efi"
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/subsys/ipc/openamp_rsc_table"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/subsys/ipc/openamp_rsc_table"
=20
 COMPATIBLE_MACHINE =3D "(stm32mp157c-dk2)"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-echo-client.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr=
-openthread-echo-client.bb
index b83c6b3..e2b3efd 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-ech=
o-client.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-ech=
o-client.bb
@@ -1,6 +1,6 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/echo_client"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/echo_client"
=20
 EXTRA_OECMAKE +=3D "-DOVERLAY_CONFIG=3Doverlay-ot.conf"
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb
index 6d3f860..ed86a9b 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
@@ -1,6 +1,6 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/openthread/coprocessor"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/openthread/coprocessor"
=20
 EXTRA_OECMAKE +=3D "-DCONF_FILE=3D"prj.conf overlay-rcp.conf overlay-usb=
-nrf-br.conf" -DDTC_OVERLAY_FILE=3D"usb.overlay" -DCONFIG_OPENTHREAD_THRE=
AD_VERSION_1_2=3Dy"
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-periphe=
ral-esp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-periphe=
ral-esp.bb
index 14655e5..0aac7f6 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp=
.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp=
.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/bluetooth/peripheral_esp"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/bluetooth/peripheral_esp"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-periphe=
ral-hr.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-peripher=
al-hr.bb
index 53fc771..80e3505 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.=
bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.=
bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/bluetooth/peripheral_hr"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/bluetooth/peripheral_hr"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philoso=
phers.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosoph=
ers.bb
index 5a2ac70..2b4fca3 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosophers.b=
b
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosophers.b=
b
@@ -5,4 +5,4 @@ operate correctly by printing a greeting to the console f=
rom two threads."
=20
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/philosophers"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/philosophers"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchro=
nization.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchr=
onization.bb
index 4cb207d..a55736b 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchronizatio=
n.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchronizatio=
n.bb
@@ -5,4 +5,4 @@ operate correctly by printing a greeting to the console f=
rom two threads."
=20
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/synchronization"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/synchronization"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-websock=
et-client.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-webso=
cket-client.bb
index c2c47d0..b92e986 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-websocket-clie=
nt.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-websocket-clie=
nt.bb
@@ -1,3 +1,3 @@
 include zephyr-sample.inc
=20
-ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/websocket_client"
+ZEPHYR_SRC_DIR =3D "${ZEPHYR_BASE}/samples/net/sockets/websocket_client"
--=20
2.25.1


