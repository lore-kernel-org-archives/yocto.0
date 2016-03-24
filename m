Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C441E00C1F; Wed, 23 Mar 2016 18:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F7BE00C15
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 18:35:12 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id g3so41977863ywa.3
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 18:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=WAESXyzJiYaQCdOEugV6xiRZpSgL7AAjV7ygaHk/A3Y=;
	b=OX1bfki9xpjDevr/5dTmL89JK+UhhjYqkS2Kc8kZNzijg69SoQFzRnV9amGXuXT6pl
	TE290/3FBql+UFlugDOWlMCybegdrq0sGMHs4pSPTrugYR8K2G/AJBEDYqM8oTLJUNjb
	Dd4Y9mR6j9lqhpn46gQhlpioM3+fJEN0ipBf0e86zUejnEm/KCExR3dcd/eG/0xyHqcm
	HDQey0x6/OhzNqflkjnBcGdViht+ElIev/wMJv28+SSPUp//dccMdFfEHck46Rb+2EMS
	CnkOsfo1An4AfZb0PFxCsESamYMR0xEjQA1yectuCmUftvml1nRc6k2hkIgIeS22+Ovj
	pnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WAESXyzJiYaQCdOEugV6xiRZpSgL7AAjV7ygaHk/A3Y=;
	b=WVmkEYKY3OJVOn5n4jkUJAAFl1t9pPKXnSjny1Ums4Cr5wKKoCoILIA70GZV0I4PL9
	R1Wh/BZdF97n9QAOmY2D+DZ5I9WvOmRaOKZfRH/P4G2pzLR+TvYW4xMachN++yogwmOq
	7n29sa3XAYvCfroi7PmXCHRRQcvQyDMwz6rncxI4iTaLuQFxW1vHuMivKjJWodl4l8pF
	IlIjxUn0c/s5ZTFJGYOjHmRK50305ZFbgNc6vDapdnzlGPH6sgNrjZ96w8V62EgnRzM1
	6Y7Gx5WNppg6B9urX1KjxIhFvLCvArqbC6+rs6RvK0Ng+hkzBqGUEQt3EHv8XZtOcGxB
	12jQ==
X-Gm-Message-State: AD7BkJJQOaZ55kRx9W5AlihWUmdtcJphwlknFlCmjH4ndD4wn1I7AdEQi/MjbUjMBNQUUg==
X-Received: by 10.37.8.5 with SMTP id 5mr3179198ybi.179.1458783312150;
	Wed, 23 Mar 2016 18:35:12 -0700 (PDT)
Received: from Pahoa2.mvista.com ([64.2.3.194])
	by smtp.gmail.com with ESMTPSA id
	h68sm3156111ywd.42.2016.03.23.18.35.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 23 Mar 2016 18:35:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Mar 2016 18:35:08 -0700
Message-Id: <1458783308-9792-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] nmap: update to 7.11
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
X-List-Received-Date: Thu, 24 Mar 2016 01:35:16 -0000

https://nmap.org/changelog.html

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_7.01.bb | 56 --------------------------------------
 recipes-security/nmap/nmap_7.11.bb | 56 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 56 deletions(-)
 delete mode 100644 recipes-security/nmap/nmap_7.01.bb
 create mode 100644 recipes-security/nmap/nmap_7.11.bb

diff --git a/recipes-security/nmap/nmap_7.01.bb b/recipes-security/nmap/nmap_7.01.bb
deleted file mode 100644
index 32996dd..0000000
--- a/recipes-security/nmap/nmap_7.01.bb
+++ /dev/null
@@ -1,56 +0,0 @@
-SUMMARY = "network auditing tool"
-DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
-SECTION = "security"
-LICENSE = "GPL-2.0"
-
-LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a2127f7803de1261e"
-
-SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
-
-SRC_URI[md5sum] = "7fa4edc592184c7addc14f5acb3fe6f7"
-SRC_URI[sha256sum] = "cf1fcd2643ba2ef52f47acb3c18e52fa12a4ae4b722804da0e54560704627705"
-
-inherit autotools-brokensep pkgconfig distro_features_check
-
-PACKAGECONFIG = "ncat nping ndiff pcap"
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
-PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
-
-#Add gui
-PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
-
-EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
-
-do_configure() {
-    # strip hard coded python2#
-    sed -i -e 's=python2\.*=python=g'  ${S}/configure.ac
-    sed -i -e 's=python2\.*=python=g'  ${S}/configure
-    autoconf
-    oe_runconf
-}
-
-
-PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
-
-FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/* ${bindir}/uninstall_ndiff"
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
-RDEPENDS_${PN} = "python"
-RDEPENDS_${PN}-zenmap = "nmap"
diff --git a/recipes-security/nmap/nmap_7.11.bb b/recipes-security/nmap/nmap_7.11.bb
new file mode 100644
index 0000000..27efe7b
--- /dev/null
+++ b/recipes-security/nmap/nmap_7.11.bb
@@ -0,0 +1,56 @@
+SUMMARY = "network auditing tool"
+DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
+SECTION = "security"
+LICENSE = "GPL-2.0"
+
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a2127f7803de1261e"
+
+SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
+
+SRC_URI[md5sum] = "0dc7fcde978b4891ba9fd91d16f19fce"
+SRC_URI[sha256sum] = "13fa971555dec00e495a5b72c1f9efa1363b8e6c7388a2f05117cb0778c0954a"
+
+inherit autotools-brokensep pkgconfig distro_features_check
+
+PACKAGECONFIG = "ncat nping ndiff pcap"
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
+PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
+
+#Add gui
+PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
+
+EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
+
+do_configure() {
+    # strip hard coded python2#
+    sed -i -e 's=python2\.*=python=g'  ${S}/configure.ac
+    sed -i -e 's=python2\.*=python=g'  ${S}/configure
+    autoconf
+    oe_runconf
+}
+
+
+PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
+
+FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/* ${bindir}/uninstall_ndiff"
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
2.3.5


