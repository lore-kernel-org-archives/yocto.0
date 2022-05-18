Return-Path: <daniel.karlsson@actia.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D95FC433EF
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 10:14:55 +0000 (UTC)
Received: from mail.actia.se (mail.actia.se [212.181.117.226])
 by mx.groups.io with SMTP id smtpd.web09.3225.1652868886206320018
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 03:14:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: actia.se, ip: 212.181.117.226, mailfrom: daniel.karlsson@actia.se)
Received: from daniel-VirtualBox.actianordic.se (10.12.12.67) by
 S035ANL.actianordic.se (10.12.31.116) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 18 May 2022 12:14:42 +0200
From: Daniel Karlsson <daniel.karlsson@actia.se>
To: <yocto@lists.yoctoproject.org>
CC: Daniel Karlsson <daniel.karlsson@actia.se>
Subject: [dunfell][PATCH] openssl: update from 1.1.1n to 1.1.1o
Date: Wed, 18 May 2022 12:14:29 +0200
Message-ID: <20220518101429.339410-1-daniel.karlsson@actia.se>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [10.12.12.67]
X-EsetResult: clean, is OK
X-EsetId: 37303A293105C852607667
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 10:14:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57127

This update fixes CVE-2022-1292.

Signed-off-by: Daniel Karlsson <daniel.karlsson@actia.se>
---
 .../openssl/{openssl_1.1.1n.bb =3D> openssl_1.1.1o.bb}            | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta/recipes-connectivity/openssl/{openssl_1.1.1n.bb =3D> openssl_1=
.1.1o.bb} (98%)

diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1n.bb b/meta/rec=
ipes-connectivity/openssl/openssl_1.1.1o.bb
similarity index 98%
rename from meta/recipes-connectivity/openssl/openssl_1.1.1n.bb
rename to meta/recipes-connectivity/openssl/openssl_1.1.1o.bb
index 8538bd5a18..c9cfc759c9 100644
--- a/meta/recipes-connectivity/openssl/openssl_1.1.1n.bb
+++ b/meta/recipes-connectivity/openssl/openssl_1.1.1o.bb
@@ -24,7 +24,7 @@ SRC_URI_append_class-nativesdk =3D " \
            file://environment.d-openssl.sh \
            "
=20
-SRC_URI[sha256sum] =3D "40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e=
8e15463372b17a"
+SRC_URI[sha256sum] =3D "9384a2b0570dd80358841464677115df785edb941c71211f75=
076d72fe6b438f"
=20
 inherit lib_package multilib_header multilib_script ptest
 MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
--=20
2.25.1


