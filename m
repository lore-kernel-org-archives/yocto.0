Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 267CBC19F28
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 22:29:37 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web12.7964.1659220174902189791
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 15:29:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E09IfSql;
 spf=pass (domain: gmail.com, ip: 209.85.214.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id y15so7421566plp.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 15:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XwKjxGUksWKSOruCJB0UUtGMIzamDwQd1T0KkP1QRr4=;
        b=E09IfSqlUaxp16KliavaSP3PtKyx62TN2B/GFcvVLPErkO9/Qjge5doU1UP5lJtHZy
         I1ITIwZpTMqhkasFpXZpSNVk0CpUZqpYbDHGs6Csi41/Gx2StFVfIeDIFsLyXOKN3U1M
         szjGC6Qyatm+hoY8ks2rnzTk2O+rq8TYZ+hSI5FjZZDxj196VRKNRDb3LAiXdbN9zzh0
         MBdgoxCY0pkV1C8KY6G8Yi0MSat9WDxqcAewaS8D+E9b3pO37xc3M1sgyl7EKlLNgIO5
         aXJcFKVvNKhnpGGAaMrJI5NPBbpFQ/aM03b+tfSHNc6CQJBk3NjZ0ZKp9sc5R4fQGPZz
         D8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XwKjxGUksWKSOruCJB0UUtGMIzamDwQd1T0KkP1QRr4=;
        b=Okyyyr7k47pZYUdSIvKVOU9GfbwHclhi3UMincrmBzQIzpTZ9AHNZ6ilsKTuICXAz+
         KeuoZftL18cQc3QEfIEenBR4ZR2aP47HZ6D+cbB1UcA/AbopggvPwnlVqSSmJrtswI/M
         GvZVJrj/eRUFaker6GjGUqTUFqLhh45AfnxlgGJ+RWwbxRokyTDCCxvqVIWfKr6C66sE
         FUF3PRLbpcJcYKpBzoBDZooI14ZwKejJ5dejz8KYcvNm675mO7aUwflr9O7sCrHkUEzp
         CVO7HSzoECfA4LB1MztrJhh7ydmTlV6eNLW4zQcIuYrXppRab1u4n5iO8aAlf9x++4n0
         lx4A==
X-Gm-Message-State: ACgBeo2y8w0i1P1jjLAfyRKcTDxwtRZ0DsSfYesRMCABJoCkCmv5QpFk
	K5aO52zNAche01g2yo9W7Gnejk36UL4=
X-Google-Smtp-Source: 
 AA6agR4w+fGiauvmzCfHMt0mo88sjSbpGEDpTggtFDem3H1OmSrIlPITGSDMa1JbetfdJsa5nK8fWA==
X-Received: by 2002:a17:90a:ac0e:b0:1f3:2507:b532 with SMTP id
 o14-20020a17090aac0e00b001f32507b532mr11490641pjq.48.1659220174880;
        Sat, 30 Jul 2022 15:29:34 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 m17-20020a170902db1100b0016ec8286733sm2659891plx.243.2022.07.30.15.29.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 15:29:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] clamav: update to  0.104.4
Date: Sat, 30 Jul 2022 15:27:31 -0700
Message-Id: <20220730222731.1208790-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220730222731.1208790-1-akuster808@gmail.com>
References: <20220730222731.1208790-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 22:29:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57702

drop accepted patch fix_systemd_socket.patch

allow clamav-libclamav to have a symlink

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{clamav_0.104.0.bb => clamav_0.104.4.bb}  | 11 ++++----
 .../clamav/files/fix_systemd_socket.patch     | 25 -------------------
 2 files changed, 6 insertions(+), 30 deletions(-)
 rename recipes-scanners/clamav/{clamav_0.104.0.bb => clamav_0.104.4.bb} (96%)
 delete mode 100644 recipes-scanners/clamav/files/fix_systemd_socket.patch

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.4.bb
similarity index 96%
rename from recipes-scanners/clamav/clamav_0.104.0.bb
rename to recipes-scanners/clamav/clamav_0.104.4.bb
index 18e8329..68a7d1f 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.4.bb
@@ -10,8 +10,8 @@ COMPATIBLE_HOST:libc-musl:class-target = "null"
 
 LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
-# July 27th
-SRCREV = "c389dfa4c3af92b006ada4f7595bbc3e6df3f356"
+# July 30th, 2022
+SRCREV = "563ba93052f3b7b46fb8725a65ee6299a9c332cf"
 
 SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.104;protocol=https \
     file://clamd.conf \
@@ -20,7 +20,6 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.104;protocol=http
     file://tmpfiles.clamav \
     file://headers_fixup.patch \
     file://oe_cmake_fixup.patch \
-    file://fix_systemd_socket.patch \
 "
 S = "${WORKDIR}/git"
 
@@ -69,7 +68,6 @@ do_install:append () {
     fi
 
     rm ${D}/${libdir}/libfreshclam.so
-    rm ${D}/${libdir}/libmspack.so
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
         install -d ${D}${sysconfdir}/tmpfiles.d
@@ -125,7 +123,8 @@ FILES:${PN}-freshclam = "${bindir}/freshclam \
 FILES:${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
                     ${libdir}/pkgconfig/*.pc \
                     ${mandir}/man1/clamav-config.* \
-                    ${includedir}/*.h ${docdir}/libclamav* "
+                    ${includedir}/*.h ${docdir}/libclamav* \
+                    ${libdir}/libmspack.so"
 
 FILES:${PN}-staticdev = "${libdir}/*.a"
 
@@ -150,6 +149,8 @@ SYSTEMD_PACKAGES  = "${PN}-daemon ${PN}-freshclam"
 SYSTEMD_SERVICE:${PN}-daemon = "clamav-daemon.service"
 SYSTEMD_SERVICE:${PN}-freshclam = "clamav-freshclam.service"
 
+INSANE_SKIP:${PN}-libclamav  += "dev-so"
+
 RDEPENDS:${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-libclamav"
 RRECOMMENDS:${PN} = "clamav-freshclam"
 RDEPENDS:${PN}-freshclam = "clamav"
diff --git a/recipes-scanners/clamav/files/fix_systemd_socket.patch b/recipes-scanners/clamav/files/fix_systemd_socket.patch
deleted file mode 100644
index 3347770..0000000
--- a/recipes-scanners/clamav/files/fix_systemd_socket.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-clamd not installing clamav-daemon.socket
-
-Fixes:
-__main__.SystemdUnitNotFoundError: (PosixPath('../security-build-image/1.0-r0/rootfs'), 'clamav-daemon.socket')
-%post(clamav-daemon-0.104.0-r0.core2_64): waitpid(3587571) rc 3587571 status 100
-warning: %post(clamav-daemon-0.104.0-r0.core2_64) scriptlet failed, exit status 1
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/clamd/CMakeLists.txt
-===================================================================
---- git.orig/clamd/CMakeLists.txt
-+++ git/clamd/CMakeLists.txt
-@@ -60,4 +60,10 @@ if(SYSTEMD_FOUND)
-     install(
-         FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket
-         DESTINATION ${SYSTEMD_UNIT_DIR})
-+    configure_file(
-+        ${CMAKE_CURRENT_SOURCE_DIR}/clamav-daemon.socket.in
-+        ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket @ONLY)
-+    install(
-+        FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket
-+        DESTINATION ${SYSTEMD_UNIT_DIR})
- endif()
-- 
2.25.1


