Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.11550.1600933903524129984
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 00:51:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08O7p0qK020487
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 24 Sep 2020 00:51:21 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Thu, 24 Sep 2020 00:50:54 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <jpuhlman@mvista.com>, <yocto@lists.yoctoproject.org>
Subject: [meta-cgl][PATCH] pacemaker: improve reproducibility
Date: Thu, 24 Sep 2020 15:50:09 +0800
Message-ID: <20200924075009.10961-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Remove the build path info from the files such as crm_master,
crm_report and etc to improve reproducibility.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../recipes-cgl/pacemaker/pacemaker_2.0.3.bb  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
index 56f3bc4..8576f18 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
@@ -51,6 +51,18 @@ EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
 CACHED_CONFIGUREVARS += " \
     ac_cv_path_BASH_PATH=/bin/bash \
 "
+do_configure_prepend() {
+    # remove buildpath
+    placeh="abs_top_builddir abs_top_srcdir"
+    for ph in $placeh
+    do
+        srcdirs=$(grep -Rn $ph ${S}/* | awk -F: '{print $1}' | uniq)
+        for srcdir in $srcdirs
+        do
+            sed -i "s/${ph}/${ph}_placeholder/g" $srcdir
+        done
+    done
+}
 
 do_install_append() {
     install -d ${D}${sysconfdir}/default
@@ -66,6 +78,13 @@ do_install_append() {
 
     rm -rf ${D}${localstatedir}/lib/heartbeat
     rm -rf ${D}${localstatedir}/run
+
+    # remove buildpath
+    tempdirs=$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F: '{print $1}' | uniq)
+    for temdir in $tempdirs
+    do
+        sed -i "s:${RECIPE_SYSROOT_NATIVE}::g" $temdir
+    done
 }
 
 PACKAGES_prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
-- 
2.26.2

