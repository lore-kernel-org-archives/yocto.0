Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83AFCE0091A; Fri, 23 Mar 2018 11:22:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE54E0086B
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 11:22:35 -0700 (PDT)
Received: by mail-pl0-f46.google.com with SMTP id f23-v6so7925150plr.10
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 11:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=aoOi1HNHTq9B87JCz4IJUTQCHhacVJczp1Ly5uwIy/k=;
	b=MAZ8v1Nwz+HWCiiol8CbufVDH4xW6udslOflT3L08a6Ji+YfcD2fRONrtt9rVEDllF
	obY7/7ftJ48AOZBususZ80yJi6Nsew/AvrDbWZrxm7F70z93vVAYprXczLekWWdP7aYw
	sDVKHlYs9agrV32i+1KatCqJAvHwoT18N8n7tGZvthMg4K6hYvzI/plSjYvL64GqbqqF
	dJ1SH+hOJGVsDzil65tepQLim0qdaXVHTvqdr7JO+uAzdWyqSN8qKeiJkW0rHx3zkmut
	KflXPVP3Zk93gd8UzPel/38tyx93mHQfdVqj+29amkQhGKZ/Sw0tV9p3/LQ9XiItsUX6
	Z9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aoOi1HNHTq9B87JCz4IJUTQCHhacVJczp1Ly5uwIy/k=;
	b=pyFXhkMLEOE4vekLNvzE1GAxB4N+tkSBxU76pO00E7A1S0uctiZIp3wc4Qy3qFyiGz
	wGAfAwZTkP7Jl96GhpT28ZEh54W3CovKdsCFAMLPWfa1Ka7zaQjvT0OGeR0ZGOmL+GPN
	ywUMIx3dc31knsv2yTT8pswvaVFK76P46Vtrm+ggn7qb+VNJB2RkpWCeVhe83Q3/LFFl
	PGcFkbyiw3Aga6iZJorLjdzWmwGtLuGaXdCH1PjV7q+DlfAGTmkEIokjedU3lxo703k/
	VkE1TPhlbBHjCpm94EBvX9EPxlM971Gd0ZM9n2w+zZ6JrsmwVwAY3tsdlKh7MviidiiH
	9CrQ==
X-Gm-Message-State: AElRT7GPPxI8/ZcWK8dstj1UVfiQb/0VlWS//k1JrvPYczdfSjJJmYWT
	RATH5c0hNdF0h2vOjRyWUhev1EJ3p1Y=
X-Google-Smtp-Source: AG47ELsRDljsjpp0WGdUXdRp+CSqqdAh7A0/HGkXUcVRFr7GwRVzCbIspIg383nqffnLGlTNwvNGdw==
X-Received: by 2002:a17:902:7c98:: with SMTP id
	y24-v6mr30624784pll.60.1521829355050; 
	Fri, 23 Mar 2018 11:22:35 -0700 (PDT)
Received: from jkrishnanjanappa-VPCEB26FG.mvista.com
	([2405:204:53a3:b5d4:c136:9096:3bbb:6090])
	by smtp.gmail.com with ESMTPSA id
	t128sm17345048pgb.50.2018.03.23.11.22.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 23 Mar 2018 11:22:34 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Mar 2018 23:52:26 +0530
Message-Id: <1521829346-7075-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: Add missing clamav.service file to SRC_URI
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
X-List-Received-Date: Fri, 23 Mar 2018 18:22:36 -0000

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

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 recipes-security/clamav/clamav_0.99.3.bb | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.3.bb b/recipes-security/clamav/clamav_0.99.3.bb
index 2b07d69..dc26277 100644
--- a/recipes-security/clamav/clamav_0.99.3.bb
+++ b/recipes-security/clamav/clamav_0.99.3.bb
@@ -14,6 +14,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
+    file://${BPN}.service \
     "
 
 S = "${WORKDIR}/git"
@@ -23,7 +24,7 @@ SO_VER = "7.1.1"
 
 EXTRANATIVEPATH += "chrpath-native"
 
-inherit autotools-brokensep pkgconfig useradd systemd 
+inherit autotools-brokensep pkgconfig useradd systemd
 
 UID = "clamav"
 GID = "clamav"
@@ -87,6 +88,9 @@ do_install_append() {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
+        install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
+    fi
 }
 
 pkg_postinst_${PN} () {
@@ -123,7 +127,8 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
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


