Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.3069.1603185540647488462
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 02:19:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA1FE101E;
	Tue, 20 Oct 2020 02:18:59 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 444F43F66E;
	Tue, 20 Oct 2020 02:18:59 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH] layer.conf: add layer dependency on meta-python
Date: Tue, 20 Oct 2020 10:18:52 +0100
Message-Id: <20201020091852.4096306-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 4ecd6a2..f9de654 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,6 +13,6 @@ BBFILE_PRIORITY_zephyr =3D "6"
 # cause compatibility issues with other layers
 LAYERVERSION_zephyr =3D "1"
=20
-LAYERDEPENDS_zephyr =3D "core"
+LAYERDEPENDS_zephyr =3D "core meta-python"
=20
 LAYERSERIES_COMPAT_zephyr =3D "dunfell gatesgarth"
--=20
2.25.1

