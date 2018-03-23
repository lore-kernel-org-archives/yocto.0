Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CD00E009CF; Fri, 23 Mar 2018 12:10:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A4BE00474
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:10:52 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id l25so13662855qtj.1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=YyB+84iI+PyjCYku4IqZmW4zBn8j+1NsF1dFDBC1cSU=;
	b=XtdWJfWWQrpB+zWFxZ9j2w3cg8omGbVKa70pFZwQJnZ/6/wSTca7QfWB7Tjf2gscxN
	ebf5wPFmcNk/a+pqvPJCPrMB2/GZHn3D4CLZuiPu5toMHCbhbjFv3tQxfwlJZlBdBALA
	HRhTLxjjHl3lNZrm2jqHZmwIBAfF1yXMw95yBj0FutUJNs47B5lwBLZZfGolG3SEv2pG
	F35s+NrlE9LfexdTPh2iXYtWS+17osslLG3c54HfL/l3RHcojqJ/QZnLGGy2N5sYbWaz
	Fn4MLwKYpwnMkhObrATG60SDOP2GjHJzCW5SnIws9k51POlUyiX1+sHwRFQAPC9+9m/S
	Kz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=YyB+84iI+PyjCYku4IqZmW4zBn8j+1NsF1dFDBC1cSU=;
	b=nNH9Yj6WgKL4Wp2FVxBm9vJ16XhtGLls8lQbhNt2xEj5yhnssp2hb6m6BHpHv6Huru
	XK0iT5N9STZ8OMtO1KcEYb1ld1jKFcnSlNgipId39DV+1tjFmHDt92NgzdgHxfr29pI7
	mKhNaMsLW44fqTtkiClTsD5gnTg6zy+Kv7MGAxaxGNkRQmupCciED9Xm5S3rInq2hiuw
	80XWv9sCUvOG19HcMeE2vbwHDYHW9Rv5sPwC57RU0UlVQrEhvlRuXMhAsjKbSOf6ehOs
	Rqk4wHxtlsDsP/lOCzlGeXQQ0ax3ybX6R911mjmtmjE9I8DjXPVXxgL1ka4y3tksoApP
	Ig6A==
X-Gm-Message-State: AElRT7HNIf/5DQ4+k7gcd9bNPgwxrJUd+8zHmC9ifz9kOiwGDB4TxJvs
	Cwhi953YWSmNO9OOC3eXO0TjCLLvv5M=
X-Google-Smtp-Source: AG47ELshMpIteKJCHFvQyI+DyjjOaeLXT5XYgyvjL8adXJkPn0VE5JssEwnl08km2XU0vrpNN07nLA==
X-Received: by 10.200.7.69 with SMTP id k5mr38089085qth.165.1521832251574;
	Fri, 23 Mar 2018 12:10:51 -0700 (PDT)
Received: from jkrishnanjanappa-VPCEB26FG.mvista.com
	([2405:204:53a3:b5d4:c136:9096:3bbb:6090])
	by smtp.gmail.com with ESMTPSA id
	i11sm7134409qtc.30.2018.03.23.12.10.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 23 Mar 2018 12:10:50 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Sat, 24 Mar 2018 00:40:41 +0530
Message-Id: <1521832241-11341-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][rocko][PATCH v2] clamav: Add missing clamav.service file to SRC_URI
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
X-List-Received-Date: Fri, 23 Mar 2018 19:10:54 -0000

This solves the below error when systemd is used as init manager,
-- snip --
ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav value clamav.service does not exist
ERROR: clamav-0.99.2-r0 do_package: Function failed: systemd_populate_packages
-- snip --

Other issue:
*  Ship /lib/systemd/system/clamav-freshclam.service into ${PN}-freshclam
   package, to solve below warning:
-- snip --
[10240] WARNING: QA Issue: clamav: Files/directories were installed but not shipped in any package:
  /lib/systemd/system/clamav-freshclam.service
-- snip --

V2 changes:
* Removed non-existent multilib-alternatives bbclass

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 5dfda8f..a7f69df 100644
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
+inherit autotools-brokensep pkgconfig useradd systemd
 
 UID = "clamav"
 GID = "clamav"
@@ -90,6 +91,9 @@ do_install_append() {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
+        install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
+    fi
 }
 
 pkg_postinst_${PN} () {
@@ -126,7 +130,8 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
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


