Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5EDFE00C44; Sun, 10 Sep 2017 19:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C706E00C35
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 19:06:44 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id h4so4313467pfk.0
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 19:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=+j/r12hIJAZHPC6EgDnO4CIBXfnZyDo0cW/ygAWE2yg=;
	b=ZYtJbD//asNSYw7Ynm14BnK9dZKdgmsfOE5mRI+uH1fJrME2paPxrPKkO8Ct7e/ijr
	mUq1zsr12SrrpVT3JQae97RM7t4PNwGXM0h8CpyP1QPaQ8F0Hh3lcrGXEvtImAq0prer
	YRvtzKePBHKgP/ibZ2T+1sHfQ7gSuNhE5bPfS8GmTp0zLrAedut0uW1IakXMyGGA+Q/2
	0W188jLQq/sSq2Bu1qIMaCc/dCkMhmhwVR49Cqz2Dd18GmqYdeoX1OAePqJ95sCh9SyS
	gM/LX48qkLmN4iQW881mY+YCj6K2cjaL2sTd2QH0Gd/HfjbNdmVU17zp6fH1TQxxNqVk
	rUEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=+j/r12hIJAZHPC6EgDnO4CIBXfnZyDo0cW/ygAWE2yg=;
	b=ucQz/UqYa7ED/FEd1Mnz/vtJkzS10fAASnW3JJZvfQKak8iYR1+wVo774SCZ2BWLpP
	KQRIL7lNtZZ9iVN7CSTmjNDl3zmQirqiAWtcUwya4h7OBncUKf2fNtbSM8Ms5BdqbZZj
	Y7GTSxFVqiRZ1zqd4FxIH12wycBdEUucmK8LyREGPuFA/Redj53cCdvyncHYWkyaKco2
	b1+jMvLJWwzkfzxh7OGPEEOx2Cxtnlr7c5em+gI7nPbuJ3tnK7eTLrJlZytwaCyegOSi
	SsS/R8qz0uvh4DmOfSl9MsaxXDrleLBNTBnoa/EWKDg3+84qBUTOuthvV/DJgaqoUvWP
	leUQ==
X-Gm-Message-State: AHPjjUjrUIxYOcN+5ya4lg4Os+gcwh2kipL5/PS/F3l6HgxaSK9uKyjH
	JQNOgmrWrUQhJQ==
X-Google-Smtp-Source: ADKCNb6V+QGWK+ZfeceEh7Jta2O1B3FLjUpH0nlhilsUHmP5JvD3miB1MOEviGrcY3OsaU5x0uR9Mw==
X-Received: by 10.84.246.195 with SMTP id j3mr11396700plt.91.1505095604564;
	Sun, 10 Sep 2017 19:06:44 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:645a:9f13:1c42:b124])
	by smtp.gmail.com with ESMTPSA id
	d5sm14012680pfg.26.2017.09.10.19.06.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Sep 2017 19:06:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun, 10 Sep 2017 19:06:41 -0700
Message-Id: <1505095602-12683-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] Apparmor: add apache2 to PACKAGECONF and check for webserver layer
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
X-List-Received-Date: Mon, 11 Sep 2017 02:06:45 -0000

Don't want to add layer depends for one package unless needed.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/AppArmor/apparmor_2.11.0.bb | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index d9572e4..ae3391d 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -11,7 +11,7 @@ SECTION = "admin"
 LICENSE = "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
 
-DEPENDS = "bison-native apr apache2 gettext-native coreutils-native"
+DEPENDS = "bison-native apr gettext-native coreutils-native"
 
 SRC_URI = " \
 	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
@@ -38,8 +38,18 @@ PACKAGECONFIG ?="man python perl"
 PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
 PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
 PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native swig-native"
+PACKAGECONFIG[apache2] = ",,apache2,"
 
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
+HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
+
+
+python() {
+    if 'apache2' in d.getVar('PACKAGECONFIG').split() and \
+	'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
+        raise bb.parse.SkipRecipe('Requires meta-webserver to be present.')
+}
+
 
 do_configure() {
 	cd ${S}/libraries/libapparmor
@@ -57,7 +67,10 @@ do_compile () {
         oe_runmake -C ${B}/utils
         oe_runmake -C ${B}/parser
         oe_runmake -C ${B}/profiles
-        oe_runmake -C ${B}/changehat/mod_apparmor
+
+	if test -z "${HTTPD}" ; then
+        	oe_runmake -C ${B}/changehat/mod_apparmor
+	fi	
 
 	if test -z "${PAMLIB}" ; then
         	oe_runmake -C ${B}/changehat/pam_apparmor
@@ -73,7 +86,10 @@ do_install () {
 	oe_runmake -C ${B}/utils DESTDIR="${D}" install
 	oe_runmake -C ${B}/parser DESTDIR="${D}" install
 	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
-	oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
+
+	if test -z "${HTTPD}" ; then
+		oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
+	fi
 
 	if test -z "${PAMLIB}" ; then
 		oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
@@ -122,11 +138,13 @@ SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "apparmor.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-PACKAGES += "mod-${PN}"
+PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'apache2', 'mod-${PN}', '', d)}"
 
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
+ALLOW_EMPTY_${PN} = "1"
+
 RDEPENDS_${PN} += "bash lsb"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
-- 
2.7.4


