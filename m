Return-Path: <MaNo@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18489E00CC2; Mon,  6 Nov 2017 06:49:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [88.131.56.164 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Nov 2017 06:49:27 PST
Received: from mail.hms.se (mail.hms.se [88.131.56.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E16CAE00C77
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 06:49:27 -0800 (PST)
Received: from APP-HST-WIN-044.hms.se (10.10.100.124) by
	APP-HST-WIN-044.hms.se (10.10.100.124) with Microsoft SMTP Server (TLS)
	id 15.0.1320.4; Mon, 6 Nov 2017 15:34:15 +0100
Received: from DEV149-1.hms.se (10.10.13.119) by APP-HST-WIN-044.hms.se
	(10.10.100.124) with Microsoft SMTP Server id 15.0.1320.4 via Frontend
	Transport; Mon, 6 Nov 2017 15:34:15 +0100
From: Martin Nordqvist <mano@hms.se>
To: <yocto@yoctoproject.org>
Date: Mon, 6 Nov 2017 15:33:47 +0100
Message-ID: <1509978827-6427-1-git-send-email-mano@hms.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Nov 2017 08:11:40 -0800
Cc: Martin Nordqvist <mano@hms.se>
Subject: [meta-oracle-java][PATCH] Don't preserve ownership when copying files
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
X-List-Received-Date: Mon, 06 Nov 2017 14:49:29 -0000
Content-Type: text/plain

Don't preserve ownership when copying files. Instead let root be
owner of all files.
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 3 ++-
 recipes-devtools/oracle-java/oracle-jse.inc     | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9..ca6af22 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -13,7 +13,8 @@ require oracle-jse.inc
 
 do_install_class-native() {
 	install -d				${D}${libdir_jvm}
-	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
+	cp -a --no-preserve=ownership \
+		${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
 	install -d				${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 4346f23..5e5f406 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -19,7 +19,8 @@ JDK_HOME = "${libdir_jvm}/${JDK_DIR}"
 
 do_install () {
 	install -d -m 0755			${D}${libdir_jvm}
-	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
+	cp -a --no-preserve=ownership \
+		${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 }
 
 # All the files are provided in a binaray package, and keeping all the
-- 
1.9.1


