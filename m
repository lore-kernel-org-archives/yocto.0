Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9920BE008E5; Wed, 14 Jan 2015 07:12:53 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB71E008EC
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:51 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id kx10so11074627pab.2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=oZfw68w6jRkzpUuv4uOLZ6k/jzrbOjc3vWQOowIikYg=;
	b=FSdHFtTuMqE2j0u/sB2Oswwe7qhHDrezwrGUF6qgH/cQmrdi585H7Zb6euWnol9c35
	ObnhXOaztix51cgo5+FEESNXcMgrp3+kmlNGtNu+b9L69fY+AS/23/WyEJniv02eJeNt
	rW5+nKzlHM0Fq2WdgbtCgmbxIaTKDEZURf7VjRdTUDuMoy9eGnq9JKB65axFbkNLcrHs
	tmG2Ixix31UCtmBcvjYf0/iLTnNrQoQ5W5R3QKD3PgNnryHtiiLLSUCgeBsr4IByEt4v
	S0kGiQMHsPwFrwNT3qpAP9Z90+/qhUOUDQIc8MbDFqC7IHSLftjMp3cDw6M3Lrm+6GzV
	o0PA==
X-Received: by 10.70.125.232 with SMTP id mt8mr6506442pdb.80.1421248371764;
	Wed, 14 Jan 2015 07:12:51 -0800 (PST)
Received: from Pahoa2.mvista.com (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189]) by mx.google.com with ESMTPSA id
	re13sm2094690pdb.28.2015.01.14.07.12.49 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Jan 2015 07:12:50 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Jan 2015 07:12:38 -0800
Message-Id: <1421248358-14391-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
References: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/5] nmap: fix QA issue
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
X-List-Received-Date: Wed, 14 Jan 2015 15:12:53 -0000

WARNING: QA Issue: nmap requires /usr/bin/python, but no providers in its RDEPENDS [file-rdeps]

move nmap.inc back into recipe

colapse  ${BPN}-${PV} to ${BP}

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap.inc     | 46 ---------------------------------
 recipes-security/nmap/nmap_6.47.bb | 52 +++++++++++++++++++++++++++++++++++---
 2 files changed, 48 insertions(+), 50 deletions(-)
 delete mode 100644 recipes-security/nmap/nmap.inc

diff --git a/recipes-security/nmap/nmap.inc b/recipes-security/nmap/nmap.inc
deleted file mode 100644
index 79fe7d4..0000000
--- a/recipes-security/nmap/nmap.inc
+++ /dev/null
@@ -1,46 +0,0 @@
-SUMMARY = "network auditing tool"
-DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
-SECTION = "security"
-LICENSE = "GPL-2.0"
-
-inherit autotools-brokensep pkgconfig distro_features_check
-
-PACKAGECONFIG = "ncat nping ndiff pcap lua"
-PACKAGECONFIG += " ${@bb.utils.contains("IMAGE_FEATURES", "x11-base", "zenmap", "", d)}"
-
-PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
-PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
-
-#disable/enable packages
-PACKAGECONFIG[nping] = ",--without-nping,"
-PACKAGECONFIG[ncat] = ",--without-ncat,"
-PACKAGECONFIG[ndiff] = ",--without-ndiff,"
-
-#use nmap's Included or system's libs
-PACKAGECONFIG[lua] = "--with-liblua=${STAGING_LIBDIR}/.., --without-liblua, lua"
-PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
-
-#Add gui
-PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
-
-EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion"
-
-do_configure() {
-    autoconf
-    oe_runconf
-}
-
-PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
-
-FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/*"
-
-# append packages if enabled
-FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${target_datadir}/ncat", "", d)}"
-FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "nping", "${bindir}/nping", "", d)}"
-FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff.py*", "", d)}"
-
-PACKAGES += "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${PN}-zenmap", "", d)}"
-
-FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/radialnet/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/zenmap*", "", d)}"
-
-RDEPENDS_${PN}-zenmap = "nmap"
diff --git a/recipes-security/nmap/nmap_6.47.bb b/recipes-security/nmap/nmap_6.47.bb
index bcaee0c..2c43bf7 100644
--- a/recipes-security/nmap/nmap_6.47.bb
+++ b/recipes-security/nmap/nmap_6.47.bb
@@ -1,10 +1,54 @@
-
-include nmap.inc
+SUMMARY = "network auditing tool"
+DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
+SECTION = "security"
+LICENSE = "GPL-2.0"
 
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
-
+SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 
 SRC_URI[md5sum] = "edfe81f6763223c0a29bfa15a8526e2a"
 SRC_URI[sha256sum] = "8fa11e9e203ce2d81a207db5ca4f110a525f6c01c1dd0018325a7112a51aa591"
+
+inherit autotools-brokensep pkgconfig distro_features_check
+
+PACKAGECONFIG = "ncat nping ndiff pcap lua"
+PACKAGECONFIG += " ${@bb.utils.contains("IMAGE_FEATURES", "x11-base", "zenmap", "", d)}"
+
+PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
+PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
+
+#disable/enable packages
+PACKAGECONFIG[nping] = ",--without-nping,"
+PACKAGECONFIG[ncat] = ",--without-ncat,"
+PACKAGECONFIG[ndiff] = ",--without-ndiff,"
+
+#use nmap's Included or system's libs
+PACKAGECONFIG[lua] = "--with-liblua=${STAGING_LIBDIR}/.., --without-liblua, lua"
+PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
+
+#Add gui
+PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
+
+EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion"
+
+do_configure() {
+    autoconf
+    oe_runconf
+}
+
+PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
+
+FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/*"
+
+# append packages if enabled
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${target_datadir}/ncat", "", d)}"
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "nping", "${bindir}/nping", "", d)}"
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff.py*", "", d)}"
+
+PACKAGES += "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${PN}-zenmap", "", d)}"
+
+FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/radialnet/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/zenmap*", "", d)}"
+
+RDEPENDS_${PN} = "python"
+RDEPENDS_${PN}-zenmap = "nmap"
-- 
1.9.1


