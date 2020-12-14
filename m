Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.38647.1607967097238593313
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 09:31:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2FDC1FB
	for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 09:31:35 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 44F2C3F66E
	for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 09:31:35 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: add mandatory --layers argument to check-layer
Date: Mon, 14 Dec 2020 17:31:31 +0000
Message-Id: <20201214173131.2672599-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index 5249d73..aa0de15 100644
--- a/config.json
+++ b/config.json
@@ -758,16 +758,16 @@
         "check-layer" : {
             "NEEDREPOS" : ["poky", "meta-gplv2", "meta-mingw"],
             "step1" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-poky"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper --layers ../me=
ta-poky"]
             },
             "step2" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-yocto-=
bsp"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper --layers ../me=
ta-yocto-bsp"]
             },
             "step3" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-mingw"=
]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper --layers ../me=
ta-mingw"]
             },
             "step4" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-gplv2"=
]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper --layers ../me=
ta-gplv2"]
             }
         },
         "meta-mingw" : {
--=20
2.25.1

