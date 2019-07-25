Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 417AEE00D5F; Thu, 25 Jul 2019 01:35:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 949A0E00D4A
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 01:35:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6P8YWX4025386
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Jul 2019 01:34:52 -0700
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 25 Jul 2019 01:34:49 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Thu, 25 Jul 2019 16:34:19 +0800
Message-ID: <1564043659-22405-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564043659-22405-1-git-send-email-yi.zhao@windriver.com>
References: <1564043659-22405-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-security][PATCH 2/2] scap-security-guide: update recipe
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
X-List-Received-Date: Thu, 25 Jul 2019 08:35:14 -0000
Content-Type: text/plain

* Set B="${S}/build" to fix the build failure for out of source
  directory
* Remove do_complile and do_install. Use the default functions from
  cmake.bbclass.
* Install the artifacts to /usr/share rather than /usr/local/share

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../scap-security-guide/scap-security-guide.inc    | 28 +++++-----------------
 .../scap-security-guide/scap-security-guide_git.bb |  6 +----
 2 files changed, 7 insertions(+), 27 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index ed70c18..d123561 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
 LICENSE = "LGPL-2.1"
 
 DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
+RDEPNEDS_${PN} = "openscap"
 
 S = "${WORKDIR}/git"
 
@@ -20,28 +21,11 @@ OECMAKE_GENERATOR = "Unix Makefiles"
 
 EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF"
 
-do_configure_prepend () {
-	sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g'   ${S}/CMakeLists.txt
-        sed -i 's:/usr/share/openscap/:${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/:g' ${S}/cmake/SSGCommon.cmake
-}
-
-do_compile () {
-	cd ${S}/build
-	cmake ../
-	# oddly rhel7 needs to build first
-	make rhel7
-}
+B = "${S}/build"
 
-do_install () {
-	cd ${S}/build
-	make DESTDIR=${D} install
+do_configure_prepend () {
+    sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g' ${S}/CMakeLists.txt
+    sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
 }
 
-localdatadir = "${prefix}/local/share"
-localmandir = "${localdatadir}/man"
-localdocdir = "${localdatadir}/doc"
-localxmldir = "${localdatadir}/xml"
-
-FILES_${PN} += "${localdatadir} ${localxmldir}"
-FILES_${PN}-doc += "${localmandir} ${localdocdir}"
-RDEPNEDS_${PN} = "openscap"
+FILES_${PN} += "${datadir}/xml"
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
index cb21fed..d9238c0 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
@@ -2,12 +2,8 @@ SUMARRY = "SCAP content for various platforms, OE changes"
 
 SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
 SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44;"
-PV = "v0.1.44+git${SRCPV}"
+PV = "0.1.44+git${SRCPV}"
 
 require scap-security-guide.inc
 
-do_compile_append () {
-    make openembedded
-}
-
 EXTRA_OECMAKE += "-DSSG_PRODUCT_OPENEMBEDDED=ON"
-- 
2.7.4


