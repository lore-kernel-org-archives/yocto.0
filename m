Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BA67E009B4; Sun, 26 Jun 2016 09:28:53 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 519EFE00953
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 09:28:49 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id i123so13705025pfg.3
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 09:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=6qpyJmKAB3+rzFMWXpH3omUOqCzRF3mF8yNlfrDlyhY=;
	b=JoUOC0kD0uQc9SIaZHfTGUm4QmjKdZ5HBM7q33NH9vf+StbLuvPnbIcquwR0GFv/C9
	6r8XuFU9UWaLUeEcv6W6qDLAwMZBbUhKB5/tMPf9Q7ml62fq5VhMkXW6lA4Yma8bhPgP
	ACl277+fA31oa5OmTF7+lg9Fj/mfj+j7OkoHs0PYHJ3+4CFH+L2KBqi/FeEBTu1YYE9q
	ZynPdZf/HTGWVsuDEujxSYH9OGLf+VjO98ve89Q6tJYEAzqc+YQ0R7fjX2g5IBCfOBOi
	kU+pz1g0HCXnnkJ/SwJdZeFTWIUHFyqmxtwJMaqJ3q04LHzNjI7hs3ufYyU/yNCcXqRr
	Fagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6qpyJmKAB3+rzFMWXpH3omUOqCzRF3mF8yNlfrDlyhY=;
	b=OuWb9jbXWG5RPOLtnHcYPRYaja5EQaf+L+uzCyHqFwq1KYiD2JmbMeKR5r7UCw8i5m
	9UFdO7kqFgbM/9BFtX+ZqXM5461dP3ux8KEd9j0c/GXm2nlCI5iCv9hC2MzPP0WjUvSP
	88X1z1pN6W4o75BQV8pBaw2Xo6FXnmGBrYFGQqpGVLyFpijtjvReAvcTtnPNzkGphgwA
	6Fh52U73wGjO50TA1C024A9nSbuJMgPh6y3m8dH7bBuurZaxr9X8/6M9eNqqk/hecnHf
	PNDtzLh+/MTRMzvzIt5ku95ppZ/roBwLmeJpeNvIXrBtUXVCw4YsPlQoWj3PK9r8K5eu
	yyIQ==
X-Gm-Message-State: ALyK8tJ7K3cTgOMLISC39L/uD/yM1CR+mpglwSeJ73ScKZjnKASZ5yQh7cgCbSh5Ztn8Uw==
X-Received: by 10.98.103.66 with SMTP id b63mr26049796pfc.141.1466958529136;
	Sun, 26 Jun 2016 09:28:49 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	g189sm453890pfc.46.2016.06.26.09.28.47 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 26 Jun 2016 09:28:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 Jun 2016 09:28:44 -0700
Message-Id: <1466958524-18004-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] suricata: update to 3.0.2
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
X-List-Received-Date: Sun, 26 Jun 2016 16:28:53 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/libhtp_0.5.19.bb  | 15 --------
 recipes-security/suricata/libhtp_0.5.20.bb  | 15 ++++++++
 recipes-security/suricata/suricata.inc      |  6 +--
 recipes-security/suricata/suricata_3.0.1.bb | 58 -----------------------------
 recipes-security/suricata/suricata_3.0.2.bb | 58 +++++++++++++++++++++++++++++
 5 files changed, 76 insertions(+), 76 deletions(-)
 delete mode 100644 recipes-security/suricata/libhtp_0.5.19.bb
 create mode 100644 recipes-security/suricata/libhtp_0.5.20.bb
 delete mode 100644 recipes-security/suricata/suricata_3.0.1.bb
 create mode 100644 recipes-security/suricata/suricata_3.0.2.bb

