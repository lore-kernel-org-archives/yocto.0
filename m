Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C5E1E00807; Tue, 19 Aug 2014 20:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BC7E007FE
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 20:50:06 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fa1so11561841pad.27
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 20:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=wJGVD6gpFO9W4je9nMAAc2doIa9BgUtY6wAKnXnFasM=;
	b=MqPNCrXL4htn66dKi2AmZMFQaAocnsgL69PIWalM1eaSWD71QK8SBCp/upq6jttewW
	nSt8tfeq6vsmouxOVFRMzF2RNYMWexufGKEArxirwUvB4/prIhrI1OOiJLpyRGaqiPCl
	e1Qu2D1/kECBEYiEoVZQ+N5cejjOcZ7k9sknZKvVMty2RrMZlyPRuoarTblzshxwbXWg
	65OukP3Go6l3Z5ty+ng/OYQBwdd8ZS68eMkkwH9rEjfDQojtLq9oJobegS7tJfC2d2g5
	hSBGEJf8rLI1L3j4WAgFNtK+XIMNAl4ekNxTnwGUCKvXI6uDyyv72J6j9eBQDswJP+Hf
	X5ig==
X-Received: by 10.66.161.41 with SMTP id xp9mr33733603pab.120.1408506605382;
	Tue, 19 Aug 2014 20:50:05 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id y4sm20838698pbt.60.2014.08.19.20.50.03
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 19 Aug 2014 20:50:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Aug 2014 20:49:55 -0700
Message-Id: <1408506595-3853-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: use pkgconfig and reorg
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
X-List-Received-Date: Wed, 20 Aug 2014 03:50:12 -0000

Added pkgconfig support
Since most binaries provided by nmap can be excluded via configure
  manage via pkgconfig
Aligned python packages with binaries so nmap-python is no longer needed

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_6.46.bb | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/recipes-security/nmap/nmap_6.46.bb b/recipes-security/nmap/nmap_6.46.bb
index 52acf96..6fe3c6b 100644
--- a/recipes-security/nmap/nmap_6.46.bb
+++ b/recipes-security/nmap/nmap_6.46.bb
@@ -3,34 +3,48 @@ DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utili
 SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-FILES_${PN} += "${target_datadir}/ncat"
 
 SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
 
 SRC_URI[md5sum] = "5a36ad3a63d5b7ea5514f745a397436a"
 SRC_URI[sha256sum] = "3f89d9053c69507fe9533c40188a6561d49607a37b1db6380aed9039d4883137"
 
-inherit autotools-brokensep
+inherit autotools-brokensep pkgconfig
 
-DEPENDS = "libpcap"
+PACKAGECONFIG ??= "ncat nping ndiff pcap"
 
-EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pcap=linux --without-openssl"
+PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap"
+PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
+
+#disable/enable packages
+PACKAGECONFIG[nping] = ",--without-nping,"
+PACKAGECONFIG[ncat] = ",--without-ncat,"
+PACKAGECONFIG[ndiff] = ",--without-ndiff,"
+
+#use nmap's Included or system's libs
+PACKAGECONFIG[lua] = "--with-liblua=${STAGING_LIBDIR}/.., --with-liblua=included, lua"
+PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
+
+EXTRA_OECONF = "--without-zenmap"
 
 do_configure() {
     autoconf
     oe_runconf
 }
 
+PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
+
+FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/*"
+
+# append packages if enabled
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${target_datadir}/ncat", "", d)}"
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "nping", "${bindir}/nping", "", d)}"
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff*", "", d)}"
+
 # should add a conditional for "--without-zenmap" test. 
 # zenmap builds if the below are uncommented. Not tested
 #PACKAGES =+ "${PN}-zenmap"
 #FILES_${PN}-zenmap = "/usr/share/zenmap/*"
 
-#  should add a conditional based for "--without-ndiff"
-PACKAGES =+ "${PN}-python"
-DESCRIPTION_${PN}-python = \
-"The ${PN}-python package includes the ndiff utility. \
-Ndiff is a tool to aid in the comparison of Nmap scans."
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 
 
-- 
1.9.1


