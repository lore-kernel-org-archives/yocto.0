Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web12.7230.1623313723289183753
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 01:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from PC192.168.2.53 (p200300e9d7221c172b977c2ba50c5db1.dip0.t-ipconnect.de [IPv6:2003:e9:d722:1c17:2b97:7c2b:a50c:5db1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id 8382FC0574;
	Thu, 10 Jun 2021 10:28:41 +0200 (CEST)
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH v2 2/2] zephyr-openthread-echo-client: Add new echo-client variant for OpenThread
Date: Thu, 10 Jun 2021 10:27:31 +0200
Message-Id: <20210610082731.3820-2-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610082731.3820-1-stefan@datenfreihafen.org>
References: <20210610082731.3820-1-stefan@datenfreihafen.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Stefan Schmidt <stefan.schmidt@huawei.com>

Similar to the normal echo-client example it demonstrates socket usage,
but in this variant we enable the OpenThread config overlay and add the
needed module to the build.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
 .../zephyr-kernel/zephyr-openthread-echo-client.bb        | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-openthread-echo-c=
lient.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.b=
b b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
new file mode 100644
index 0000000..c985df2
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
@@ -0,0 +1,8 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR =3D "${S}/samples/net/sockets/echo_client"
+
+ZEPHYR_MODULES_append =3D "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES_append =3D "\;${S}/modules/lib/openthread"
+
+EXTRA_OECMAKE +=3D "-DOVERLAY_CONFIG=3Doverlay-ot.conf"
--=20
2.31.1

