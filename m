Return-Path: <MaNo@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4BB8E00CE2; Fri, 17 Nov 2017 03:47:46 -0800 (PST)
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
Received: from mail.hms.se (mail.hms.se [88.131.56.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19738E00BB7
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 03:47:44 -0800 (PST)
Received: from APP-HST-WIN-044.hms.se (10.10.100.124) by
	APP-HST-WIN-044.hms.se (10.10.100.124) with Microsoft SMTP Server (TLS)
	id 15.0.1320.4; Fri, 17 Nov 2017 12:47:39 +0100
Received: from DEV149-1.hms.se (10.10.13.119) by APP-HST-WIN-044.hms.se
	(10.10.100.124) with Microsoft SMTP Server id 15.0.1320.4 via Frontend
	Transport; Fri, 17 Nov 2017 12:47:39 +0100
From: Martin Nordqvist <mano@hms.se>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Nov 2017 12:47:30 +0100
Message-ID: <1510919250-3757-1-git-send-email-mano@hms.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: Martin Nordqvist <mano@hms.se>
Subject: [meta-oracle-java][PATCH] Symlink jar and javah in bindir (native)
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
X-List-Received-Date: Fri, 17 Nov 2017 11:47:46 -0000
Content-Type: text/plain

Create symlinks in bindir to jar and javah.
If a recpie needs jar to create a jar file or javah for a JNI package,
jar and javah needs to be in bindir.
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9..6b3aabe 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -18,6 +18,8 @@ do_install_class-native() {
 	install -d				${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+	ln -sf ${JDK_HOME}/bin/javah		${D}${bindir}
+	ln -sf ${JDK_HOME}/bin/jar		${D}${bindir}
 
 	install -d				${D}${JDK_HOME}/bin
 	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
-- 
1.9.1


