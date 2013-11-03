Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0900CE017E9
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 14:48:43 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id rd3so6231123pab.33
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2013 14:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tDKteAhSWD4Ykbnjyq7/Xm9rekdSO9RS2eKNlcgpni8=;
	b=TEzbHeHNd3iwAKMwdfeY2Y60JfAid+SYmVAQfXFJUoLirkn6K80ECRAkyH/Rel5A+7
	3dVOsrc++1R2izRvaIs2tQh8KnKYrQaDeOHZ4AT8/xBX6jcDTn/LQztbhUIh3scNL293
	4R4rs2gJWGIMTBn8KZmy6sKETT3NugKaziZ5P1Outx44zZN/JjhVGkxGqkR+PVy7vfin
	nBoIj69+d/PzQ55l9+9OOL2HdkMtC6YPVzIeh3x1G9+UibHfd3ueRVgTzzR91OUybpwH
	M84y5kMD6Pi+aB0fMmq90/BdWRBSdiRO0sSodzxZ2AQdK2p/CpSgm/o9bprXu0Bpvd0V
	7uQg==
X-Received: by 10.68.232.74 with SMTP id tm10mr14841837pbc.64.1383518923579;
	Sun, 03 Nov 2013 14:48:43 -0800 (PST)
Received: from haswell.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPSA id
	sg1sm24195713pbb.16.2013.11.03.14.48.42 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 03 Nov 2013 14:48:43 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: autif.mlist@gmail.com,
	yocto@yoctoproject.org
Date: Sun,  3 Nov 2013 14:47:55 -0800
Message-Id: <1383518875-32046-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1383518875-32046-1-git-send-email-raj.khem@gmail.com>
References: <1383518875-32046-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-mono][PATCH 2/2] mono-xsp: Fix parse warnings
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
X-List-Received-Date: Sun, 03 Nov 2013 22:48:45 -0000

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
1.8.3.2


