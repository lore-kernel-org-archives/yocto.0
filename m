Return-Path: <jan.kiszka@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20D0AE00B53; Wed, 10 May 2017 23:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E157E00B3E
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 23:00:23 -0700 (PDT)
Received: from mail2.siemens.de (mail2.siemens.de [139.25.208.11])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id v4B60MhV022280
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 08:00:22 +0200
Received: from md1f2u6c.ww002.siemens.net ([146.254.78.60])
	by mail2.siemens.de (8.15.2/8.15.2) with ESMTP id v4B60L4q031138
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 08:00:22 +0200
Resent-From: Jan Kiszka <jan.kiszka@siemens.com>
Resent-To: yocto <yocto@yoctoproject.org>
Resent-Date: Thu, 11 May 2017 08:00:19 +0200
Resent-Message-ID: <4f462088-cac6-7b8c-36b5-35ca3f936969@siemens.com>
Resent-User-Agent: Mozilla/5.0 (X11; U; Linux i686 (x86_64); de;
	rv:1.8.1.12) Gecko/20080226 SUSE/2.0.0.12-1.1
	Thunderbird/2.0.0.12 Mnenhy/0.7.5.666
To: <yocto@yoctoproject.org>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <7ffccd7c-3538-57fd-9380-9ba38f5f3c0a@siemens.com>
Date: Thu, 11 May 2017 07:49:16 +0200
User-Agent: Mozilla/5.0 (X11; U; Linux i686 (x86_64); de; rv:1.8.1.12)
	Gecko/20080226 SUSE/2.0.0.12-1.1 Thunderbird/2.0.0.12 Mnenhy/0.7.5.666
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH] Fix binary paths when setting alternatives
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
X-List-Received-Date: Thu, 11 May 2017 06:00:27 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Neither the JDK nor the JRE puts binaries under $JAVA_HOME/jre anymore.
Seen with Java 8, update 131.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 12 ++++++------
 recipes-devtools/oracle-java/oracle-jse.inc     |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 9fd76e1..935ad9b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -28,14 +28,14 @@ PROVIDES += "virtual/javac virtual/java-initial"
 
 pkg_postinst_${PN} () {
 	update-alternatives --install ${bindir}/jar   jar   ${JDK_HOME}/bin/jar 100
-	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/jre/bin/java 100
-	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/jre/bin/javac 100
+	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/bin/java 100
+	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/bin/javac 100
 	update-alternatives --install ${bindir}/javah javah ${JDK_HOME}/bin/javah 100
 }
 
 pkg_prerm_${PN} () {
-	update-alternatives --remove jar   ${JDK_HOME}/jre/bin/jar
-	update-alternatives --remove java  ${JDK_HOME}/jre/bin/java
-	update-alternatives --remove javac ${JDK_HOME}/jre/bin/javac
-	update-alternatives --remove javah ${JDK_HOME}/jre/bin/javah
+	update-alternatives --remove jar   ${JDK_HOME}/bin/jar
+	update-alternatives --remove java  ${JDK_HOME}/bin/java
+	update-alternatives --remove javac ${JDK_HOME}/bin/javac
+	update-alternatives --remove javah ${JDK_HOME}/bin/javah
 }
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index c812cf7..ce8280c 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -41,9 +41,9 @@ PROVIDES += "virtual/java"
 inherit update-alternatives
 
 pkg_postinst_${PN} () {
-	update-alternatives --install ${bindir}/java java ${JDK_HOME}/jre/bin/java 75
+	update-alternatives --install ${bindir}/java java ${JDK_HOME}/bin/java 75
 }
 
 pkg_prerm_${PN} () {
-	update-alternatives --remove java ${JDK_HOME}/jre/bin/java
+	update-alternatives --remove java ${JDK_HOME}/bin/java
 }

