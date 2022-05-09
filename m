Return-Path: <rhi@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C8C5C433EF
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 18:00:03 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.593.1652119192976256742
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 10:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: rhi@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fj-0002JT-61; Mon, 09 May 2022 19:59:51 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fj-001Kx6-PU; Mon, 09 May 2022 19:59:50 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fh-00AW7w-0a; Mon, 09 May 2022 19:59:49 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Roland Hieber <rhi@pengutronix.de>
Subject: [meta-oracle-java][PATCH 5/6] convert to new override syntax
Date: Mon,  9 May 2022 19:53:21 +0200
Message-Id: <20220509175322.2501051-6-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220509175322.2501051-1-rhi@pengutronix.de>
References: <20220509175322.2501051-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: rhi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 18:00:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57039

Since bitbake 1.52, which was included in Yocto 3.4 (honister), the
syntax for overrides has changed from using the '_' character to using
the ':' character, and the old syntax is no longer accepted. Run
poky/scripts/contrib/convert-overrides.py to convert the recipes
accordingly.

See https://docs.yoctoproject.org/3.4.3/migration-guides/migration-3.4.html#override-syntax-changes
for more information.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc |  8 ++++----
 recipes-devtools/oracle-java/oracle-jse.inc     | 16 ++++++++--------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9ca475..17ebe039d697 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -11,7 +11,7 @@ DESCRIPTION = "This is the proprietary JDK from Sun/Oracle, with the Hotspot JVM
 JDK_JRE = "jdk"
 require oracle-jse.inc
 
-do_install_class-native() {
+do_install:class-native() {
 	install -d				${D}${libdir_jvm}
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
@@ -26,17 +26,17 @@ do_install_class-native() {
 
 BBCLASSEXTEND = "native"
 
-RPROVIDES_${PN} += "java2-development"
+RPROVIDES:${PN} += "java2-development"
 PROVIDES += "virtual/javac virtual/java-initial"
 
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
 	update-alternatives --install ${bindir}/jar   jar   ${JDK_HOME}/bin/jar 100
 	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/bin/java 100
 	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/bin/javac 100
 	update-alternatives --install ${bindir}/javah javah ${JDK_HOME}/bin/javah 100
 }
 
-pkg_prerm_${PN} () {
+pkg_prerm:${PN} () {
 	update-alternatives --remove jar   ${JDK_HOME}/bin/jar
 	update-alternatives --remove java  ${JDK_HOME}/bin/java
 	update-alternatives --remove javac ${JDK_HOME}/bin/javac
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index c799c03033c6..d853e77f6cfd 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "\
 	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME-JAVAFX.txt;md5=4f31cd1a5d86744d5f00666d9a57ad2a \
 	"
 
-FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
+FETCHCMD_wget:append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
 
-RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+3 libxtst libxi"
+RDEPENDS:${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+3 libxtst libxi"
 # get the java update version in the resulting package
 PR =. "u${PV_UPDATE}"
 S = "${WORKDIR}"
@@ -26,24 +26,24 @@ do_install () {
 # All the files are provided in a binaray package, and keeping all the
 # files in a single package causes packaging QA errors and warnings.
 # Avoid these packaging failure by skiping all the QA checks
-INSANE_SKIP_${PN} = "${ERROR_QA} ${WARN_QA}"
+INSANE_SKIP:${PN} = "${ERROR_QA} ${WARN_QA}"
 
 # Inhibit warnings about files being stripped, we can't do anything about it.
 INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 PACKAGES = "${PN}-sources ${PN}"
-FILES_${PN}-sources = "${JDK_HOME}/src.zip"
-FILES_${PN} = "${JDK_HOME}"
+FILES:${PN}-sources = "${JDK_HOME}/src.zip"
+FILES:${PN} = "${JDK_HOME}"
 
-RPROVIDES_${PN} = "java2-runtime java2-vm"
+RPROVIDES:${PN} = "java2-runtime java2-vm"
 PROVIDES += "virtual/java"
 
 inherit update-alternatives
 
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
 	update-alternatives --install ${bindir}/java java ${JDK_HOME}/bin/java 75
 }
 
-pkg_prerm_${PN} () {
+pkg_prerm:${PN} () {
 	update-alternatives --remove java ${JDK_HOME}/bin/java
 }
-- 
2.30.2


