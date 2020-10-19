Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.1648.1603128144450891785
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 10:22:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D165730E;
	Mon, 19 Oct 2020 10:22:23 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 582B23F66B;
	Mon, 19 Oct 2020 10:22:23 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [PATCH][meta-zephyr] layer.conf: add compatibility with Gatesgarth
Date: Mon, 19 Oct 2020 18:22:16 +0100
Message-Id: <20201019172216.3655779-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 1d41b3f..4ecd6a2 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyr =3D "1"
=20
 LAYERDEPENDS_zephyr =3D "core"
=20
-LAYERSERIES_COMPAT_zephyr =3D "dunfell"
+LAYERSERIES_COMPAT_zephyr =3D "dunfell gatesgarth"
--=20
2.25.1