diff --git a/recipes-security/suricata/libhtp_0.5.19.bb b/recipes-security/suricata/libhtp_0.5.19.bb
deleted file mode 100644
index 8305f70..0000000
--- a/recipes-security/suricata/libhtp_0.5.19.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "LibHTP is a security-aware parser for the HTTP protocol and the related bits and pieces."
-
-require suricata.inc
-
-LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
-
-DEPENDS = "zlib"
-
-inherit autotools pkgconfig
-
-CFLAGS += "-D_DEFAULT_SOURCE"
-
-S = "${WORKDIR}/suricata-${VER}/${BPN}"
-
-RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/libhtp_0.5.20.bb b/recipes-security/suricata/libhtp_0.5.20.bb
new file mode 100644
index 0000000..8305f70
--- /dev/null
+++ b/recipes-security/suricata/libhtp_0.5.20.bb
@@ -0,0 +1,15 @@
+SUMMARY = "LibHTP is a security-aware parser for the HTTP protocol and the related bits and pieces."
+
+require suricata.inc
+
+LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
+
+DEPENDS = "zlib"
+
+inherit autotools pkgconfig
+
+CFLAGS += "-D_DEFAULT_SOURCE"
+
+S = "${WORKDIR}/suricata-${VER}/${BPN}"
+
+RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index b46ad3d..9ddb405 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.0.1"
+VER = "3.0.2"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "c5c8e5846b54546257954f3c759d9675"
-SRC_URI[sha256sum] = "74c685f8da51b3f038a7b8185bdbed274aca25daf64ac7ea01eea60636727f26"
+SRC_URI[md5sum] = "ff231c3d7af32cb1c767fded2a13c391"
+SRC_URI[sha256sum] = "264cbdc380717590a9c33d3b3dc92fc488f376873e869bf71601b1d4a9a8e601"
diff --git a/recipes-security/suricata/suricata_3.0.1.bb b/recipes-security/suricata/suricata_3.0.1.bb
deleted file mode 100644
index ead568a..0000000
--- a/recipes-security/suricata/suricata_3.0.1.bb
+++ /dev/null
@@ -1,58 +0,0 @@
-SUMMARY = "The Suricata Engine is an Open Source Next Generation Intrusion Detection and Prevention Engine"
-
-require suricata.inc
-
-LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
-
-SRC_URI += "file://no_libhtp_build.patch \
-            file://volatiles.03_suricata \
-            file://suricata.yaml \
-        "
-
-inherit autotools-brokensep pkgconfig
-
-CFLAGS += "-D_DEFAULT_SOURCE"
-
-CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes "
-
-EXTRA_OECONF += " --disable-debug \
-    --enable-non-bundled-htp \
-    --disable-gccmarch-native \
-    "
-
-PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink nss nspr"
-PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR} --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
-PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
-PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
-PACKAGECONFIG[pcap] = "--with-libpcap-includes=${STAGING_INCDIR} --with-libpcap-libraries=${STAGING_LIBDIR}, ,libpcap ," 
-PACKAGECONFIG[cap-ng] = "--with-libcap_ng-includes=${STAGING_INCDIR} --with-libcap_ng-libraries=${STAGING_LIBDIR}, ,libcap-ng , "
-PACKAGECONFIG[net] = "--with-libnet-includes=${STAGING_INCDIR} --with-libnet-libraries=${STAGING_LIBDIR}, , libnet," 
-PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --with-libnfnetlink-libraries=${STAGING_LIBDIR}, ,libnfnetlink ,"
-
-PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
-PACKAGECONFIG[file] = ",,file, file"
-PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
-PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
-
-export logdir = "${localstatedir}/log"
-
-do_install_append () {
-    install -d ${D}${sysconfdir}/suricata
-    install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
-    install -m 644 classification.config ${D}${sysconfdir}/suricata
-    install -m 644 reference.config ${D}${sysconfdir}/suricata
-    install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
-    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
-}
-
-pkg_postinst_${PN} () {
-if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
-    ${sysconfdir}/init.d/populate-volatile.sh update
-fi
-    ${bindir}/suricata -c ${sysconfdir}/suricata.yaml -i eth0 
-}
-
-FILES_${PN} += "${sysconfdir}/suricata ${logdir}/suricata"
-FILES_${PN}-dev += "/usr/lib/python2.7/site-packages"
-
-RDEPENDS_${PN} += " python"
diff --git a/recipes-security/suricata/suricata_3.0.2.bb b/recipes-security/suricata/suricata_3.0.2.bb
new file mode 100644
index 0000000..ead568a
--- /dev/null
+++ b/recipes-security/suricata/suricata_3.0.2.bb
@@ -0,0 +1,58 @@
+SUMMARY = "The Suricata Engine is an Open Source Next Generation Intrusion Detection and Prevention Engine"
+
+require suricata.inc
+
+LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
+
+SRC_URI += "file://no_libhtp_build.patch \
+            file://volatiles.03_suricata \
+            file://suricata.yaml \
+        "
+
+inherit autotools-brokensep pkgconfig
+
+CFLAGS += "-D_DEFAULT_SOURCE"
+
+CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes "
+
+EXTRA_OECONF += " --disable-debug \
+    --enable-non-bundled-htp \
+    --disable-gccmarch-native \
+    "
+
+PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink nss nspr"
+PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR} --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
+PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
+PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
+PACKAGECONFIG[pcap] = "--with-libpcap-includes=${STAGING_INCDIR} --with-libpcap-libraries=${STAGING_LIBDIR}, ,libpcap ," 
+PACKAGECONFIG[cap-ng] = "--with-libcap_ng-includes=${STAGING_INCDIR} --with-libcap_ng-libraries=${STAGING_LIBDIR}, ,libcap-ng , "
+PACKAGECONFIG[net] = "--with-libnet-includes=${STAGING_INCDIR} --with-libnet-libraries=${STAGING_LIBDIR}, , libnet," 
+PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --with-libnfnetlink-libraries=${STAGING_LIBDIR}, ,libnfnetlink ,"
+
+PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
+PACKAGECONFIG[file] = ",,file, file"
+PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
+PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
+
+export logdir = "${localstatedir}/log"
+
+do_install_append () {
+    install -d ${D}${sysconfdir}/suricata
+    install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
+    install -m 644 classification.config ${D}${sysconfdir}/suricata
+    install -m 644 reference.config ${D}${sysconfdir}/suricata
+    install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
+    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
+}
+
+pkg_postinst_${PN} () {
+if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
+    ${sysconfdir}/init.d/populate-volatile.sh update
+fi
+    ${bindir}/suricata -c ${sysconfdir}/suricata.yaml -i eth0 
+}
+
+FILES_${PN} += "${sysconfdir}/suricata ${logdir}/suricata"
+FILES_${PN}-dev += "/usr/lib/python2.7/site-packages"
+
+RDEPENDS_${PN} += " python"
-- 
2.3.5


