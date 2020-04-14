Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.6789.1586850175729755543
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:42:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03E7gCOJ001025
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:42:22 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:42:01 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 01/16] setools: upgrade 4.2.2 -> 4.3.0
Date: Tue, 14 Apr 2020 15:41:43 +0800
Message-ID: <20200414074158.32058-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Remove __pycache__ directories when do_install.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../setools/{setools_4.2.2.bb => setools_4.3.0.bb}        | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
 rename recipes-security/setools/{setools_4.2.2.bb => setools_4.3.0.bb} (78%)

diff --git a/recipes-security/setools/setools_4.2.2.bb b/recipes-security/setools/setools_4.3.0.bb
similarity index 78%
rename from recipes-security/setools/setools_4.2.2.bb
rename to recipes-security/setools/setools_4.3.0.bb
index 6e5a950..ec73f7c 100644
--- a/recipes-security/setools/setools_4.2.2.bb
+++ b/recipes-security/setools/setools_4.3.0.bb
@@ -9,17 +9,17 @@ SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
 S = "${WORKDIR}/git"
-SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.2 \
+SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.3 \
            file://setools4-fixes-for-cross-compiling.patch \
 "
 
-SRCREV = "15bffa7823b9a999f9d51533785ade18fe44df08"
+SRCREV = "a57ad3cdb669a39f785c4e85d63416a469c8d445"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol"
+DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol libselinux"
 
 RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
                    python3-logging python3-json libselinux-python"
@@ -32,4 +32,6 @@ do_install_append() {
 	# Need PyQt5 support, disable gui tools
 	rm -f ${D}${bindir}/apol
 	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setoolsgui
+	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/__pycache__
+	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/*/__pycache__
 }
-- 
2.17.1

