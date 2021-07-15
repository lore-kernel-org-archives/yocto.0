Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web09.7444.1626353777346299485
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 05:56:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain.datenfreihafen.local (p200300e9d729f9a2150e1b909b202c0e.dip0.t-ipconnect.de [IPv6:2003:e9:d729:f9a2:150e:1b90:9b20:2c0e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id A7570C0025;
	Thu, 15 Jul 2021 14:56:15 +0200 (CEST)
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH v4 2/2] zephyr-openthread-echo-client: Add new echo-client variant for OpenThread
Date: Thu, 15 Jul 2021 14:56:01 +0200
Message-Id: <20210715125601.491533-1-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Stefan Schmidt <stefan.schmidt@huawei.com>

Similar to the normal echo-client example it demonstrates socket usage,
but in this variant we enable the OpenThread config overlay and add the
needed module to the build.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
Since v3: Added COMPATIBLE_MACHINE filter and comment

 .../zephyr-kernel/zephyr-openthread-echo-client.bb  | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-openthread-echo-c=
lient.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.b=
b b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
new file mode 100644
index 0000000..49f5565
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
@@ -0,0 +1,13 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/echo_client"
+
+ZEPHYR_MODULES_append =3D "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES_append =3D "\;${S}/modules/lib/openthread"
+
+EXTRA_OECMAKE +=3D "-DOVERLAY_CONFIG=3Doverlay-ot.conf"
+
+# The overlay config and OpenThread itself imposes some specific require=
ments
+# towards the boards (e.g. flash layout and ieee802154 radio) so we need=
 to
+# limit to known working machines here.
+COMPATIBLE_MACHINE =3D "(arduino-nano-33-ble)"
--=20
2.31.1

