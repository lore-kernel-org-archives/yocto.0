Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web08.27301.1623661398445007645
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 02:03:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain.datenfreihafen.local (p200300e9d70946c57bba78a19a8ab81c.dip0.t-ipconnect.de [IPv6:2003:e9:d709:46c5:7bba:78a1:9a8a:b81c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id A8081C05CA;
	Mon, 14 Jun 2021 11:03:16 +0200 (CEST)
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH v3 2/2] zephyr-openthread-echo-client: Add new echo-client variant for OpenThread
Date: Mon, 14 Jun 2021 11:02:59 +0200
Message-Id: <20210614090259.3316-2-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210614090259.3316-1-stefan@datenfreihafen.org>
References: <20210614090259.3316-1-stefan@datenfreihafen.org>
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

