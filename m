Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1F0CE00D4F; Sat,  6 Jul 2019 16:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03611E00D00
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 16:32:34 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id o13so5808905pgp.12
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 16:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=z37usQmB2Os2UjZ5xX7+eHaOL0qQ+SmRZbu7E9H594c=;
	b=pB/ksvPCkrM4me/1VCw7x8dAgBhbqh6D6OWAJqjAtiHoVjjsAZgYaFDFETegOshLGn
	OFrbJo+NeRTFCPwdXeCXBYZ3Jgv56SZV2kUMl/N4gFT4LAdsWOv/O1snCY0H/bwvQMq/
	pW+V2dRsrH+e5PwNSkMi7UgmyGM8tovGr0CTEMOzCxbjpALoChPQPwY+7vWir11RwLXW
	beODoHQemH91SwSr3M6rTHr9yG+KKTrVfrQx83IooF0lIhbAEoJwZAExDi+ZK0bM3nbf
	YeZh90cvaDHCt9B4gY2a5sDvAeXu8DnY4jGe2BsULvOnng2vTYAc8UlgAWQlJbkOO+Wn
	RgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=z37usQmB2Os2UjZ5xX7+eHaOL0qQ+SmRZbu7E9H594c=;
	b=HMjpzNyCB2BTn2gGcMpRULoPvllDL3Fvrac/BhiQYgrsOIY8s8ORu7n2SKrbnsUEAf
	cr6JnT2FGMkkSyyLBcrnuYUPKgLO7eb4aWCnVxCjntT7+mcWIp+tylReyxuqhiRlrCxN
	B/p7xkcLXtqtETU0xNSFXRhuAc2DPBYteZ21rv+MIKEqbuI104tRCotE+ZpEAhmxgejY
	ArudStZ73lKCWqnkDLX02iXpVHzzxlPrOf6N7h8pyEV6P1KYyc5wrSVv0OV+d5Jn2JFg
	xDxceJKmnqGitU8LQi3csLNxUGVWxM3JLUeEWtNiuOFpmOf/EzR0r5aoE2/CBHCIxIMt
	GL/g==
X-Gm-Message-State: APjAAAVqy7/pBG3hoEXFdi+PrQckquQFNR+RaNwWzYTuwWHSCDw9KKb9
	3zBla13H/KAEQp9P4ZkT0C9BJvPw8Ac=
X-Google-Smtp-Source: APXvYqw2dXwt3ZPD2ADfvjsindWGWbS2hNX+uhu/Ame2/YNu82tMOstMCQ8svqUobKVPVvaRVXaUnA==
X-Received: by 2002:a17:90a:8a15:: with SMTP id
	w21mr14163072pjn.134.1562455954479; 
	Sat, 06 Jul 2019 16:32:34 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	a25sm12486639pfn.1.2019.07.06.16.32.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 16:32:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Jul 2019 16:32:29 -0700
Message-Id: <20190706233230.2774-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190706233230.2774-1-akuster808@gmail.com>
References: <20190706233230.2774-1-akuster808@gmail.com>
Subject: [meta-security-compliance][PATCH 3/4] scap-security-guide: update to 0.1.44
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
X-List-Received-Date: Sat, 06 Jul 2019 23:32:37 -0000

create a PV version to track upstream
git version includes OE changes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide.inc                   | 47 ++++++++++++++
 .../scap-security-guide_0.1.44.bb             |  8 +++
 .../scap-security-guide_git.bb                | 63 +++----------------
 3 files changed, 63 insertions(+), 55 deletions(-)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
new file mode 100644
index 0000000..ed70c18
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -0,0 +1,47 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "SCAP content for various platforms"
+HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
+LICENSE = "LGPL-2.1"
+
+DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
+
+S = "${WORKDIR}/git"
+
+inherit cmake pkgconfig python3native
+
+#PARALLEL_MAKE = ""
+
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+
+OECMAKE_GENERATOR = "Unix Makefiles"
+
+EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF"
+
+do_configure_prepend () {
+	sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g'   ${S}/CMakeLists.txt
+        sed -i 's:/usr/share/openscap/:${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/:g' ${S}/cmake/SSGCommon.cmake
+}
+
+do_compile () {
+	cd ${S}/build
+	cmake ../
+	# oddly rhel7 needs to build first
+	make rhel7
+}
+
+do_install () {
+	cd ${S}/build
+	make DESTDIR=${D} install
+}
+
+localdatadir = "${prefix}/local/share"
+localmandir = "${localdatadir}/man"
+localdocdir = "${localdatadir}/doc"
+localxmldir = "${localdatadir}/xml"
+
+FILES_${PN} += "${localdatadir} ${localxmldir}"
+FILES_${PN}-doc += "${localmandir} ${localdocdir}"
+RDEPNEDS_${PN} = "openscap"
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb
new file mode 100644
index 0000000..d80ecd7
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb
@@ -0,0 +1,8 @@
+SUMARRY = "SCAP content for various platforms, upstream version"
+
+SRCREV = "8cb2d0f351faff5440742258782281164953b0a6"
+SRC_URI = "git://github.com/ComplianceAsCode/content.git"
+
+DEFAULT_PREFERENCE = "-1"
+
+require scap-security-guide.inc
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
index 3f76038..cb21fed 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
@@ -1,60 +1,13 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
+SUMARRY = "SCAP content for various platforms, OE changes"
 
-SUMARRY = "SCAP content for various platforms"
-HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=236e81befc8154d18c93c848185d7e52"
-LICENSE = "LGPL-2.1"
+SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
+SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44;"
+PV = "v0.1.44+git${SRCPV}"
 
-DEPENDS = "openscap-native"
+require scap-security-guide.inc
 
-SRCREV = "423d9f40021a03abd018bef7818a3a9fe91a083c"
-SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe;"
-PV = "v0.1.33+git${SRCPV}"
-
-inherit cmake
-
-PARALLEL_MAKE = ""
-
-S = "${WORKDIR}/git"
-
-STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
-
-OECMAKE_GENERATOR = "Unix Makefiles"
-
-EXTRA_OECMAKE += "-DSSG_PRODUCT_CHROMIUM:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_DEBIAN8:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_FEDORA:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_FIREFOX:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_JBOSS_EAP5:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_JBOSS_FUSE6:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_JRE:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_OPENSUSE:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_OSP7:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL5:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL6:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL7:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEV3:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_SUSE11:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_SUSE12:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_UBUNTU1404:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_UBUNTU1604:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_WRLINUX:BOOL=OFF"
-EXTRA_OECMAKE += "-DSSG_PRODUCT_WEBMIN:BOOL=OFF"
-
-do_configure_prepend () {
-	sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g'   ${S}/CMakeLists.txt
-        sed -i 's:/usr/share/openscap/:${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/:g' ${S}/cmake/SSGCommon.cmake
+do_compile_append () {
+    make openembedded
 }
 
-do_compile () {
-	cd ${B}
-	make openembedded 
-}
-
-do_install () {
-	cd ${B}
-	make DESTDIR=${D} install
-}
-FILES_${PN} += "${datadir}/xml"
-RDEPNEDS_${PN} = "openscap"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_OPENEMBEDDED=ON"
-- 
2.17.1


