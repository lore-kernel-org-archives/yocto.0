Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2681E00C7D; Sat,  4 Jun 2016 16:15:33 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C67E00BE0
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 16:15:30 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id b124so14729910pfb.0
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 16:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=gBUoUBG5XAug74+rmA3NYhOcph/sG4L1vLDDLK2WVRg=;
	b=scuRJteqrndBkVytFSAVNjsafDc13T32IsCQKV288K/ePuByOGiPJTqXo9AiG/DOBa
	ir2IO9CofHKVQ1lxtK77mvdlzKbQZROgnIeUMSNIAWRkPvQqrF5sPc2jmvGsUgtCPWrH
	1COASS+JTeID1haDl/Uw2xbhAa1rh/EhUDaulrScjtGL0XzxUEmF18ZERfqDkZqAugx1
	ZWhxrhxU5LlIVOK6VOwMpl8Ch44OofnLWJRw8X2YD9Kf1W/lLtgBmn7q+KPiefNtVip3
	V7RfB8rZ5bQTr3aFdRsV9fNxeNeGtvxFNrFhgYQgs2IGkMZtKgVlowRIyBGF0aRC5CtL
	ZmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gBUoUBG5XAug74+rmA3NYhOcph/sG4L1vLDDLK2WVRg=;
	b=m2gJjbPiA3VsEINbtBT4JXqKp0fDiPGusbtFGmsJjlkrQ0fN2wgim9QIGAmQt48kR/
	EOx+YUVgsEwmdha5CfU82VrzA8QkNuf8gTvrXuzJWlr8AhFzSFm2sh3UwRFedoELxYtD
	5fs+u9cn4CPLqHNYj9nBpDAKJ37fZ3af30G8DBje2P+x5pQ7nwzyOztrtHxV/BRFmFxc
	1kyVIObU0hUYMFfNr+mPMoGQ1NQTipfvszWQyy8muQ8u2SJuvWCoImLgNVMcFIokZ3Pl
	jcfm9s62e1OROjSHisEYKFwOgaV01GIpBCx+wcDHwkei/L6m4PjR5ITTiCw6dswK3gSz
	jwxg==
X-Gm-Message-State: ALyK8tJ1V58jSAx1Xlr3W7KR8i0EMEiuwsWlFNFlRV9IlnJSvAAIQU63ZPw5PIQm4qJelw==
X-Received: by 10.98.112.9 with SMTP id l9mr15331050pfc.149.1465082129930;
	Sat, 04 Jun 2016 16:15:29 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	dr4sm15084273pac.11.2016.06.04.16.15.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 04 Jun 2016 16:15:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Jun 2016 16:15:23 -0700
Message-Id: <1465082124-28161-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/2] nmap: fix several new QA warnings.
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
X-List-Received-Date: Sat, 04 Jun 2016 23:15:33 -0000

WARNING: nmap-7.12-r0 do_package: QA Issue: nmap: Files/directories were installed but not shipped in any package:
  /usr/lib
  /usr/bin/ndiff
  /usr/bin/nping
  /usr/bin/ncat
  /usr/lib/python2.7
  /usr/lib/python2.7/site-packages
  /usr/lib/python2.7/site-packages/ndiff.pyc
  /usr/lib/python2.7/site-packages/ndiff.py
Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
nmap: 8 installed and not shipped files. [installed-vs-shipped]

remove crazyness and let the system figure out packaging info
remove ndiff.py* as the compiled version is installed in /usr/bin
  and remove the leftover python site-package cruft.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_7.12.bb | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/recipes-security/nmap/nmap_7.12.bb b/recipes-security/nmap/nmap_7.12.bb
index 47cd7b6..dadff3d 100644
--- a/recipes-security/nmap/nmap_7.12.bb
+++ b/recipes-security/nmap/nmap_7.12.bb
@@ -10,10 +10,10 @@ SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 SRC_URI[md5sum] = "0764f4dabe7cccda3c49fc3990b62a8a"
 SRC_URI[sha256sum] = "63df082a87c95a189865d37304357405160fc6333addcf5b84204c95e0539b04"
 
-inherit autotools-brokensep pkgconfig distro_features_check
+inherit autotools-brokensep pkgconfig python-dir distro_features_check
 
-PACKAGECONFIG = "ncat nping ndiff pcap"
-PACKAGECONFIG += " ${@bb.utils.contains("IMAGE_FEATURES", "x11-base", "zenmap", "", d)}"
+PACKAGECONFIG ?= "ncat nping ndiff pcap"
+PACKAGECONFIG += " ${@bb.utils.contains('IMAGE_FEATURES', 'x11-base', 'zenmap', '', d)}"
 
 PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
 PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
@@ -38,19 +38,14 @@ do_configure() {
     oe_runconf
 }
 
+do_install_append () {
+   # remove python dir, its not used or installed
+   rm -fr ${D}/${libdir}
+}
 
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
+PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'zenmap', '${PN}-zenmap', '', d)}"
 
-FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/radialnet/* ${libdir}/python${PYTHON_BASEVERSION}/site-packages/zenmap*", "", d)}"
+FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${PYTHON_SITEPACKAGES_DIR}/radialnet/* ${PYTHON_SITEPACKAGES_DIR}/zenmap*", "", d)}"
 
 RDEPENDS_${PN} = "python"
 RDEPENDS_${PN}-zenmap = "nmap"
-- 
1.9.1


