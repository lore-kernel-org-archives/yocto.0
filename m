Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B4FE00814; Tue, 19 Aug 2014 23:11:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53287E00655
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 23:11:19 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lf10so11610408pab.15
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 23:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=xzpopkmHr7CFcH9FXcTdUF+kqW49n2wswJzvymKfpbY=;
	b=D45tOkWpiJ49CNPQcRYrobPz+XQ84ax6JGINPAciiLpkQvXBl1VUGwX45zMyGAt6SI
	rdDiy3nwk7+6LmjkR6kveMp6tJIfMJfX8MqbJXaR42URpL1XuYloPjcnM7cvqWLv/U1J
	1hfsS9DutrDCpQJ5wN3VFVokX81T8iSOy0NXCC0zGI+/FNlDBPMvO7EWe4kfncYP6g7s
	mpGDl8YuCBmw0CE0CLTcueMw2gL+WI9DFKn+UH+1WnfjUK8nLVPT6DL/SD641RTsX3UX
	7xPewRkqxVlRucwHmdl12/0qNB8A4d09GqA6eqqw9q/iTpJun6sm4+yWw3tmzZLu65Ca
	+XwA==
X-Received: by 10.70.21.202 with SMTP id x10mr56636458pde.92.1408515078948;
	Tue, 19 Aug 2014 23:11:18 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qk9sm76748826pac.16.2014.08.19.23.11.17 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 19 Aug 2014 23:11:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Aug 2014 23:11:14 -0700
Message-Id: <1408515074-6584-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: Add gui support
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
X-List-Received-Date: Wed, 20 Aug 2014 06:11:31 -0000

Add zenmap to work with gtk+/x11

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_6.46.bb | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/recipes-security/nmap/nmap_6.46.bb b/recipes-security/nmap/nmap_6.46.bb
index 6fe3c6b..573187d 100644
--- a/recipes-security/nmap/nmap_6.46.bb
+++ b/recipes-security/nmap/nmap_6.46.bb
@@ -1,5 +1,5 @@
 SUMMARY = "network auditing tool"
-DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing."
+DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
 SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
@@ -9,9 +9,10 @@ SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
 SRC_URI[md5sum] = "5a36ad3a63d5b7ea5514f745a397436a"
 SRC_URI[sha256sum] = "3f89d9053c69507fe9533c40188a6561d49607a37b1db6380aed9039d4883137"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools-brokensep pkgconfig distro_features_check
 
 PACKAGECONFIG ??= "ncat nping ndiff pcap"
+PACKAGECONFIG += " ${@bb.utils.contains("IMAGE_FEATURES", "x11-base", "zenmap", "", d)}"
 
 PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap"
 PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
@@ -25,7 +26,10 @@ PACKAGECONFIG[ndiff] = ",--without-ndiff,"
 PACKAGECONFIG[lua] = "--with-liblua=${STAGING_LIBDIR}/.., --with-liblua=included, lua"
 PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
 
-EXTRA_OECONF = "--without-zenmap"
+#Add gui
+PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
+
+EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion"
 
 do_configure() {
     autoconf
@@ -41,10 +45,8 @@ FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${
 FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "nping", "${bindir}/nping", "", d)}"
 FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff*", "", d)}"
 
-# should add a conditional for "--without-zenmap" test. 
-# zenmap builds if the below are uncommented. Not tested
-#PACKAGES =+ "${PN}-zenmap"
-#FILES_${PN}-zenmap = "/usr/share/zenmap/*"
-
+PACKAGES += "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${PN}-zenmap", "", d)}"
 
+FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/radialnet/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/zenmap*", "", d)}"
 
+RDEPENDS_${PN}-zenmap = "nmap"
-- 
1.9.1


