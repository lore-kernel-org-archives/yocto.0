Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F689E00EA8; Sun, 26 Jun 2016 11:45:07 -0700 (PDT)
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
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A212FE00EA4
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 11:45:03 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ts6so13518940pac.0
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 11:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=WhY3l8HpdjTjrIH6qYdI2HjPkGcMI+xlZyxJpiyn0FU=;
	b=Y7guZnb1Ks9IoifYuhI4vLp/Ip+NL4KQdkU7JO3MT6NOgAd6mqEVfZwtNuPX5uV/lA
	AooudWjdO+nTQCqLH9I+wDsg/4uxNsROcc+2dNjOJCb6BsJ/vglhVvf/R5tSa0HCJgVO
	0iKganuJfeH24JXyZz8+urkdKKz58rJuJu7Ytvc0G1tAk3gKlSEgN7b0IWQMm9kEQ2iw
	XPEcFQ6QZB/DVEvxCMrrJ/lnXcSnI6BO3er85v98KkjJUR53rM+U42ATkkDMKuTRuv+D
	zRXWNUvWmpVlA7qDAfawD6VLbxkctASa0MAzw/XeHrSdUmOpaOo8Fv5xxCSg1DuG3Zrh
	AhGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WhY3l8HpdjTjrIH6qYdI2HjPkGcMI+xlZyxJpiyn0FU=;
	b=EZmReiGLZuqGWW6oYa95PGf4WEW6EW35L+ZxQ75VZHuIj4BeVJTzElZDJYIy3hJMri
	DPoSbfHYdtT4LHWeCXw9Fy/hs2fXw55bH4mOa/bCcyBDSafPzl8MBg7T6Z85sW/haxJb
	9rIFl5x22mCBFDdT5LEPVT4VnRAhNk6Td6aZN1F0IntgyYoEm0g9lrxe02sG3iDslALT
	U+j0Eno/DZj6aKZNV4UgvY5YqAHoNUhYsRE05Shj5Cso+s1d6nL+BtmZQstCD2SD029T
	NxvlG5mB13jIyqgr45uFo9NOEjLccHIgHRAJ1q/8qrwkLgqPR6wL0sUuB0sUr9N/3K6v
	1inA==
X-Gm-Message-State: ALyK8tL6EdFAXqfrHFKuaxmrQgYkzFWVIDUNONo7GHtvFntx50QWmtKlmaHB6o69Y0VdIg==
X-Received: by 10.67.7.98 with SMTP id db2mr39366pad.156.1466966702656;
	Sun, 26 Jun 2016 11:45:02 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by smtp.gmail.com with ESMTPSA id 6sm1403378pfs.29.2016.06.26.11.45.00
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 26 Jun 2016 11:45:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 Jun 2016 11:44:57 -0700
Message-Id: <1466966697-20575-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] suricata: package update to 3.1.0
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
X-List-Received-Date: Sun, 26 Jun 2016 18:45:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata.inc      |  6 +--
 recipes-security/suricata/suricata_3.0.2.bb | 58 -----------------------------
 recipes-security/suricata/suricata_3.1.bb   | 58 +++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+), 61 deletions(-)
 delete mode 100644 recipes-security/suricata/suricata_3.0.2.bb
 create mode 100644 recipes-security/suricata/suricata_3.1.bb

diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 9ddb405..178ad25 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.0.2"
+VER = "3.1"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "ff231c3d7af32cb1c767fded2a13c391"
-SRC_URI[sha256sum] = "264cbdc380717590a9c33d3b3dc92fc488f376873e869bf71601b1d4a9a8e601"
+SRC_URI[md5sum] = "5473b078c6c13552fa241850518d30ed"
+SRC_URI[sha256sum] = "a05aa534166495a4d9ea6104a936bc8edb49376aeb3ba0b1b2a4d9687d016669"
diff --git a/recipes-security/suricata/suricata_3.0.2.bb b/recipes-security/suricata/suricata_3.0.2.bb
deleted file mode 100644
index ead568a..0000000
--- a/recipes-security/suricata/suricata_3.0.2.bb
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
diff --git a/recipes-security/suricata/suricata_3.1.bb b/recipes-security/suricata/suricata_3.1.bb
new file mode 100644
index 0000000..ead568a
--- /dev/null
+++ b/recipes-security/suricata/suricata_3.1.bb
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


