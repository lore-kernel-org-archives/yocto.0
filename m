Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.9191.1601196195067233151
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 01:43:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08R8hCR2023575
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Sun, 27 Sep 2020 01:43:13 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 01:42:53 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <jpuhlman@mvista.com>, <yocto@lists.yoctoproject.org>
Subject: [PATCH] cluster-glue: improve reproducibility
Date: Sun, 27 Sep 2020 16:42:03 +0800
Message-ID: <20200927084203.41056-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Remove the build path info from the files such as drac5,
kdumpcheck and etc to improve reproducibility.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb        | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index d9df83b..1e4529d 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -62,6 +62,13 @@ do_install_append() {
 	install -d ${D}${sysconfdir}/tmpfiles.d
 	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
 
+	# remove buildpath
+	tempdirs=$(grep -Rn ${HOSTTOOLS_DIR} ${D}/* | awk -F: '{print $1}' | uniq)
+	for temdir in $tempdirs
+	do
+	    sed -i "s:${HOSTTOOLS_DIR}/::g" $temdir
+	done
+
     oe_multilib_header heartbeat/glue_config.h
 }
 
-- 
2.26.2

