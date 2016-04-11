Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1412FE00DF9; Mon, 11 Apr 2016 09:37:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38862E0077E
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 09:37:22 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id td3so124414079pab.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 09:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=5E8WJS219MRMcc+34XXbcbYU161GZflAXoRgvE/fBqo=;
	b=Lm+Ou+ZuNpz5e89b8Hpvtb4kyEbAN4S6G9o94BgL5wzZv2KzIqs0LKD3N70GIcE6hF
	qG5qiRvBnRMVV1yo4UxfxyzGDOl9dzgmuYR27c4czGGIA8y/IzCFuPeRgKlMLkZOhi4V
	6VXC61VTsge1kXk48Te+D7hvKRNLL3+QBxIxIHImHut4l/DkpvdoBoibn0h0GCDusfzm
	6flMU/2i3t6Cu60eKu2NVAuU3BHvpJLSMPh82bKA4HDu4Agb3DAgruOKPVJAZB6l6NKv
	ajCsOvnzZPwNVj3p22pHHHJep3/9ZlbQAszAfStVG2mk8O1F8GSpc2a/zRJL8azLLr6a
	nnkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=5E8WJS219MRMcc+34XXbcbYU161GZflAXoRgvE/fBqo=;
	b=BAPeME3y0VjtBB2S33EhxgTZ8c4ekhO/RKNlsYR8eNFtkFTnf5HlZsfTCwNRcLYSl9
	2cbvpNduBngCBpVA4udoW7E/+GdpsWbXKcSNMCrRZCfZkz7CmNJ2ZzXtMQ5cffZvuapl
	Acsn2C9d9sSnFxC1LTlAh5O3BSy69+HFvHgXmwVUkmQ+x/zFv0MFuDaui+wJSedGHNBE
	x1cMWoFvw/jQUPFJN2u802bWSnMyQ/kWm6BhmX9ouv+ffBu56TBTE5wwvTe0ceZEjrHa
	pBbNYyBSlJw7wIANvWNJk9QzOCbrSyCa1NBfbFDduKXN0i10zWkHF3LGvN+SwQusk75y
	a2GQ==
X-Gm-Message-State: AD7BkJL/wbNrUcE+MEbxCnQEYd3PmKxWC6k0Z9JzmSlquceDV+qeuVpu/yz+E1EWwKgGpg==
X-Received: by 10.67.24.41 with SMTP id if9mr34162437pad.63.1460392641636;
	Mon, 11 Apr 2016 09:37:21 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	g74sm37404542pfj.1.2016.04.11.09.37.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Apr 2016 09:37:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 09:37:18 -0700
Message-Id: <1460392638-22766-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] clamav: fix lib version mismatch
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
X-List-Received-Date: Mon, 11 Apr 2016 16:37:26 -0000

drop lib version in package name
drop insane and remove broken symlink
Use LEAD_SONAME
Don't hard code lib version in tasks
Use native chrpath not the host provided version

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.1.bb | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.1.bb b/recipes-security/clamav/clamav_0.99.1.bb
index 4b42361..edccc78 100644
--- a/recipes-security/clamav/clamav_0.99.1.bb
+++ b/recipes-security/clamav/clamav_0.99.1.bb
@@ -4,7 +4,7 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libmspack "
+DEPENDS = "libtool db libmspack chrpath-replacement-native"
 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
@@ -18,6 +18,11 @@ SRC_URI = "http://www.clamav.net/downloads/production/${BPN}-${PV}.tar.gz \
 SRC_URI[md5sum] = "cf1f3cbe62a08c9165801f79239166ff"
 SRC_URI[sha256sum] = "e144689122d3f91293808c82cbb06b7d3ac9eca7ae29564c5d148ffe7b25d58a"
 
+LEAD_SONAME = "libclamav.so"
+SO_VER = "7.1.1"
+
+EXTRANATIVEPATH += "chrpath-native"
+
 inherit autotools-brokensep pkgconfig useradd systemd 
 
 UID = "clamav"
@@ -53,7 +58,7 @@ do_configure () {
 
 do_compile_append() {
     # brute force removing RPATH
-    chrpath -d  ${B}/libclamav/.libs/libclamav.so.7.1.1
+    chrpath -d  ${B}/libclamav/.libs/libclamav.so.${SO_VER}
     chrpath -d  ${B}/sigtool/.libs/sigtool
     chrpath -d  ${B}/clambc/.libs/clambc
     chrpath -d  ${B}/clamscan/.libs/clamscan
@@ -71,6 +76,7 @@ do_install_append() {
     install -m 644 ${WORKDIR}/freshclam.conf ${D}/${sysconfdir}
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
+    rm ${D}/${libdir}/libclamav.so
 }
 
 pkg_postinst_${PN} () {
@@ -82,7 +88,7 @@ pkg_postinst_${PN} () {
 
 
 PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc \
-            ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav6 ${PN}-staticdev"
+            ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
 
 FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit \
                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1/clamscan* \
@@ -116,15 +122,13 @@ FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
 
 FILES_${PN}-staticdev = "${libdir}/*.a"
 
-FILES_${PN}-libclamav6 = "${libdir}/libclamav.so* ${libdir}/libmspack.so*\
-                          ${docdir}/libclamav6/* "
+FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libmspack.so*\
+                          ${docdir}/libclamav/* "
 
 FILES_${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
                    ${docdir}/* "
 
-INSANE_SKIP_${PN}-libclamav6 = "dev-so"
-
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${UID}"
 USERADD_PARAM_${PN} = "--system -g ${GID} --home-dir  \
@@ -136,4 +140,4 @@ RREPLACES_${PN} += "${PN}-systemd"
 RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
-RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav6"
+RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
-- 
2.3.5


