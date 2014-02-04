Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44DADE003D2
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 10:44:18 -0800 (PST)
Received: by mail-pd0-f174.google.com with SMTP id z10so8532675pdj.19
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 10:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=PgPk6Y7m+OEmEXdHCDjGKhtK6ALyMh/bClgwUFFAjeg=;
	b=EqLYjnN5HAlz6CQNq8fc8jQvsk4S+eWDQBTxk4DDZRKqKdLQKEeLfBQzkZbdhjE+Yp
	oRm1fbnpM6uZOhPWcf4IoT7u7hIw1jUp5/N/phoA5w28SneehTqPxTjZmG2/Vb3EZvfG
	hfpxWRL1NNxAvfyyjkqqk6Ajwe7pDxOIAkisw2ikRW8dHPoFIdHYp6liRZ9tvudtIJxf
	FgIWSp1bSS2Cy4hx2MGvMoIk3/t334DQba4LaQdmxH40ASyOI725gT2O1E+dQfOJuqad
	7/PKuJpUOEe6FrIwLRS4huMGP+Qa3VszIs/SCRumkIpUhISq21sRfVw5vwlw0/VmTNNm
	7t9w==
X-Received: by 10.69.26.228 with SMTP id jb4mr45037436pbd.83.1391539457101;
	Tue, 04 Feb 2014 10:44:17 -0800 (PST)
Received: from localhost.localdomain
	(99-57-140-30.lightspeed.sntcca.sbcglobal.net. [99.57.140.30])
	by mx.google.com with ESMTPSA id vf7sm68509238pbc.5.2014.02.04.10.44.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 04 Feb 2014 10:44:16 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: ajlennon@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  4 Feb 2014 10:44:57 -0800
Message-Id: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [PATCH 1/2] mono-xsp: Fix parse warnings
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
X-List-Received-Date: Tue, 04 Feb 2014 18:44:24 -0000

WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
${base_libdir}/*.la) replaces original key FILES_mono-xsp-dev (
/usr/lib/pkgconfig/xsp.pc       /usr/lib/pkgconfig/xsp-2.pc     ).

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-mono/mono-xsp/mono-xsp_1.2.5.bb | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb b/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
index b27e74e..648477a 100644
--- a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
+++ b/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
@@ -7,7 +7,6 @@ SECTION = "devel/mono"
 #  - scripts in /usr/bin contain the wrong paths
 #
 
-
 PR = "r5"
 
 DEPENDS = "mono"
@@ -21,16 +20,14 @@ SRC_URI = "http://go-mono.com/sources/xsp/xsp-${PV}.tar.bz2"
 
 S = "${WORKDIR}/xsp-${PV}"
 
-PACKAGES = "${PN}-dbg \
+PACKAGES += "\
 	libmono-webserver1.0-cil \
 	libmono-webserver2.0-cil \
 	mono-xsp \
-	mono-xsp2 \
-	mono-xsp-test \
+	${PN}2 \
+	${PN}-test \
 	mono-mod-mono-server \
 	mono-mod-mono-server2 \
-	mono-xsp-doc \
-	mono-xsp-dev \
 	"
 
 FILES_libmono-webserver1.0-cil-dbg += " \
@@ -91,11 +88,11 @@ FILES_mono-mod-mono-server2 = "\
 	/usr/lib/mono/2.0/mod-mono-server2.exe \
 	/usr/bin/mod-mono-server2 \
 	"
-FILES_mono-xsp-dev = "\
+FILES_${PN}-dev = "\
 	/usr/lib/pkgconfig/xsp.pc \
 	/usr/lib/pkgconfig/xsp-2.pc \
 	"
-FILES_mono-xsp-test = " \
+FILES_${PN}-test = " \
 	/usr/lib/xsp/test/1.1/authtest/index.aspx \
 	/usr/lib/xsp/test/1.1/authtest/login.aspx \
 	/usr/lib/xsp/test/1.1/authtest/web.config \
@@ -228,7 +225,5 @@ FILES_mono-xsp-test = " \
 	/usr/lib/xsp/test/2.0/masterpages/content2.aspx \
 	"
 
-
-
 SRC_URI[md5sum] = "adb7871e5ebeefcf8ed959523442c0fb"
 SRC_URI[sha256sum] = "25c246b7ed3e82a5f3562c2c15db551332830de4c238a53e3260ab7d40cd015a"
-- 
1.8.5.3


