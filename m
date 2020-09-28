Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.28789.1601263985303888424
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 20:33:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08S3X3kr009674
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Sun, 27 Sep 2020 20:33:03 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 20:32:44 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <jpuhlman@mvista.com>, <yocto@lists.yoctoproject.org>
Subject: [PATCH v2] cluster-glue: improve reproducibility
Date: Mon, 28 Sep 2020 11:31:52 +0800
Message-ID: <20200928033152.3214-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <16389774D07A220A.8201@lists.yoctoproject.org>
References: <16389774D07A220A.8201@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Set ssh path rather than using hosttools to remove the build
path in the files such as drac5, kdumpcheck and etc.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index d9df83b..af2342f 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -42,7 +42,9 @@ EXTRA_OECONF = "--with-daemon-user=${HA_USER} \
                 --with-ocf-root=${libdir}/ocf \
                "
 
-CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0"
+CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0 \
+                      ac_cv_path_SSH=ssh \
+"
 
 USERADD_PACKAGES = "${PN}"
 USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER} \
-- 
2.13.3

