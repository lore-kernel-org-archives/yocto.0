Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.5469.1630581389180469107
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 04:16:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5A241063
	for <yocto@lists.yoctoproject.org>; Thu,  2 Sep 2021 04:16:27 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 502243F5A1
	for <yocto@lists.yoctoproject.org>; Thu,  2 Sep 2021 04:16:27 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][gatesgarth] config.json: drop redundant meta-kernel mentions
Date: Thu,  2 Sep 2021 12:16:23 +0100
Message-Id: <20210902111623.962407-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 5dda653..bee5350 100644
--- a/config.json
+++ b/config.json
@@ -277,9 +277,8 @@
             "TEMPLATE" : "ltp-qemu"
         },
         "meta-arm" : {
-            "NEEDREPOS" : ["poky", "meta-arm", "meta-kernel"],
+            "NEEDREPOS" : ["poky", "meta-arm"],
             "ADDLAYER" : [
-                "${BUILDDIR}/../meta-kernel",
                 "${BUILDDIR}/../meta-arm/meta-arm-toolchain",
                 "${BUILDDIR}/../meta-arm/meta-arm",
                 "${BUILDDIR}/../meta-arm/meta-arm-bsp"
--=20
2.25.1

