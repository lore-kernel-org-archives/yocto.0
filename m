Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1B4EE00E43; Mon, 19 Mar 2018 23:50:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [111.93.218.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91523E00E40
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 23:50:50 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id z10so284206pfh.13
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 23:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=bMXHfLyev1J4Uvx7oeVUE/c6EnhvCNvTusOytx7H/fI=;
	b=BNGuwIE6h/KPmPzlko8WshAAYi7lskOZ8doy0qZEKvO85v08qXbPMlggdOCOXFGl+D
	1K0oRTiY0Y7VPP+oBeRb60D8/uHQBr4bJefmAKIs2ZeIITbaFtDEpDwD41v+0MlMl6GS
	+vAaDMXW1WY0TFIxXerg8lAq1k0m7vYRuK3qWsiLadLWeKoujccnBnZsJrMP2C5VZ0Vb
	MF8WwQ5SUeX3iBuuITitayVl8Avo+y5oOPfZmPilBi6rV/5khnxAGXRpD+A2L0ZWWNLy
	c8qrsPogncGEbDWxPR4NUKro7N/PCJtSrTQV8Rje5aW4krknoQ4OsQiQul1I08r6BTHT
	10MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bMXHfLyev1J4Uvx7oeVUE/c6EnhvCNvTusOytx7H/fI=;
	b=bOxI2RpQHDvPUrFBqzgpnnIpDgi7nihrEM2runEgFPQFGyWfHBCsBi02ngTNahJo1s
	bm0r/8ny+VfDJzWVY1D9cBR1O1iMxjNXFrtwf9huCxRx9YWwYG11WXf/tUTqoHOGNseU
	J+CrMEh5HF4iSq7JNPK0yGlFgPOmDtKz2ZR6kMMEbu6J4MqXSoJQbMIXVhkxoF7y/XOK
	FfChFz1bkcDMZgwnZZnWzVFciGL1Z274jS5xXnZ4IHjyhTnkxy9uiBtxbn+FNPygjRvO
	+CmjvWXFORHbdvqOOaPUdUvwCstJD9DeLGRRgErbwh1Eq/oLU2rId7qc5ez3g1IXojnA
	6AUg==
X-Gm-Message-State: AElRT7GqOClcHRxUoS0CrS/PXgU9kJEPugN4PdpvDAXOs1DKMe8qJzH5
	fwOCNGE3I/cSgV9iwadjyltOy9c5
X-Google-Smtp-Source: AG47ELtl7Y7R6uTw84vH6dX2CWjuY2ixIgJe5KsAMNqFmAmxssA8IK7L428IBFJXrxckz+Vr8GOKuA==
X-Received: by 10.99.149.68 with SMTP id t4mr11249346pgn.144.1521528649610;
	Mon, 19 Mar 2018 23:50:49 -0700 (PDT)
Received: from jkrishnanjanappa-desktop.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	u10sm1671330pfh.57.2018.03.19.23.50.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 19 Mar 2018 23:50:48 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Mar 2018 12:20:44 +0530
Message-Id: <1521528644-4341-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][rocko][PATCH] clamav: Add missing clamav.service file to SRC_URI
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
X-List-Received-Date: Tue, 20 Mar 2018 06:50:51 -0000

This solves the below error when systemd is used as init manager,
-- snip --
ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav value clamav.service does not exist
ERROR: clamav-0.99.2-r0 do_package: Function failed: systemd_populate_packages
-- snip --

Other issues:
1. Ship /lib/systemd/system/clamav-freshclam.service into ${PN}-freshclam
   package, to solve below warning:
-- snip --
[10240] WARNING: QA Issue: clamav: Files/directories were installed but not shipped in any package:
  /lib/systemd/system/clamav-freshclam.service
-- snip --

2. Solve rpm conflict error in do_populate_sdk, when clamav and mlib-clamav
   are specified using IMAGE_INSTALL.
-- snip --
do_populate_sdk fails with below error:
  file /usr/bin/clamav-config conflicts between attempted installs of lib32-clamav-dev-0.99.2-r0.i586 and clamav-dev-0.99.2-r0.corei7_64
-- snip --

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 5dfda8f..d7aa6d0 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -14,6 +14,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=${PV} \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
+    file://${BPN}.service \
     "
 
 SRC_URI[md5sum] = "61b51a04619aeafd965892a53f86d192"
@@ -26,7 +27,7 @@ SO_VER = "7.1.1"
 
 EXTRANATIVEPATH += "chrpath-native"
 
-inherit autotools-brokensep pkgconfig useradd systemd 
+inherit autotools-brokensep pkgconfig useradd systemd multilib-alternatives
 
 UID = "clamav"
 GID = "clamav"
@@ -90,8 +91,13 @@ do_install_append() {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
+	install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
+    fi
 }
 
+MULTILIB_ALTERNATIVES_${PN}-dev = "${bindir}/clamav-config"
+
 pkg_postinst_${PN} () {
     if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
         ${sysconfdir}/init.d/populate-volatile.sh update
@@ -126,7 +132,8 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
                         ${localstatedir}/lib/clamav \
                         ${docdir}/${PN}-freshclam ${mandir}/man1/freshclam.* \
-                        ${mandir}/man5/freshclam.conf.*"
+                        ${mandir}/man5/freshclam.conf.* \
+                        ${systemd_unitdir}/system/clamav-freshclam.service"
 
 FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
                     ${libdir}/pkgconfig/*.pc \
-- 
2.7.4


