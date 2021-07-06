Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.8266.1625586885253276458
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 08:54:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79434106F
	for <yocto@lists.yoctoproject.org>; Tue,  6 Jul 2021 08:54:44 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22EB73F73B
	for <yocto@lists.yoctoproject.org>; Tue,  6 Jul 2021 08:54:44 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: add meta-arm-autonomy to check-layer
Date: Tue,  6 Jul 2021 16:54:41 +0100
Message-Id: <20210706155441.98401-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

meta-arm-autonomy now passes check-layer, so add it to the autobuilder.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 2ccd24a..337c7c4 100644
--- a/config.json
+++ b/config.json
@@ -843,7 +843,7 @@
             "step2" : {
                 "shortname" : "Test meta-arm YP Compatibility",
                 "MACHINE" : "qemuarm64",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/me=
ta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-ar=
m/meta-gem5 --dependency ../meta-openembedded/meta-oe ../meta-openembedde=
d/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-o=
penembedded/meta-filesystems ../meta-virtualization"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/me=
ta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-ar=
m/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedd=
ed/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta=
-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtua=
lization"]
             },
             "step3" : {
                 "shortname" : "Test meta-aws YP Compatibility",
--=20
2.25.1

