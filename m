Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.10924.1613581993697871610
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 09:13:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 426491FB
	for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 09:13:11 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E14813F73D
	for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 09:13:10 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config: build and test SDKs when using package_deb
Date: Wed, 17 Feb 2021 17:13:04 +0000
Message-Id: <20210217171304.3011537-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index ea2d86b..3286e57 100644
--- a/config.json
+++ b/config.json
@@ -580,8 +580,8 @@
         "pkgman-deb-non-deb" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_deb",
-            "BBTARGETS" : "core-image-sato core-image-sato-dev core-imag=
e-sato-sdk core-image-minimal core-image-minimal-dev",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-imag=
e-sato:do_testimage core-image-sato-sdk:do_testimage"
+            "BBTARGETS" : "core-image-sato core-image-sato-dev core-imag=
e-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_p=
opulate_sdk",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-imag=
e-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_t=
estsdk"
         },
         "pkgman-non-rpm" : {
             "MACHINE" : "qemux86",
--=20
2.25.1

