Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 541DBE00C69; Wed, 26 Jul 2017 18:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 206ADE00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:02:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6R1256O025642
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:02:05 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Wed, 26 Jul 2017 18:02:04 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Jul 2017 09:01:42 +0800
Message-ID: <20170727010142.10681-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] monit: update to 5.20.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Jul 2017 01:02:07 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Changes:
- Fix the license to AGPLv3
- Add summary, description and homepage
- Add systemd support
- Don't change the files in ${S}, change them
  after installing.
- Add PACKAGECONFIG for pam and enable it when
  it's in DISTRO_FEATURES

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../monit/{monit_5.8.bb => monit_5.20.0.bb}        | 40 +++++++++++++++++-----
 1 file changed, 32 insertions(+), 8 deletions(-)
 rename meta-cgl-common/recipes-cgl/monit/{monit_5.8.bb => monit_5.20.0.bb} (35%)

diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.8.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb
similarity index 35%
rename from meta-cgl-common/recipes-cgl/monit/monit_5.8.bb
rename to meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb
index 43e02a7..955a28c 100644
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.8.bb
+++ b/meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb
@@ -1,20 +1,36 @@
-LICENSE = "GPLv3"
+SUMMARY = "Monit is a tool used for system monitoring and error recovery"
+DESCRIPTION = "Monit is a free open source utility for managing and monitoring, \
+  processes, programs, files, directories and filesystems on a UNIX system. \
+  Monit conducts automatic maintenance and repair and can execute meaningful \
+  causal actions in error situations. \
+  "
+HOMEPAGE = "http://mmonit.com/monit/"
+
+LICENSE = "AGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
-DEPENDS = "openssl libpam"
+
+DEPENDS = "openssl"
 
 SRC_URI = "\
-	http://mmonit.com/monit/dist/monit-${PV}.tar.gz \
+	http://mmonit.com/monit/dist/${BP}.tar.gz \
 	file://enable-etc-monit.d-include.patch \
 	file://init \
 	"
 
-SRC_URI[md5sum] = "c6873b0828f872676f9e7fe1476a8dc2"
-SRC_URI[sha256sum] = "0c00573ebc0156c534a5952f392c2a7bedde194f8261c05497322055938847f5"
+SRC_URI[md5sum] = "769a44ee13b4e1f90156b58dc2f7ea7c"
+SRC_URI[sha256sum] = "ebac395ec50c1ae64d568db1260bc049d0e0e624c00e79d7b1b9a59c2679b98d"
 
 INITSCRIPT_NAME = "monit"
 INITSCRIPT_PARAMS = "defaults 99"
 
-inherit autotools-brokensep update-rc.d
+inherit autotools-brokensep update-rc.d systemd
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "monit.service"
+SYSTEMD_AUTO_ENABLE = "enable"
+
+PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}"
+PACKAGECONFIG[pam] = "--with-pam,--without-pam,libpam"
 
 EXTRA_OECONF = "\
 	libmonit_cv_setjmp_available=no \
@@ -23,13 +39,21 @@ EXTRA_OECONF = "\
 	--with-ssl-incl-dir=${STAGING_INCDIR} \
 	"
 
+do_configure_prepend() {
+    rm -rf ${S}/m4
+}
+
 do_install_append() {
 	install -d ${D}${sysconfdir}/init.d/
 	install -m 755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/monit
-	sed -i 's:# set daemon  120:set daemon  120:' ${S}/monitrc
-	sed -i 's:include /etc/monit.d/:include /${sysconfdir}/monit.d/:' ${S}/monitrc
+
 	install -m 600 ${S}/monitrc ${D}${sysconfdir}/monitrc
 	install -m 700 -d ${D}${sysconfdir}/monit.d/
+	sed -i -e 's:# set daemon  120:set daemon  120:' \
+	       -e 's:include /etc/monit.d/:include /${sysconfdir}/monit.d/:' \
+	       ${D}${sysconfdir}/monitrc
+
+	install -D -m 0644 ${S}/system/startup/monit.service ${D}${systemd_system_unitdir}/monit.service
 }
 
 CONFFILES_${PN} += "${sysconfdir}/monitrc"
-- 
2.11.0


